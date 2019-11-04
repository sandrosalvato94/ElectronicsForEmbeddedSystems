
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg1Bit is
	port(
		clk:	in  std_logic;
		reset:	in  std_logic; --Active high
		data_in:	in  std_logic;
		enable:	in  std_logic;
		load:	in  std_logic; --Load enable high
		data_out: out std_logic);
end Reg1Bit;

architecture Behavioral of Reg1Bit is

begin
	process(clk, reset)
	begin
		 if reset = '1' then
			data_out <= '0';
		 elsif (clk = '1' and clk'event) then
			if (load = '1' and enable = '1') then
				data_out <= data_in;
			end if;
		end if;
	end process;

end Behavioral;

