library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library LC;

entity Overlay is
	generic(
		Group_Size : positive := 4;
		Num_Groups : positive := 1  -- currently unused
	);
	port(
		Button : in std_logic_vector(3 downto 0);
		Switch : in std_logic_vector(7 downto 0);
		LED_Red, LED_Green : out std_logic_vector(7 downto 0);
		
		serin, serclk : in std_logic;
		serout : out std_logic
	);
end entity;

architecture bhv of Overlay is
	-- conversion signals for the LUT interface
	type t_inputs is array(Group_Size downto 1) of std_logic_vector(1 downto 0);
	signal temp_inputs : t_inputs;
	signal temp_clock : std_logic;
	signal temp_output : std_logic_vector(Group_Size downto 0) := (others => '0');  -- one more because of the "previous" chain, output 0 does not exists but needs to be assigned

	signal serial_connect : std_logic_vector(Group_Size+1 downto 1);  -- connect the config shift registers with each other
begin	

	LC_Group	: for i in 1 to Group_Size generate
		LCG1 : LC.SerialLC
			generic map(NUM_INPUTS => 2)
			port map(
				Inputs => temp_inputs(i),
				Previous => temp_output(i-1),  -- previous from following LUT
				FF_Clock => temp_clock,
				Output => temp_output(i),
				serin => serial_connect(i),
				serclk => serclk,
				serout => serial_connect(i+1)
			);
		end generate;

	-- assign pins for testing purpose
	temp_inputs <= (1 => Switch(1 downto 0), 2=> Switch(3 downto 2), 3 => Switch(5 downto 4),  4 => Switch(7 downto 6));
	temp_clock <= Button(0);
	LED_Red <= (0 => temp_output(1),
					1 => temp_output(2), 
					2 => temp_output(3),
					3 => temp_output(4),
					others => '0');
--	LED_Red <= (Group_Size-1 downto 0 => temp_output(Group_Size downto 1), others => '0');
	serial_connect(1) <= serin;
	serout <= serial_connect(Group_Size+1);

end architecture;