library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lfsr is
	generic(
		size : integer := 3 -- data width
	);
	port(
		clock_in : in std_logic;
		parallel_out : out std_logic_vector(size-1 downto 0)
	);
end entity;

architecture bhv of lfsr is
	signal shift_reg : std_logic_vector(size-1 downto 0) := "010";  -- initial value "010" gives 7 random numbers until pattern repeats
begin
	process (clock_in) is
	begin
		if rising_edge(clock_in) then
			shift_reg(size-1 downto 1) <= shift_reg(size-2 downto 0); -- shift to the left
			shift_reg(0) <= shift_reg(size-1) xor shift_reg(0); -- calculate empty space based on XOR operations
		end if;
	end process;
	parallel_out <= shift_reg;
end architecture;