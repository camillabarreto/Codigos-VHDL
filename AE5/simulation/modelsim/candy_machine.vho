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

-- DATE "11/11/2019 11:03:39"

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

ENTITY 	candy_machine IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	e5c : IN std_logic;
	e10c : IN std_logic;
	e25c : IN std_logic;
	d5c : OUT std_logic;
	d10c : OUT std_logic;
	candy : OUT std_logic
	);
END candy_machine;

-- Design Ports Information
-- d5c	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d10c	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- candy	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- e10c	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e25c	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e5c	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF candy_machine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_e5c : std_logic;
SIGNAL ww_e10c : std_logic;
SIGNAL ww_e25c : std_logic;
SIGNAL ww_d5c : std_logic;
SIGNAL ww_d10c : std_logic;
SIGNAL ww_candy : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \e10c~combout\ : std_logic;
SIGNAL \e5c~combout\ : std_logic;
SIGNAL \e25c~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL pr_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_e5c <= e5c;
ww_e10c <= e10c;
ww_e25c <= e25c;
d5c <= ww_d5c;
d10c <= ww_d10c;
candy <= ww_candy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cyclone_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e10c~I\ : cyclone_io
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
	padio => ww_e10c,
	combout => \e10c~combout\);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e5c~I\ : cyclone_io
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
	padio => ww_e5c,
	combout => \e5c~combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e25c~I\ : cyclone_io
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
	padio => ww_e25c,
	combout => \e25c~combout\);

-- Location: LC_X26_Y4_N5
\Mux0~0\ : cyclone_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (!\e10c~combout\ & (!\e5c~combout\ & ((\e25c~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e10c~combout\,
	datab => \e5c~combout\,
	datad => \e25c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X26_Y4_N2
\Mux3~0\ : cyclone_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (!\e5c~combout\ & ((\e10c~combout\) # ((!\e25c~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2233",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e10c~combout\,
	datab => \e5c~combout\,
	datad => \e25c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X26_Y3_N7
\Mux3~1\ : cyclone_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (pr_state(0) & ((!pr_state(2))))) # (!\Mux3~0_combout\ & (!pr_state(0) & ((!pr_state(2)) # (!pr_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0199",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => pr_state(0),
	datac => pr_state(1),
	datad => pr_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cyclone_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X26_Y3_N5
\pr_state[0]\ : cyclone_lcell
-- Equation(s):
-- pr_state(0) = DFFEAS((((\Mux3~1_combout\) # (pr_state(3)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Mux3~1_combout\,
	datad => pr_state(3),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pr_state(0));

-- Location: LC_X26_Y5_N9
\pr_state[3]\ : cyclone_lcell
-- Equation(s):
-- pr_state(3) = DFFEAS((\Mux0~0_combout\ & ((pr_state(0) & (pr_state(1) & !pr_state(2))) # (!pr_state(0) & (!pr_state(1) & pr_state(2))))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0280",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux0~0_combout\,
	datab => pr_state(0),
	datac => pr_state(1),
	datad => pr_state(2),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pr_state(3));

-- Location: LC_X26_Y3_N2
\Mux2~2\ : cyclone_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (\e5c~combout\) # ((\e25c~combout\ & ((pr_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e5c~combout\,
	datab => \e25c~combout\,
	datad => pr_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X26_Y3_N3
\Mux2~4\ : cyclone_lcell
-- Equation(s):
-- \Mux2~4_combout\ = (pr_state(0) & (!pr_state(2) & ((\e10c~combout\) # (\Mux2~2_combout\)))) # (!pr_state(0) & (((\e10c~combout\ & !\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4470",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pr_state(2),
	datab => pr_state(0),
	datac => \e10c~combout\,
	datad => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~4_combout\);

-- Location: LC_X26_Y3_N4
\pr_state[1]\ : cyclone_lcell
-- Equation(s):
-- pr_state(1) = DFFEAS((pr_state(3)) # ((pr_state(1) & (!pr_state(2) & !\Mux2~4_combout\)) # (!pr_state(1) & ((\Mux2~4_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pr_state(2),
	datab => pr_state(1),
	datac => pr_state(3),
	datad => \Mux2~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pr_state(1));

-- Location: LC_X26_Y3_N9
\Mux1~2\ : cyclone_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (((pr_state(1)) # (pr_state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => pr_state(1),
	datad => pr_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X26_Y3_N8
\Mux1~1\ : cyclone_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux0~0_combout\ & (!pr_state(2) & ((!pr_state(1)) # (!pr_state(0))))) # (!\Mux0~0_combout\ & (!pr_state(0) & (!pr_state(1) & pr_state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "012a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => pr_state(0),
	datac => pr_state(1),
	datad => pr_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X26_Y3_N6
\Mux2~3\ : cyclone_lcell
-- Equation(s):
-- \Mux2~3_combout\ = (((pr_state(1) & !pr_state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => pr_state(1),
	datad => pr_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X26_Y3_N0
\Mux1~0\ : cyclone_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux2~3_combout\ & ((\e5c~combout\ & (pr_state(0))) # (!\e5c~combout\ & ((\e10c~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e5c~combout\,
	datab => pr_state(0),
	datac => \e10c~combout\,
	datad => \Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X26_Y3_N1
\pr_state[2]\ : cyclone_lcell
-- Equation(s):
-- pr_state(2) = DFFEAS((pr_state(3) & (!\Mux1~2_combout\)) # (!pr_state(3) & (((\Mux1~1_combout\) # (\Mux1~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f5c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux1~2_combout\,
	datab => \Mux1~1_combout\,
	datac => pr_state(3),
	datad => \Mux1~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pr_state(2));

-- Location: LC_X26_Y5_N5
\Mux5~0\ : cyclone_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (!pr_state(0) & ((pr_state(2) & (pr_state(1) & !pr_state(3))) # (!pr_state(2) & (!pr_state(1) & pr_state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0018",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pr_state(2),
	datab => pr_state(1),
	datac => pr_state(3),
	datad => pr_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X26_Y5_N4
\Mux6~0\ : cyclone_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (pr_state(0) & ((pr_state(2) & (pr_state(1) & !pr_state(3))) # (!pr_state(2) & (!pr_state(1) & pr_state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pr_state(2),
	datab => pr_state(1),
	datac => pr_state(3),
	datad => pr_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X26_Y4_N4
\Mux4~0\ : cyclone_lcell
-- Equation(s):
-- \Mux4~0_combout\ = ((!pr_state(1) & ((!pr_state(0))))) # (!pr_state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5577",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pr_state(2),
	datab => pr_state(1),
	datad => pr_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d5c~I\ : cyclone_io
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
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d5c);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d10c~I\ : cyclone_io
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
	datain => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d10c);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\candy~I\ : cyclone_io
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
	datain => \ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_candy);
END structure;


