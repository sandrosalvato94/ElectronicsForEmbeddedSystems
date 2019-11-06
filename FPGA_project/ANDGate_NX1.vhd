----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:15:00 10/01/2017 
-- Design Name: 
-- Module Name:    ANDGate_NX1 - Behavioral 
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
use work.constants.all;

entity ANDGate_NX1 is
	generic(N: integer:= 8);
	port(
		A:	in  std_logic_vector(N-1 downto 0);
		B:	in  std_logic_vector(N-1 downto 0);
		Y:	out std_logic);
	     
end ANDGate_NX1;

architecture Behavioral of ANDGate_NX1 is

	constant L: integer := log2(N);
	type SignalVector is array (0 to N-1) of std_logic_vector(0 to L);
	signal matrix : SignalVector;

begin
	
	cyc0: for i in 0 to N-1 generate
		matrix(i)(0) <= A(i) AND B(i);
	end generate cyc0;
	
	cyc1: for stage in 1 to L generate
		cyc2: for i in 0 to N-1 generate
			stepIF: if((i mod 2**(stage)) = 0) generate
				matrix(i)(stage) <= matrix(i+2**(stage-1))(stage-1) AND matrix(i)(stage-1);
			end generate stepIF;
		end generate cyc2;
	end generate cyc1;

	Y <= matrix(0)(L);
end Behavioral;
