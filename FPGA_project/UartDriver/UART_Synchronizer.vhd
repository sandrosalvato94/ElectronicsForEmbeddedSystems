----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:57 11/04/2019 
-- Design Name: 
-- Module Name:    UART_Synchronizer - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_Synchronizer is
	generic(
		SYNCH_steps		:	integer := 11;
		SYNCH_NBIT		:	integer := 8
	);
	
	port(
		SYNCH_clock		:	in  std_logic;
		SYNCH_reset 	:	in  std_logic;
		
		SYNCH_UART_busy:  out std_logic
	);
end UART_Synchronizer;

architecture Behavioral of UART_Synchronizer is

	component HardwiredReg is
	generic(
		HW_REG_val	: integer	:= 432;
		HW_REG_Nbit : integer	:= 16
	);
	port(
		HW_REG_out	:	out std_logic_vector(HW_REG_Nbit-1 downto 0)
	);
	end component;
	
	component SAT_Counter is
	generic(N : integer := 2);
	port(
		SAT_clk 		: in  std_logic;
		SAT_reset 	: in  std_logic;
		SAT_enable	: in  std_logic;
		SAT_Ud		: in  std_logic;
		SAT_update	: in  std_logic;
		SAT_setToDef 	: in  std_logic;
		SAT_SO		: out std_logic_vector(N-1 downto 0)
	);
	end component;

	
	
	component Comparator is
	generic(NBIT_DATA : integer := 32);
	port(
		CMP_OpA : 	in  std_logic_vector(NBIT_DATA-1 downto 0);
		CMP_OpB : 	in  std_logic_vector(NBIT_DATA-1 downto 0);
		CMP_sgn_usgn : 	in  std_logic; -- 0 unsigned, 1 signed
		--CMP_enable :	in  std_logic;
		CMP_A_gt_B :	out std_logic;
		CMP_A_ge_B :	out std_logic;
		CMP_A_lt_B :	out std_logic;
		CMP_A_le_B :	out std_logic;
		CMP_A_eq_B :	out std_logic
	);
	end component;
	
	signal s_not_connected	: std_logic_vector(3 downto 0);
	signal s_cnt_Fcnt_Tcmp	: std_logic_vector(SYNCH_NBIT-1 downto 0);
	signal s_val_Fhwreg_Tcmp: std_logic_vector(SYNCH_NBIT-1 downto 0);
	signal s_synch_bit		: std_logic;
begin

	SYNCH_CNT	:	SAT_Counter GENERIC MAP (N => SYNCH_NBIT)
									  PORT MAP (
										SAT_clk 		=> SYNCH_clock,
										SAT_reset 	=> SYNCH_reset,
										SAT_enable	=> '1',
										SAT_Ud		=> '1',
										SAT_update	=> '1',
										SAT_setToDef 	=> '0' ,
										SAT_SO		=> s_cnt_Fcnt_Tcmp
									  );
	
	SYNCH_HW_REG : HardwiredReg GENERIC MAP (HW_REG_Nbit => SYNCH_NBIT, HW_REG_val => 10)
										 PORT MAP (HW_REG_out => s_val_Fhwreg_Tcmp);
	
	SYNCH_CMP	: Comparator GENERIC MAP (NBIT_DATA => SYNCH_NBIT)
									 PORT MAP (
										CMP_OpA 			=> s_cnt_Fcnt_Tcmp,
										CMP_OpB 			=> s_val_Fhwreg_Tcmp,
										CMP_sgn_usgn 	=> '0', -- unsigned comparison
										CMP_A_gt_B 		=> s_not_connected(3),
										CMP_A_ge_B 		=> s_not_connected(2),
										CMP_A_lt_B 		=> s_not_connected(1),
										CMP_A_le_B 		=> s_synch_bit,
										CMP_A_eq_B 		=> s_not_connected(0)
									 );
									 
	SYNCH_UART_busy <= NOT(SYNCH_reset) AND s_synch_bit;

end Behavioral;

