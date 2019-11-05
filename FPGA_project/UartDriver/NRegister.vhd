----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:07 09/16/2017 
-- Design Name: 
-- Module Name:    NRegister - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This is a generic register with a load enable and a generic enable
--              as control signals. When both load and enable are activated the 
--	      input is immediately driven forward the output port.
--	      Resetting works asincronously, regardless the enable state.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--	      Designed an
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

entity NRegister is
	generic(N: integer:= 32);
	port(
		clk:	in  std_logic;
		reset:	in  std_logic; --Active high
		data_in:	in  std_logic_vector(N-1 downto 0);
		enable:	in  std_logic;
		load:	in  std_logic; --Load enable high
		data_out: out std_logic_vector(N-1 downto 0));
end NRegister;

architecture Behavioral of NRegister is

begin

	process(clk, reset)
	begin
		 if reset = '1' then
			data_out <= (others => '0');
		 elsif (clk = '1' and clk'event) then
			if (load = '1' and enable = '1') then
				data_out <= data_in;
			end if;
		end if;
	end process;


end Behavioral;

