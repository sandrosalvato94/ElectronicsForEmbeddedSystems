----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:15:48 11/04/2019 
-- Design Name: 
-- Module Name:    UartDriver - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UartDriverTX is
	generic (
    UART_ext_clock   : natural := 500000000; --50 MHz
    UART_baud_rate   : natural := 115200;	--bit per second
    UART_N_bits    	: natural := 8;
    UART_parity      : boolean := true;
    UART_parity_odd  : boolean := false; -- true even
    UART_stop_bits	: integer := 1
  );
	port(
		UART_clock	:	in  std_logic;
		UART_reset	:	in  std_logic;	-- active high
		UART_load	:	in	 std_logic;	-- active high
		UART_data	:	in	 std_logic_vector(UART_N_bits-1 downto 0);
		UART_enable	:  in	 std_logic; -- active high
		
		UART_out		:	out std_logic
	);
end UartDriverTX;

architecture Behavioral of UartDriverTX is

	component Clock_divider is
	generic(
		CLKDIV_divider	: integer := 432
	);
	port(
		CLKDIV_clock	:	in	 std_logic;
		CLKDIV_reset	:  in  std_logic;
		CLKDIV_baudrate:	out std_logic
	);
	end component;
	
	component XNORGate_NX1 is -- remember to put an inverter in cascade to get a XOR
	generic(N: integer:= 8);
	port(
		A:	in  std_logic_vector(N-1 downto 0);
		B:	in  std_logic_vector(N-1 downto 0);
		Y:	out std_logic);	     
	end component;

begin


end Behavioral;

