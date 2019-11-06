----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:43:06 09/17/2017 
-- Design Name: 
-- Module Name:    D_FF - Behavioral 
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

entity D_FF_rst is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
	 rst : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Not_Q : out  STD_LOGIC);
end D_FF_rst;

architecture Behavioral of D_FF_rst is

begin

	process(clk, rst)
	begin
		if(rst = '1') then
			Q <= '0';
			Not_Q <= '1';
		elsif(clk = '1' and clk'event) then
			Q <= D;
			Not_Q <= NOT(D);
		end if;
	end process;

end Behavioral;

