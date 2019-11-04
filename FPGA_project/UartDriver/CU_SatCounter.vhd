----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alessandro Salvato
-- 
-- Create Date:    14:16:08 10/01/2017 
-- Design Name:    Saturation Counter for Branch Target Buffer & Branch History Table
-- Module Name:    CU_SatCounter - Behavioral 
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

entity CU_SatCounter is
    Port ( CU_clk : in  STD_LOGIC;
           CU_reset : in  STD_LOGIC;
           CU_enable : in  STD_LOGIC;
           CU_Ud : in  STD_LOGIC;
           CU_update : in  STD_LOGIC;
           CU_loadDefault : in  STD_LOGIC;
           CU_TcMax : in  STD_LOGIC;
           CU_TcMin : in  STD_LOGIC;
	 UDC_clk : out STD_LOGIC;
           UDC_Ud : out  STD_LOGIC;
           UDC_enable : out  STD_LOGIC;
           UDC_reset : out  STD_LOGIC);
end CU_SatCounter;

architecture Behavioral of CU_SatCounter is

begin

	process(CU_reset, CU_enable, CU_Ud, CU_update, CU_loadDefault, CU_TcMax, CU_TcMin)
	--process(CU_reset, CU_enable,        CU_update, CU_loadDefault, CU_TcMax, CU_TcMin)
	--process(CU_clk)
	--process(CU_reset, CU_enable, CU_Ud, CU_update, CU_loadDefault, CU_TcMax, CU_TcMin, CU_clk)
	begin
		--if(CU_clk = '1' and CU_clk'event) then
		if(CU_reset = '1') then	--resetting
			UDC_UD <= '0';
			UDC_enable <= '0';
			UDC_reset <= '1';
		elsif(CU_enable = '0') then	-- cut off
			UDC_UD <= '0';
			UDC_enable <= '0';
			UDC_reset <= '0';
		elsif(CU_loadDefault = '1') then -- loading default value
			UDC_UD <= '0';
			UDC_enable <= '0';
			UDC_reset <= '1';
		elsif(CU_update = '1') then --updating phase
			if(CU_Ud = '0' AND CU_TcMax = '0' AND CU_TcMin = '0') then --count down
				UDC_UD <= '0';
				UDC_enable <= '1';
				UDC_reset <= '0';
			elsif(CU_Ud = '1' AND CU_TcMax = '0' AND CU_TcMin = '0') then -- count up
				UDC_UD <= '1';
				UDC_enable <= '1';
				UDC_reset <= '0';
			elsif(CU_Ud = '0' AND CU_TcMax = '1' AND CU_TcMin = '0') then -- count down
				UDC_UD <= '0';
				UDC_enable <= '1';
				UDC_reset <= '0';
			elsif(CU_Ud = '1' AND CU_TcMax = '1' AND CU_TcMin = '0') then -- cannot count up
				UDC_UD <= '0';
				UDC_enable <= '0';
				UDC_reset <= '0';
			elsif(CU_Ud = '0' AND CU_TcMax = '0' AND CU_TcMin = '1') then -- cannot count down
				UDC_UD <= '0';
				UDC_enable <= '0';
				UDC_reset <= '0';
			elsif(CU_Ud = '1' AND CU_TcMax = '0' AND CU_TcMin = '1') then -- count up
				UDC_UD <= '1';
				UDC_enable <= '1';
				UDC_reset <= '0';
			else
				UDC_UD <= '0';
				UDC_enable <= '0';
				UDC_reset <= '0';
			end if;
		else
			UDC_UD <= '0';
			UDC_enable <= '0';
			UDC_reset <= '0';
		end if;
		--end if;
	end process;
	
	UDC_clk <= CU_clk;

end Behavioral;

