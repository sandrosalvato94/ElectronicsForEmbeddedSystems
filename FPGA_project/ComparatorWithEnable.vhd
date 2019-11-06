----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alessandro Salvato
-- 
-- Create Date:    15:58:35 08/30/2017 
-- Design Name: 
-- Module Name:    ComparatorWithEnable - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This simple component aims at providing the answer to the following operation
--	      A = B ?	Taking into account an enable signal as further input.
--	      
--	      Truth Table
--	      A | B | E | Y
--	      0	0   0   0
--	      0	0   1   1
--	      0   1   0   0
--	      0   1   1   0
--	      1   0   0   0
--	      1   0   1   0
--	      1   1   0   0
--	      1   1   1   1
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


entity ComparatorWithEnable is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           y : out  STD_LOGIC);
end ComparatorWithEnable;

architecture Behavioral of ComparatorWithEnable is

	signal intA, intB, intC: std_logic;

begin

	intA <= a NOR b;
	intB <= a AND b;
	intC <= intA OR intB;
	y <= enable AND intC;

end Behavioral;

