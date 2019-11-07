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

-- DATE "11/07/2019 11:13:51"

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

ENTITY 	EFES_Fpga_Top IS
    PORT (
	TOP_Buttons : IN std_logic_vector(7 DOWNTO 0);
	TOP_clk : IN std_logic;
	TOP_reset : IN std_logic;
	TOP_enable : IN std_logic;
	TOP_event : OUT std_logic;
	TOP_uart_output : OUT std_logic;
	TOP_uart_busy : OUT std_logic
	);
END EFES_Fpga_Top;

-- Design Ports Information
-- TOP_event	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_uart_output	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_uart_busy	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_reset	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_enable	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOP_Buttons[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_TOP_reset : std_logic;
SIGNAL ww_TOP_enable : std_logic;
SIGNAL ww_TOP_event : std_logic;
SIGNAL ww_TOP_uart_output : std_logic;
SIGNAL ww_TOP_uart_busy : std_logic;
SIGNAL \CLK_div_1ms|CMP|ComparatorBit~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Driver|FIFO|s_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_div_1ms|s_reset_cnt~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Driver|CLK_DIV|s_reset_cnt~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Buttons_Driver|Eve_Reg|data_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TOP_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:9:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:8:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~1_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|s_clk~combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|CMP|ComparatorBit~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|CMP|ComparatorBit~1_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|CMP|ComparatorBit~2_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|CMP|ComparatorBit~3_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|CMP|ComparatorBit~4_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|CMP|ComparatorBit~combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|CMP|ComparatorBit~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|CMP|ComparatorBit~1_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|CMP|ComparatorBit~2_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \CLK_div_1ms|CMP|ComparatorBit~3_combout\ : std_logic;
SIGNAL \CLK_div_1ms|CMP|ComparatorBit~4_combout\ : std_logic;
SIGNAL \CLK_div_1ms|CMP|ComparatorBit~combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:7:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:8:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|RST_REG|data_out~q\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|s_reset_cnt~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|RST_REG|data_out~q\ : std_logic;
SIGNAL \CLK_div_1ms|s_reset_cnt~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:6:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:7:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:5:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:6:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:4:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:5:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:3:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:4:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:2:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:3:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:1:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:2:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:0:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|Parity_XNOR|matrix[0][3]~0_combout\ : std_logic;
SIGNAL \UART_Driver|Parity_XNOR|matrix[0][3]~1_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:1:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \Stream_REG|data_out[6]~1_combout\ : std_logic;
SIGNAL \Stream_REG|data_out[0]~7_combout\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\ : std_logic;
SIGNAL \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\ : std_logic;
SIGNAL \TOP_Buttons[6]~input_o\ : std_logic;
SIGNAL \TOP_Buttons[0]~input_o\ : std_logic;
SIGNAL \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\ : std_logic;
SIGNAL \UART_Driver|FIFO|s_clk~clkctrl_outclk\ : std_logic;
SIGNAL \CLK_div_1ms|s_reset_cnt~0clkctrl_outclk\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|s_reset_cnt~0clkctrl_outclk\ : std_logic;
SIGNAL \Buttons_Driver|But_Reg|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \Buttons_Driver|But_Reg|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \TOP_event~output_o\ : std_logic;
SIGNAL \TOP_uart_output~output_o\ : std_logic;
SIGNAL \TOP_uart_busy~output_o\ : std_logic;
SIGNAL \TOP_clk~input_o\ : std_logic;
SIGNAL \TOP_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \TOP_Buttons[5]~input_o\ : std_logic;
SIGNAL \Stream_REG|data_out[5]~2_combout\ : std_logic;
SIGNAL \TOP_reset~input_o\ : std_logic;
SIGNAL \TOP_enable~input_o\ : std_logic;
SIGNAL \TOP_Buttons[7]~input_o\ : std_logic;
SIGNAL \Stream_REG|data_out[7]~0_combout\ : std_logic;
SIGNAL \TOP_Buttons[4]~input_o\ : std_logic;
SIGNAL \Stream_REG|data_out[4]~3_combout\ : std_logic;
SIGNAL \Buttons_Driver|OR8x1|Y~0_combout\ : std_logic;
SIGNAL \TOP_Buttons[1]~input_o\ : std_logic;
SIGNAL \Stream_REG|data_out[1]~6_combout\ : std_logic;
SIGNAL \TOP_Buttons[3]~input_o\ : std_logic;
SIGNAL \Stream_REG|data_out[3]~4_combout\ : std_logic;
SIGNAL \TOP_Buttons[2]~input_o\ : std_logic;
SIGNAL \Stream_REG|data_out[2]~5_combout\ : std_logic;
SIGNAL \Buttons_Driver|OR8x1|Y~1_combout\ : std_logic;
SIGNAL \Buttons_Driver|OR8x1|Y~combout\ : std_logic;
SIGNAL \Buttons_Driver|Eve_Reg|data_out~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \Buttons_Driver|Eve_Reg|data_out~clkctrl_outclk\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~1_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~2_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\ : std_logic;
SIGNAL \UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\ : std_logic;
SIGNAL \UART_Driver|LoadReg1|data_out~feeder_combout\ : std_logic;
SIGNAL \UART_Driver|LoadReg1|data_out~q\ : std_logic;
SIGNAL \UART_Driver|LoadReg2|data_out~q\ : std_logic;
SIGNAL \UART_Driver|FIFO|MUX_cyc:10:IF_MUXi:MUXi|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|s_control_mux[0]~0_combout\ : std_logic;
SIGNAL \UART_Driver|FIFO|FFcyc:10:FF_i|Q~q\ : std_logic;
SIGNAL \UART_Driver|MUX_out|portY~0_combout\ : std_logic;
SIGNAL \Buttons_Driver|But_Reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK_div_1ms|UP_CNT|s_en_inc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Stream_REG|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_Driver|FIFO|s_control_mux\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\ : std_logic;
SIGNAL \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\ : std_logic;
SIGNAL \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\ : std_logic;

BEGIN

ww_TOP_Buttons <= TOP_Buttons;
ww_TOP_clk <= TOP_clk;
ww_TOP_reset <= TOP_reset;
ww_TOP_enable <= TOP_enable;
TOP_event <= ww_TOP_event;
TOP_uart_output <= ww_TOP_uart_output;
TOP_uart_busy <= ww_TOP_uart_busy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_div_1ms|CMP|ComparatorBit~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_div_1ms|CMP|ComparatorBit~combout\);

\UART_Driver|FIFO|s_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UART_Driver|FIFO|s_clk~combout\);

\CLK_div_1ms|s_reset_cnt~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_div_1ms|s_reset_cnt~0_combout\);

\UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UART_Driver|CLK_DIV|CMP|ComparatorBit~combout\);

\UART_Driver|CLK_DIV|s_reset_cnt~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UART_Driver|CLK_DIV|s_reset_cnt~0_combout\);

\Buttons_Driver|Eve_Reg|data_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Buttons_Driver|Eve_Reg|data_out~q\);

\TOP_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \TOP_clk~input_o\);
\Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\ <= NOT \Buttons_Driver|Eve_Reg|data_out~clkctrl_outclk\;
\UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\ <= NOT \UART_Driver|CLK_DIV|s_reset_cnt~0clkctrl_outclk\;
\CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\ <= NOT \CLK_div_1ms|s_reset_cnt~0clkctrl_outclk\;

-- Location: FF_X19_Y30_N11
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\,
	d => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\);

-- Location: FF_X15_Y31_N27
\Stream_REG|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\,
	d => \Stream_REG|data_out[6]~1_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stream_REG|data_out\(6));

-- Location: FF_X15_Y31_N31
\Stream_REG|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\,
	d => \Stream_REG|data_out[0]~7_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stream_REG|data_out\(0));

-- Location: FF_X16_Y30_N23
\UART_Driver|FIFO|FFcyc:9:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~1_combout\,
	clrn => \TOP_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:9:FF_i|Q~q\);

-- Location: LCCOMB_X19_Y30_N22
\UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~0_combout\ = (((!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\) # (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\)) # 
-- (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\)) # (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~0_combout\);

-- Location: LCCOMB_X19_Y30_N10
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\ = \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ $ (((!\Buttons_Driver|Eve_Reg|data_out~q\ & \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Buttons_Driver|Eve_Reg|data_out~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\);

-- Location: FF_X15_Y30_N23
\Buttons_Driver|But_Reg|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	asdata => \Stream_REG|data_out\(7),
	clrn => \TOP_reset~input_o\,
	sload => VCC,
	ena => \Buttons_Driver|OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|But_Reg|data_out\(7));

-- Location: FF_X16_Y30_N19
\UART_Driver|FIFO|FFcyc:8:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:8:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:8:FF_i|Q~q\);

-- Location: LCCOMB_X15_Y30_N22
\UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & ((\UART_Driver|LoadReg2|data_out~q\ & ((\Buttons_Driver|But_Reg|data_out\(7)))) # (!\UART_Driver|LoadReg2|data_out~q\ & 
-- (\UART_Driver|FIFO|FFcyc:8:FF_i|Q~q\)))) # (!\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & (\UART_Driver|FIFO|FFcyc:8:FF_i|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|FIFO|FFcyc:8:FF_i|Q~q\,
	datab => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datac => \Buttons_Driver|But_Reg|data_out\(7),
	datad => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y30_N12
\UART_Driver|FIFO|s_control_mux[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|s_control_mux\(0) = (\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & \UART_Driver|LoadReg2|data_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datac => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|s_control_mux\(0));

-- Location: LCCOMB_X16_Y30_N22
\UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~1_combout\ = (\UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\ & (((\UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~0_combout\)))) # (!\UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\ & 
-- (!\UART_Driver|FIFO|s_control_mux\(0) & ((\UART_Driver|FIFO|FFcyc:9:FF_i|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|FIFO|s_control_mux\(0),
	datab => \UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~0_combout\,
	datac => \UART_Driver|FIFO|FFcyc:9:FF_i|Q~q\,
	datad => \UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\,
	combout => \UART_Driver|FIFO|MUX_cyc:9:IF_MUXi:MUXi|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y31_N8
\UART_Driver|FIFO|s_clk\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|s_clk~combout\ = LCELL((\UART_Driver|CLK_DIV|CMP|ComparatorBit~combout\) # ((\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & \UART_Driver|LoadReg2|data_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datac => \UART_Driver|LoadReg2|data_out~q\,
	datad => \UART_Driver|CLK_DIV|CMP|ComparatorBit~combout\,
	combout => \UART_Driver|FIFO|s_clk~combout\);

-- Location: FF_X24_Y19_N25
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\);

-- Location: FF_X24_Y19_N11
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\);

-- Location: FF_X24_Y19_N21
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X24_Y19_N30
\UART_Driver|CLK_DIV|CMP|ComparatorBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|CMP|ComparatorBit~0_combout\ = (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ & (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ & (!\Buttons_Driver|Eve_Reg|data_out~q\ & 
-- !\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datac => \Buttons_Driver|Eve_Reg|data_out~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	combout => \UART_Driver|CLK_DIV|CMP|ComparatorBit~0_combout\);

-- Location: FF_X24_Y19_N1
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\);

-- Location: FF_X24_Y19_N27
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\);

-- Location: FF_X24_Y19_N29
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\);

-- Location: FF_X24_Y19_N23
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X24_Y19_N16
\UART_Driver|CLK_DIV|CMP|ComparatorBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|CMP|ComparatorBit~1_combout\ = (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ & (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ & (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|CMP|ComparatorBit~1_combout\);

-- Location: FF_X20_Y19_N1
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\);

-- Location: FF_X20_Y19_N27
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\);

-- Location: FF_X20_Y19_N29
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\);

-- Location: FF_X20_Y19_N7
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X20_Y19_N16
\UART_Driver|CLK_DIV|CMP|ComparatorBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|CMP|ComparatorBit~2_combout\ = (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\ & (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|CMP|ComparatorBit~2_combout\);

-- Location: FF_X20_Y19_N19
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\);

-- Location: FF_X20_Y19_N21
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\);

-- Location: FF_X20_Y19_N23
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\);

-- Location: FF_X20_Y19_N9
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X20_Y19_N10
\UART_Driver|CLK_DIV|CMP|ComparatorBit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|CMP|ComparatorBit~3_combout\ = (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\ & (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\ & (!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\ & 
-- !\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|CMP|ComparatorBit~3_combout\);

-- Location: LCCOMB_X24_Y19_N2
\UART_Driver|CLK_DIV|CMP|ComparatorBit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|CMP|ComparatorBit~4_combout\ = (\UART_Driver|CLK_DIV|CMP|ComparatorBit~3_combout\ & (\UART_Driver|CLK_DIV|CMP|ComparatorBit~2_combout\ & (\UART_Driver|CLK_DIV|CMP|ComparatorBit~0_combout\ & 
-- \UART_Driver|CLK_DIV|CMP|ComparatorBit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|CMP|ComparatorBit~3_combout\,
	datab => \UART_Driver|CLK_DIV|CMP|ComparatorBit~2_combout\,
	datac => \UART_Driver|CLK_DIV|CMP|ComparatorBit~0_combout\,
	datad => \UART_Driver|CLK_DIV|CMP|ComparatorBit~1_combout\,
	combout => \UART_Driver|CLK_DIV|CMP|ComparatorBit~4_combout\);

-- Location: FF_X20_Y19_N13
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0_combout\,
	clrn => \UART_Driver|CLK_DIV|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\);

-- Location: LCCOMB_X24_Y19_N12
\UART_Driver|CLK_DIV|CMP|ComparatorBit\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|CMP|ComparatorBit~combout\ = LCELL((!\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\ & \UART_Driver|CLK_DIV|CMP|ComparatorBit~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\,
	datad => \UART_Driver|CLK_DIV|CMP|ComparatorBit~4_combout\,
	combout => \UART_Driver|CLK_DIV|CMP|ComparatorBit~combout\);

-- Location: FF_X27_Y5_N1
\CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\);

-- Location: FF_X27_Y7_N17
\CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\);

-- Location: FF_X27_Y7_N3
\CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y7_N13
\CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X27_Y7_N30
\CLK_div_1ms|CMP|ComparatorBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|CMP|ComparatorBit~0_combout\ = (!\CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ & (!\CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ & (\TOP_reset~input_o\ & !\CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	datac => \TOP_reset~input_o\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|CMP|ComparatorBit~0_combout\);

-- Location: FF_X27_Y7_N1
\CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y7_N11
\CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y7_N21
\CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y7_N7
\CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X27_Y7_N24
\CLK_div_1ms|CMP|ComparatorBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|CMP|ComparatorBit~1_combout\ = (!\CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ & (!\CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\ & 
-- !\CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|CMP|ComparatorBit~1_combout\);

-- Location: FF_X27_Y5_N19
\CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y5_N29
\CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y5_N31
\CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y5_N9
\CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X27_Y5_N10
\CLK_div_1ms|CMP|ComparatorBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|CMP|ComparatorBit~2_combout\ = (!\CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ & (!\CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\ & 
-- !\CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|CMP|ComparatorBit~2_combout\);

-- Location: FF_X27_Y5_N21
\CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y5_N7
\CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y5_N17
\CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\);

-- Location: FF_X27_Y5_N27
\CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0_combout\,
	clrn => \CLK_div_1ms|ALT_INV_s_reset_cnt~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X27_Y5_N12
\CLK_div_1ms|CMP|ComparatorBit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|CMP|ComparatorBit~3_combout\ = (!\CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\ & (!\CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\ & (!\CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\ & 
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|CMP|ComparatorBit~3_combout\);

-- Location: LCCOMB_X27_Y7_N18
\CLK_div_1ms|CMP|ComparatorBit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|CMP|ComparatorBit~4_combout\ = (\CLK_div_1ms|CMP|ComparatorBit~2_combout\ & (\CLK_div_1ms|CMP|ComparatorBit~3_combout\ & (\CLK_div_1ms|CMP|ComparatorBit~0_combout\ & \CLK_div_1ms|CMP|ComparatorBit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|CMP|ComparatorBit~2_combout\,
	datab => \CLK_div_1ms|CMP|ComparatorBit~3_combout\,
	datac => \CLK_div_1ms|CMP|ComparatorBit~0_combout\,
	datad => \CLK_div_1ms|CMP|ComparatorBit~1_combout\,
	combout => \CLK_div_1ms|CMP|ComparatorBit~4_combout\);

-- Location: LCCOMB_X27_Y7_N28
\CLK_div_1ms|CMP|ComparatorBit\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|CMP|ComparatorBit~combout\ = LCELL((\CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\ & \CLK_div_1ms|CMP|ComparatorBit~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\,
	datad => \CLK_div_1ms|CMP|ComparatorBit~4_combout\,
	combout => \CLK_div_1ms|CMP|ComparatorBit~combout\);

-- Location: FF_X15_Y30_N25
\Buttons_Driver|But_Reg|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	asdata => \Stream_REG|data_out\(6),
	clrn => \TOP_reset~input_o\,
	sload => VCC,
	ena => \Buttons_Driver|OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|But_Reg|data_out\(6));

-- Location: FF_X16_Y30_N7
\UART_Driver|FIFO|FFcyc:7:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:7:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:7:FF_i|Q~q\);

-- Location: LCCOMB_X16_Y30_N18
\UART_Driver|FIFO|MUX_cyc:8:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:8:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & ((\UART_Driver|LoadReg2|data_out~q\ & ((\Buttons_Driver|But_Reg|data_out\(6)))) # (!\UART_Driver|LoadReg2|data_out~q\ & 
-- (\UART_Driver|FIFO|FFcyc:7:FF_i|Q~q\)))) # (!\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & (\UART_Driver|FIFO|FFcyc:7:FF_i|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|FIFO|FFcyc:7:FF_i|Q~q\,
	datab => \Buttons_Driver|But_Reg|data_out\(6),
	datac => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datad => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|MUX_cyc:8:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: FF_X24_Y19_N13
\UART_Driver|CLK_DIV|RST_REG|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|CLK_DIV|CMP|ComparatorBit~combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|CLK_DIV|RST_REG|data_out~q\);

-- Location: LCCOMB_X24_Y19_N6
\UART_Driver|CLK_DIV|s_reset_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|s_reset_cnt~0_combout\ = (\Buttons_Driver|Eve_Reg|data_out~q\) # (\UART_Driver|CLK_DIV|RST_REG|data_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Buttons_Driver|Eve_Reg|data_out~q\,
	datad => \UART_Driver|CLK_DIV|RST_REG|data_out~q\,
	combout => \UART_Driver|CLK_DIV|s_reset_cnt~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ $ (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X24_Y19_N20
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X24_Y19_N8
\UART_Driver|CLK_DIV|UP_CNT|s_en_inc[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3) = (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3));

-- Location: LCCOMB_X24_Y19_N0
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3) $ (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3),
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3) & \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3),
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X24_Y19_N28
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ & 
-- (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ & \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3) & 
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3),
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X24_Y19_N18
\UART_Driver|CLK_DIV|UP_CNT|s_en_inc[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6) = (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3) & (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(3),
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6));

-- Location: LCCOMB_X20_Y19_N0
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ $ (\UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6),
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X20_Y19_N26
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ & \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6),
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X20_Y19_N28
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ & 
-- (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ & \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6),
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X20_Y19_N30
\UART_Driver|CLK_DIV|UP_CNT|s_en_inc[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9) = (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(6),
	combout => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9));

-- Location: LCCOMB_X20_Y19_N6
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9) $ (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9),
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X20_Y19_N18
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9) & \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9),
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X20_Y19_N20
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9) & (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9),
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X20_Y19_N24
\UART_Driver|CLK_DIV|UP_CNT|s_en_inc[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(12) = (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\ & (\UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9) & 
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(9),
	datad => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(12));

-- Location: LCCOMB_X20_Y19_N22
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\ $ (\UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(12),
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X20_Y19_N8
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\ & \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(12),
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X20_Y19_N12
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0_combout\ = \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\ $ (((\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\ & 
-- (\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\ & \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\,
	datad => \UART_Driver|CLK_DIV|UP_CNT|s_en_inc\(12),
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0_combout\);

-- Location: LCCOMB_X27_Y7_N22
\CLK_div_1ms|UP_CNT|s_en_inc[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|s_en_inc\(3) = (\CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ & 
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|s_en_inc\(3));

-- Location: LCCOMB_X27_Y7_N8
\CLK_div_1ms|UP_CNT|s_en_inc[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|s_en_inc\(6) = (\CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|s_en_inc\(3) & \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|s_en_inc\(3),
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|s_en_inc\(6));

-- Location: LCCOMB_X27_Y5_N22
\CLK_div_1ms|UP_CNT|s_en_inc[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|s_en_inc\(9) = (\CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\ & \CLK_div_1ms|UP_CNT|s_en_inc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|s_en_inc\(6),
	combout => \CLK_div_1ms|UP_CNT|s_en_inc\(9));

-- Location: LCCOMB_X27_Y5_N24
\CLK_div_1ms|UP_CNT|s_en_inc[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|s_en_inc\(12) = (\CLK_div_1ms|UP_CNT|s_en_inc\(9) & (\CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\ & \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|s_en_inc\(9),
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|s_en_inc\(12));

-- Location: LCCOMB_X27_Y5_N0
\CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\ $ (((\CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|s_en_inc\(12) & 
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|s_en_inc\(12),
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:15:LAST_FF:FF_N|data~0_combout\);

-- Location: FF_X27_Y7_N29
\CLK_div_1ms|RST_REG|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \CLK_div_1ms|CMP|ComparatorBit~combout\,
	clrn => \TOP_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_div_1ms|RST_REG|data_out~q\);

-- Location: LCCOMB_X27_Y7_N26
\CLK_div_1ms|s_reset_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|s_reset_cnt~0_combout\ = (\CLK_div_1ms|RST_REG|data_out~q\) # (!\TOP_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_div_1ms|RST_REG|data_out~q\,
	datac => \TOP_reset~input_o\,
	combout => \CLK_div_1ms|s_reset_cnt~0_combout\);

-- Location: LCCOMB_X27_Y7_N2
\CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ $ (\CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y7_N12
\CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ & \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y7_N0
\CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|s_en_inc\(3) & \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|s_en_inc\(3),
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y7_N10
\CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ & 
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y7_N20
\CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|s_en_inc\(3) $ (\CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|s_en_inc\(3),
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y7_N6
\CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|s_en_inc\(3) & (\CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\ & 
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|s_en_inc\(3),
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y5_N18
\CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ & \CLK_div_1ms|UP_CNT|s_en_inc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|s_en_inc\(6),
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y5_N28
\CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ $ (\CLK_div_1ms|UP_CNT|s_en_inc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|s_en_inc\(6),
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y5_N30
\CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\ & (\CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\ & 
-- \CLK_div_1ms|UP_CNT|s_en_inc\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|MAIN_GEN:8:SECOND_FF:FF_i|data~q\,
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:7:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|s_en_inc\(6),
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:9:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y5_N8
\CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|s_en_inc\(9) $ (\CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|s_en_inc\(9),
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y5_N20
\CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\ $ (\CLK_div_1ms|UP_CNT|s_en_inc\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|s_en_inc\(12),
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y5_N6
\CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|s_en_inc\(9) & \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|s_en_inc\(9),
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y5_N16
\CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|s_en_inc\(9) & (\CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\ & 
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_div_1ms|UP_CNT|s_en_inc\(9),
	datab => \CLK_div_1ms|UP_CNT|MAIN_GEN:10:SECOND_FF:FF_i|data~q\,
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:11:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:12:SECOND_FF:FF_i|data~0_combout\);

-- Location: LCCOMB_X27_Y5_N26
\CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0_combout\ = \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\ $ (((\CLK_div_1ms|UP_CNT|s_en_inc\(12) & \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_div_1ms|UP_CNT|s_en_inc\(12),
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~q\,
	datad => \CLK_div_1ms|UP_CNT|MAIN_GEN:13:SECOND_FF:FF_i|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:14:SECOND_FF:FF_i|data~0_combout\);

-- Location: FF_X15_Y30_N3
\Buttons_Driver|But_Reg|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \Buttons_Driver|But_Reg|data_out[5]~feeder_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \Buttons_Driver|OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|But_Reg|data_out\(5));

-- Location: FF_X16_Y30_N9
\UART_Driver|FIFO|FFcyc:6:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:6:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:6:FF_i|Q~q\);

-- Location: LCCOMB_X16_Y30_N6
\UART_Driver|FIFO|MUX_cyc:7:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:7:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & ((\UART_Driver|LoadReg2|data_out~q\ & (\Buttons_Driver|But_Reg|data_out\(5))) # (!\UART_Driver|LoadReg2|data_out~q\ & 
-- ((\UART_Driver|FIFO|FFcyc:6:FF_i|Q~q\))))) # (!\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & (((\UART_Driver|FIFO|FFcyc:6:FF_i|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|But_Reg|data_out\(5),
	datab => \UART_Driver|FIFO|FFcyc:6:FF_i|Q~q\,
	datac => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datad => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|MUX_cyc:7:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: FF_X15_Y30_N13
\Buttons_Driver|But_Reg|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	asdata => \Stream_REG|data_out\(4),
	clrn => \TOP_reset~input_o\,
	sload => VCC,
	ena => \Buttons_Driver|OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|But_Reg|data_out\(4));

-- Location: FF_X16_Y30_N3
\UART_Driver|FIFO|FFcyc:5:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:5:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:5:FF_i|Q~q\);

-- Location: LCCOMB_X16_Y30_N8
\UART_Driver|FIFO|MUX_cyc:6:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:6:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|LoadReg2|data_out~q\ & ((\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & ((\Buttons_Driver|But_Reg|data_out\(4)))) # (!\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & 
-- (\UART_Driver|FIFO|FFcyc:5:FF_i|Q~q\)))) # (!\UART_Driver|LoadReg2|data_out~q\ & (\UART_Driver|FIFO|FFcyc:5:FF_i|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|LoadReg2|data_out~q\,
	datab => \UART_Driver|FIFO|FFcyc:5:FF_i|Q~q\,
	datac => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datad => \Buttons_Driver|But_Reg|data_out\(4),
	combout => \UART_Driver|FIFO|MUX_cyc:6:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: FF_X15_Y30_N15
\Buttons_Driver|But_Reg|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	asdata => \Stream_REG|data_out\(3),
	clrn => \TOP_reset~input_o\,
	sload => VCC,
	ena => \Buttons_Driver|OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|But_Reg|data_out\(3));

-- Location: FF_X16_Y30_N29
\UART_Driver|FIFO|FFcyc:4:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:4:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:4:FF_i|Q~q\);

-- Location: LCCOMB_X16_Y30_N2
\UART_Driver|FIFO|MUX_cyc:5:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:5:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & ((\UART_Driver|LoadReg2|data_out~q\ & (\Buttons_Driver|But_Reg|data_out\(3))) # (!\UART_Driver|LoadReg2|data_out~q\ & 
-- ((\UART_Driver|FIFO|FFcyc:4:FF_i|Q~q\))))) # (!\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & (((\UART_Driver|FIFO|FFcyc:4:FF_i|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|But_Reg|data_out\(3),
	datab => \UART_Driver|FIFO|FFcyc:4:FF_i|Q~q\,
	datac => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datad => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|MUX_cyc:5:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: FF_X15_Y30_N9
\Buttons_Driver|But_Reg|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \Buttons_Driver|But_Reg|data_out[2]~feeder_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \Buttons_Driver|OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|But_Reg|data_out\(2));

-- Location: FF_X16_Y30_N15
\UART_Driver|FIFO|FFcyc:3:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:3:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:3:FF_i|Q~q\);

-- Location: LCCOMB_X16_Y30_N28
\UART_Driver|FIFO|MUX_cyc:4:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:4:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & ((\UART_Driver|LoadReg2|data_out~q\ & (\Buttons_Driver|But_Reg|data_out\(2))) # (!\UART_Driver|LoadReg2|data_out~q\ & 
-- ((\UART_Driver|FIFO|FFcyc:3:FF_i|Q~q\))))) # (!\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & (((\UART_Driver|FIFO|FFcyc:3:FF_i|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|But_Reg|data_out\(2),
	datab => \UART_Driver|FIFO|FFcyc:3:FF_i|Q~q\,
	datac => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datad => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|MUX_cyc:4:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: FF_X15_Y30_N11
\Buttons_Driver|But_Reg|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	asdata => \Stream_REG|data_out\(1),
	clrn => \TOP_reset~input_o\,
	sload => VCC,
	ena => \Buttons_Driver|OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|But_Reg|data_out\(1));

-- Location: FF_X16_Y30_N1
\UART_Driver|FIFO|FFcyc:2:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:2:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:2:FF_i|Q~q\);

-- Location: LCCOMB_X16_Y30_N14
\UART_Driver|FIFO|MUX_cyc:3:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:3:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & ((\UART_Driver|LoadReg2|data_out~q\ & (\Buttons_Driver|But_Reg|data_out\(1))) # (!\UART_Driver|LoadReg2|data_out~q\ & 
-- ((\UART_Driver|FIFO|FFcyc:2:FF_i|Q~q\))))) # (!\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & (((\UART_Driver|FIFO|FFcyc:2:FF_i|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|But_Reg|data_out\(1),
	datab => \UART_Driver|FIFO|FFcyc:2:FF_i|Q~q\,
	datac => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datad => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|MUX_cyc:3:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: FF_X15_Y30_N21
\Buttons_Driver|But_Reg|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	asdata => \Stream_REG|data_out\(0),
	clrn => \TOP_reset~input_o\,
	sload => VCC,
	ena => \Buttons_Driver|OR8x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|But_Reg|data_out\(0));

-- Location: FF_X16_Y30_N11
\UART_Driver|FIFO|FFcyc:1:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:1:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:1:FF_i|Q~q\);

-- Location: LCCOMB_X16_Y30_N0
\UART_Driver|FIFO|MUX_cyc:2:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:2:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & ((\UART_Driver|LoadReg2|data_out~q\ & ((\Buttons_Driver|But_Reg|data_out\(0)))) # (!\UART_Driver|LoadReg2|data_out~q\ & 
-- (\UART_Driver|FIFO|FFcyc:1:FF_i|Q~q\)))) # (!\UART_Driver|FIFO|s_control_mux[0]~0_combout\ & (\UART_Driver|FIFO|FFcyc:1:FF_i|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|FIFO|FFcyc:1:FF_i|Q~q\,
	datab => \Buttons_Driver|But_Reg|data_out\(0),
	datac => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	datad => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|MUX_cyc:2:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: FF_X16_Y30_N13
\UART_Driver|FIFO|FFcyc:0:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|s_control_mux\(0),
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:0:FF_i|Q~q\);

-- Location: LCCOMB_X15_Y30_N24
\UART_Driver|Parity_XNOR|matrix[0][3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|Parity_XNOR|matrix[0][3]~0_combout\ = \Buttons_Driver|But_Reg|data_out\(7) $ (\Buttons_Driver|But_Reg|data_out\(4) $ (\Buttons_Driver|But_Reg|data_out\(6) $ (\Buttons_Driver|But_Reg|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|But_Reg|data_out\(7),
	datab => \Buttons_Driver|But_Reg|data_out\(4),
	datac => \Buttons_Driver|But_Reg|data_out\(6),
	datad => \Buttons_Driver|But_Reg|data_out\(5),
	combout => \UART_Driver|Parity_XNOR|matrix[0][3]~0_combout\);

-- Location: LCCOMB_X15_Y30_N10
\UART_Driver|Parity_XNOR|matrix[0][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|Parity_XNOR|matrix[0][3]~1_combout\ = \Buttons_Driver|But_Reg|data_out\(2) $ (\Buttons_Driver|But_Reg|data_out\(3) $ (\Buttons_Driver|But_Reg|data_out\(1) $ (\Buttons_Driver|But_Reg|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|But_Reg|data_out\(2),
	datab => \Buttons_Driver|But_Reg|data_out\(3),
	datac => \Buttons_Driver|But_Reg|data_out\(1),
	datad => \Buttons_Driver|But_Reg|data_out\(0),
	combout => \UART_Driver|Parity_XNOR|matrix[0][3]~1_combout\);

-- Location: LCCOMB_X16_Y30_N10
\UART_Driver|FIFO|MUX_cyc:1:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:1:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|s_control_mux\(0) & (\UART_Driver|Parity_XNOR|matrix[0][3]~0_combout\ $ (((\UART_Driver|Parity_XNOR|matrix[0][3]~1_combout\))))) # (!\UART_Driver|FIFO|s_control_mux\(0) & 
-- (((\UART_Driver|FIFO|FFcyc:0:FF_i|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|Parity_XNOR|matrix[0][3]~0_combout\,
	datab => \UART_Driver|FIFO|FFcyc:0:FF_i|Q~q\,
	datac => \UART_Driver|Parity_XNOR|matrix[0][3]~1_combout\,
	datad => \UART_Driver|FIFO|s_control_mux\(0),
	combout => \UART_Driver|FIFO|MUX_cyc:1:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y31_N26
\Stream_REG|data_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stream_REG|data_out[6]~1_combout\ = !\TOP_Buttons[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TOP_Buttons[6]~input_o\,
	combout => \Stream_REG|data_out[6]~1_combout\);

-- Location: LCCOMB_X15_Y31_N30
\Stream_REG|data_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stream_REG|data_out[0]~7_combout\ = !\TOP_Buttons[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TOP_Buttons[0]~input_o\,
	combout => \Stream_REG|data_out[0]~7_combout\);

-- Location: LCCOMB_X24_Y19_N24
\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\ = !\UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	combout => \UART_Driver|CLK_DIV|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\);

-- Location: LCCOMB_X27_Y7_N16
\CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\ = !\CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	combout => \CLK_div_1ms|UP_CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~0_combout\);

-- Location: IOIBUF_X20_Y34_N15
\TOP_Buttons[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(6),
	o => \TOP_Buttons[6]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\TOP_Buttons[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(0),
	o => \TOP_Buttons[0]~input_o\);

-- Location: CLKCTRL_G15
\CLK_div_1ms|CMP|ComparatorBit~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\);

-- Location: CLKCTRL_G13
\UART_Driver|FIFO|s_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UART_Driver|FIFO|s_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\);

-- Location: CLKCTRL_G16
\CLK_div_1ms|s_reset_cnt~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_div_1ms|s_reset_cnt~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_div_1ms|s_reset_cnt~0clkctrl_outclk\);

-- Location: CLKCTRL_G11
\UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\UART_Driver|CLK_DIV|s_reset_cnt~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UART_Driver|CLK_DIV|s_reset_cnt~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UART_Driver|CLK_DIV|s_reset_cnt~0clkctrl_outclk\);

-- Location: LCCOMB_X15_Y30_N2
\Buttons_Driver|But_Reg|data_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Buttons_Driver|But_Reg|data_out[5]~feeder_combout\ = \Stream_REG|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Stream_REG|data_out\(5),
	combout => \Buttons_Driver|But_Reg|data_out[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y30_N8
\Buttons_Driver|But_Reg|data_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Buttons_Driver|But_Reg|data_out[2]~feeder_combout\ = \Stream_REG|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Stream_REG|data_out\(2),
	combout => \Buttons_Driver|But_Reg|data_out[2]~feeder_combout\);

-- Location: IOOBUF_X7_Y34_N16
\TOP_event~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Buttons_Driver|Eve_Reg|data_out~q\,
	devoe => ww_devoe,
	o => \TOP_event~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\TOP_uart_output~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_Driver|MUX_out|portY~0_combout\,
	devoe => ww_devoe,
	o => \TOP_uart_output~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\TOP_uart_busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\,
	devoe => ww_devoe,
	o => \TOP_uart_busy~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\TOP_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_clk,
	o => \TOP_clk~input_o\);

-- Location: CLKCTRL_G18
\TOP_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \TOP_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \TOP_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X23_Y34_N22
\TOP_Buttons[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(5),
	o => \TOP_Buttons[5]~input_o\);

-- Location: LCCOMB_X15_Y31_N12
\Stream_REG|data_out[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stream_REG|data_out[5]~2_combout\ = !\TOP_Buttons[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOP_Buttons[5]~input_o\,
	combout => \Stream_REG|data_out[5]~2_combout\);

-- Location: IOIBUF_X53_Y14_N1
\TOP_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_reset,
	o => \TOP_reset~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\TOP_enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_enable,
	o => \TOP_enable~input_o\);

-- Location: FF_X15_Y31_N13
\Stream_REG|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\,
	d => \Stream_REG|data_out[5]~2_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stream_REG|data_out\(5));

-- Location: IOIBUF_X29_Y34_N15
\TOP_Buttons[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(7),
	o => \TOP_Buttons[7]~input_o\);

-- Location: LCCOMB_X15_Y31_N16
\Stream_REG|data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stream_REG|data_out[7]~0_combout\ = !\TOP_Buttons[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOP_Buttons[7]~input_o\,
	combout => \Stream_REG|data_out[7]~0_combout\);

-- Location: FF_X15_Y31_N17
\Stream_REG|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\,
	d => \Stream_REG|data_out[7]~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stream_REG|data_out\(7));

-- Location: IOIBUF_X14_Y34_N15
\TOP_Buttons[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(4),
	o => \TOP_Buttons[4]~input_o\);

-- Location: LCCOMB_X15_Y31_N6
\Stream_REG|data_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stream_REG|data_out[4]~3_combout\ = !\TOP_Buttons[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TOP_Buttons[4]~input_o\,
	combout => \Stream_REG|data_out[4]~3_combout\);

-- Location: FF_X15_Y31_N7
\Stream_REG|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\,
	d => \Stream_REG|data_out[4]~3_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stream_REG|data_out\(4));

-- Location: LCCOMB_X15_Y30_N26
\Buttons_Driver|OR8x1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Buttons_Driver|OR8x1|Y~0_combout\ = (\Stream_REG|data_out\(6)) # ((\Stream_REG|data_out\(5)) # ((\Stream_REG|data_out\(7)) # (\Stream_REG|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stream_REG|data_out\(6),
	datab => \Stream_REG|data_out\(5),
	datac => \Stream_REG|data_out\(7),
	datad => \Stream_REG|data_out\(4),
	combout => \Buttons_Driver|OR8x1|Y~0_combout\);

-- Location: IOIBUF_X16_Y34_N1
\TOP_Buttons[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(1),
	o => \TOP_Buttons[1]~input_o\);

-- Location: LCCOMB_X15_Y31_N20
\Stream_REG|data_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stream_REG|data_out[1]~6_combout\ = !\TOP_Buttons[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOP_Buttons[1]~input_o\,
	combout => \Stream_REG|data_out[1]~6_combout\);

-- Location: FF_X15_Y31_N21
\Stream_REG|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\,
	d => \Stream_REG|data_out[1]~6_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stream_REG|data_out\(1));

-- Location: IOIBUF_X18_Y34_N22
\TOP_Buttons[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(3),
	o => \TOP_Buttons[3]~input_o\);

-- Location: LCCOMB_X15_Y31_N24
\Stream_REG|data_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stream_REG|data_out[3]~4_combout\ = !\TOP_Buttons[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOP_Buttons[3]~input_o\,
	combout => \Stream_REG|data_out[3]~4_combout\);

-- Location: FF_X15_Y31_N25
\Stream_REG|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\,
	d => \Stream_REG|data_out[3]~4_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stream_REG|data_out\(3));

-- Location: IOIBUF_X9_Y34_N8
\TOP_Buttons[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOP_Buttons(2),
	o => \TOP_Buttons[2]~input_o\);

-- Location: LCCOMB_X15_Y31_N18
\Stream_REG|data_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stream_REG|data_out[2]~5_combout\ = !\TOP_Buttons[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOP_Buttons[2]~input_o\,
	combout => \Stream_REG|data_out[2]~5_combout\);

-- Location: FF_X15_Y31_N19
\Stream_REG|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_div_1ms|CMP|ComparatorBit~clkctrl_outclk\,
	d => \Stream_REG|data_out[2]~5_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stream_REG|data_out\(2));

-- Location: LCCOMB_X15_Y30_N28
\Buttons_Driver|OR8x1|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Buttons_Driver|OR8x1|Y~1_combout\ = (\Stream_REG|data_out\(0)) # ((\Stream_REG|data_out\(1)) # ((\Stream_REG|data_out\(3)) # (\Stream_REG|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stream_REG|data_out\(0),
	datab => \Stream_REG|data_out\(1),
	datac => \Stream_REG|data_out\(3),
	datad => \Stream_REG|data_out\(2),
	combout => \Buttons_Driver|OR8x1|Y~1_combout\);

-- Location: LCCOMB_X15_Y30_N16
\Buttons_Driver|OR8x1|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Buttons_Driver|OR8x1|Y~combout\ = (\Buttons_Driver|OR8x1|Y~0_combout\) # (\Buttons_Driver|OR8x1|Y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Buttons_Driver|OR8x1|Y~0_combout\,
	datad => \Buttons_Driver|OR8x1|Y~1_combout\,
	combout => \Buttons_Driver|OR8x1|Y~combout\);

-- Location: FF_X15_Y30_N17
\Buttons_Driver|Eve_Reg|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \Buttons_Driver|OR8x1|Y~combout\,
	clrn => \TOP_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Buttons_Driver|Eve_Reg|data_out~q\);

-- Location: LCCOMB_X19_Y30_N30
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ $ (((!\Buttons_Driver|Eve_Reg|data_out~q\ & (\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\ & 
-- \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|Eve_Reg|data_out~q\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\);

-- Location: CLKCTRL_G10
\Buttons_Driver|Eve_Reg|data_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Buttons_Driver|Eve_Reg|data_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Buttons_Driver|Eve_Reg|data_out~clkctrl_outclk\);

-- Location: FF_X19_Y30_N31
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\,
	d => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~0_combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X19_Y30_N0
\UART_Driver|SYNCH|SYNCH_CNT|AND1|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\ = (\UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~0_combout\) # (((!\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\) # (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\)) # 
-- (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~0_combout\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\);

-- Location: LCCOMB_X19_Y30_N12
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ & 
-- \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\);

-- Location: FF_X19_Y30_N13
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\,
	d => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~0_combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X19_Y30_N20
\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\ = (\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\ & \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\);

-- Location: LCCOMB_X19_Y30_N2
\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2) = (!\Buttons_Driver|Eve_Reg|data_out~q\ & (\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\ & (\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|Eve_Reg|data_out~q\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[2]~0_combout\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2));

-- Location: LCCOMB_X19_Y30_N24
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ $ (\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2),
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\);

-- Location: FF_X19_Y30_N25
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\,
	d => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~0_combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X19_Y30_N28
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2),
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\);

-- Location: FF_X19_Y30_N29
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\,
	d => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~0_combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X19_Y30_N4
\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~1_combout\ = (\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\ & (!\Buttons_Driver|Eve_Reg|data_out~q\ & \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	datac => \Buttons_Driver|Eve_Reg|data_out~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|AND1|Y~combout\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~1_combout\);

-- Location: LCCOMB_X19_Y30_N14
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ & 
-- (\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~1_combout\ & \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~1_combout\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2),
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\);

-- Location: FF_X19_Y30_N15
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\,
	d => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~0_combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X19_Y30_N6
\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~2_combout\ = (\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\ & (\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~1_combout\ & \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~1_combout\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_en_inc\(2),
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~2_combout\);

-- Location: LCCOMB_X19_Y30_N8
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\ = \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ $ (((\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ & 
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~2_combout\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\);

-- Location: FF_X19_Y30_N9
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\,
	d => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~0_combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\);

-- Location: LCCOMB_X19_Y30_N16
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~0_combout\ = \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\ $ (((\UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~2_combout\ & 
-- (\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ & \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|SYNCH|SYNCH_CNT|CNT|s_toggle[5]~2_combout\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~0_combout\);

-- Location: FF_X19_Y30_N17
\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|CLK_DIV|CMP|ComparatorBit~clkctrl_outclk\,
	d => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~0_combout\,
	clrn => \Buttons_Driver|Eve_Reg|ALT_INV_data_out~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\);

-- Location: LCCOMB_X19_Y30_N18
\UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\ = ((!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\ & ((!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\) # 
-- (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\)))) # (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:0:FIRST_FF:FF_0|data~q\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:3:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:2:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:1:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\);

-- Location: LCCOMB_X19_Y30_N26
\UART_Driver|SYNCH|SYNCH_UART_busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\ = (!\Buttons_Driver|Eve_Reg|data_out~q\ & (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\ & (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\ & 
-- !\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buttons_Driver|Eve_Reg|data_out~q\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:5:SECOND_FF:FF_i|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:6:SECOND_FF:FF_i|data~q\,
	datad => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:4:SECOND_FF:FF_i|data~q\,
	combout => \UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\);

-- Location: LCCOMB_X16_Y30_N20
\UART_Driver|SYNCH|SYNCH_UART_busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\ = (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\ & (\UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\ & \UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\,
	datad => \UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\,
	combout => \UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\);

-- Location: LCCOMB_X15_Y31_N2
\UART_Driver|LoadReg1|data_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|LoadReg1|data_out~feeder_combout\ = \Buttons_Driver|Eve_Reg|data_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Buttons_Driver|Eve_Reg|data_out~q\,
	combout => \UART_Driver|LoadReg1|data_out~feeder_combout\);

-- Location: FF_X15_Y31_N3
\UART_Driver|LoadReg1|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	d => \UART_Driver|LoadReg1|data_out~feeder_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|LoadReg1|data_out~q\);

-- Location: FF_X15_Y31_N9
\UART_Driver|LoadReg2|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TOP_clk~inputclkctrl_outclk\,
	asdata => \UART_Driver|LoadReg1|data_out~q\,
	clrn => \TOP_reset~input_o\,
	sload => VCC,
	ena => \TOP_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|LoadReg2|data_out~q\);

-- Location: LCCOMB_X16_Y30_N16
\UART_Driver|FIFO|MUX_cyc:10:IF_MUXi:MUXi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|MUX_cyc:10:IF_MUXi:MUXi|Mux0~0_combout\ = (\UART_Driver|FIFO|FFcyc:9:FF_i|Q~q\ & (((!\UART_Driver|LoadReg2|data_out~q\) # (!\TOP_reset~input_o\)) # (!\UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|FIFO|FFcyc:9:FF_i|Q~q\,
	datab => \UART_Driver|SYNCH|SYNCH_UART_busy~1_combout\,
	datac => \TOP_reset~input_o\,
	datad => \UART_Driver|LoadReg2|data_out~q\,
	combout => \UART_Driver|FIFO|MUX_cyc:10:IF_MUXi:MUXi|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y30_N24
\UART_Driver|FIFO|s_control_mux[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|FIFO|s_control_mux[0]~0_combout\ = (\UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\ & (!\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\ & (\TOP_reset~input_o\ & \UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\,
	datac => \TOP_reset~input_o\,
	datad => \UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\,
	combout => \UART_Driver|FIFO|s_control_mux[0]~0_combout\);

-- Location: FF_X16_Y30_N17
\UART_Driver|FIFO|FFcyc:10:FF_i|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_Driver|FIFO|s_clk~clkctrl_outclk\,
	d => \UART_Driver|FIFO|MUX_cyc:10:IF_MUXi:MUXi|Mux0~0_combout\,
	clrn => \TOP_reset~input_o\,
	ena => \UART_Driver|FIFO|s_control_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_Driver|FIFO|FFcyc:10:FF_i|Q~q\);

-- Location: LCCOMB_X16_Y30_N26
\UART_Driver|MUX_out|portY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_Driver|MUX_out|portY~0_combout\ = (\UART_Driver|FIFO|FFcyc:10:FF_i|Q~q\) # ((\UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\) # ((!\UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\) # 
-- (!\UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Driver|FIFO|FFcyc:10:FF_i|Q~q\,
	datab => \UART_Driver|SYNCH|SYNCH_CNT|CNT|MAIN_GEN:7:LAST_FF:FF_N|data~q\,
	datac => \UART_Driver|SYNCH|SYNCH_CMP|CMP_A_le_B~0_combout\,
	datad => \UART_Driver|SYNCH|SYNCH_UART_busy~0_combout\,
	combout => \UART_Driver|MUX_out|portY~0_combout\);

ww_TOP_event <= \TOP_event~output_o\;

ww_TOP_uart_output <= \TOP_uart_output~output_o\;

ww_TOP_uart_busy <= \TOP_uart_busy~output_o\;
END structure;


