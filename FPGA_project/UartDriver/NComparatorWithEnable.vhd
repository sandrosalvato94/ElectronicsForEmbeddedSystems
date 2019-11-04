----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alessandro Salvato
-- 
-- Create Date:    16:13:38 08/30/2017 
-- Design Name: 
-- Module Name:    NComparatorWithEnable - Behavioral 
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
-- TESTED (only Xilinx) for NBIT = 4, 8, 16, 32, 64, 128
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;

entity NComparatorWithEnable is
	generic(
		NBIT: integer := 32);
	port(
		A:             in	std_logic_vector(NBIT-1 downto 0);
		B:             in	std_logic_vector(NBIT-1 downto 0);
		Enable: 	     in	std_logic;
		ComparatorBit: out	std_logic);	-- 1 if equal, 0 else
end NComparatorWithEnable;

architecture Behavioral of NComparatorWithEnable is

	component ComparatorWithEnable is
	Port ( 	a : in  STD_LOGIC;
		b : in  STD_LOGIC;
		enable : in  STD_LOGIC;
		y : out  STD_LOGIC);
	end component;
	
	constant L: integer := log2(NBIT);
	type SignalVector is array (0 to NBIT-1) of std_logic_vector(0 to L);
	signal matrix : SignalVector := (others => (others => '0'));
begin

	COMPcyc: for i in 0 to NBIT-1 generate
		CWE_i : ComparatorWithEnable PORT MAP (a => A(i),
			        b => B(i),
			        enable => enable,
			        y => matrix(i)(0));
	end generate COMPcyc;
	
	cyc1: for stage in 1 to L generate
		cyc2: for i in 0 to NBIT-1 generate
			stepIF: if((i mod 2**(stage)) = 0) generate
				matrix(i)(stage) <= matrix(i+2**(stage-1))(stage-1) and matrix(i)(stage-1);
			end generate stepIF;
		end generate cyc2;
	end generate cyc1;
	
	ComparatorBit <= matrix(0)(L);

end Behavioral;

