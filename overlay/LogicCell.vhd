library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;  -- for the power function

entity LogicCell is
	generic(
		NUM_INPUTS : positive := 2
	);
	port(
		Inputs : in std_logic_vector(NUM_INPUTS-1 downto 0);
		Config : in std_logic_vector(2**NUM_INPUTS-1 downto 0);
		FF_enable : in std_logic;
		FF_clock : in std_logic;
		Output : out std_logic
	);
end entity;

architecture bhv of LogicCell is
	signal lut_result, ff_out : std_logic;
begin
	lut_result <= Config(to_integer(unsigned(Inputs)));
		
	process (FF_clock) is
	begin
		if rising_edge(FF_clock) then
			ff_out <= lut_result;
		end if;
	end process;
	
	Output <= ff_out when FF_enable = '1' else lut_result;
	
--	Output <= Config(to_integer(unsigned(Inputs)));  -- This is the simple Logic cell without the FlipFlop
end architecture;