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

-- DATE "08/17/2024 10:49:37"

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

ENTITY 	led_blink IS
    PORT (
	Buttons : IN std_logic_vector(3 DOWNTO 0);
	Switches : IN std_logic_vector(7 DOWNTO 0);
	Clock50 : IN std_logic;
	Clock14 : IN std_logic;
	LED_A : BUFFER std_logic_vector(7 DOWNTO 0);
	LED_B : BUFFER std_logic_vector(7 DOWNTO 0);
	Segment1 : BUFFER std_logic_vector(7 DOWNTO 0);
	Segment2 : BUFFER std_logic_vector(7 DOWNTO 0);
	Segment3 : BUFFER std_logic_vector(7 DOWNTO 0);
	Segment4 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END led_blink;

-- Design Ports Information


ARCHITECTURE structure OF led_blink IS
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
SIGNAL \Clock50~combout\ : std_logic;
SIGNAL \fdiv1|Add0~5_combout\ : std_logic;
SIGNAL \fdiv1|Add0~7\ : std_logic;
SIGNAL \fdiv1|Add0~7COUT1_46\ : std_logic;
SIGNAL \fdiv1|Add0~0_combout\ : std_logic;
SIGNAL \fdiv1|Add0~2\ : std_logic;
SIGNAL \fdiv1|Add0~2COUT1_47\ : std_logic;
SIGNAL \fdiv1|Add0~10_combout\ : std_logic;
SIGNAL \fdiv1|Add0~30_combout\ : std_logic;
SIGNAL \fdiv1|Equal0~0\ : std_logic;
SIGNAL \fdiv1|Add0~32\ : std_logic;
SIGNAL \fdiv1|Add0~32COUT1_50\ : std_logic;
SIGNAL \fdiv1|Add0~35_combout\ : std_logic;
SIGNAL \fdiv1|Add0~37\ : std_logic;
SIGNAL \fdiv1|Add0~37COUT1_51\ : std_logic;
SIGNAL \fdiv1|Add0~40_combout\ : std_logic;
SIGNAL \fdiv1|Equal0~1_combout\ : std_logic;
SIGNAL \fdiv1|Add0~12\ : std_logic;
SIGNAL \fdiv1|Add0~12COUT1_48\ : std_logic;
SIGNAL \fdiv1|Add0~15_combout\ : std_logic;
SIGNAL \fdiv1|Add0~17\ : std_logic;
SIGNAL \fdiv1|Add0~17COUT1_49\ : std_logic;
SIGNAL \fdiv1|Add0~25_combout\ : std_logic;
SIGNAL \fdiv1|Add0~27\ : std_logic;
SIGNAL \fdiv1|Add0~42\ : std_logic;
SIGNAL \fdiv1|Add0~42COUT1_52\ : std_logic;
SIGNAL \fdiv1|Add0~20_combout\ : std_logic;
SIGNAL \fdiv1|new_clock~regout\ : std_logic;
SIGNAL \fdiv2|Add0~5_combout\ : std_logic;
SIGNAL \fdiv2|Add0~7\ : std_logic;
SIGNAL \fdiv2|Add0~7COUT1_46\ : std_logic;
SIGNAL \fdiv2|Add0~0_combout\ : std_logic;
SIGNAL \fdiv2|Add0~2\ : std_logic;
SIGNAL \fdiv2|Add0~2COUT1_47\ : std_logic;
SIGNAL \fdiv2|Add0~10_combout\ : std_logic;
SIGNAL \fdiv2|Add0~12\ : std_logic;
SIGNAL \fdiv2|Add0~12COUT1_48\ : std_logic;
SIGNAL \fdiv2|Add0~15_combout\ : std_logic;
SIGNAL \fdiv2|Equal0~0\ : std_logic;
SIGNAL \fdiv2|Add0~17\ : std_logic;
SIGNAL \fdiv2|Add0~17COUT1_49\ : std_logic;
SIGNAL \fdiv2|Add0~25_combout\ : std_logic;
SIGNAL \fdiv2|Add0~27\ : std_logic;
SIGNAL \fdiv2|Add0~30_combout\ : std_logic;
SIGNAL \fdiv2|Add0~32\ : std_logic;
SIGNAL \fdiv2|Add0~32COUT1_50\ : std_logic;
SIGNAL \fdiv2|Add0~37\ : std_logic;
SIGNAL \fdiv2|Add0~37COUT1_51\ : std_logic;
SIGNAL \fdiv2|Add0~40_combout\ : std_logic;
SIGNAL \fdiv2|Add0~42\ : std_logic;
SIGNAL \fdiv2|Add0~42COUT1_52\ : std_logic;
SIGNAL \fdiv2|Add0~20_combout\ : std_logic;
SIGNAL \fdiv2|Add0~35_combout\ : std_logic;
SIGNAL \fdiv2|Equal0~1_combout\ : std_logic;
SIGNAL \fdiv2|new_clock~regout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_31\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_32\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_33\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_34\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \led_out~regout\ : std_logic;
SIGNAL \fdiv1|counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL counter : std_logic_vector(5 DOWNTO 0);
SIGNAL \fdiv2|counter\ : std_logic_vector(8 DOWNTO 0);

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

-- Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\Clock50~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock50,
	combout => \Clock50~combout\);

-- Location: LC_X5_Y2_N0
\fdiv1|Add0~5\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~5_combout\ = (!\fdiv1|counter\(0))
-- \fdiv1|Add0~7\ = CARRY((\fdiv1|counter\(0)))
-- \fdiv1|Add0~7COUT1_46\ = CARRY((\fdiv1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fdiv1|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~5_combout\,
	cout0 => \fdiv1|Add0~7\,
	cout1 => \fdiv1|Add0~7COUT1_46\);

-- Location: LC_X4_Y2_N0
\fdiv1|counter[0]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|counter\(0) = DFFEAS(GND, GLOBAL(\Clock50~combout\), VCC, , , \fdiv1|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datac => \fdiv1|Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|counter\(0));

-- Location: LC_X5_Y2_N1
\fdiv1|Add0~0\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~0_combout\ = (\fdiv1|counter\(1) $ ((\fdiv1|Add0~7\)))
-- \fdiv1|Add0~2\ = CARRY(((!\fdiv1|Add0~7\) # (!\fdiv1|counter\(1))))
-- \fdiv1|Add0~2COUT1_47\ = CARRY(((!\fdiv1|Add0~7COUT1_46\) # (!\fdiv1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv1|counter\(1),
	cin0 => \fdiv1|Add0~7\,
	cin1 => \fdiv1|Add0~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~0_combout\,
	cout0 => \fdiv1|Add0~2\,
	cout1 => \fdiv1|Add0~2COUT1_47\);

-- Location: LC_X6_Y3_N9
\fdiv1|counter[1]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Equal0~0\ = (!\fdiv1|counter\(2) & (\fdiv1|counter\(0) & (B1_counter[1] & !\fdiv1|counter\(3))))
-- \fdiv1|counter\(1) = DFFEAS(\fdiv1|Equal0~0\, GLOBAL(\Clock50~combout\), VCC, , , \fdiv1|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \fdiv1|counter\(2),
	datab => \fdiv1|counter\(0),
	datac => \fdiv1|Add0~0_combout\,
	datad => \fdiv1|counter\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Equal0~0\,
	regout => \fdiv1|counter\(1));

-- Location: LC_X5_Y2_N2
\fdiv1|Add0~10\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~10_combout\ = (\fdiv1|counter\(2) $ ((!\fdiv1|Add0~2\)))
-- \fdiv1|Add0~12\ = CARRY(((\fdiv1|counter\(2) & !\fdiv1|Add0~2\)))
-- \fdiv1|Add0~12COUT1_48\ = CARRY(((\fdiv1|counter\(2) & !\fdiv1|Add0~2COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv1|counter\(2),
	cin0 => \fdiv1|Add0~2\,
	cin1 => \fdiv1|Add0~2COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~10_combout\,
	cout0 => \fdiv1|Add0~12\,
	cout1 => \fdiv1|Add0~12COUT1_48\);

-- Location: LC_X5_Y2_N5
\fdiv1|Add0~30\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~30_combout\ = (\fdiv1|counter\(5) $ ((\fdiv1|Add0~27\)))
-- \fdiv1|Add0~32\ = CARRY(((!\fdiv1|Add0~27\) # (!\fdiv1|counter\(5))))
-- \fdiv1|Add0~32COUT1_50\ = CARRY(((!\fdiv1|Add0~27\) # (!\fdiv1|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv1|counter\(5),
	cin => \fdiv1|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~30_combout\,
	cout0 => \fdiv1|Add0~32\,
	cout1 => \fdiv1|Add0~32COUT1_50\);

-- Location: LC_X3_Y2_N8
\fdiv1|counter[5]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|counter\(5) = DFFEAS((\fdiv1|Add0~30_combout\ & (((!\fdiv1|Equal0~0\) # (!\fdiv1|Equal0~1_combout\)) # (!\fdiv1|counter\(8)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \fdiv1|Add0~30_combout\,
	datab => \fdiv1|counter\(8),
	datac => \fdiv1|Equal0~1_combout\,
	datad => \fdiv1|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|counter\(5));

-- Location: LC_X5_Y2_N6
\fdiv1|Add0~35\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~35_combout\ = (\fdiv1|counter\(6) $ ((!(!\fdiv1|Add0~27\ & \fdiv1|Add0~32\) # (\fdiv1|Add0~27\ & \fdiv1|Add0~32COUT1_50\))))
-- \fdiv1|Add0~37\ = CARRY(((\fdiv1|counter\(6) & !\fdiv1|Add0~32\)))
-- \fdiv1|Add0~37COUT1_51\ = CARRY(((\fdiv1|counter\(6) & !\fdiv1|Add0~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv1|counter\(6),
	cin => \fdiv1|Add0~27\,
	cin0 => \fdiv1|Add0~32\,
	cin1 => \fdiv1|Add0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~35_combout\,
	cout0 => \fdiv1|Add0~37\,
	cout1 => \fdiv1|Add0~37COUT1_51\);

-- Location: LC_X3_Y2_N6
\fdiv1|counter[6]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|counter\(6) = DFFEAS((\fdiv1|Add0~35_combout\ & (((!\fdiv1|Equal0~0\) # (!\fdiv1|Equal0~1_combout\)) # (!\fdiv1|counter\(8)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \fdiv1|Add0~35_combout\,
	datab => \fdiv1|counter\(8),
	datac => \fdiv1|Equal0~1_combout\,
	datad => \fdiv1|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|counter\(6));

-- Location: LC_X5_Y2_N7
\fdiv1|Add0~40\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~40_combout\ = (\fdiv1|counter\(7) $ (((!\fdiv1|Add0~27\ & \fdiv1|Add0~37\) # (\fdiv1|Add0~27\ & \fdiv1|Add0~37COUT1_51\))))
-- \fdiv1|Add0~42\ = CARRY(((!\fdiv1|Add0~37\) # (!\fdiv1|counter\(7))))
-- \fdiv1|Add0~42COUT1_52\ = CARRY(((!\fdiv1|Add0~37COUT1_51\) # (!\fdiv1|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv1|counter\(7),
	cin => \fdiv1|Add0~27\,
	cin0 => \fdiv1|Add0~37\,
	cin1 => \fdiv1|Add0~37COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~40_combout\,
	cout0 => \fdiv1|Add0~42\,
	cout1 => \fdiv1|Add0~42COUT1_52\);

-- Location: LC_X3_Y2_N9
\fdiv1|counter[7]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|counter\(7) = DFFEAS((\fdiv1|Add0~40_combout\ & (((!\fdiv1|Equal0~0\) # (!\fdiv1|Equal0~1_combout\)) # (!\fdiv1|counter\(8)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \fdiv1|Add0~40_combout\,
	datab => \fdiv1|counter\(8),
	datac => \fdiv1|Equal0~1_combout\,
	datad => \fdiv1|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|counter\(7));

-- Location: LC_X3_Y2_N4
\fdiv1|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Equal0~1_combout\ = (\fdiv1|counter\(5) & (\fdiv1|counter\(7) & (\fdiv1|counter\(6) & \fdiv1|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fdiv1|counter\(5),
	datab => \fdiv1|counter\(7),
	datac => \fdiv1|counter\(6),
	datad => \fdiv1|counter\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Equal0~1_combout\);

-- Location: LC_X3_Y2_N1
\fdiv1|counter[2]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|counter\(2) = DFFEAS((\fdiv1|Add0~10_combout\ & (((!\fdiv1|Equal0~0\) # (!\fdiv1|Equal0~1_combout\)) # (!\fdiv1|counter\(8)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \fdiv1|Add0~10_combout\,
	datab => \fdiv1|counter\(8),
	datac => \fdiv1|Equal0~1_combout\,
	datad => \fdiv1|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|counter\(2));

-- Location: LC_X5_Y2_N3
\fdiv1|Add0~15\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~15_combout\ = \fdiv1|counter\(3) $ ((((\fdiv1|Add0~12\))))
-- \fdiv1|Add0~17\ = CARRY(((!\fdiv1|Add0~12\)) # (!\fdiv1|counter\(3)))
-- \fdiv1|Add0~17COUT1_49\ = CARRY(((!\fdiv1|Add0~12COUT1_48\)) # (!\fdiv1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fdiv1|counter\(3),
	cin0 => \fdiv1|Add0~12\,
	cin1 => \fdiv1|Add0~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~15_combout\,
	cout0 => \fdiv1|Add0~17\,
	cout1 => \fdiv1|Add0~17COUT1_49\);

-- Location: LC_X6_Y3_N6
\fdiv1|counter[3]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|counter\(3) = DFFEAS((((\fdiv1|Add0~15_combout\))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datad => \fdiv1|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|counter\(3));

-- Location: LC_X5_Y2_N4
\fdiv1|Add0~25\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~25_combout\ = (\fdiv1|counter\(4) $ ((!\fdiv1|Add0~17\)))
-- \fdiv1|Add0~27\ = CARRY(((\fdiv1|counter\(4) & !\fdiv1|Add0~17COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv1|counter\(4),
	cin0 => \fdiv1|Add0~17\,
	cin1 => \fdiv1|Add0~17COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~25_combout\,
	cout => \fdiv1|Add0~27\);

-- Location: LC_X3_Y2_N5
\fdiv1|counter[4]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|counter\(4) = DFFEAS((\fdiv1|Add0~25_combout\ & (((!\fdiv1|Equal0~0\) # (!\fdiv1|Equal0~1_combout\)) # (!\fdiv1|counter\(8)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \fdiv1|Add0~25_combout\,
	datab => \fdiv1|counter\(8),
	datac => \fdiv1|Equal0~1_combout\,
	datad => \fdiv1|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|counter\(4));

-- Location: LC_X5_Y2_N8
\fdiv1|Add0~20\ : maxii_lcell
-- Equation(s):
-- \fdiv1|Add0~20_combout\ = (((!\fdiv1|Add0~27\ & \fdiv1|Add0~42\) # (\fdiv1|Add0~27\ & \fdiv1|Add0~42COUT1_52\) $ (!\fdiv1|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \fdiv1|counter\(8),
	cin => \fdiv1|Add0~27\,
	cin0 => \fdiv1|Add0~42\,
	cin1 => \fdiv1|Add0~42COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv1|Add0~20_combout\);

-- Location: LC_X3_Y2_N2
\fdiv1|counter[8]\ : maxii_lcell
-- Equation(s):
-- \fdiv1|counter\(8) = DFFEAS((\fdiv1|Add0~20_combout\ & (((!\fdiv1|Equal0~0\) # (!\fdiv1|Equal0~1_combout\)) # (!\fdiv1|counter\(8)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \fdiv1|Add0~20_combout\,
	datab => \fdiv1|counter\(8),
	datac => \fdiv1|Equal0~1_combout\,
	datad => \fdiv1|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|counter\(8));

-- Location: LC_X2_Y3_N2
\fdiv1|new_clock\ : maxii_lcell
-- Equation(s):
-- \fdiv1|new_clock~regout\ = DFFEAS(\fdiv1|new_clock~regout\ $ (((\fdiv1|counter\(8) & (\fdiv1|Equal0~1_combout\ & \fdiv1|Equal0~0\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \fdiv1|counter\(8),
	datab => \fdiv1|new_clock~regout\,
	datac => \fdiv1|Equal0~1_combout\,
	datad => \fdiv1|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv1|new_clock~regout\);

-- Location: LC_X6_Y4_N0
\fdiv2|Add0~5\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~5_combout\ = ((!\fdiv2|counter\(0)))
-- \fdiv2|Add0~7\ = CARRY(((\fdiv2|counter\(0))))
-- \fdiv2|Add0~7COUT1_46\ = CARRY(((\fdiv2|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv2|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~5_combout\,
	cout0 => \fdiv2|Add0~7\,
	cout1 => \fdiv2|Add0~7COUT1_46\);

-- Location: LC_X5_Y4_N4
\fdiv2|counter[0]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|counter\(0) = DFFEAS(GND, GLOBAL(\fdiv1|new_clock~regout\), VCC, , , \fdiv2|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	datac => \fdiv2|Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|counter\(0));

-- Location: LC_X6_Y4_N1
\fdiv2|Add0~0\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~0_combout\ = (\fdiv2|counter\(1) $ ((\fdiv2|Add0~7\)))
-- \fdiv2|Add0~2\ = CARRY(((!\fdiv2|Add0~7\) # (!\fdiv2|counter\(1))))
-- \fdiv2|Add0~2COUT1_47\ = CARRY(((!\fdiv2|Add0~7COUT1_46\) # (!\fdiv2|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv2|counter\(1),
	cin0 => \fdiv2|Add0~7\,
	cin1 => \fdiv2|Add0~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~0_combout\,
	cout0 => \fdiv2|Add0~2\,
	cout1 => \fdiv2|Add0~2COUT1_47\);

-- Location: LC_X5_Y4_N2
\fdiv2|counter[1]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Equal0~0\ = (\fdiv2|counter\(0) & (!\fdiv2|counter\(3) & (B2_counter[1] & !\fdiv2|counter\(2))))
-- \fdiv2|counter\(1) = DFFEAS(\fdiv2|Equal0~0\, GLOBAL(\fdiv1|new_clock~regout\), VCC, , , \fdiv2|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	dataa => \fdiv2|counter\(0),
	datab => \fdiv2|counter\(3),
	datac => \fdiv2|Add0~0_combout\,
	datad => \fdiv2|counter\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Equal0~0\,
	regout => \fdiv2|counter\(1));

-- Location: LC_X6_Y4_N2
\fdiv2|Add0~10\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~10_combout\ = (\fdiv2|counter\(2) $ ((!\fdiv2|Add0~2\)))
-- \fdiv2|Add0~12\ = CARRY(((\fdiv2|counter\(2) & !\fdiv2|Add0~2\)))
-- \fdiv2|Add0~12COUT1_48\ = CARRY(((\fdiv2|counter\(2) & !\fdiv2|Add0~2COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv2|counter\(2),
	cin0 => \fdiv2|Add0~2\,
	cin1 => \fdiv2|Add0~2COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~10_combout\,
	cout0 => \fdiv2|Add0~12\,
	cout1 => \fdiv2|Add0~12COUT1_48\);

-- Location: LC_X7_Y4_N2
\fdiv2|counter[2]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|counter\(2) = DFFEAS((\fdiv2|Add0~10_combout\ & (((!\fdiv2|Equal0~1_combout\) # (!\fdiv2|counter\(8))) # (!\fdiv2|Equal0~0\))), GLOBAL(\fdiv1|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	dataa => \fdiv2|Equal0~0\,
	datab => \fdiv2|Add0~10_combout\,
	datac => \fdiv2|counter\(8),
	datad => \fdiv2|Equal0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|counter\(2));

-- Location: LC_X6_Y4_N3
\fdiv2|Add0~15\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~15_combout\ = \fdiv2|counter\(3) $ ((((\fdiv2|Add0~12\))))
-- \fdiv2|Add0~17\ = CARRY(((!\fdiv2|Add0~12\)) # (!\fdiv2|counter\(3)))
-- \fdiv2|Add0~17COUT1_49\ = CARRY(((!\fdiv2|Add0~12COUT1_48\)) # (!\fdiv2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fdiv2|counter\(3),
	cin0 => \fdiv2|Add0~12\,
	cin1 => \fdiv2|Add0~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~15_combout\,
	cout0 => \fdiv2|Add0~17\,
	cout1 => \fdiv2|Add0~17COUT1_49\);

-- Location: LC_X5_Y4_N5
\fdiv2|counter[3]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|counter\(3) = DFFEAS(GND, GLOBAL(\fdiv1|new_clock~regout\), VCC, , , \fdiv2|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	datac => \fdiv2|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|counter\(3));

-- Location: LC_X6_Y4_N4
\fdiv2|Add0~25\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~25_combout\ = (\fdiv2|counter\(4) $ ((!\fdiv2|Add0~17\)))
-- \fdiv2|Add0~27\ = CARRY(((\fdiv2|counter\(4) & !\fdiv2|Add0~17COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv2|counter\(4),
	cin0 => \fdiv2|Add0~17\,
	cin1 => \fdiv2|Add0~17COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~25_combout\,
	cout => \fdiv2|Add0~27\);

-- Location: LC_X7_Y4_N9
\fdiv2|counter[4]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|counter\(4) = DFFEAS((\fdiv2|Add0~25_combout\ & (((!\fdiv2|Equal0~1_combout\) # (!\fdiv2|counter\(8))) # (!\fdiv2|Equal0~0\))), GLOBAL(\fdiv1|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	dataa => \fdiv2|Equal0~0\,
	datab => \fdiv2|Add0~25_combout\,
	datac => \fdiv2|counter\(8),
	datad => \fdiv2|Equal0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|counter\(4));

-- Location: LC_X6_Y4_N5
\fdiv2|Add0~30\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~30_combout\ = \fdiv2|counter\(5) $ ((((\fdiv2|Add0~27\))))
-- \fdiv2|Add0~32\ = CARRY(((!\fdiv2|Add0~27\)) # (!\fdiv2|counter\(5)))
-- \fdiv2|Add0~32COUT1_50\ = CARRY(((!\fdiv2|Add0~27\)) # (!\fdiv2|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fdiv2|counter\(5),
	cin => \fdiv2|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~30_combout\,
	cout0 => \fdiv2|Add0~32\,
	cout1 => \fdiv2|Add0~32COUT1_50\);

-- Location: LC_X7_Y4_N6
\fdiv2|counter[5]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|counter\(5) = DFFEAS((\fdiv2|Add0~30_combout\ & (((!\fdiv2|Equal0~1_combout\) # (!\fdiv2|counter\(8))) # (!\fdiv2|Equal0~0\))), GLOBAL(\fdiv1|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	dataa => \fdiv2|Add0~30_combout\,
	datab => \fdiv2|Equal0~0\,
	datac => \fdiv2|counter\(8),
	datad => \fdiv2|Equal0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|counter\(5));

-- Location: LC_X6_Y4_N6
\fdiv2|Add0~35\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~35_combout\ = (\fdiv2|counter\(6) $ ((!(!\fdiv2|Add0~27\ & \fdiv2|Add0~32\) # (\fdiv2|Add0~27\ & \fdiv2|Add0~32COUT1_50\))))
-- \fdiv2|Add0~37\ = CARRY(((\fdiv2|counter\(6) & !\fdiv2|Add0~32\)))
-- \fdiv2|Add0~37COUT1_51\ = CARRY(((\fdiv2|counter\(6) & !\fdiv2|Add0~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv2|counter\(6),
	cin => \fdiv2|Add0~27\,
	cin0 => \fdiv2|Add0~32\,
	cin1 => \fdiv2|Add0~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~35_combout\,
	cout0 => \fdiv2|Add0~37\,
	cout1 => \fdiv2|Add0~37COUT1_51\);

-- Location: LC_X6_Y4_N7
\fdiv2|Add0~40\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~40_combout\ = (\fdiv2|counter\(7) $ (((!\fdiv2|Add0~27\ & \fdiv2|Add0~37\) # (\fdiv2|Add0~27\ & \fdiv2|Add0~37COUT1_51\))))
-- \fdiv2|Add0~42\ = CARRY(((!\fdiv2|Add0~37\) # (!\fdiv2|counter\(7))))
-- \fdiv2|Add0~42COUT1_52\ = CARRY(((!\fdiv2|Add0~37COUT1_51\) # (!\fdiv2|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fdiv2|counter\(7),
	cin => \fdiv2|Add0~27\,
	cin0 => \fdiv2|Add0~37\,
	cin1 => \fdiv2|Add0~37COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~40_combout\,
	cout0 => \fdiv2|Add0~42\,
	cout1 => \fdiv2|Add0~42COUT1_52\);

-- Location: LC_X7_Y4_N4
\fdiv2|counter[7]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|counter\(7) = DFFEAS((\fdiv2|Add0~40_combout\ & (((!\fdiv2|Equal0~1_combout\) # (!\fdiv2|counter\(8))) # (!\fdiv2|Equal0~0\))), GLOBAL(\fdiv1|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	dataa => \fdiv2|Equal0~0\,
	datab => \fdiv2|Add0~40_combout\,
	datac => \fdiv2|counter\(8),
	datad => \fdiv2|Equal0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|counter\(7));

-- Location: LC_X6_Y4_N8
\fdiv2|Add0~20\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Add0~20_combout\ = (((!\fdiv2|Add0~27\ & \fdiv2|Add0~42\) # (\fdiv2|Add0~27\ & \fdiv2|Add0~42COUT1_52\) $ (!\fdiv2|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \fdiv2|counter\(8),
	cin => \fdiv2|Add0~27\,
	cin0 => \fdiv2|Add0~42\,
	cin1 => \fdiv2|Add0~42COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Add0~20_combout\);

-- Location: LC_X7_Y4_N7
\fdiv2|counter[8]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|counter\(8) = DFFEAS((\fdiv2|Add0~20_combout\ & (((!\fdiv2|Equal0~1_combout\) # (!\fdiv2|Equal0~0\)) # (!\fdiv2|counter\(8)))), GLOBAL(\fdiv1|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	dataa => \fdiv2|counter\(8),
	datab => \fdiv2|Equal0~0\,
	datac => \fdiv2|Add0~20_combout\,
	datad => \fdiv2|Equal0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|counter\(8));

-- Location: LC_X7_Y4_N5
\fdiv2|counter[6]\ : maxii_lcell
-- Equation(s):
-- \fdiv2|counter\(6) = DFFEAS((\fdiv2|Add0~35_combout\ & (((!\fdiv2|Equal0~1_combout\) # (!\fdiv2|Equal0~0\)) # (!\fdiv2|counter\(8)))), GLOBAL(\fdiv1|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	dataa => \fdiv2|counter\(8),
	datab => \fdiv2|Equal0~0\,
	datac => \fdiv2|Add0~35_combout\,
	datad => \fdiv2|Equal0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|counter\(6));

-- Location: LC_X7_Y4_N1
\fdiv2|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \fdiv2|Equal0~1_combout\ = (\fdiv2|counter\(6) & (\fdiv2|counter\(5) & (\fdiv2|counter\(7) & \fdiv2|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fdiv2|counter\(6),
	datab => \fdiv2|counter\(5),
	datac => \fdiv2|counter\(7),
	datad => \fdiv2|counter\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fdiv2|Equal0~1_combout\);

-- Location: LC_X2_Y3_N4
\fdiv2|new_clock\ : maxii_lcell
-- Equation(s):
-- \fdiv2|new_clock~regout\ = DFFEAS(\fdiv2|new_clock~regout\ $ (((\fdiv2|Equal0~1_combout\ & (\fdiv2|Equal0~0\ & \fdiv2|counter\(8))))), GLOBAL(\fdiv1|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv1|new_clock~regout\,
	dataa => \fdiv2|Equal0~1_combout\,
	datab => \fdiv2|Equal0~0\,
	datac => \fdiv2|new_clock~regout\,
	datad => \fdiv2|counter\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fdiv2|new_clock~regout\);

-- Location: LC_X7_Y2_N1
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = ((!counter(0)))
-- \Add0~27\ = CARRY(((counter(0))))
-- \Add0~27COUT1_31\ = CARRY(((counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_31\);

-- Location: LC_X5_Y1_N0
\counter[0]\ : maxii_lcell
-- Equation(s):
-- counter(0) = DFFEAS(GND, GLOBAL(\fdiv2|new_clock~regout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fdiv2|new_clock~regout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LC_X7_Y2_N2
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (counter(1) $ ((\Add0~27\)))
-- \Add0~2\ = CARRY(((!\Add0~27\) # (!counter(1))))
-- \Add0~2COUT1_32\ = CARRY(((!\Add0~27COUT1_31\) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_32\);

-- Location: LC_X7_Y2_N7
\counter[1]\ : maxii_lcell
-- Equation(s):
-- counter(1) = DFFEAS((\Add0~0_combout\ & (((counter(1)) # (!\Equal0~0\)) # (!counter(0)))), GLOBAL(\fdiv2|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv2|new_clock~regout\,
	dataa => counter(0),
	datab => \Add0~0_combout\,
	datac => counter(1),
	datad => \Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LC_X7_Y2_N3
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = counter(2) $ ((((!\Add0~2\))))
-- \Add0~22\ = CARRY((counter(2) & ((!\Add0~2\))))
-- \Add0~22COUT1_33\ = CARRY((counter(2) & ((!\Add0~2COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_33\);

-- Location: LC_X5_Y2_N9
\counter[2]\ : maxii_lcell
-- Equation(s):
-- counter(2) = DFFEAS(GND, GLOBAL(\fdiv2|new_clock~regout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fdiv2|new_clock~regout\,
	datac => \Add0~20_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LC_X7_Y2_N4
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (counter(3) $ ((\Add0~22\)))
-- \Add0~17\ = CARRY(((!\Add0~22COUT1_33\) # (!counter(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X7_Y2_N5
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (counter(4) $ ((!\Add0~17\)))
-- \Add0~12\ = CARRY(((counter(4) & !\Add0~17\)))
-- \Add0~12COUT1_34\ = CARRY(((counter(4) & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_34\);

-- Location: LC_X7_Y2_N6
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (((!\Add0~17\ & \Add0~12\) # (\Add0~17\ & \Add0~12COUT1_34\) $ (counter(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => counter(5),
	cin => \Add0~17\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X7_Y2_N8
\counter[5]\ : maxii_lcell
-- Equation(s):
-- counter(5) = DFFEAS((\Add0~5_combout\ & (((counter(1)) # (!\Equal0~0\)) # (!counter(0)))), GLOBAL(\fdiv2|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv2|new_clock~regout\,
	dataa => \Add0~5_combout\,
	datab => counter(0),
	datac => counter(1),
	datad => \Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LC_X7_Y2_N0
\counter[3]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (!counter(2) & (counter(4) & (!counter[3] & counter(5))))
-- counter(3) = DFFEAS(\Equal0~0\, GLOBAL(\fdiv2|new_clock~regout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fdiv2|new_clock~regout\,
	dataa => counter(2),
	datab => counter(4),
	datac => \Add0~15_combout\,
	datad => counter(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => counter(3));

-- Location: LC_X7_Y2_N9
\counter[4]\ : maxii_lcell
-- Equation(s):
-- counter(4) = DFFEAS((\Add0~10_combout\ & (((counter(1)) # (!\Equal0~0\)) # (!counter(0)))), GLOBAL(\fdiv2|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv2|new_clock~regout\,
	dataa => \Add0~10_combout\,
	datab => counter(0),
	datac => counter(1),
	datad => \Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LC_X7_Y1_N2
led_out : maxii_lcell
-- Equation(s):
-- \led_out~regout\ = DFFEAS(\led_out~regout\ $ (((\Equal0~0\ & (counter(0) & !counter(1))))), GLOBAL(\fdiv2|new_clock~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fdiv2|new_clock~regout\,
	dataa => \Equal0~0\,
	datab => counter(0),
	datac => \led_out~regout\,
	datad => counter(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_out~regout\);

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

-- Location: PIN_85,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(0));

-- Location: PIN_87,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(1));

-- Location: PIN_89,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(2));

-- Location: PIN_91,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(3));

-- Location: PIN_95,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(4));

-- Location: PIN_97,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(5));

-- Location: PIN_99,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(6));

-- Location: PIN_1,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Switches[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switches(7));

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
	datain => \led_out~regout\,
	oe => VCC,
	padio => ww_LED_B(7));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment1(0));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment1(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment1(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment1(3));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment1(4));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment1(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
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
	datain => GND,
	oe => VCC,
	padio => ww_Segment2(0));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment2(1));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment2(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment2(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment2(4));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Segment2(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\Segment2[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
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


