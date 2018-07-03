-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/02/2018 20:13:12"

-- 
-- Device: Altera EP2C15AF484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	somador_paralelo_4bits IS
    PORT (
	A1 : IN std_logic_vector(3 DOWNTO 0);
	B1 : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	aS71 : OUT std_logic;
	bS71 : OUT std_logic;
	cS71 : OUT std_logic;
	dS71 : OUT std_logic;
	eS71 : OUT std_logic;
	fS71 : OUT std_logic;
	gS71 : OUT std_logic;
	aS72 : OUT std_logic;
	bS72 : OUT std_logic;
	cS72 : OUT std_logic;
	dS72 : OUT std_logic;
	eS72 : OUT std_logic;
	fS72 : OUT std_logic;
	gS72 : OUT std_logic;
	Cout : OUT std_logic
	);
END somador_paralelo_4bits;

-- Design Ports Information
-- aS71	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bS71	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cS71	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dS71	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- eS71	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fS71	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gS71	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aS72	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bS72	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cS72	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dS72	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- eS72	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fS72	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gS72	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cout	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B1[0]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cin	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B1[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B1[2]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B1[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A1[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF somador_paralelo_4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_aS71 : std_logic;
SIGNAL ww_bS71 : std_logic;
SIGNAL ww_cS71 : std_logic;
SIGNAL ww_dS71 : std_logic;
SIGNAL ww_eS71 : std_logic;
SIGNAL ww_fS71 : std_logic;
SIGNAL ww_gS71 : std_logic;
SIGNAL ww_aS72 : std_logic;
SIGNAL ww_bS72 : std_logic;
SIGNAL ww_cS72 : std_logic;
SIGNAL ww_dS72 : std_logic;
SIGNAL ww_eS72 : std_logic;
SIGNAL ww_fS72 : std_logic;
SIGNAL ww_gS72 : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \L1|L1|S~1_cout\ : std_logic;
SIGNAL \L1|L1|S~3\ : std_logic;
SIGNAL \L1|L1|S~5\ : std_logic;
SIGNAL \L1|L1|S~6_combout\ : std_logic;
SIGNAL \L1|L1|S~4_combout\ : std_logic;
SIGNAL \L1|L1|S~7\ : std_logic;
SIGNAL \L1|L1|S~8_combout\ : std_logic;
SIGNAL \L1|L1|S~2_combout\ : std_logic;
SIGNAL \L3|aS7~0_combout\ : std_logic;
SIGNAL \L3|bS7~0_combout\ : std_logic;
SIGNAL \L3|cS7~combout\ : std_logic;
SIGNAL \L3|eS7~0_combout\ : std_logic;
SIGNAL \L3|fS7~0_combout\ : std_logic;
SIGNAL \L3|gS7~0_combout\ : std_logic;
SIGNAL \L2|BCD1[0]~0_combout\ : std_logic;
SIGNAL \L1|L1|S~9\ : std_logic;
SIGNAL \L1|L1|S~10_combout\ : std_logic;
SIGNAL \B1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A1 <= A1;
ww_B1 <= B1;
ww_Cin <= Cin;
aS71 <= ww_aS71;
bS71 <= ww_bS71;
cS71 <= ww_cS71;
dS71 <= ww_dS71;
eS71 <= ww_eS71;
fS71 <= ww_fS71;
gS71 <= ww_gS71;
aS72 <= ww_aS72;
bS72 <= ww_bS72;
cS72 <= ww_cS72;
dS72 <= ww_dS72;
eS72 <= ww_eS72;
fS72 <= ww_fS72;
gS72 <= ww_gS72;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B1(0),
	combout => \B1~combout\(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B1(1),
	combout => \B1~combout\(1));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B1(2),
	combout => \B1~combout\(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A1(3),
	combout => \A1~combout\(3));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A1(2),
	combout => \A1~combout\(2));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A1(1),
	combout => \A1~combout\(1));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A1(0),
	combout => \A1~combout\(0));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Cin,
	combout => \Cin~combout\);

-- Location: LCCOMB_X1_Y13_N0
\L1|L1|S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|L1|S~1_cout\ = CARRY(\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datad => VCC,
	cout => \L1|L1|S~1_cout\);

-- Location: LCCOMB_X1_Y13_N2
\L1|L1|S~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|L1|S~2_combout\ = (\B1~combout\(0) & ((\A1~combout\(0) & (\L1|L1|S~1_cout\ & VCC)) # (!\A1~combout\(0) & (!\L1|L1|S~1_cout\)))) # (!\B1~combout\(0) & ((\A1~combout\(0) & (!\L1|L1|S~1_cout\)) # (!\A1~combout\(0) & ((\L1|L1|S~1_cout\) # (GND)))))
-- \L1|L1|S~3\ = CARRY((\B1~combout\(0) & (!\A1~combout\(0) & !\L1|L1|S~1_cout\)) # (!\B1~combout\(0) & ((!\L1|L1|S~1_cout\) # (!\A1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\(0),
	datab => \A1~combout\(0),
	datad => VCC,
	cin => \L1|L1|S~1_cout\,
	combout => \L1|L1|S~2_combout\,
	cout => \L1|L1|S~3\);

-- Location: LCCOMB_X1_Y13_N4
\L1|L1|S~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|L1|S~4_combout\ = ((\B1~combout\(1) $ (\A1~combout\(1) $ (!\L1|L1|S~3\)))) # (GND)
-- \L1|L1|S~5\ = CARRY((\B1~combout\(1) & ((\A1~combout\(1)) # (!\L1|L1|S~3\))) # (!\B1~combout\(1) & (\A1~combout\(1) & !\L1|L1|S~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\(1),
	datab => \A1~combout\(1),
	datad => VCC,
	cin => \L1|L1|S~3\,
	combout => \L1|L1|S~4_combout\,
	cout => \L1|L1|S~5\);

-- Location: LCCOMB_X1_Y13_N6
\L1|L1|S~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|L1|S~6_combout\ = (\B1~combout\(2) & ((\A1~combout\(2) & (\L1|L1|S~5\ & VCC)) # (!\A1~combout\(2) & (!\L1|L1|S~5\)))) # (!\B1~combout\(2) & ((\A1~combout\(2) & (!\L1|L1|S~5\)) # (!\A1~combout\(2) & ((\L1|L1|S~5\) # (GND)))))
-- \L1|L1|S~7\ = CARRY((\B1~combout\(2) & (!\A1~combout\(2) & !\L1|L1|S~5\)) # (!\B1~combout\(2) & ((!\L1|L1|S~5\) # (!\A1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\(2),
	datab => \A1~combout\(2),
	datad => VCC,
	cin => \L1|L1|S~5\,
	combout => \L1|L1|S~6_combout\,
	cout => \L1|L1|S~7\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B1(3),
	combout => \B1~combout\(3));

-- Location: LCCOMB_X1_Y13_N8
\L1|L1|S~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|L1|S~8_combout\ = ((\A1~combout\(3) $ (\B1~combout\(3) $ (!\L1|L1|S~7\)))) # (GND)
-- \L1|L1|S~9\ = CARRY((\A1~combout\(3) & ((\B1~combout\(3)) # (!\L1|L1|S~7\))) # (!\A1~combout\(3) & (\B1~combout\(3) & !\L1|L1|S~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\(3),
	datab => \B1~combout\(3),
	datad => VCC,
	cin => \L1|L1|S~7\,
	combout => \L1|L1|S~8_combout\,
	cout => \L1|L1|S~9\);

-- Location: LCCOMB_X1_Y13_N20
\L3|aS7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|aS7~0_combout\ = (\L1|L1|S~2_combout\) # ((\L1|L1|S~4_combout\ & ((\L1|L1|S~6_combout\) # (\L1|L1|S~8_combout\))) # (!\L1|L1|S~4_combout\ & ((!\L1|L1|S~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|S~6_combout\,
	datab => \L1|L1|S~4_combout\,
	datac => \L1|L1|S~8_combout\,
	datad => \L1|L1|S~2_combout\,
	combout => \L3|aS7~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\L3|bS7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|bS7~0_combout\ = ((\L1|L1|S~8_combout\) # (!\L1|L1|S~6_combout\)) # (!\L1|L1|S~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|L1|S~4_combout\,
	datac => \L1|L1|S~8_combout\,
	datad => \L1|L1|S~6_combout\,
	combout => \L3|bS7~0_combout\);

-- Location: LCCOMB_X1_Y13_N16
\L3|cS7\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|cS7~combout\ = \L1|L1|S~4_combout\ $ (\L1|L1|S~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|L1|S~4_combout\,
	datac => \L1|L1|S~8_combout\,
	combout => \L3|cS7~combout\);

-- Location: LCCOMB_X1_Y13_N26
\L3|eS7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|eS7~0_combout\ = (\L1|L1|S~4_combout\ & ((\L1|L1|S~8_combout\) # (\L1|L1|S~6_combout\))) # (!\L1|L1|S~4_combout\ & (!\L1|L1|S~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|L1|S~4_combout\,
	datac => \L1|L1|S~8_combout\,
	datad => \L1|L1|S~6_combout\,
	combout => \L3|eS7~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\L3|fS7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|fS7~0_combout\ = (\L1|L1|S~2_combout\) # ((\L1|L1|S~6_combout\ & (\L1|L1|S~4_combout\ $ (\L1|L1|S~8_combout\))) # (!\L1|L1|S~6_combout\ & ((\L1|L1|S~4_combout\) # (!\L1|L1|S~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|S~6_combout\,
	datab => \L1|L1|S~4_combout\,
	datac => \L1|L1|S~8_combout\,
	datad => \L1|L1|S~2_combout\,
	combout => \L3|fS7~0_combout\);

-- Location: LCCOMB_X1_Y13_N30
\L3|gS7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|gS7~0_combout\ = (\L1|L1|S~6_combout\) # ((\L1|L1|S~2_combout\) # ((\L1|L1|S~4_combout\ & !\L1|L1|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|S~6_combout\,
	datab => \L1|L1|S~4_combout\,
	datac => \L1|L1|S~8_combout\,
	datad => \L1|L1|S~2_combout\,
	combout => \L3|gS7~0_combout\);

-- Location: LCCOMB_X1_Y13_N24
\L2|BCD1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|BCD1[0]~0_combout\ = (\L1|L1|S~8_combout\ & ((\L1|L1|S~4_combout\) # (\L1|L1|S~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|L1|S~4_combout\,
	datac => \L1|L1|S~8_combout\,
	datad => \L1|L1|S~6_combout\,
	combout => \L2|BCD1[0]~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\L1|L1|S~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|L1|S~10_combout\ = \L1|L1|S~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \L1|L1|S~9\,
	combout => \L1|L1|S~10_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aS71~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L3|aS7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aS71);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bS71~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L3|bS7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bS71);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cS71~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L3|cS7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cS71);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dS71~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L3|aS7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dS71);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\eS71~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L3|eS7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_eS71);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fS71~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L3|fS7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fS71);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gS71~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L3|gS7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gS71);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aS72~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aS72);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bS72~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bS72);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cS72~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cS72);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dS72~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dS72);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\eS72~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_eS72);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fS72~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fS72);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gS72~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L2|BCD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gS72);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L1|L1|S~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cout);
END structure;


