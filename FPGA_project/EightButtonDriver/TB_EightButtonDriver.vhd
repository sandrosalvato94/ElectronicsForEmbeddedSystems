--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:06:51 11/04/2019
-- Design Name:   
-- Module Name:   C:/Users/Alessandro/Desktop/EFES_Fpga/EightButtonDriver/TB_EightButtonDriver.vhd
-- Project Name:  EightButtonDriver
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EightButtonDriver
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
 
ENTITY TB_EightButtonDriver IS
END TB_EightButtonDriver;
 
ARCHITECTURE behavior OF TB_EightButtonDriver IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EightButtonDriver
    PORT(
         EBD_buttons : IN  std_logic_vector(7 downto 0);
         EBD_clock : IN  std_logic;
         EBD_reset : IN  std_logic;
         EBD_event : OUT  std_logic;
         EBD_buttons_save : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EBD_buttons : std_logic_vector(7 downto 0) := (others => '0');
   signal EBD_clock : std_logic := '0';
   signal EBD_reset : std_logic := '0';

 	--Outputs
   signal EBD_event : std_logic;
   signal EBD_buttons_save : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant EBD_clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EightButtonDriver PORT MAP (
          EBD_buttons => EBD_buttons,
          EBD_clock => EBD_clock,
          EBD_reset => EBD_reset,
          EBD_event => EBD_event,
          EBD_buttons_save => EBD_buttons_save
        );

   -- Clock process definitions
   EBD_clock_process :process
   begin
		EBD_clock <= '0';
		wait for EBD_clock_period/2;
		EBD_clock <= '1';
		wait for EBD_clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		EBD_reset <= '1';
      wait for 100 ns;	
		
		EBD_reset <= '0';
		wait for EBD_clock_period;
		
		EBD_buttons <= "00000000";
		wait for EBD_clock_period;
		
		EBD_buttons <= "00100000";
		wait for EBD_clock_period;
		
		EBD_buttons <= "00100010";
		EBD_reset <= '1';
		wait for EBD_clock_period;
		
		EBD_buttons <= "11111111";
		EBD_reset <= '1';
		wait for EBD_clock_period;
		
		EBD_buttons <= "11111111";
		EBD_reset <= '0';
		wait for EBD_clock_period;
		
      wait for EBD_clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
