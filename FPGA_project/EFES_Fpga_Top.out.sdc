## Generated SDC file "EFES_Fpga_Top.out.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

## DATE    "Wed Nov 06 16:29:27 2019"

##
## DEVICE  "EP4CE22F17C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {TOP_reset} -period 1.000 -waveform { 0.000 0.500 } [get_ports {TOP_reset}]
create_clock -name {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data} -period 1.000 -waveform { 0.000 0.500 } [get_registers {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]
create_clock -name {TOP_clk} -period 1.000 -waveform { 0.000 0.500 } [get_ports {TOP_clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {TOP_clk}] -rise_to [get_clocks {TOP_clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {TOP_clk}] -fall_to [get_clocks {TOP_clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {TOP_clk}] -rise_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {TOP_clk}] -fall_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {TOP_clk}] -rise_to [get_clocks {TOP_reset}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {TOP_clk}] -fall_to [get_clocks {TOP_reset}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {TOP_clk}] -rise_to [get_clocks {TOP_clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {TOP_clk}] -fall_to [get_clocks {TOP_clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {TOP_clk}] -rise_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {TOP_clk}] -fall_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {TOP_clk}] -rise_to [get_clocks {TOP_reset}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {TOP_clk}] -fall_to [get_clocks {TOP_reset}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -rise_to [get_clocks {TOP_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -fall_to [get_clocks {TOP_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -rise_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -fall_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -rise_to [get_clocks {TOP_reset}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -fall_to [get_clocks {TOP_reset}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -rise_to [get_clocks {TOP_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -fall_to [get_clocks {TOP_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -rise_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -fall_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -rise_to [get_clocks {TOP_reset}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}] -fall_to [get_clocks {TOP_reset}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {TOP_reset}] -rise_to [get_clocks {TOP_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {TOP_reset}] -fall_to [get_clocks {TOP_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {TOP_reset}] -rise_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {TOP_reset}] -fall_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {TOP_reset}] -rise_to [get_clocks {TOP_reset}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {TOP_reset}] -fall_to [get_clocks {TOP_reset}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {TOP_reset}] -rise_to [get_clocks {TOP_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {TOP_reset}] -fall_to [get_clocks {TOP_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {TOP_reset}] -rise_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {TOP_reset}] -fall_to [get_clocks {UartDriverTX:UART_Driver|Clock_divider:CLK_DIV|UD_COUNTER:UP_CNT|t_ff_rst0:\MAIN_GEN:0:FIRST_FF:FF_0|data}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {TOP_reset}] -rise_to [get_clocks {TOP_reset}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {TOP_reset}] -fall_to [get_clocks {TOP_reset}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

