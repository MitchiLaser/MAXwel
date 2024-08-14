library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity template is
	port(
		Buttons : in std_logic_vector(3 downto 0);
		Switches : in std_logic_vector(7 downto 0);
		Clock50, Clock14 : in std_logic;  -- both clocks
		LED_Red : out std_logic_vector(7 downto 0);
		LED_Green : out std_logic_vector(7 downto 0);
		Segment1, Segment2, Segment3, Segment4 : std_logic_vector(7 downto 0)  -- From DP (7) to A (0) as defined in the docs 
		-- The pinheader needs to be defined by the user
	);
end entity;

architecture arch of template is

begin
	-- Place your architercure code here ...
end architecture;