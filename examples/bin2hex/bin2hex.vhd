library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2hex is
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

architecture rtl of bin2hex is

	-- define the conversion of a 4 digit binary number to the corresponding 7-Segment state as a function
	pure function convert(signal bin: in std_logic_vector(3 downto 0)) return std_logic_vector is
		variable hex_out: std_logic_vector(6 downto 0) := (others => '0');
	begin
		case bin is
			when x"0" => hex_out := (6 => '0', others => '1');
			when x"1" => hex_out := "0000110";
			when x"2" => hex_out := "1011011";
			when x"3" => hex_out := "1001111";
			when x"4" => hex_out := "1100110";
			when x"5" => hex_out := "1101101";
			when x"6" => hex_out := (1 => '0', others => '1');
			when x"7" => hex_out := "0000111";
			when x"8" => hex_out := (others => '1');
			when x"9" => hex_out := (4 => '0', others => '1');
			when x"A" => hex_out := (3 => '0', others => '1');
			when x"B" => hex_out := "1111100";
			when x"C" => hex_out := "0111001";
			when x"D" => hex_out := "1011110";
			when x"E" => hex_out := "1111001";
			when x"F" => hex_out := "1110001";
		end case;
		return hex_out;
	end function;
	
	-- define a function to reverse the bit-order of a std_logic_vector as this is needed at least twice
	pure function reverse(signal din : in std_logic_vector) return std_logic_vector is
		variable result : std_logic_vector(din'range);
		alias din_reverse_access : std_logic_vector(din'reverse_range) is din;
	begin
		for i in din_reverse_access'Range loop
				result(i) := din_reverse_access(i);
		end loop;
		return result;
	end function;
	
	-- define temporary signals for intermediate results
	signal bin_reverse, bin_reverse2 : std_logic_vector(0 to 3);  -- reverse range

begin
	-- The 7-Segment displays are assigned with the correct state, based on the switch input.
	-- The entry for the DP (index 7) is skipped because it is not in use.
	
	-- The order of the arguments for the function calls needs to be reversed so that in the end
	-- The LSB is the most right switch and the MSB is the mostleft switch.
	-- This is done once for each group of 4 switches which corresponds directly to a single
	-- digit hex number.
	
	Segment1(6 downto 0) <= convert(reverse(Switches(3 downto 0))); -- left digit
	Segment2(6 downto 0) <= convert(reverse(Switches(7 downto 4))); -- right digit
end architecture;
