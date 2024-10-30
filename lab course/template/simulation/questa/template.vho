-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "10/30/2024 23:38:36"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	template IS
    PORT (
	LED_A : OUT std_logic_vector(7 DOWNTO 0);
	LED_B : OUT std_logic_vector(7 DOWNTO 0);
	Clock50 : IN std_logic;
	Buttons : IN std_logic_vector(3 DOWNTO 0);
	Switches : IN std_logic_vector(7 DOWNTO 0)
	);
END template;

-- Design Ports Information


ARCHITECTURE structure OF template IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clock50 : std_logic;
SIGNAL ww_Buttons : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Switches : std_logic_vector(7 DOWNTO 0);

BEGIN

LED_A <= ww_LED_A;
LED_B <= ww_LED_B;
ww_Clock50 <= Clock50;
ww_Buttons <= Buttons;
ww_Switches <= Switches;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_A(7));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_A(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_A(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_A(4));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_A(3));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_A(2));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_A(1));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_A(0));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_B[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_B(7));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_B[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_B(6));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_B[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_B(5));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_B[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_B(4));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_B(3));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_B(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_B(1));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED_B(0));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\Clock50~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock50);

-- Location: PIN_20,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(3));

-- Location: PIN_19,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(2));

-- Location: PIN_4,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(1));

-- Location: PIN_3,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(0));

-- Location: PIN_1,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(7));

-- Location: PIN_99,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(6));

-- Location: PIN_97,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(5));

-- Location: PIN_95,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(4));

-- Location: PIN_91,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(3));

-- Location: PIN_89,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(2));

-- Location: PIN_87,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(1));

-- Location: PIN_85,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(0));
END structure;


