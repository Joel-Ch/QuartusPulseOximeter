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

-- DATE "11/06/2023 15:58:43"

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
	AND2In : OUT std_logic;
	Clock : IN std_logic;
	AND2Out : OUT std_logic;
	AND1Out : OUT std_logic;
	Q : OUT std_logic;
	\Q_\ : OUT std_logic;
	\End\ : OUT std_logic;
	AND1In : OUT std_logic
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
SIGNAL ww_AND2In : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_AND2Out : std_logic;
SIGNAL ww_AND1Out : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \ww_Q_\ : std_logic;
SIGNAL \ww_End\ : std_logic;
SIGNAL ww_AND1In : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \inst4~1_combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst9~1_combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \ALT_INV_inst~combout\ : std_logic;
SIGNAL \ALT_INV_inst3~combout\ : std_logic;
SIGNAL \ALT_INV_inst4~1_combout\ : std_logic;

BEGIN

AND2In <= ww_AND2In;
ww_Clock <= Clock;
AND2Out <= ww_AND2Out;
AND1Out <= ww_AND1Out;
Q <= ww_Q;
\Q_\ <= \ww_Q_\;
\End\ <= \ww_End\;
AND1In <= ww_AND1In;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst~combout\ <= NOT \inst~combout\;
\ALT_INV_inst3~combout\ <= NOT \inst3~combout\;
\ALT_INV_inst4~1_combout\ <= NOT \inst4~1_combout\;

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: LC_X5_Y1_N8
\inst4~1\ : maxii_lcell
-- Equation(s):
-- \inst4~1_combout\ = (\Clock~combout\ $ (((\inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Clock~combout\,
	datad => \inst4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst4~1_combout\);

-- Location: LC_X5_Y1_N6
inst : maxii_lcell
-- Equation(s):
-- \inst~combout\ = (!\inst4~1_combout\ & (((\Clock~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~1_combout\,
	datad => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst~combout\);

-- Location: LC_X5_Y1_N5
inst3 : maxii_lcell
-- Equation(s):
-- \inst3~combout\ = (\inst4~1_combout\ & (((\Clock~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~1_combout\,
	datad => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3~combout\);

-- Location: LC_X5_Y1_N9
inst8 : maxii_lcell
-- Equation(s):
-- \inst8~combout\ = (\inst4~1_combout\) # (((\Clock~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~1_combout\,
	datad => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8~combout\);

-- Location: LC_X5_Y1_N4
\inst9~1\ : maxii_lcell
-- Equation(s):
-- \inst9~1_combout\ = (\inst9~1_combout\ $ (((\inst4~1_combout\) # (\Clock~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~1_combout\,
	datac => \inst9~1_combout\,
	datad => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9~1_combout\);

-- Location: LC_X5_Y1_N7
inst10 : maxii_lcell
-- Equation(s):
-- \inst10~combout\ = (\inst4~1_combout\) # (((\inst9~1_combout\) # (\Clock~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~1_combout\,
	datac => \inst9~1_combout\,
	datad => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\AND2In~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst4~1_combout\,
	oe => VCC,
	padio => ww_AND2In);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\AND2Out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst~combout\,
	oe => VCC,
	padio => ww_AND2Out);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\AND1Out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst3~combout\,
	oe => VCC,
	padio => ww_AND1Out);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8~combout\,
	oe => VCC,
	padio => ww_Q);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q_~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst4~1_combout\,
	oe => VCC,
	padio => \ww_Q_\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\End~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst10~combout\,
	oe => VCC,
	padio => \ww_End\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\AND1In~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst4~1_combout\,
	oe => VCC,
	padio => ww_AND1In);
END structure;


