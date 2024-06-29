library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SerialLC is
	generic(
		NUM_INPUTS : positive := 2
	);
	port(
		-- LUT interface
		Inputs : in std_logic_vector(NUM_INPUTS-1 downto 0);
		Previous : in std_logic;
		FF_Clock : in std_logic;
		Output : out std_logic;
		
		-- configuration shift register
		serin, serclk : in std_logic;
		serout : out std_logic
	);
end entity;

architecture arch of SerialLC is
	constant config_size : positive := NUM_INPUTS**2 + 2;  -- Number of slots in the LUT + the Prev-Multiplexer + D-FF Enable
	signal lc_config : std_logic_vector(config_size-1 downto 0) := (others => '0');
	signal lut_in : std_logic;
begin
	lut_in <= Previous when lc_config(0) = '1' else Inputs(0);

	LC : entity work.LogicCell
		generic map(NUM_INPUTS => 2)
		port map(
			Inputs => (lut_in, Inputs(1)),
			Config => lc_config(config_size-1 downto 2),
			FF_enable => lc_config(1),
			Clock => FF_Clock,
			Output => Output
		);
		
	process(serclk) is
	begin
		if rising_edge(serclk) then
			lc_config(config_size-1 downto 1) <= lc_config(config_size-2 downto 0);
			lc_config(0) <= serin;
		end if;
	end process;
	serout <= lc_config(config_size-1);
	
end architecture;