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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "11/06/2023 11:56:10"

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

ENTITY 	CPLD IS
    PORT (
	Q : OUT std_logic;
	Clock : IN std_logic;
	T : IN std_logic;
	\_Q\ : OUT std_logic
	);
END CPLD;

-- Design Ports Information


ARCHITECTURE structure OF CPLD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL \ww__Q\ : std_logic;
SIGNAL \T~combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \ALT_INV_inst2~combout\ : std_logic;
SIGNAL \ALT_INV_inst3~combout\ : std_logic;

BEGIN

Q <= ww_Q;
ww_Clock <= Clock;
ww_T <= T;
\_Q\ <= \ww__Q\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst2~combout\ <= NOT \inst2~combout\;
\ALT_INV_inst3~combout\ <= NOT \inst3~combout\;

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T,
	combout => \T~combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: LC_X4_Y2_N4
inst2 : maxii_lcell
-- Equation(s):
-- \inst2~combout\ = ((\T~combout\ & (\Clock~combout\ & !\inst2~combout\))) # (!\inst3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\,
	datab => \Clock~combout\,
	datac => \inst2~combout\,
	datad => \inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2~combout\);

-- Location: LC_X4_Y2_N2
inst3 : maxii_lcell
-- Equation(s):
-- \inst3~combout\ = ((\T~combout\ & (\Clock~combout\ & !\inst3~combout\))) # (!\inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\,
	datab => \Clock~combout\,
	datac => \inst2~combout\,
	datad => \inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst3~combout\,
	oe => VCC,
	padio => ww_Q);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\_Q~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst2~combout\,
	oe => VCC,
	padio => \ww__Q\);
END structure;


