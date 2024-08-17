library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fdiv is
	port(
		clock_in : in std_logic;
		clock_out : out std_logic
	);
end entity;

architecture bhv of fdiv is
	signal counter : integer range 0 to 499 := 0; -- a counter for half the period. When the counter reaches its maximum it flips the output-signal.
	signal new_clock : std_logic := '0'; -- the output signal, 
begin
	
	-- since this is sequential logic it needs to be instantiated in a process
	process (clock_in) is
	begin
		if rising_edge(clock_in) then
			if counter = 499 then
				counter <= 0;
				new_clock <= not new_clock;
			else
				counter <= counter + 1; -- increment
			end if;
		end if;
	end process;
	
	clock_out <= new_clock;
	
end architecture;