library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Overlay is
	generic(
		Num_Luts : positive := 2
	);
	port(
		clock : in std_logic;
		clock_baud : in std_logic;
		Button : in std_logic_vector(3 downto 0);
		Switch : in std_logic_vector(7 downto 0);
		LED_Red : out std_logic_vector(7 downto 0);
		LED_Green : out std_logic_vector(7 downto 0)
	);
end entity;

architecture bhv of Overlay is
	signal lc1_out : std_logic;
begin

	LC1 : entity work.LogicCell
		generic map(NUM_INPUTS => 2)
		port map(
			Inputs => Button(1 downto 0),
			Config => Switch(3 downto 0),
			FF_enable => Switch(4),
			FF_clock => clock,
			Output => lc1_out
		);

	-- The following line is just used to test the lut and the clock constraints
	LED_Red <= (0 => not(clock),
					1 => not(clock_baud),
					2 => lc1_out,
					others => '0');

end architecture;