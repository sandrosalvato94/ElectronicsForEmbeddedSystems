--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:19:55 11/06/2019
-- Design Name:   
-- Module Name:   C:/Users/Alessandro/Desktop/EFES_Fpga/Project/TB_EFES_Fpga_Top.vhd
-- Project Name:  Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EFES_Fpga_Top
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
 
ENTITY TB_EFES_Fpga_Top IS
END TB_EFES_Fpga_Top;
 
ARCHITECTURE behavior OF TB_EFES_Fpga_Top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EFES_Fpga_Top
    PORT(
         TOP_Buttons : IN  std_logic_vector(7 downto 0);
         TOP_clk : IN  std_logic;
         TOP_reset : IN  std_logic;
         TOP_enable : IN  std_logic;
         TOP_uart_output : OUT  std_logic;
         TOP_uart_busy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal TOP_Buttons : std_logic_vector(7 downto 0) := (others => '0');
   signal TOP_clk : std_logic := '0';
   signal TOP_reset : std_logic := '0';
   signal TOP_enable : std_logic := '0';

 	--Outputs
   signal TOP_uart_output : std_logic;
   signal TOP_uart_busy : std_logic;

   -- Clock period definitions
   constant TOP_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EFES_Fpga_Top PORT MAP (
          TOP_Buttons => TOP_Buttons,
          TOP_clk => TOP_clk,
          TOP_reset => TOP_reset,
          TOP_enable => TOP_enable,
          TOP_uart_output => TOP_uart_output,
          TOP_uart_busy => TOP_uart_busy
        );

   -- Clock process definitions
   TOP_clk_process :process
   begin
		TOP_clk <= '0';
		wait for TOP_clk_period/2;
		TOP_clk <= '1';
		wait for TOP_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		TOP_reset <= '1';
      wait for 100 ns;	
		
		TOP_reset <= '0';
		TOP_enable <= '1';
		
      wait for TOP_clk_period*10;
		
		TOP_buttons <= "00100000";
		wait for TOP_clk_period*5;
		
		TOP_buttons <= (others => '0');
		wait for 60 us;
		
		TOP_buttons <= "10110001";
		wait for TOP_clk_period*2;
		
		TOP_buttons <= (others => '0');
      -- insert stimulus here 

      wait;
   end process;

END;
