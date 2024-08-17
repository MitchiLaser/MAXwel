library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity led_blink is
	port(
		Buttons : in std_logic_vector(3 downto 0);  -- Button 4 to Button 1
		Switches : in std_logic_vector(7 downto 0); -- Switch 8 to switch 1
		Clock50, Clock14 : in std_logic;  -- both clocks
		LED_A : out std_logic_vector(7 downto 0);  -- From LED 8 to LED 1
		LED_B : out std_logic_vector(7 downto 0);  -- From LED 8 to LED 1
		Segment1, Segment2, Segment3, Segment4 : out	std_logic_vector(7 downto 0)  -- From DP (7) to A (0) as defined in the docs 
		-- The pinheader needs to be defined by the user
	);
end entity;

architecture rtl of led_blink is
	signal clock_50khz, clock_50hz : std_logic; -- intermediate values for the clock speeds after division

	-- we need to provide a last frequency divider from 50 Hz to 0.5 Hz
	signal led_out : std_logic := '0'; -- the signal driving the LED in the end
	signal counter : integer range 0 to 49 := 0; -- counter for the small frequency divider
begin
	-- the frequency divider is defined in another file (fdiv.vhd in this directory).
	-- It divides a frequency by a factor of 1000. Since the fdiv.vhd file is in the same directory 
	-- as this source file, it is automatically part of the library 'work' and can be
	-- instantiatet as such.
	
	-- first divider 50 MHz » 50 KHz
	fdiv1 : work.fdiv
		port map(
			clock_in => Clock50,
			clock_out => clock_50khz
		);
		
	-- second divider 50 KHz » 50 Hz
	fdiv2 : work.fdiv
		port map(
			clock_in => clock_50khz,
			clock_out => clock_50hz
		);
	
	-- now generate the last frequency divider from 50 Hz to 0.5 Hz
	process(clock_50hz) is
	begin
		if rising_edge(clock_50hz) then
			if counter = 49 then
				counter <= 0;
				led_out <= not led_out;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
		
	-- the subsequent section can be useful for debugging or a visualisation of the internals with an oscilloscope
	-- output clock signals for visualisation and potential peasurement with an oscilloscope
--	LED_B(0) <= clock50;
--	LED_B(1) <= clock_50khz;
--	LED_B(2) <= clock_50hz;
	
	LED_B(7) <= led_out;
end architecture;
