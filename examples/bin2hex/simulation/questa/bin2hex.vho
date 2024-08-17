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

-- DATE "08/17/2024 09:55:52"

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

ENTITY 	bin2hex IS
    PORT (
	Buttons : IN std_logic_vector(3 DOWNTO 0);
	Switches : IN std_logic_vector(7 DOWNTO 0);
	Clock50 : IN std_logic;
	Clock14 : IN std_logic;
	LED_A : OUT std_logic_vector(7 DOWNTO 0);
	LED_B : OUT std_logic_vector(7 DOWNTO 0);
	Segment1 : OUT std_logic_vector(7 DOWNTO 0);
	Segment2 : OUT std_logic_vector(7 DOWNTO 0);
	Segment3 : OUT std_logic_vector(7 DOWNTO 0);
	Segment4 : OUT std_logic_vector(7 DOWNTO 0)
	);
END bin2hex;

-- Design Ports Information


ARCHITECTURE structure OF bin2hex IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Buttons : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Switches : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clock50 : std_logic;
SIGNAL ww_Clock14 : std_logic;
SIGNAL ww_LED_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Segment1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Segment2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Segment3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Segment4 : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Switches~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_Buttons <= Buttons;
ww_Switches <= Switches;
ww_Clock50 <= Clock50;
ww_Clock14 <= Clock14;
LED_A <= ww_LED_A;
LED_B <= ww_LED_B;
Segment1 <= ww_Segment1;
Segment2 <= ww_Segment2;
Segment3 <= ww_Segment3;
Segment4 <= ww_Segment4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: PIN_91,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(3),
	combout => \Switches~combout\(3));

-- Location: PIN_89,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(2),
	combout => \Switches~combout\(2));

-- Location: PIN_85,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(0),
	combout => \Switches~combout\(0));

-- Location: PIN_87,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(1),
	combout => \Switches~combout\(1));

-- Location: LC_X6_Y4_N8
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\Switches~combout\(0) & (\Switches~combout\(3) & (\Switches~combout\(2) $ (\Switches~combout\(1))))) # (!\Switches~combout\(0) & (!\Switches~combout\(2) & (\Switches~combout\(3) $ (\Switches~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2182",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Switches~combout\(2),
	datac => \Switches~combout\(0),
	datad => \Switches~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X6_Y4_N6
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\Switches~combout\(2) & ((\Switches~combout\(3) & (\Switches~combout\(0))) # (!\Switches~combout\(3) & ((\Switches~combout\(1)))))) # (!\Switches~combout\(2) & (\Switches~combout\(1) & (\Switches~combout\(3) $ 
-- (\Switches~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d680",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Switches~combout\(2),
	datac => \Switches~combout\(0),
	datad => \Switches~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X6_Y4_N7
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\Switches~combout\(0) & (\Switches~combout\(1) & ((\Switches~combout\(2)) # (!\Switches~combout\(3))))) # (!\Switches~combout\(0) & (!\Switches~combout\(3) & (\Switches~combout\(2) & !\Switches~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Switches~combout\(2),
	datac => \Switches~combout\(0),
	datad => \Switches~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X6_Y4_N2
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\Switches~combout\(2) & ((\Switches~combout\(3) & ((\Switches~combout\(1)))) # (!\Switches~combout\(3) & (\Switches~combout\(0) & !\Switches~combout\(1))))) # (!\Switches~combout\(2) & (!\Switches~combout\(0) & (\Switches~combout\(3) $ 
-- (\Switches~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8942",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Switches~combout\(2),
	datac => \Switches~combout\(0),
	datad => \Switches~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X6_Y4_N5
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\Switches~combout\(2) & (\Switches~combout\(3) & (!\Switches~combout\(0)))) # (!\Switches~combout\(2) & ((\Switches~combout\(1) & ((!\Switches~combout\(0)))) # (!\Switches~combout\(1) & (\Switches~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Switches~combout\(2),
	datac => \Switches~combout\(0),
	datad => \Switches~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X6_Y4_N4
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\Switches~combout\(3) & (\Switches~combout\(0) $ (((\Switches~combout\(2)) # (!\Switches~combout\(1)))))) # (!\Switches~combout\(3) & (\Switches~combout\(2) & (!\Switches~combout\(0) & !\Switches~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "280e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Switches~combout\(2),
	datac => \Switches~combout\(0),
	datad => \Switches~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X6_Y4_N9
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\Switches~combout\(3) & ((\Switches~combout\(0)) # (\Switches~combout\(2) $ (\Switches~combout\(1))))) # (!\Switches~combout\(3) & ((\Switches~combout\(2)) # (\Switches~combout\(0) $ (\Switches~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e7fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Switches~combout\(2),
	datac => \Switches~combout\(0),
	datad => \Switches~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(7),
	combout => \Switches~combout\(7));

-- Location: PIN_99,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(6),
	combout => \Switches~combout\(6));

-- Location: PIN_95,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(4),
	combout => \Switches~combout\(4));

-- Location: PIN_97,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(5),
	combout => \Switches~combout\(5));

-- Location: LC_X7_Y4_N3
\Mux13~0\ : maxii_lcell
-- Equation(s):
-- \Mux13~0_combout\ = (\Switches~combout\(4) & (\Switches~combout\(7) & (\Switches~combout\(6) $ (\Switches~combout\(5))))) # (!\Switches~combout\(4) & (!\Switches~combout\(6) & (\Switches~combout\(7) $ (\Switches~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2182",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(7),
	datab => \Switches~combout\(6),
	datac => \Switches~combout\(4),
	datad => \Switches~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0_combout\);

-- Location: LC_X7_Y4_N1
\Mux12~0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0_combout\ = (\Switches~combout\(6) & ((\Switches~combout\(7) & (\Switches~combout\(4))) # (!\Switches~combout\(7) & ((\Switches~combout\(5)))))) # (!\Switches~combout\(6) & (\Switches~combout\(5) & (\Switches~combout\(7) $ 
-- (\Switches~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d680",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(7),
	datab => \Switches~combout\(6),
	datac => \Switches~combout\(4),
	datad => \Switches~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

-- Location: LC_X7_Y4_N2
\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = (\Switches~combout\(4) & (\Switches~combout\(5) & ((\Switches~combout\(6)) # (!\Switches~combout\(7))))) # (!\Switches~combout\(4) & (!\Switches~combout\(7) & (\Switches~combout\(6) & !\Switches~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(7),
	datab => \Switches~combout\(6),
	datac => \Switches~combout\(4),
	datad => \Switches~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: LC_X7_Y4_N6
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (\Switches~combout\(6) & ((\Switches~combout\(7) & ((\Switches~combout\(5)))) # (!\Switches~combout\(7) & (\Switches~combout\(4) & !\Switches~combout\(5))))) # (!\Switches~combout\(6) & (!\Switches~combout\(4) & (\Switches~combout\(7) 
-- $ (\Switches~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8942",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(7),
	datab => \Switches~combout\(6),
	datac => \Switches~combout\(4),
	datad => \Switches~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X7_Y4_N7
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = (\Switches~combout\(6) & (\Switches~combout\(7) & (!\Switches~combout\(4)))) # (!\Switches~combout\(6) & ((\Switches~combout\(5) & ((!\Switches~combout\(4)))) # (!\Switches~combout\(5) & (\Switches~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(7),
	datab => \Switches~combout\(6),
	datac => \Switches~combout\(4),
	datad => \Switches~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X7_Y4_N8
\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (\Switches~combout\(7) & (\Switches~combout\(4) $ (((\Switches~combout\(6)) # (!\Switches~combout\(5)))))) # (!\Switches~combout\(7) & (\Switches~combout\(6) & (!\Switches~combout\(4) & !\Switches~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "280e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(7),
	datab => \Switches~combout\(6),
	datac => \Switches~combout\(4),
	datad => \Switches~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X7_Y4_N5
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\Switches~combout\(7) & ((\Switches~combout\(4)) # (\Switches~combout\(6) $ (\Switches~combout\(5))))) # (!\Switches~combout\(7) & ((\Switches~combout\(6)) # (\Switches~combout\(4) $ (\Switches~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e7fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(7),
	datab => \Switches~combout\(6),
	datac => \Switches~combout\(4),
	datad => \Switches~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(0));

-- Location: PIN_4,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(1));

-- Location: PIN_19,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(2));

-- Location: PIN_20,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(3));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\Clock50~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock50);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\Clock14~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock14);

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

-- Location: PIN_56,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux6~0_combout\,
	oe => VCC,
	padio => ww_Segment1(0));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_Segment1(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_Segment1(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_Segment1(3));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_Segment1(4));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_Segment1(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	oe => VCC,
	padio => ww_Segment1(6));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment1(7));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux13~0_combout\,
	oe => VCC,
	padio => ww_Segment2(0));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux12~0_combout\,
	oe => VCC,
	padio => ww_Segment2(1));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux11~0_combout\,
	oe => VCC,
	padio => ww_Segment2(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux10~0_combout\,
	oe => VCC,
	padio => ww_Segment2(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux9~0_combout\,
	oe => VCC,
	padio => ww_Segment2(4));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux8~0_combout\,
	oe => VCC,
	padio => ww_Segment2(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~0_combout\,
	oe => VCC,
	padio => ww_Segment2(6));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment2(7));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment3[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment3(0));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment3[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment3(1));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment3[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment3(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment3[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment3(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment3[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment3(4));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment3[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment3(5));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment3[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment3(6));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment3[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment3(7));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment4[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment4(0));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment4[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment4(1));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment4[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment4(2));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment4[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment4(3));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment4[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment4(4));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment4[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment4(5));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment4[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment4(6));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment4[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment4(7));
END structure;

