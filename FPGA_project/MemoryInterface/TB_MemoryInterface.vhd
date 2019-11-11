--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:34:02 11/11/2019
-- Design Name:   
-- Module Name:   C:/Users/Alessandro/Desktop/EFES_Fpga/MemoryInterface/TB_MemoryInterface.vhd
-- Project Name:  MemoryInterface
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MemoryInterface
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
 
ENTITY TB_MemoryInterface IS
END TB_MemoryInterface;
 
ARCHITECTURE behavior OF TB_MemoryInterface IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemoryInterface
    PORT(
         MI_buttons : IN  std_logic_vector(7 downto 0);
         MI_clk : IN  std_logic;
         MI_reset : IN  std_logic;
         MI_enable : IN  std_logic;
         MI_RW : IN  std_logic;
         MI_address : IN  std_logic_vector(14 downto 0);
         MI_address_9_0 : OUT  std_logic_vector(9 downto 0);
         MI_address_10 : OUT  std_logic;
         MI_address_12_11 : OUT  std_logic_vector(12 downto 11);
         MI_bank : OUT  std_logic_vector(1 downto 0);
         MI_data : INOUT  std_logic_vector(15 downto 0);
         MI_CAS : OUT  std_logic;
         MI_RAS : OUT  std_logic;
         MI_CS : OUT  std_logic;
         MI_write_enable : OUT  std_logic;
         MI_clk_enable : OUT  std_logic;
         MI_memory_clk : OUT  std_logic;
         MI_DQML : OUT  std_logic;
         MI_DQMH : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal MI_buttons : std_logic_vector(7 downto 0) := (others => '0');
   signal MI_clk : std_logic := '0';
   signal MI_reset : std_logic := '0';
   signal MI_enable : std_logic := '0';
   signal MI_RW : std_logic := '0';
   signal MI_address : std_logic_vector(14 downto 0) := (others => '0');

	--BiDirs
   signal MI_data : std_logic_vector(15 downto 0);

 	--Outputs
   signal MI_address_9_0 : std_logic_vector(9 downto 0);
   signal MI_address_10 : std_logic;
   signal MI_address_12_11 : std_logic_vector(12 downto 11);
   signal MI_bank : std_logic_vector(1 downto 0);
   signal MI_CAS : std_logic;
   signal MI_RAS : std_logic;
   signal MI_CS : std_logic;
   signal MI_write_enable : std_logic;
   signal MI_clk_enable : std_logic;
   signal MI_memory_clk : std_logic;
   signal MI_DQML : std_logic;
   signal MI_DQMH : std_logic;

   -- Clock period definitions
   constant MI_clk_period : time := 10 ns;
   constant MI_memory_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoryInterface PORT MAP (
          MI_buttons => MI_buttons,
          MI_clk => MI_clk,
          MI_reset => MI_reset,
          MI_enable => MI_enable,
          MI_RW => MI_RW,
          MI_address => MI_address,
          MI_address_9_0 => MI_address_9_0,
          MI_address_10 => MI_address_10,
          MI_address_12_11 => MI_address_12_11,
          MI_bank => MI_bank,
          MI_data => MI_data,
          MI_CAS => MI_CAS,
          MI_RAS => MI_RAS,
          MI_CS => MI_CS,
          MI_write_enable => MI_write_enable,
          MI_clk_enable => MI_clk_enable,
          MI_memory_clk => MI_memory_clk,
          MI_DQML => MI_DQML,
          MI_DQMH => MI_DQMH
        );

   -- Clock process definitions
   MI_clk_process :process
   begin
		MI_clk <= '0';
		wait for MI_clk_period/2;
		MI_clk <= '1';
		wait for MI_clk_period/2;
   end process;
 
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		MI_reset <= '1';
		MI_enable <= '0';
      wait for 100 ns;	
		MI_reset <= '0';
		MI_enable <= '1';
	

      wait for MI_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
