--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:35:08 11/04/2019
-- Design Name:   
-- Module Name:   C:/Users/Alessandro/Desktop/EFES_Fpga/UartDriver/TB_Clock_divider.vhd
-- Project Name:  UartDriver
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Clock_divider
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Clock_divider IS
END TB_Clock_divider;
 
ARCHITECTURE behavior OF TB_Clock_divider IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Clock_divider
    PORT(
         CLKDIV_clock : IN  std_logic;
         CLKDIV_reset : IN  std_logic;
         CLKDIV_baudrate : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLKDIV_clock : std_logic := '0';
   signal CLKDIV_reset : std_logic := '0';

 	--Outputs
   signal CLKDIV_baudrate : std_logic;

   -- Clock period definitions
   constant CLKDIV_clock_period : time := 20 ns;
   --constant CLKDIV_reset_period : time := 10 ns;
   --constant CLKDIV_baudrate_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Clock_divider PORT MAP (
          CLKDIV_clock => CLKDIV_clock,
          CLKDIV_reset => CLKDIV_reset,
          CLKDIV_baudrate => CLKDIV_baudrate
        );

   -- Clock process definitions
   CLKDIV_clock_process :process
   begin
		CLKDIV_clock <= '0';
		wait for CLKDIV_clock_period/2;
		CLKDIV_clock <= '1';
		wait for CLKDIV_clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		CLKDIV_reset <= '1';
      wait for 100 ns;	
		CLKDIV_reset <= '0';
      wait for CLKDIV_clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
