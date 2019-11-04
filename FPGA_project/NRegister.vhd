
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



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

