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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "09/25/2019 19:28:24"

-- 
-- Device: Altera EP1C3T100A8 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	inc_gray IS
    PORT (
	gray_in : IN std_logic_vector(3 DOWNTO 0);
	gray_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END inc_gray;

-- Design Ports Information
-- gray_out[0]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gray_out[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gray_out[2]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gray_out[3]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gray_in[2]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gray_in[3]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gray_in[1]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gray_in[0]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF inc_gray IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_gray_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_gray_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \gray_out~4_combout\ : std_logic;
SIGNAL \gray_out~5_combout\ : std_logic;
SIGNAL \gray_out~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \gray_in~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_gray_out~4_combout\ : std_logic;

BEGIN

ww_gray_in <= gray_in;
gray_out <= ww_gray_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_gray_out~4_combout\ <= NOT \gray_out~4_combout\;

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gray_in[3]~I\ : cyclone_io
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
	padio => ww_gray_in(3),
	combout => \gray_in~combout\(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gray_in[2]~I\ : cyclone_io
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
	padio => ww_gray_in(2),
	combout => \gray_in~combout\(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gray_in[1]~I\ : cyclone_io
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
	padio => ww_gray_in(1),
	combout => \gray_in~combout\(1));

-- Location: LC_X1_Y3_N5
\gray_out~4\ : cyclone_lcell
-- Equation(s):
-- \gray_out~4_combout\ = \gray_in~combout\(3) $ (((\gray_in~combout\(2) $ (\gray_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gray_in~combout\(3),
	datac => \gray_in~combout\(2),
	datad => \gray_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gray_out~4_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gray_in[0]~I\ : cyclone_io
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
	padio => ww_gray_in(0),
	combout => \gray_in~combout\(0));

-- Location: LC_X1_Y3_N2
\gray_out~5\ : cyclone_lcell
-- Equation(s):
-- \gray_out~5_combout\ = (\gray_in~combout\(0) & (\gray_in~combout\(3) $ (((!\gray_in~combout\(2)))))) # (!\gray_in~combout\(0) & (((\gray_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gray_in~combout\(3),
	datab => \gray_in~combout\(1),
	datac => \gray_in~combout\(2),
	datad => \gray_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gray_out~5_combout\);

-- Location: LC_X1_Y3_N6
\gray_out~6\ : cyclone_lcell
-- Equation(s):
-- \gray_out~6_combout\ = (\gray_in~combout\(1) & ((\gray_in~combout\(0) & ((\gray_in~combout\(2)))) # (!\gray_in~combout\(0) & (!\gray_in~combout\(3))))) # (!\gray_in~combout\(1) & (((\gray_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f074",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gray_in~combout\(3),
	datab => \gray_in~combout\(1),
	datac => \gray_in~combout\(2),
	datad => \gray_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gray_out~6_combout\);

-- Location: LC_X1_Y3_N4
\Add0~2\ : cyclone_lcell
-- Equation(s):
-- \Add0~2_combout\ = (\gray_in~combout\(1) & (\gray_in~combout\(3))) # (!\gray_in~combout\(1) & ((\gray_in~combout\(0) & (\gray_in~combout\(3))) # (!\gray_in~combout\(0) & ((\gray_in~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aab8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gray_in~combout\(3),
	datab => \gray_in~combout\(1),
	datac => \gray_in~combout\(2),
	datad => \gray_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~2_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gray_out[0]~I\ : cyclone_io
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
	datain => \ALT_INV_gray_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gray_out(0));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gray_out[1]~I\ : cyclone_io
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
	datain => \gray_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gray_out(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gray_out[2]~I\ : cyclone_io
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
	datain => \gray_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gray_out(2));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gray_out[3]~I\ : cyclone_io
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
	datain => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gray_out(3));
END structure;


