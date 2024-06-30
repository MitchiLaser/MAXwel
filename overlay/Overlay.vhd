library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library LC;
use LC.SerialLC;

entity Overlay is
	generic(
		Num_LC : positive := 4  -- Number of LCs for the Ring
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
	signal ser_bridge_lc : std_logic_vector(Num_LC downto 0);  -- one more because the output of the last one needs to be assigned to the next one in the chain

	-- inputs: array of std_logic_vectors(2 inputs)
	type t_inputs is array(Num_LC-1 downto 0) of std_logic_vector(1 downto 0);
	signal lc_inputs : t_inputs;
	
	-- clocks for the FFs in the LCs
	signal ff_clock : std_logic_vector(Num_LC-1 downto 0);
	
	-- outputs of the LCs
	signal lc_output : std_logic_vector(Num_LC-1 downto 0);

begin

	-- generate the Logic Cells (LC)
	LC_Group	: for i in 0 to Num_LC-1 generate
	begin
	
		-- create first cell in group with special 'previous'
		First_Cell : if i = 0 generate 
			First : LC.SerialLC
				generic map(NUM_INPUTS => 2)
				port map(
					Inputs => lc_inputs(i),
					Previous => lc_output(Num_LC-1),  -- previous from last LC
					FF_Clock => ff_clock(i),
					Output => lc_output(i),
					serin => ser_bridge_lc(i),
					serclk => serclk,
					serout => ser_bridge_lc(i+1)
				);
		end generate;
			
		-- create all other cells in group with regular 'previous' and 'next'
		Normal_Cell : if i /= 0 generate
			Normal : LC.SerialLC
				generic map(NUM_INPUTS => 2)
				port map(
					Inputs => lc_inputs(i),
					Previous => lc_output(i-1),  -- previous from previous LC
					FF_Clock => ff_clock(i),
					Output => lc_output(i),
					serin => ser_bridge_lc(i),
					serclk => serclk,
					serout => ser_bridge_lc(i+1)
				);
		end generate;
		
	end generate;
	
	-- initialise the serial chain
	ser_bridge_lc(0) <= serin;
	-- connect serial output -- TODO: update to the lastest link in the chain
	serout <= ser_bridge_lc(Num_LC);
	
	
	-- TODO: Now define the switching network and also the i/o blocks (if needed?)

end architecture;