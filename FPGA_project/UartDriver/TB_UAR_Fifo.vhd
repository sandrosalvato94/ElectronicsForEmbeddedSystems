--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:00:46 11/05/2019
-- Design Name:   
-- Module Name:   C:/Users/Alessandro/Desktop/EFES_Fpga/UartDriver/TB_UAR_Fifo.vhd
-- Project Name:  UartDriver
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_Fifo
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
 
ENTITY TB_UAR_Fifo IS
END TB_UAR_Fifo;
 
ARCHITECTURE behavior OF TB_UAR_Fifo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_Fifo
    PORT(
         FIFO_data : IN  std_logic_vector(10 downto 0);
         FIFO_reset : IN  std_logic;
         FIFO_enable : IN  std_logic;
         FIFO_clk : IN  std_logic;
         FIFO_load : IN  std_logic;
         FIFO_bit_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal FIFO_data : std_logic_vector(10 downto 0) := (others => '0');
   signal FIFO_reset : std_logic := '0';
   signal FIFO_enable : std_logic := '0';
   signal FIFO_clk : std_logic := '0';
   signal FIFO_load : std_logic := '0';

 	--Outputs
   signal FIFO_bit_out : std_logic;

   -- Clock period definitions
   constant FIFO_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_Fifo PORT MAP (
          FIFO_data => FIFO_data,
          FIFO_reset => FIFO_reset,
          FIFO_enable => FIFO_enable,
          FIFO_clk => FIFO_clk,
          FIFO_load => FIFO_load,
          FIFO_bit_out => FIFO_bit_out
        );

   -- Clock process definitions
   FIFO_clk_process :process
   begin
		FIFO_clk <= '0';
		wait for FIFO_clk_period/2;
		FIFO_clk <= '1';
		wait for FIFO_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		FIFO_reset <= '1';
      wait for 10 ns;	
		FIFO_reset 	<= '0';
		FIFO_enable <= '0';
		FIFO_load 	<= '0';
		wait for FIFO_clk_period;
		
		FIFO_enable <= '1';
		FIFO_load	<= '1';
		FIFO_data	<= "01000000001";
		wait for FIFO_clk_period;
		
		FIFO_enable <= '1';
		FIFO_load	<= '0';
		FIFO_data	<= "01011000001";
		wait for FIFO_clk_period*11;
		
		FIFO_enable <= '0';

      wait for FIFO_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
