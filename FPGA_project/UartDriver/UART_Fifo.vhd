----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:19 11/04/2019 
-- Design Name: 
-- Module Name:    UART_Fifo - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_Fifo is
	generic(
		NBIT_DATA	:	integer := 8
		);
	port(
		FIFO_data	:	in  std_logic_vector(NBIT_DATA-1 downto 0);
		FIFO_reset	:  in  std_logic;
		FIFO_enable	:	in  std_logic;
		FIFO_ext_clk:  in	 std_logic;
		FIFO_int_clk:	in  std_logic;
		FIFO_load	:  in  std_logic;
		
		FIFO_start	:	in  std_logic;
		FIFO_parity :  in  std_logic;
		
		FIFO_bit_out:  out std_logic
	);
end UART_Fifo;

architecture Behavioral of UART_Fifo is

begin
	

end Behavioral;

