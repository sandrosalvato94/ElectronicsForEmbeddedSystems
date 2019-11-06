----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:07 11/04/2019 
-- Design Name: 
-- Module Name:    HardwiredReg - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HardwiredReg is
	generic(
		HW_REG_val	: integer	:= 432;
		HW_REG_Nbit : integer	:= 16
	);
	port(
		HW_REG_out	:	out std_logic_vector(HW_REG_Nbit-1 downto 0)
	);
end HardwiredReg;

architecture Behavioral of HardwiredReg is

begin

	HW_REG_out <= std_logic_vector(to_unsigned(HW_REG_val, HW_REG_Nbit));

end Behavioral;

