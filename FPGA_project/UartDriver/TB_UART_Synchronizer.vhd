--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:47:37 11/04/2019
-- Design Name:   
-- Module Name:   C:/Users/Alessandro/Desktop/EFES_Fpga/UartDriver/TB_UART_Synchronizer.vhd
-- Project Name:  UartDriver
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_Synchronizer
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
 
ENTITY TB_UART_Synchronizer IS
END TB_UART_Synchronizer;
 
ARCHITECTURE behavior OF TB_UART_Synchronizer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_Synchronizer
    PORT(
         SYNCH_clock : IN  std_logic;
         SYNCH_reset : IN  std_logic;
         SYNCH_UART_busy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SYNCH_clock : std_logic := '0';
   signal SYNCH_reset : std_logic := '0';

 	--Outputs
   signal SYNCH_UART_busy : std_logic;

   -- Clock period definitions
   constant SYNCH_clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_Synchronizer PORT MAP (
          SYNCH_clock => SYNCH_clock,
          SYNCH_reset => SYNCH_reset,
          SYNCH_UART_busy => SYNCH_UART_busy
        );

   -- Clock process definitions
   SYNCH_clock_process :process
   begin
		SYNCH_clock <= '0';
		wait for SYNCH_clock_period/2;
		SYNCH_clock <= '1';
		wait for SYNCH_clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		SYNCH_reset <= '1';
      wait for 100 ns;	
		SYNCH_reset <= '0';
      wait for SYNCH_clock_period*10;
		
		wait for SYNCH_clock_period*10;
		SYNCH_reset <= '1';
		wait for 5 ns;
		SYNCH_reset <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
