----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:58 09/20/2017 
-- Design Name: 
-- Module Name:    Mux_1Bit_2X1 - Behavioral 
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

entity Mux_1Bit_2X1 is
    Port ( port0 : in  STD_LOGIC;
           port1 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           portY : out  STD_LOGIC);
end Mux_1Bit_2X1;

architecture Behavioral of Mux_1Bit_2X1 is

begin

	process(port0, port1, sel)
	begin
		if(sel = '0') then
			portY <= port0;
		else
			portY <= port1;
		end if;
	end process;


end Behavioral;

