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

-- DATE "10/30/2019 18:04:18"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EFES_Fpga_Top IS
    PORT (
	TOP_Buttons : IN std_logic_vector(7 DOWNTO 0);
	TOP_clk : IN std_logic;
	TOP_uart_output : OUT std_logic;
	TOP_7_dig_A : OUT std_logic;
	TOP_7_dig_B : OUT std_logic;
	TOP_7_dig_C : OUT std_logic;
	TOP_7_dig_D : OUT std_logic;
	TOP_7_dig_E : OUT std_logic;
	TOP_7_dig_F : OUT std_logic;
	TOP_7_dig_G : OUT std_logic;
	TOP_7_dig_cntr : OUT std_logic_vector(3 DOWNTO 0);
	TOP_mem_address : OUT std_logic_vector(12 DOWNTO 0);
	TOP_mem_bank : OUT std_logic_vector(1 DOWNTO 0);
	TOP_mem_data : INOUT std_logic_vector(15 DOWNTO 0);
	TOP_mem_ras_n : OUT std_logic;
	TOP_mem_cas_n : OUT std_logic;
	TOP_mem_we_n : OUT std_logic;
	TOP_mem_clk_enable : OUT std_logic;
	TOP_mem_clk : OUT std_logic;
	TOP_mem_cs_n : OUT std_logic;
	TOP_mem_dqml : OUT std_logic;
	TOP_mem_dqmh : OUT std_logic
	);
END EFES_Fpga_Top;

-- Design Ports Information
-- TOP_Buttons[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[5]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_uart_output	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_A	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_B	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_C	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_D	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_E	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_F	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_G	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_cntr[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_cntr[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_cntr[2]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_7_dig_cntr[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[9]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[10]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[11]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_address[12]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_bank[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_bank[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_ras_n	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_cas_n	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_we_n	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_clk_enable	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_clk	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_cs_n	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_dqml	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_dqmh	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[4]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[10]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[11]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[14]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_mem_data[15]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EFES_Fpga_Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TOP_Buttons : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TOP_clk : std_logic;
SIGNAL ww_TOP_uart_output : std_logic;
SIGNAL ww_TOP_7_dig_A : std_logic;
SIGNAL ww_TOP_7_dig_B : std_logic;
SIGNAL ww_TOP_7_dig_C : std_logic;
SIGNAL ww_TOP_7_dig_D : std_logic;
SIGNAL ww_TOP_7_dig_E : std_logic;
SIGNAL ww_TOP_7_dig_F : std_logic;
SIGNAL ww_TOP_7_dig_G : std_logic;
SIGNAL ww_TOP_7_dig_cntr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TOP_mem_address : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_TOP_mem_bank : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_TOP_mem_ras_n : std_logic;
SIGNAL ww_TOP_mem_cas_n : std_logic;
SIGNAL ww_TOP_mem_we_n : std_logic;
SIGNAL ww_TOP_mem_clk_enable : std_logic;
SIGNAL ww_TOP_mem_clk : std_logic;
SIGNAL ww_TOP_mem_cs_n : std_logic;
SIGNAL ww_TOP_mem_dqml : std_logic;
SIGNAL ww_TOP_mem_dqmh : std_logic;
SIGNAL \TOP_Buttons[0]~input_o\ : std_logic;
SIGNAL \TOP_Buttons[1]~input_o\ : std_logic;
SIGNAL \TOP_Buttons[2]~input_o\ : std_logic;
SIGNAL \TOP_Buttons[3]~input_o\ : std_logic;
SIGNAL \TOP_Buttons[4]~input_o\ : std_logic;
SIGNAL \TOP_Buttons[5]~input_o\ : std_logic;
SIGNAL \TOP_Buttons[6]~input_o\ : std_logic;
SIGNAL \TOP_Buttons[7]~input_o\ : std_logic;
SIGNAL \TOP_clk~input_o\ : std_logic;
SIGNAL \TOP_mem_data[0]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[1]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[2]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[3]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[4]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[5]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[6]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[7]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[8]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[9]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[10]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[11]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[12]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[13]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[14]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[15]~input_o\ : std_logic;
SIGNAL \TOP_mem_data[0]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[1]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[2]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[3]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[4]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[5]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[6]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[7]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[8]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[9]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[10]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[11]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[12]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[13]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[14]~output_o\ : std_logic;
SIGNAL \TOP_mem_data[15]~output_o\ : std_logic;
SIGNAL \TOP_uart_output~output_o\ : std_logic;
SIGNAL \TOP_7_dig_A~output_o\ : std_logic;
SIGNAL \TOP_7_dig_B~output_o\ : std_logic;
SIGNAL \TOP_7_dig_C~output_o\ : std_logic;
SIGNAL \TOP_7_dig_D~output_o\ : std_logic;
SIGNAL \TOP_7_dig_E~output_o\ : std_logic;
SIGNAL \TOP_7_dig_F~output_o\ : std_logic;
SIGNAL \TOP_7_dig_G~output_o\ : std_logic;
SIGNAL \TOP_7_dig_cntr[0]~output_o\ : std_logic;
SIGNAL \TOP_7_dig_cntr[1]~output_o\ : std_logic;
SIGNAL \TOP_7_dig_cntr[2]~output_o\ : std_logic;
SIGNAL \TOP_7_dig_cntr[3]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[0]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[1]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[2]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[3]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[4]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[5]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[6]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[7]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[8]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[9]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[10]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[11]~output_o\ : std_logic;
SIGNAL \TOP_mem_address[12]~output_o\ : std_logic;
SIGNAL \TOP_mem_bank[0]~output_o\ : std_logic;
SIGNAL \TOP_mem_bank[1]~output_o\ : std_logic;
SIGNAL \TOP_mem_ras_n~output_o\ : std_logic;
SIGNAL \TOP_mem_cas_n~output_o\ : std_logic;
SIGNAL \TOP_mem_we_n~output_o\ : std_logic;
SIGNAL \TOP_mem_clk_enable~output_o\ : std_logic;
SIGNAL \TOP_mem_clk~output_o\ : std_logic;
SIGNAL \TOP_mem_cs_n~output_o\ : std_logic;
SIGNAL \TOP_mem_dqml~output_o\ : std_logic;
SIGNAL \TOP_mem_dqmh~output_o\ : std_logic;

BEGIN

ww_TOP_Buttons <= TOP_Buttons;
ww_TOP_clk <= TOP_clk;
TOP_uart_output <= ww_TOP_uart_output;
TOP_7_dig_A <= ww_TOP_7_dig_A;
TOP_7_dig_B <= ww_TOP_7_dig_B;
TOP_7_dig_C <= ww_TOP_7_dig_C;
TOP_7_dig_D <= ww_TOP_7_dig_D;
TOP_7_dig_E <= ww_TOP_7_dig_E;
TOP_7_dig_F <= ww_TOP_7_dig_F;
TOP_7_dig_G <= ww_TOP_7_dig_G;
TOP_7_dig_cntr <= ww_TOP_7_dig_cntr;
TOP_mem_address <= ww_TOP_mem_address;
TOP_mem_bank <= ww_TOP_mem_bank;
TOP_mem_ras_n <= ww_TOP_mem_ras_n;
TOP_mem_cas_n <= ww_TOP_mem_cas_n;
TOP_mem_we_n <= ww_TOP_mem_we_n;
TOP_mem_clk_enable <= ww_TOP_mem_clk_enable;
TOP_mem_clk <= ww_TOP_mem_clk;
TOP_mem_cs_n <= ww_TOP_mem_cs_n;
TOP_mem_dqml <= ww_TOP_mem_dqml;
TOP_mem_dqmh <= ww_TOP_mem_dqmh;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X11_Y34_N2
\TOP_mem_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\TOP_mem_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\TOP_mem_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[2]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\TOP_mem_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\TOP_mem_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[4]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\TOP_mem_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\TOP_mem_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[6]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\TOP_mem_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[7]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\TOP_mem_data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\TOP_mem_data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[9]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\TOP_mem_data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\TOP_mem_data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[11]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\TOP_mem_data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[12]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\TOP_mem_data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[13]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\TOP_mem_data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[14]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\TOP_mem_data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \TOP_mem_data[15]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\TOP_uart_output~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_uart_output~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\TOP_7_dig_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_A~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\TOP_7_dig_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_B~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\TOP_7_dig_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_C~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\TOP_7_dig_D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_D~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\TOP_7_dig_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_E~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\TOP_7_dig_F~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_F~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\TOP_7_dig_G~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_G~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\TOP_7_dig_cntr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_cntr[0]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\TOP_7_dig_cntr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_cntr[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\TOP_7_dig_cntr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_cntr[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\TOP_7_dig_cntr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_7_dig_cntr[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\TOP_mem_address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[0]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\TOP_mem_address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\TOP_mem_address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\TOP_mem_address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\TOP_mem_address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[4]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\TOP_mem_address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\TOP_mem_address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\TOP_mem_address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\TOP_mem_address[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[8]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\TOP_mem_address[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\TOP_mem_address[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[10]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\TOP_mem_address[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[11]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\TOP_mem_address[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_address[12]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\TOP_mem_bank[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_bank[0]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\TOP_mem_bank[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_bank[1]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\TOP_mem_ras_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_ras_n~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\TOP_mem_cas_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_cas_n~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\TOP_mem_we_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_we_n~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\TOP_mem_clk_enable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_clk_enable~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\TOP_mem_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_clk~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\TOP_mem_cs_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_cs_n~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\TOP_mem_dqml~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_dqml~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\TOP_mem_dqmh~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TOP_mem_dqmh~output_o\);

-- Location: IOIBUF_X3_Y34_N1
\TOP_Buttons[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(0),
	o => \TOP_Buttons[0]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\TOP_Buttons[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(1),
	o => \TOP_Buttons[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\TOP_Buttons[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(2),
	o => \TOP_Buttons[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\TOP_Buttons[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(3),
	o => \TOP_Buttons[3]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\TOP_Buttons[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(4),
	o => \TOP_Buttons[4]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\TOP_Buttons[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(5),
	o => \TOP_Buttons[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\TOP_Buttons[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(6),
	o => \TOP_Buttons[6]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\TOP_Buttons[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(7),
	o => \TOP_Buttons[7]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\TOP_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_clk,
	o => \TOP_clk~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\TOP_mem_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(0),
	o => \TOP_mem_data[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\TOP_mem_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(1),
	o => \TOP_mem_data[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\TOP_mem_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(2),
	o => \TOP_mem_data[2]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\TOP_mem_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(3),
	o => \TOP_mem_data[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\TOP_mem_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(4),
	o => \TOP_mem_data[4]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\TOP_mem_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(5),
	o => \TOP_mem_data[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\TOP_mem_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(6),
	o => \TOP_mem_data[6]~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\TOP_mem_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(7),
	o => \TOP_mem_data[7]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\TOP_mem_data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(8),
	o => \TOP_mem_data[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\TOP_mem_data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(9),
	o => \TOP_mem_data[9]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\TOP_mem_data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(10),
	o => \TOP_mem_data[10]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\TOP_mem_data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(11),
	o => \TOP_mem_data[11]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\TOP_mem_data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(12),
	o => \TOP_mem_data[12]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\TOP_mem_data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(13),
	o => \TOP_mem_data[13]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\TOP_mem_data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(14),
	o => \TOP_mem_data[14]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\TOP_mem_data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => TOP_mem_data(15),
	o => \TOP_mem_data[15]~input_o\);

ww_TOP_uart_output <= \TOP_uart_output~output_o\;

ww_TOP_7_dig_A <= \TOP_7_dig_A~output_o\;

ww_TOP_7_dig_B <= \TOP_7_dig_B~output_o\;

ww_TOP_7_dig_C <= \TOP_7_dig_C~output_o\;

ww_TOP_7_dig_D <= \TOP_7_dig_D~output_o\;

ww_TOP_7_dig_E <= \TOP_7_dig_E~output_o\;

ww_TOP_7_dig_F <= \TOP_7_dig_F~output_o\;

ww_TOP_7_dig_G <= \TOP_7_dig_G~output_o\;

ww_TOP_7_dig_cntr(0) <= \TOP_7_dig_cntr[0]~output_o\;

ww_TOP_7_dig_cntr(1) <= \TOP_7_dig_cntr[1]~output_o\;

ww_TOP_7_dig_cntr(2) <= \TOP_7_dig_cntr[2]~output_o\;

ww_TOP_7_dig_cntr(3) <= \TOP_7_dig_cntr[3]~output_o\;

ww_TOP_mem_address(0) <= \TOP_mem_address[0]~output_o\;

ww_TOP_mem_address(1) <= \TOP_mem_address[1]~output_o\;

ww_TOP_mem_address(2) <= \TOP_mem_address[2]~output_o\;

ww_TOP_mem_address(3) <= \TOP_mem_address[3]~output_o\;

ww_TOP_mem_address(4) <= \TOP_mem_address[4]~output_o\;

ww_TOP_mem_address(5) <= \TOP_mem_address[5]~output_o\;

ww_TOP_mem_address(6) <= \TOP_mem_address[6]~output_o\;

ww_TOP_mem_address(7) <= \TOP_mem_address[7]~output_o\;

ww_TOP_mem_address(8) <= \TOP_mem_address[8]~output_o\;

ww_TOP_mem_address(9) <= \TOP_mem_address[9]~output_o\;

ww_TOP_mem_address(10) <= \TOP_mem_address[10]~output_o\;

ww_TOP_mem_address(11) <= \TOP_mem_address[11]~output_o\;

ww_TOP_mem_address(12) <= \TOP_mem_address[12]~output_o\;

ww_TOP_mem_bank(0) <= \TOP_mem_bank[0]~output_o\;

ww_TOP_mem_bank(1) <= \TOP_mem_bank[1]~output_o\;

ww_TOP_mem_ras_n <= \TOP_mem_ras_n~output_o\;

ww_TOP_mem_cas_n <= \TOP_mem_cas_n~output_o\;

ww_TOP_mem_we_n <= \TOP_mem_we_n~output_o\;

ww_TOP_mem_clk_enable <= \TOP_mem_clk_enable~output_o\;

ww_TOP_mem_clk <= \TOP_mem_clk~output_o\;

ww_TOP_mem_cs_n <= \TOP_mem_cs_n~output_o\;

ww_TOP_mem_dqml <= \TOP_mem_dqml~output_o\;

ww_TOP_mem_dqmh <= \TOP_mem_dqmh~output_o\;

TOP_mem_data(0) <= \TOP_mem_data[0]~output_o\;

TOP_mem_data(1) <= \TOP_mem_data[1]~output_o\;

TOP_mem_data(2) <= \TOP_mem_data[2]~output_o\;

TOP_mem_data(3) <= \TOP_mem_data[3]~output_o\;

TOP_mem_data(4) <= \TOP_mem_data[4]~output_o\;

TOP_mem_data(5) <= \TOP_mem_data[5]~output_o\;

TOP_mem_data(6) <= \TOP_mem_data[6]~output_o\;

TOP_mem_data(7) <= \TOP_mem_data[7]~output_o\;

TOP_mem_data(8) <= \TOP_mem_data[8]~output_o\;

TOP_mem_data(9) <= \TOP_mem_data[9]~output_o\;

TOP_mem_data(10) <= \TOP_mem_data[10]~output_o\;

TOP_mem_data(11) <= \TOP_mem_data[11]~output_o\;

TOP_mem_data(12) <= \TOP_mem_data[12]~output_o\;

TOP_mem_data(13) <= \TOP_mem_data[13]~output_o\;

TOP_mem_data(14) <= \TOP_mem_data[14]~output_o\;

TOP_mem_data(15) <= \TOP_mem_data[15]~output_o\;
END structure;


