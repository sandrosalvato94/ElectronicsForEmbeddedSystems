----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:44 11/04/2019 
-- Design Name: 
-- Module Name:    Clock_divider - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clock_divider is
	generic(
		CLKDIV_divider	: integer := 432
	);
	port(
		CLKDIV_clock	:	in	 std_logic;
		CLKDIV_reset	:  in  std_logic;
		CLKDIV_baudrate:	out std_logic
	);
end Clock_divider;

architecture Structural of Clock_divider is

	component UD_COUNTER is
	generic (
		UDC_NBIT : integer := 4);           -- number of bits
	port (
		UDC_EN  : in  std_logic;            -- enable counter
		UDC_UP  : in  std_logic;            -- up / not down signal
		UDC_CLK : in  std_logic;            -- clock signal
		UDC_RST : in  std_logic;            -- reset signal (asynch.)
		UDC_OUT : out std_logic_vector(UDC_NBIT - 1 downto 0));  -- out count
	end component;
	
	component HardwiredReg is
	generic(
		HW_REG_val	: integer	:= 432;
		HW_REG_Nbit : integer	:= 16
	);
	port(
		HW_REG_out	:	out std_logic_vector(HW_REG_Nbit-1 downto 0)
	);
	end component;
	
	component NComparatorWithEnable is
	generic(
		NBIT: integer := 32
	);
	port(
		A:             in	std_logic_vector(NBIT-1 downto 0);
		B:             in	std_logic_vector(NBIT-1 downto 0);
		Enable: 	      in	std_logic;
		ComparatorBit: out	std_logic
	);	-- 1 if equal, 0 else
	end component;
	
	component Reg1Bit is
	port(
		clk:	in  std_logic;
		reset:	in  std_logic; --Active high
		data_in:	in  std_logic;
		enable:	in  std_logic;
		load:	in  std_logic; --Load enable high
		data_out: out std_logic);
	end component;

	signal s_reset_cnt				: std_logic;
	signal s_reset_Freg_Tor			: std_logic;
	signal s_reset_Fcmp_Tcnt		: std_logic := '0';
	signal s_value_Fcnt_Tcmp		: std_logic_vector(15 downto 0); 
	signal s_divider_Fhwreg_Tcmp	: std_logic_vector(15 downto 0);
	signal s_not_reset				: std_logic;
	signal s_tmp						: std_logic;
	
begin
	
	rst_proc : process(CLKDIV_reset, s_reset_Freg_Tor)
	begin
		if (s_reset_Freg_Tor /= '0') AND (s_reset_Freg_Tor /= '1') then
			s_reset_cnt <= CLKDIV_reset;
		else
			s_reset_cnt <= CLKDIV_reset OR s_reset_Freg_Tor;
		end if;
	end process;
	
	baud_proc : process(s_reset_Fcmp_Tcnt)
	begin
		if (s_reset_Fcmp_Tcnt /= '0') AND (s_reset_Fcmp_Tcnt /= '1') then
			CLKDIV_baudrate <= '0';
			s_tmp <= '0';
		else
			CLKDIV_baudrate <= s_reset_Fcmp_Tcnt;
			s_tmp <= s_reset_Fcmp_Tcnt;
		end if;
	end process;
	
	RST_REG	: Reg1Bit	PORT MAP (
									clk => CLKDIV_clock,
									reset => CLKDIV_reset,
									data_in	=> s_tmp,
									enable	=> '1',
									load		=> '1',
									data_out	=> s_reset_Freg_Tor
								);

	UP_CNT	:	UD_COUNTER GENERIC MAP(UDC_NBIT => 16)
								  PORT MAP (
										UDC_EN 	=> '1',
										UDC_UP 	=> '1',
										UDC_CLK	=> CLKDIV_clock, -- 50Mhz 
										UDC_RST	=> s_reset_cnt,
										UDC_OUT	=> s_value_Fcnt_Tcmp
								  );
								  
	HW_REG	: HardwiredReg GENERIC MAP(HW_REG_val => CLKDIV_divider, HW_REG_Nbit => 16)
									PORT MAP (
										HW_REG_out => s_divider_Fhwreg_Tcmp
									);
	

	s_not_reset <= NOT(CLKDIV_reset);
	
	CMP		: NComparatorWithEnable GENERIC MAP (NBIT => 16) 
												PORT MAP (
													A => s_value_Fcnt_Tcmp,
													B => s_divider_Fhwreg_Tcmp,
													Enable => s_not_reset,
													ComparatorBit => s_reset_Fcmp_Tcnt
												);
	--CLKDIV_baudrate <= s_reset_Fcmp_Tcnt;
end Structural;

