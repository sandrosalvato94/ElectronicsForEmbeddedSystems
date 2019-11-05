----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alessandro Salvato
-- 
-- Create Date:    18:26:28 09/17/2017 
-- Design Name: 
-- Module Name:    Mux_Bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This is a very simple multiplexer, where the output
--              is a simple std_logic, rather than a std_logic_vector.
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_Bit is
	generic(NBIT_Sel : integer := 2);
	port(
		inputs : in  std_logic_vector(2**NBIT_Sel-1 downto 0);
		sel    : in  std_logic_vector(NBIT_Sel-1 downto 0);
		output : out std_logic
	);
end Mux_Bit;

architecture Behavioral of Mux_Bit is

begin
	output <= inputs(to_integer(unsigned(sel)));

end Behavioral;

