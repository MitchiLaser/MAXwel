library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library LC;
use LC.SerialLC;

entity Overlay is
	generic(
		Group_Size : positive := 4;  -- Number of LCs per group
		Num_Groups : positive := 2  -- Number of LC grpuos
	);
	port(
		-- User I/O of the MAXwel board
		Button : in std_logic_vector(3 downto 0);
		Switch : in std_logic_vector(7 downto 0);
		LED_Red, LED_Green : out std_logic_vector(7 downto 0);
		
		-- Load a configuration into the overlay by writing it into a shift register
		serin, serclk : in std_logic;
		serout : out std_logic
	);
end entity;

architecture bhv of Overlay is

	-- define the signals for the serial shift register chain (LCs)
	-- array (Groups) of std_logic_vector(Group)
	type t_ser_bridge is array(Num_Groups-1 downto 0) of std_logic_vector(Group_Size downto 0);  -- one more because the output of the last one needs to be assigned to the next one in the chain
	signal ser_bridge_lc : t_ser_bridge;

	-- inputs: 2d array (Group of LCs) of std_logic_vectors(2 inputs)
	type t_inputs is array(Num_Groups-1 downto 0, Group_Size-1 downto 0) of std_logic_vector(1 downto 0);
	signal lc_inputs : t_inputs;
	
	-- clocks for the FFs in the LCs
	type t_ff_clock is array(Num_Groups-1 downto 0) of std_logic_vector(Group_Size-1 downto 0);
	signal ff_clock : t_ff_clock;
	
	-- outputs of the LCs: 1D array (Groups) of std_logic_vectors (whole Group).
	type t_outputs is array(Num_Groups-1 downto 0) of std_logic_vector(Group_Size downto 0);
	signal lc_output : t_outputs; -- one more because of the "previous" chain, output 0 does not exists but needs to be assigned

begin

	-- generate the array of Logic Cells (LC)
	LC_ALL : for i in 0 to Num_Groups-1 generate  -- generate all groups
	begin
		LC_Group	: for j in 0 to Group_Size-1 generate  -- generate the LCs inside a Group
		begin
		
			-- create first cell in group without 'previous'
			First_Cell : if j = 0 generate 
				First : LC.SerialLC
					generic map(NUM_INPUTS => 2)
					port map(
						Inputs => lc_inputs(i,j),
						Previous => '0',  -- previous not existing
						FF_Clock => ff_clock(i)(j),
						Output => lc_output(i)(j),
						serin => ser_bridge_lc(i)(j),
						serclk => serclk,
						serout => ser_bridge_lc(i)(j+1)
					);
			end generate;
				
			-- create all other cells in group with 'previous'
			Following_Cell : if j /= 0 generate
				Following : LC.SerialLC
					generic map(NUM_INPUTS => 2)
					port map(
						Inputs => lc_inputs(i,j),
						Previous => lc_output(i)(j-1),  -- previous from following LUT
						FF_Clock => ff_clock(i)(j),
						Output => lc_output(i)(j),
						serin => ser_bridge_lc(i)(j),
						serclk => serclk,
						serout => ser_bridge_lc(i)(j+1)
					);
			end generate;
			
			-- connect the serout from the last of a group to the serin from the first of a group
			ser_fill : if i /= 0 generate
				ser_bridge_lc(i)(0) <= ser_bridge_lc(i-1)(Group_Size);
			end generate;
			
		end generate;
	end generate;
	
	-- initialise the serial chain
	ser_bridge_lc(0)(0) <= serin;
	-- connect serial output -- TODO: update to the lastest link in the chain
	serout <= ser_bridge_lc(Num_Groups-1)(Group_Size);
	
	
	-- TODO: Now define the switching network and also the i/o blocks (if needed?)

end architecture;