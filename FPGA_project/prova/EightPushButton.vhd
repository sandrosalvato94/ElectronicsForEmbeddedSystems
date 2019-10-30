library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EightPushButton is
port(
	EPB_clock	: in  std_logic;
	EPB_button	: in  std_logic;
	EPB_led		: out std_logic
	);
end EightPushButton;

architecture Behavioral of EightPushButton is
begin
	
	proc: process(EPB_clock, EPB_button)
	begin
		clock_if: if (EPB_clock = '1' AND EPB_clock'event) then
			button_if : if(EPB_button = '0') then
				EPB_led <= '1';
			else
				EPB_led <= '0';
			end if;
		end if;
	end process;
	
end Behavioral;