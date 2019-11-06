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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/06/2019 18:06:52"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EightButtonDriver IS
    PORT (
	EBD_buttons : IN std_logic_vector(7 DOWNTO 0);
	EBD_clock : IN std_logic;
	EBD_reset : IN std_logic;
	EBD_event : OUT std_logic;
	EBD_buttons_save : OUT std_logic_vector(7 DOWNTO 0)
	);
END EightButtonDriver;

-- Design Ports Information
-- EBD_event	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons_save[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons_save[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons_save[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons_save[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons_save[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons_save[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons_save[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons_save[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_buttons[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EBD_reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EightButtonDriver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EBD_buttons : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EBD_clock : std_logic;
SIGNAL ww_EBD_reset : std_logic;
SIGNAL ww_EBD_event : std_logic;
SIGNAL ww_EBD_buttons_save : std_logic_vector(7 DOWNTO 0);
SIGNAL \EBD_reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EBD_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OR8x1|Y~0_combout\ : std_logic;
SIGNAL \EBD_event~output_o\ : std_logic;
SIGNAL \EBD_buttons_save[0]~output_o\ : std_logic;
SIGNAL \EBD_buttons_save[1]~output_o\ : std_logic;
SIGNAL \EBD_buttons_save[2]~output_o\ : std_logic;
SIGNAL \EBD_buttons_save[3]~output_o\ : std_logic;
SIGNAL \EBD_buttons_save[4]~output_o\ : std_logic;
SIGNAL \EBD_buttons_save[5]~output_o\ : std_logic;
SIGNAL \EBD_buttons_save[6]~output_o\ : std_logic;
SIGNAL \EBD_buttons_save[7]~output_o\ : std_logic;
SIGNAL \EBD_clock~input_o\ : std_logic;
SIGNAL \EBD_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \EBD_buttons[5]~input_o\ : std_logic;
SIGNAL \EBD_buttons[4]~input_o\ : std_logic;
SIGNAL \EBD_buttons[7]~input_o\ : std_logic;
SIGNAL \OR8x1|Y~1_combout\ : std_logic;
SIGNAL \OR8x1|Y~combout\ : std_logic;
SIGNAL \EBD_reset~input_o\ : std_logic;
SIGNAL \EBD_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Eve_Reg|data_out~q\ : std_logic;
SIGNAL \EBD_buttons[0]~input_o\ : std_logic;
SIGNAL \But_Reg|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \EBD_buttons[1]~input_o\ : std_logic;
SIGNAL \But_Reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \EBD_buttons[2]~input_o\ : std_logic;
SIGNAL \EBD_buttons[3]~input_o\ : std_logic;
SIGNAL \But_Reg|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \EBD_buttons[6]~input_o\ : std_logic;
SIGNAL \But_Reg|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \But_Reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_EBD_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_EBD_buttons <= EBD_buttons;
ww_EBD_clock <= EBD_clock;
ww_EBD_reset <= EBD_reset;
EBD_event <= ww_EBD_event;
EBD_buttons_save <= ww_EBD_buttons_save;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\EBD_reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \EBD_reset~input_o\);

\EBD_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \EBD_clock~input_o\);
\ALT_INV_EBD_reset~inputclkctrl_outclk\ <= NOT \EBD_reset~inputclkctrl_outclk\;

-- Location: LCCOMB_X1_Y9_N10
\OR8x1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OR8x1|Y~0_combout\ = (\EBD_buttons[0]~input_o\) # ((\EBD_buttons[3]~input_o\) # ((\EBD_buttons[2]~input_o\) # (\EBD_buttons[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EBD_buttons[0]~input_o\,
	datab => \EBD_buttons[3]~input_o\,
	datac => \EBD_buttons[2]~input_o\,
	datad => \EBD_buttons[1]~input_o\,
	combout => \OR8x1|Y~0_combout\);

-- Location: IOOBUF_X1_Y0_N9
\EBD_event~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Eve_Reg|data_out~q\,
	devoe => ww_devoe,
	o => \EBD_event~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\EBD_buttons_save[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \But_Reg|data_out\(0),
	devoe => ww_devoe,
	o => \EBD_buttons_save[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\EBD_buttons_save[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \But_Reg|data_out\(1),
	devoe => ww_devoe,
	o => \EBD_buttons_save[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\EBD_buttons_save[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \But_Reg|data_out\(2),
	devoe => ww_devoe,
	o => \EBD_buttons_save[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\EBD_buttons_save[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \But_Reg|data_out\(3),
	devoe => ww_devoe,
	o => \EBD_buttons_save[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\EBD_buttons_save[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \But_Reg|data_out\(4),
	devoe => ww_devoe,
	o => \EBD_buttons_save[4]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\EBD_buttons_save[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \But_Reg|data_out\(5),
	devoe => ww_devoe,
	o => \EBD_buttons_save[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\EBD_buttons_save[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \But_Reg|data_out\(6),
	devoe => ww_devoe,
	o => \EBD_buttons_save[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\EBD_buttons_save[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \But_Reg|data_out\(7),
	devoe => ww_devoe,
	o => \EBD_buttons_save[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\EBD_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_clock,
	o => \EBD_clock~input_o\);

-- Location: CLKCTRL_G2
\EBD_clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EBD_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EBD_clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\EBD_buttons[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_buttons(5),
	o => \EBD_buttons[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\EBD_buttons[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_buttons(4),
	o => \EBD_buttons[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\EBD_buttons[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_buttons(7),
	o => \EBD_buttons[7]~input_o\);

-- Location: LCCOMB_X1_Y9_N12
\OR8x1|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OR8x1|Y~1_combout\ = (\EBD_buttons[6]~input_o\) # ((\EBD_buttons[5]~input_o\) # ((\EBD_buttons[4]~input_o\) # (\EBD_buttons[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EBD_buttons[6]~input_o\,
	datab => \EBD_buttons[5]~input_o\,
	datac => \EBD_buttons[4]~input_o\,
	datad => \EBD_buttons[7]~input_o\,
	combout => \OR8x1|Y~1_combout\);

-- Location: LCCOMB_X1_Y9_N0
\OR8x1|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \OR8x1|Y~combout\ = (\OR8x1|Y~0_combout\) # (\OR8x1|Y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OR8x1|Y~0_combout\,
	datad => \OR8x1|Y~1_combout\,
	combout => \OR8x1|Y~combout\);

-- Location: IOIBUF_X0_Y16_N15
\EBD_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_reset,
	o => \EBD_reset~input_o\);

-- Location: CLKCTRL_G4
\EBD_reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EBD_reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EBD_reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y9_N1
\Eve_Reg|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	d => \OR8x1|Y~combout\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Eve_Reg|data_out~q\);

-- Location: IOIBUF_X0_Y12_N1
\EBD_buttons[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_buttons(0),
	o => \EBD_buttons[0]~input_o\);

-- Location: LCCOMB_X1_Y9_N26
\But_Reg|data_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \But_Reg|data_out[0]~feeder_combout\ = \EBD_buttons[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EBD_buttons[0]~input_o\,
	combout => \But_Reg|data_out[0]~feeder_combout\);

-- Location: FF_X1_Y9_N27
\But_Reg|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	d => \But_Reg|data_out[0]~feeder_combout\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	ena => \OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \But_Reg|data_out\(0));

-- Location: IOIBUF_X0_Y15_N1
\EBD_buttons[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_buttons(1),
	o => \EBD_buttons[1]~input_o\);

-- Location: LCCOMB_X1_Y9_N28
\But_Reg|data_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \But_Reg|data_out[1]~feeder_combout\ = \EBD_buttons[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EBD_buttons[1]~input_o\,
	combout => \But_Reg|data_out[1]~feeder_combout\);

-- Location: FF_X1_Y9_N29
\But_Reg|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	d => \But_Reg|data_out[1]~feeder_combout\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	ena => \OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \But_Reg|data_out\(1));

-- Location: IOIBUF_X0_Y7_N8
\EBD_buttons[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_buttons(2),
	o => \EBD_buttons[2]~input_o\);

-- Location: FF_X1_Y9_N31
\But_Reg|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	asdata => \EBD_buttons[2]~input_o\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \But_Reg|data_out\(2));

-- Location: IOIBUF_X0_Y10_N22
\EBD_buttons[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_buttons(3),
	o => \EBD_buttons[3]~input_o\);

-- Location: FF_X1_Y9_N17
\But_Reg|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	asdata => \EBD_buttons[3]~input_o\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \But_Reg|data_out\(3));

-- Location: FF_X1_Y9_N3
\But_Reg|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	asdata => \EBD_buttons[4]~input_o\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \But_Reg|data_out\(4));

-- Location: LCCOMB_X1_Y9_N20
\But_Reg|data_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \But_Reg|data_out[5]~feeder_combout\ = \EBD_buttons[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EBD_buttons[5]~input_o\,
	combout => \But_Reg|data_out[5]~feeder_combout\);

-- Location: FF_X1_Y9_N21
\But_Reg|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	d => \But_Reg|data_out[5]~feeder_combout\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	ena => \OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \But_Reg|data_out\(5));

-- Location: IOIBUF_X0_Y11_N1
\EBD_buttons[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EBD_buttons(6),
	o => \EBD_buttons[6]~input_o\);

-- Location: FF_X1_Y9_N23
\But_Reg|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	asdata => \EBD_buttons[6]~input_o\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \But_Reg|data_out\(6));

-- Location: LCCOMB_X1_Y9_N24
\But_Reg|data_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \But_Reg|data_out[7]~feeder_combout\ = \EBD_buttons[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EBD_buttons[7]~input_o\,
	combout => \But_Reg|data_out[7]~feeder_combout\);

-- Location: FF_X1_Y9_N25
\But_Reg|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EBD_clock~inputclkctrl_outclk\,
	d => \But_Reg|data_out[7]~feeder_combout\,
	clrn => \ALT_INV_EBD_reset~inputclkctrl_outclk\,
	ena => \OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \But_Reg|data_out\(7));

ww_EBD_event <= \EBD_event~output_o\;

ww_EBD_buttons_save(0) <= \EBD_buttons_save[0]~output_o\;

ww_EBD_buttons_save(1) <= \EBD_buttons_save[1]~output_o\;

ww_EBD_buttons_save(2) <= \EBD_buttons_save[2]~output_o\;

ww_EBD_buttons_save(3) <= \EBD_buttons_save[3]~output_o\;

ww_EBD_buttons_save(4) <= \EBD_buttons_save[4]~output_o\;

ww_EBD_buttons_save(5) <= \EBD_buttons_save[5]~output_o\;

ww_EBD_buttons_save(6) <= \EBD_buttons_save[6]~output_o\;

ww_EBD_buttons_save(7) <= \EBD_buttons_save[7]~output_o\;
END structure;


