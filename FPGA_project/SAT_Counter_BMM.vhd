----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alessandro Salvato
-- 
-- Create Date:    18:58:32 10/01/2017 
-- Design Name:    Saturation Counter for Branch Target Buffer & Branch History Table
-- Module Name:    SAT_Counter - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 1.0 - Succesfully tests performed on T1a, T1b, T2, T3, T4, T5
-- Additional Comments: 
--	Version 1.0 - It may happen a bug when the content of the counter is all 0s.
--                      If a transaction of Ud from 0 to 1 is driven when the rising
--	              clock edge is accouring, the counting changes to all 1s.
--                      A possible solution is to applay inputs far from the rising
--                      clock edge. 
--	Version 2.0 - Version 1.0 bug solved using a different UD counter based on
--                      TFFs rather than JK FFs.
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

entity SAT_Counter is
	generic(N : integer := 2);
	port(
		SAT_clk 		: in  std_logic;
		SAT_reset 	: in  std_logic;
		SAT_enable	: in  std_logic;
		SAT_Ud		: in  std_logic;
		SAT_update	: in  std_logic;
		SAT_setToDef 	: in  std_logic;
		SAT_SO		: out std_logic_vector(N-1 downto 0)
		
	);
end SAT_Counter;

architecture Structural of SAT_Counter is

--	component UpDownCounter is
--	generic(N: integer := 2);
--	port(
--		UPD_clk		: in  std_logic;
--		UPD_reset		: in  std_logic;
--		UPD_enable	: in  std_logic;
--		UPD_Ud		: in  std_logic;
--		UPD_out		: out std_logic_vector(N-1 downto 0)
--	);
--	end component;

	component UD_COUNTER is
	generic (UDC_NBIT : integer := 4);           -- number of bits
	port (
		UDC_EN  : in  std_logic;            -- enable counter
		UDC_UP  : in  std_logic;            -- up / not down signal
		UDC_CLK : in  std_logic;            -- clock signal
		UDC_RST : in  std_logic;            -- reset signal (asynch.)
		UDC_OUT : out std_logic_vector(UDC_NBIT - 1 downto 0));  -- out count
	end  component;
	
	component CU_SatCounter is
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
	end component;
	
	component ANDGate_NX1 is
	generic(N: integer:= 8);
	port(
		A:	in  std_logic_vector(N-1 downto 0);
		B:	in  std_logic_vector(N-1 downto 0);
		Y:	out std_logic);
	     
	end component;
	
	component NORGate_NX1 is
	generic(N: integer:= 8);
	port(
		A:	in  std_logic_vector(N-1 downto 0);
		B:	in  std_logic_vector(N-1 downto 0);
		Y:	out std_logic);
	     
	end component;
	
	signal s_reset, s_enable, s_Ud : std_logic;
	signal s_TcMax, s_TcMin	 : std_logic;
	signal s_cnt		 : std_logic_vector(N-1 downto 0);
	signal s_clk		 : std_logic;
	signal s_zeros		 : std_logic_vector(N-1 downto 0) := (others => '0');
	signal s_ones		 : std_logic_vector(N-1 downto 0) := (others => '1');

begin

	CNT : UD_COUNTER GENERIC MAP (UDC_NBIT => N)
			PORT MAP(
				UDC_CLK => s_clk,
				UDC_RST => s_reset,
				UDC_EN => s_enable,
				UDC_UP => s_Ud,
				UDC_OUT => s_cnt
			);
	CU : CU_SatCounter PORT MAP ( CU_clk => SAT_clk,
				CU_reset => SAT_reset,
				CU_enable => SAT_enable,
				CU_Ud => SAT_Ud,
				CU_update => SAT_update,
				CU_loadDefault => SAT_setToDef,
				CU_TcMax => s_TcMax,
				CU_TcMin => s_TcMin,
				UDC_clk => s_clk,
				UDC_Ud => s_Ud,
				UDC_enable => s_enable,
				UDC_reset => s_reset
		         );
					
					
         AND1 : ANDGate_NX1 GENERIC MAP (N=>N)
		        PORT MAP (
				A => s_cnt,
				B => s_ones,
				Y => s_TcMax
		        );
         
         NOR1 : NORGate_NX1 GENERIC MAP (N=>N)
		        PORT MAP (
				A => s_cnt,
				B => s_zeros,
				Y => s_TcMin
		        );

         SAT_SO <= s_cnt;
end Structural;

