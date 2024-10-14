-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/11/2024 13:28:20"

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
	Switches : IN std_logic_vector(7 DOWNTO 0);
	Clock50 : IN std_logic;
	Buttons : IN std_logic_vector(3 DOWNTO 0);
	LED_B : OUT std_logic_vector(7 DOWNTO 0);
	Segment1 : OUT std_logic_vector(7 DOWNTO 0);
	Segment2 : OUT std_logic_vector(7 DOWNTO 0);
	Segment3 : OUT std_logic_vector(7 DOWNTO 0);
	Segment4 : OUT std_logic_vector(7 DOWNTO 0);
	Clock14 : IN std_logic
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
SIGNAL ww_Switches : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clock50 : std_logic;
SIGNAL ww_Buttons : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Segment1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Segment2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Segment3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Segment4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clock14 : std_logic;
SIGNAL \Clock50~combout\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella3~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella4~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella5~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella5~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella6~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella6~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella7~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella8~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella8~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella9~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella9~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella10~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella10~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella11~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella11~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella12~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella13~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella13~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella14~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella14~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella15~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella15~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella16~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella16~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella17~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella18~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella18~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella19~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella19~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella20~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella20~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella21~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella21~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella22~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella23~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella23~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella24~COUT\ : std_logic;
SIGNAL \inst10|inst|auto_generated|counter_cella24~COUTCOUT1_1\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst5|8~regout\ : std_logic;
SIGNAL \inst4|8~regout\ : std_logic;
SIGNAL \inst3|8~regout\ : std_logic;
SIGNAL \inst|8~regout\ : std_logic;
SIGNAL \Buttons~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|inst|auto_generated|safe_q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Switches~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|ALT_INV_8~regout\ : std_logic;
SIGNAL \inst4|ALT_INV_8~regout\ : std_logic;
SIGNAL \inst3|ALT_INV_8~regout\ : std_logic;

BEGIN

LED_A <= ww_LED_A;
ww_Switches <= Switches;
ww_Clock50 <= Clock50;
ww_Buttons <= Buttons;
LED_B <= ww_LED_B;
Segment1 <= ww_Segment1;
Segment2 <= ww_Segment2;
Segment3 <= ww_Segment3;
Segment4 <= ww_Segment4;
ww_Clock14 <= Clock14;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst5|ALT_INV_8~regout\ <= NOT \inst5|8~regout\;
\inst4|ALT_INV_8~regout\ <= NOT \inst4|8~regout\;
\inst3|ALT_INV_8~regout\ <= NOT \inst3|8~regout\;

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

-- Location: LC_X3_Y3_N2
\inst10|inst|auto_generated|counter_cella0\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(0) = DFFEAS(((!\inst10|inst|auto_generated|safe_q\(0))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella0~COUT\ = CARRY(((\inst10|inst|auto_generated|safe_q\(0))))
-- \inst10|inst|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(((\inst10|inst|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(0),
	cout0 => \inst10|inst|auto_generated|counter_cella0~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X3_Y3_N3
\inst10|inst|auto_generated|counter_cella1\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(1) = DFFEAS(\inst10|inst|auto_generated|safe_q\(1) $ ((((\inst10|inst|auto_generated|counter_cella0~COUT\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella0~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(1)))
-- \inst10|inst|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\inst10|inst|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(1),
	aclr => GND,
	cin0 => \inst10|inst|auto_generated|counter_cella0~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(1),
	cout0 => \inst10|inst|auto_generated|counter_cella1~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X3_Y3_N4
\inst10|inst|auto_generated|counter_cella2\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(2) = DFFEAS(\inst10|inst|auto_generated|safe_q\(2) $ ((((!\inst10|inst|auto_generated|counter_cella1~COUT\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella2~COUT\ = CARRY((\inst10|inst|auto_generated|safe_q\(2) & ((!\inst10|inst|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(2),
	aclr => GND,
	cin0 => \inst10|inst|auto_generated|counter_cella1~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(2),
	cout => \inst10|inst|auto_generated|counter_cella2~COUT\);

-- Location: LC_X3_Y3_N5
\inst10|inst|auto_generated|counter_cella3\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(3) = DFFEAS(\inst10|inst|auto_generated|safe_q\(3) $ ((((\inst10|inst|auto_generated|counter_cella2~COUT\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella3~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella2~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(3)))
-- \inst10|inst|auto_generated|counter_cella3~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella2~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(3),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella2~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(3),
	cout0 => \inst10|inst|auto_generated|counter_cella3~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella3~COUTCOUT1_1\);

-- Location: LC_X3_Y3_N6
\inst10|inst|auto_generated|counter_cella4\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(4) = DFFEAS(\inst10|inst|auto_generated|safe_q\(4) $ ((((!(!\inst10|inst|auto_generated|counter_cella2~COUT\ & \inst10|inst|auto_generated|counter_cella3~COUT\) # (\inst10|inst|auto_generated|counter_cella2~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella3~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella4~COUT\ = CARRY((\inst10|inst|auto_generated|safe_q\(4) & ((!\inst10|inst|auto_generated|counter_cella3~COUT\))))
-- \inst10|inst|auto_generated|counter_cella4~COUTCOUT1_1\ = CARRY((\inst10|inst|auto_generated|safe_q\(4) & ((!\inst10|inst|auto_generated|counter_cella3~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(4),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella2~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella3~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella3~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(4),
	cout0 => \inst10|inst|auto_generated|counter_cella4~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella4~COUTCOUT1_1\);

-- Location: LC_X3_Y3_N7
\inst10|inst|auto_generated|counter_cella5\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(5) = DFFEAS((\inst10|inst|auto_generated|safe_q\(5) $ (((!\inst10|inst|auto_generated|counter_cella2~COUT\ & \inst10|inst|auto_generated|counter_cella4~COUT\) # (\inst10|inst|auto_generated|counter_cella2~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella4~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella5~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella4~COUT\) # (!\inst10|inst|auto_generated|safe_q\(5))))
-- \inst10|inst|auto_generated|counter_cella5~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella4~COUTCOUT1_1\) # (!\inst10|inst|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(5),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella2~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella4~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella4~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(5),
	cout0 => \inst10|inst|auto_generated|counter_cella5~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella5~COUTCOUT1_1\);

-- Location: LC_X3_Y3_N8
\inst10|inst|auto_generated|counter_cella6\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(6) = DFFEAS(\inst10|inst|auto_generated|safe_q\(6) $ ((((!(!\inst10|inst|auto_generated|counter_cella2~COUT\ & \inst10|inst|auto_generated|counter_cella5~COUT\) # (\inst10|inst|auto_generated|counter_cella2~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella5~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella6~COUT\ = CARRY((\inst10|inst|auto_generated|safe_q\(6) & ((!\inst10|inst|auto_generated|counter_cella5~COUT\))))
-- \inst10|inst|auto_generated|counter_cella6~COUTCOUT1_1\ = CARRY((\inst10|inst|auto_generated|safe_q\(6) & ((!\inst10|inst|auto_generated|counter_cella5~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(6),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella2~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella5~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella5~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(6),
	cout0 => \inst10|inst|auto_generated|counter_cella6~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella6~COUTCOUT1_1\);

-- Location: LC_X3_Y3_N9
\inst10|inst|auto_generated|counter_cella7\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(7) = DFFEAS((\inst10|inst|auto_generated|safe_q\(7) $ (((!\inst10|inst|auto_generated|counter_cella2~COUT\ & \inst10|inst|auto_generated|counter_cella6~COUT\) # (\inst10|inst|auto_generated|counter_cella2~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella6~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella7~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella6~COUTCOUT1_1\) # (!\inst10|inst|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(7),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella2~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella6~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella6~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(7),
	cout => \inst10|inst|auto_generated|counter_cella7~COUT\);

-- Location: LC_X4_Y3_N0
\inst10|inst|auto_generated|counter_cella8\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(8) = DFFEAS((\inst10|inst|auto_generated|safe_q\(8) $ ((!\inst10|inst|auto_generated|counter_cella7~COUT\))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella8~COUT\ = CARRY(((\inst10|inst|auto_generated|safe_q\(8) & !\inst10|inst|auto_generated|counter_cella7~COUT\)))
-- \inst10|inst|auto_generated|counter_cella8~COUTCOUT1_1\ = CARRY(((\inst10|inst|auto_generated|safe_q\(8) & !\inst10|inst|auto_generated|counter_cella7~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(8),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella7~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(8),
	cout0 => \inst10|inst|auto_generated|counter_cella8~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella8~COUTCOUT1_1\);

-- Location: LC_X4_Y3_N1
\inst10|inst|auto_generated|counter_cella9\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(9) = DFFEAS((\inst10|inst|auto_generated|safe_q\(9) $ (((!\inst10|inst|auto_generated|counter_cella7~COUT\ & \inst10|inst|auto_generated|counter_cella8~COUT\) # (\inst10|inst|auto_generated|counter_cella7~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella8~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella9~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella8~COUT\) # (!\inst10|inst|auto_generated|safe_q\(9))))
-- \inst10|inst|auto_generated|counter_cella9~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella8~COUTCOUT1_1\) # (!\inst10|inst|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(9),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella7~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella8~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella8~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(9),
	cout0 => \inst10|inst|auto_generated|counter_cella9~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella9~COUTCOUT1_1\);

-- Location: LC_X4_Y3_N2
\inst10|inst|auto_generated|counter_cella10\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(10) = DFFEAS((\inst10|inst|auto_generated|safe_q\(10) $ ((!(!\inst10|inst|auto_generated|counter_cella7~COUT\ & \inst10|inst|auto_generated|counter_cella9~COUT\) # (\inst10|inst|auto_generated|counter_cella7~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella9~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella10~COUT\ = CARRY(((\inst10|inst|auto_generated|safe_q\(10) & !\inst10|inst|auto_generated|counter_cella9~COUT\)))
-- \inst10|inst|auto_generated|counter_cella10~COUTCOUT1_1\ = CARRY(((\inst10|inst|auto_generated|safe_q\(10) & !\inst10|inst|auto_generated|counter_cella9~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(10),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella7~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella9~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella9~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(10),
	cout0 => \inst10|inst|auto_generated|counter_cella10~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella10~COUTCOUT1_1\);

-- Location: LC_X4_Y3_N3
\inst10|inst|auto_generated|counter_cella11\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(11) = DFFEAS(\inst10|inst|auto_generated|safe_q\(11) $ (((((!\inst10|inst|auto_generated|counter_cella7~COUT\ & \inst10|inst|auto_generated|counter_cella10~COUT\) # (\inst10|inst|auto_generated|counter_cella7~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella10~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella11~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella10~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(11)))
-- \inst10|inst|auto_generated|counter_cella11~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella10~COUTCOUT1_1\)) # (!\inst10|inst|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(11),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella7~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella10~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella10~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(11),
	cout0 => \inst10|inst|auto_generated|counter_cella11~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella11~COUTCOUT1_1\);

-- Location: LC_X4_Y3_N4
\inst10|inst|auto_generated|counter_cella12\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(12) = DFFEAS(\inst10|inst|auto_generated|safe_q\(12) $ ((((!(!\inst10|inst|auto_generated|counter_cella7~COUT\ & \inst10|inst|auto_generated|counter_cella11~COUT\) # (\inst10|inst|auto_generated|counter_cella7~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella11~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella12~COUT\ = CARRY((\inst10|inst|auto_generated|safe_q\(12) & ((!\inst10|inst|auto_generated|counter_cella11~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(12),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella7~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella11~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella11~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(12),
	cout => \inst10|inst|auto_generated|counter_cella12~COUT\);

-- Location: LC_X4_Y3_N5
\inst10|inst|auto_generated|counter_cella13\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(13) = DFFEAS(\inst10|inst|auto_generated|safe_q\(13) $ ((((\inst10|inst|auto_generated|counter_cella12~COUT\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella13~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella12~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(13)))
-- \inst10|inst|auto_generated|counter_cella13~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella12~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(13),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella12~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(13),
	cout0 => \inst10|inst|auto_generated|counter_cella13~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella13~COUTCOUT1_1\);

-- Location: LC_X4_Y3_N6
\inst10|inst|auto_generated|counter_cella14\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(14) = DFFEAS(\inst10|inst|auto_generated|safe_q\(14) $ ((((!(!\inst10|inst|auto_generated|counter_cella12~COUT\ & \inst10|inst|auto_generated|counter_cella13~COUT\) # (\inst10|inst|auto_generated|counter_cella12~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella13~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella14~COUT\ = CARRY((\inst10|inst|auto_generated|safe_q\(14) & ((!\inst10|inst|auto_generated|counter_cella13~COUT\))))
-- \inst10|inst|auto_generated|counter_cella14~COUTCOUT1_1\ = CARRY((\inst10|inst|auto_generated|safe_q\(14) & ((!\inst10|inst|auto_generated|counter_cella13~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(14),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella12~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella13~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella13~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(14),
	cout0 => \inst10|inst|auto_generated|counter_cella14~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella14~COUTCOUT1_1\);

-- Location: LC_X4_Y3_N7
\inst10|inst|auto_generated|counter_cella15\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(15) = DFFEAS((\inst10|inst|auto_generated|safe_q\(15) $ (((!\inst10|inst|auto_generated|counter_cella12~COUT\ & \inst10|inst|auto_generated|counter_cella14~COUT\) # (\inst10|inst|auto_generated|counter_cella12~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella14~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella15~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella14~COUT\) # (!\inst10|inst|auto_generated|safe_q\(15))))
-- \inst10|inst|auto_generated|counter_cella15~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella14~COUTCOUT1_1\) # (!\inst10|inst|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(15),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella12~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella14~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella14~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(15),
	cout0 => \inst10|inst|auto_generated|counter_cella15~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella15~COUTCOUT1_1\);

-- Location: LC_X4_Y3_N8
\inst10|inst|auto_generated|counter_cella16\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(16) = DFFEAS(\inst10|inst|auto_generated|safe_q\(16) $ ((((!(!\inst10|inst|auto_generated|counter_cella12~COUT\ & \inst10|inst|auto_generated|counter_cella15~COUT\) # (\inst10|inst|auto_generated|counter_cella12~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella15~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella16~COUT\ = CARRY((\inst10|inst|auto_generated|safe_q\(16) & ((!\inst10|inst|auto_generated|counter_cella15~COUT\))))
-- \inst10|inst|auto_generated|counter_cella16~COUTCOUT1_1\ = CARRY((\inst10|inst|auto_generated|safe_q\(16) & ((!\inst10|inst|auto_generated|counter_cella15~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(16),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella12~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella15~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella15~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(16),
	cout0 => \inst10|inst|auto_generated|counter_cella16~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella16~COUTCOUT1_1\);

-- Location: LC_X4_Y3_N9
\inst10|inst|auto_generated|counter_cella17\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(17) = DFFEAS((\inst10|inst|auto_generated|safe_q\(17) $ (((!\inst10|inst|auto_generated|counter_cella12~COUT\ & \inst10|inst|auto_generated|counter_cella16~COUT\) # (\inst10|inst|auto_generated|counter_cella12~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella16~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella17~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella16~COUTCOUT1_1\) # (!\inst10|inst|auto_generated|safe_q\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(17),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella12~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella16~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella16~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(17),
	cout => \inst10|inst|auto_generated|counter_cella17~COUT\);

-- Location: LC_X5_Y3_N0
\inst10|inst|auto_generated|counter_cella18\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(18) = DFFEAS((\inst10|inst|auto_generated|safe_q\(18) $ ((!\inst10|inst|auto_generated|counter_cella17~COUT\))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella18~COUT\ = CARRY(((\inst10|inst|auto_generated|safe_q\(18) & !\inst10|inst|auto_generated|counter_cella17~COUT\)))
-- \inst10|inst|auto_generated|counter_cella18~COUTCOUT1_1\ = CARRY(((\inst10|inst|auto_generated|safe_q\(18) & !\inst10|inst|auto_generated|counter_cella17~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(18),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella17~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(18),
	cout0 => \inst10|inst|auto_generated|counter_cella18~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella18~COUTCOUT1_1\);

-- Location: LC_X5_Y3_N1
\inst10|inst|auto_generated|counter_cella19\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(19) = DFFEAS((\inst10|inst|auto_generated|safe_q\(19) $ (((!\inst10|inst|auto_generated|counter_cella17~COUT\ & \inst10|inst|auto_generated|counter_cella18~COUT\) # (\inst10|inst|auto_generated|counter_cella17~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella18~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella19~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella18~COUT\) # (!\inst10|inst|auto_generated|safe_q\(19))))
-- \inst10|inst|auto_generated|counter_cella19~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella18~COUTCOUT1_1\) # (!\inst10|inst|auto_generated|safe_q\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(19),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella17~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella18~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella18~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(19),
	cout0 => \inst10|inst|auto_generated|counter_cella19~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella19~COUTCOUT1_1\);

-- Location: LC_X5_Y3_N2
\inst10|inst|auto_generated|counter_cella20\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(20) = DFFEAS((\inst10|inst|auto_generated|safe_q\(20) $ ((!(!\inst10|inst|auto_generated|counter_cella17~COUT\ & \inst10|inst|auto_generated|counter_cella19~COUT\) # (\inst10|inst|auto_generated|counter_cella17~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella19~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella20~COUT\ = CARRY(((\inst10|inst|auto_generated|safe_q\(20) & !\inst10|inst|auto_generated|counter_cella19~COUT\)))
-- \inst10|inst|auto_generated|counter_cella20~COUTCOUT1_1\ = CARRY(((\inst10|inst|auto_generated|safe_q\(20) & !\inst10|inst|auto_generated|counter_cella19~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(20),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella17~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella19~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella19~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(20),
	cout0 => \inst10|inst|auto_generated|counter_cella20~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella20~COUTCOUT1_1\);

-- Location: LC_X5_Y3_N3
\inst10|inst|auto_generated|counter_cella21\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(21) = DFFEAS(\inst10|inst|auto_generated|safe_q\(21) $ (((((!\inst10|inst|auto_generated|counter_cella17~COUT\ & \inst10|inst|auto_generated|counter_cella20~COUT\) # (\inst10|inst|auto_generated|counter_cella17~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella20~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella21~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella20~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(21)))
-- \inst10|inst|auto_generated|counter_cella21~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella20~COUTCOUT1_1\)) # (!\inst10|inst|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(21),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella17~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella20~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella20~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(21),
	cout0 => \inst10|inst|auto_generated|counter_cella21~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella21~COUTCOUT1_1\);

-- Location: LC_X5_Y3_N4
\inst10|inst|auto_generated|counter_cella22\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(22) = DFFEAS(\inst10|inst|auto_generated|safe_q\(22) $ ((((!(!\inst10|inst|auto_generated|counter_cella17~COUT\ & \inst10|inst|auto_generated|counter_cella21~COUT\) # (\inst10|inst|auto_generated|counter_cella17~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella21~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella22~COUT\ = CARRY((\inst10|inst|auto_generated|safe_q\(22) & ((!\inst10|inst|auto_generated|counter_cella21~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(22),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella17~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella21~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella21~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(22),
	cout => \inst10|inst|auto_generated|counter_cella22~COUT\);

-- Location: LC_X5_Y3_N5
\inst10|inst|auto_generated|counter_cella23\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(23) = DFFEAS(\inst10|inst|auto_generated|safe_q\(23) $ ((((\inst10|inst|auto_generated|counter_cella22~COUT\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella23~COUT\ = CARRY(((!\inst10|inst|auto_generated|counter_cella22~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(23)))
-- \inst10|inst|auto_generated|counter_cella23~COUTCOUT1_1\ = CARRY(((!\inst10|inst|auto_generated|counter_cella22~COUT\)) # (!\inst10|inst|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(23),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella22~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(23),
	cout0 => \inst10|inst|auto_generated|counter_cella23~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella23~COUTCOUT1_1\);

-- Location: LC_X5_Y3_N6
\inst10|inst|auto_generated|counter_cella24\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(24) = DFFEAS(\inst10|inst|auto_generated|safe_q\(24) $ ((((!(!\inst10|inst|auto_generated|counter_cella22~COUT\ & \inst10|inst|auto_generated|counter_cella23~COUT\) # (\inst10|inst|auto_generated|counter_cella22~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella23~COUTCOUT1_1\))))), GLOBAL(\Clock50~combout\), VCC, , , , , , )
-- \inst10|inst|auto_generated|counter_cella24~COUT\ = CARRY((\inst10|inst|auto_generated|safe_q\(24) & ((!\inst10|inst|auto_generated|counter_cella23~COUT\))))
-- \inst10|inst|auto_generated|counter_cella24~COUTCOUT1_1\ = CARRY((\inst10|inst|auto_generated|safe_q\(24) & ((!\inst10|inst|auto_generated|counter_cella23~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	dataa => \inst10|inst|auto_generated|safe_q\(24),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella22~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella23~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella23~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(24),
	cout0 => \inst10|inst|auto_generated|counter_cella24~COUT\,
	cout1 => \inst10|inst|auto_generated|counter_cella24~COUTCOUT1_1\);

-- Location: LC_X5_Y3_N7
\inst10|inst|auto_generated|counter_cella25\ : maxii_lcell
-- Equation(s):
-- \inst10|inst|auto_generated|safe_q\(25) = DFFEAS((\inst10|inst|auto_generated|safe_q\(25) $ (((!\inst10|inst|auto_generated|counter_cella22~COUT\ & \inst10|inst|auto_generated|counter_cella24~COUT\) # (\inst10|inst|auto_generated|counter_cella22~COUT\ & 
-- \inst10|inst|auto_generated|counter_cella24~COUTCOUT1_1\)))), GLOBAL(\Clock50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock50~combout\,
	datab => \inst10|inst|auto_generated|safe_q\(25),
	aclr => GND,
	cin => \inst10|inst|auto_generated|counter_cella22~COUT\,
	cin0 => \inst10|inst|auto_generated|counter_cella24~COUT\,
	cin1 => \inst10|inst|auto_generated|counter_cella24~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst|auto_generated|safe_q\(25));

-- Location: PIN_20,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\Buttons[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Buttons(3),
	combout => \Buttons~combout\(3));

-- Location: LC_X2_Y3_N8
inst8 : maxii_lcell
-- Equation(s):
-- \inst8~combout\ = ((\Buttons~combout\(3)) # ((\inst4|8~regout\ & \inst|8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Buttons~combout\(3),
	datac => \inst4|8~regout\,
	datad => \inst|8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8~combout\);

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

-- Location: LC_X5_Y3_N9
\inst5|8\ : maxii_lcell
-- Equation(s):
-- \inst5|8~regout\ = DFFEAS((((!\inst5|8~regout\))), \inst10|inst|auto_generated|safe_q\(25), !GLOBAL(\inst8~combout\), , \Switches~combout\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|auto_generated|safe_q\(25),
	datad => \inst5|8~regout\,
	aclr => \inst8~combout\,
	ena => \Switches~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|8~regout\);

-- Location: LC_X2_Y3_N4
\inst4|8\ : maxii_lcell
-- Equation(s):
-- \inst4|8~regout\ = DFFEAS((((!\inst4|8~regout\))), !\inst5|8~regout\, !GLOBAL(\inst8~combout\), , \Switches~combout\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_8~regout\,
	datad => \inst4|8~regout\,
	aclr => \inst8~combout\,
	ena => \Switches~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|8~regout\);

-- Location: LC_X3_Y3_N1
\inst3|8\ : maxii_lcell
-- Equation(s):
-- \inst3|8~regout\ = DFFEAS((((!\inst3|8~regout\))), !\inst4|8~regout\, !GLOBAL(\inst8~combout\), , \Switches~combout\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_8~regout\,
	datad => \inst3|8~regout\,
	aclr => \inst8~combout\,
	ena => \Switches~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|8~regout\);

-- Location: LC_X2_Y3_N3
\inst|8\ : maxii_lcell
-- Equation(s):
-- \inst|8~regout\ = DFFEAS((((!\inst|8~regout\))), !\inst3|8~regout\, !GLOBAL(\inst8~combout\), , \Switches~combout\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_8~regout\,
	datad => \inst|8~regout\,
	aclr => \inst8~combout\,
	ena => \Switches~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|8~regout\);

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
	datain => \inst|8~regout\,
	oe => VCC,
	padio => ww_LED_A(3));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst3|8~regout\,
	oe => VCC,
	padio => ww_LED_A(2));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst4|8~regout\,
	oe => VCC,
	padio => ww_LED_A(1));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED_A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst5|8~regout\,
	oe => VCC,
	padio => ww_LED_A(0));

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

-- Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\Clock14~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock14);
END structure;


