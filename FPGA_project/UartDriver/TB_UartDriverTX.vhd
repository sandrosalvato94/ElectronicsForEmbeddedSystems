--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:20:29 11/05/2019
-- Design Name:   
-- Module Name:   C:/Users/Alessandro/Desktop/EFES_Fpga/UartDriver/TB_UartDriverTX.vhd
-- Project Name:  UartDriver
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UartDriverTX
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
 
ENTITY TB_UartDriverTX IS
END TB_UartDriverTX;
 
ARCHITECTURE behavior OF TB_UartDriverTX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UartDriverTX
    PORT(
         UART_clock : IN  std_logic;
         UART_reset : IN  std_logic;
         UART_load : IN  std_logic;
         UART_data : IN  std_logic_vector(7 downto 0);
         UART_enable : IN  std_logic;
         UART_ODD_even : IN  std_logic;
         UART_event : IN  std_logic;
         UART_busy : OUT  std_logic;
         UART_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal UART_clock : std_logic := '0';
   signal UART_reset : std_logic := '0';
   signal UART_load : std_logic := '0';
   signal UART_data : std_logic_vector(7 downto 0) := (others => '0');
   signal UART_enable : std_logic := '0';
   signal UART_ODD_even : std_logic := '0';
   signal UART_event : std_logic := '0';

 	--Outputs
   signal UART_busy : std_logic;
   signal UART_out : std_logic;

   -- Clock period definitions
   constant UART_clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UartDriverTX PORT MAP (
          UART_clock => UART_clock,
          UART_reset => UART_reset,
          UART_load => UART_load,
          UART_data => UART_data,
          UART_enable => UART_enable,
          UART_ODD_even => UART_ODD_even,
          UART_event => UART_event,
          UART_busy => UART_busy,
          UART_out => UART_out
        );

   -- Clock process definitions
   UART_clock_process :process
   begin
		UART_clock <= '0';
		wait for UART_clock_period/2;
		UART_clock <= '1';
		wait for UART_clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 10 ns;
		
		UART_reset <= '1';
		UART_enable <= '0';
      wait for 100 ns;	
		
		UART_reset <= '0';
		UART_enable <= '1';
      wait for UART_clock_period*10;
		
		UART_event <= '1';
		UART_data <= "01000000";
		wait for UART_clock_period;
		
		UART_event <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
