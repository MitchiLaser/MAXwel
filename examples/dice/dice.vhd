library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dice is
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

architecture rtl of dice is
	-- we are recycling this function from the "bin2hex" example project
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

	signal clock_50khz, clock_50hz : std_logic; -- intermediate values for the clock speeds after division
	signal lfsr_data : std_logic_vector(2 downto 0) := (others => '0'); -- access the LFSR data
	
	signal button, button_prev : std_logic := '0'; -- check if the button was pressed
	signal random_number : std_logic_vector(3 downto 0) := (others => '0'); -- store the current random number
	-- we need a datatype to store the current state of the state machine for the number generator
	type T_State is (S_Waiting, S_Generating);
	signal state : T_State := S_Waiting;
begin
	-- we recycle the frequency dividers from the led_blink project
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
		
	lfsr1 : work.lfsr
		port map(
			clock_in => clock_50hz,
			parallel_out => lfsr_data
		);
		
	process(clock_50hz) is
	begin
		if rising_edge(clock_50hz) then
			-- this is the region where the state machine is defined
			case state is
				when S_Waiting =>
					if button_prev = '0' and  button = '1' then
						state <= S_Generating; -- button was pressed: generate a random number
					else
						state <= state; -- stay in the waiting state
					end if;
					button_prev <= button; -- update button variable
					random_number <= random_number; -- keep current value
					
				when S_Generating =>
					if (lfsr_data /= "000") and (lfsr_data /= "111") then
						random_number(2 downto 0) <= lfsr_data;
						state <= S_Waiting;
					else
						state <= S_Generating;
						random_number <= random_number;
					end if;
					button_prev <= button;
			end case;
		end if;
	end process;
	
	button <= Buttons(0); -- assign the 'button' signal to a I/O connection to a button on the board
	Segment1(6 downto 0) <= convert(random_number); -- display the random number
end architecture;