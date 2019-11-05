----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:15:48 11/04/2019 
-- Design Name: 
-- Module Name:    UartDriver - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UartDriverTX is
	generic (
    UART_ext_clock   : natural := 500000000; --50 MHz
    UART_baud_rate   : natural := 115200;	--bit per second
    UART_N_bits    	: natural := 11
--    UART_parity      : boolean := true;
--    UART_parity_odd  : boolean := false; -- true even
--    UART_stop_bits	: integer := 1
  );
	port(
		UART_clock		:	in  std_logic;
		UART_reset		:	in  std_logic;	-- active high
		UART_load		:	in	 std_logic;	-- active high
		UART_data		:	in	 std_logic_vector(UART_N_bits-4 downto 0); -- minus start, parity and stop
		UART_enable		:  in	 std_logic; -- active high
		UART_ODD_even	:	in  std_logic; -- odd high, even low
		UART_event		:  in  std_logic;
		
		UART_busy		:  out std_logic;
		UART_out			:	out std_logic
	);
end UartDriverTX;

architecture Behavioral of UartDriverTX is

	component Clock_divider is
	generic(
		CLKDIV_divider	: integer := 432
	);
	port(
		CLKDIV_clock	:	in	 std_logic;
		CLKDIV_reset	:  in  std_logic;
		CLKDIV_baudrate:	out std_logic
	);
	end component;
	
	component XNORGate_NX1 is -- remember to put an inverter in cascade to get a XOR
	generic(N: integer:= 8);
	port(
		A:	in  std_logic_vector(N-1 downto 0);
		B:	in  std_logic_vector(N-1 downto 0);
		Y:	out std_logic);	     
	end component;
	
	component NRegister is
	generic(N: integer:= 32);
	port(
		clk:	in  std_logic;
		reset:	in  std_logic; --Active high
		data_in:	in  std_logic_vector(N-1 downto 0);
		enable:	in  std_logic;
		load:	in  std_logic; --Load enable high
		data_out: out std_logic_vector(N-1 downto 0));
	end component;
	
	component Mux_1Bit_2X1 is
    Port ( port0 : in  STD_LOGIC;
           port1 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           portY : out  STD_LOGIC);
	end component;
	
	component UART_Synchronizer is
	generic(
		SYNCH_steps		:	integer := 11;
		SYNCH_NBIT		:	integer := 8 -- number of bits internal counter
	);	
	port(
		SYNCH_clock		:	in  std_logic;
		SYNCH_reset 	:	in  std_logic;
		
		SYNCH_UART_busy:  out std_logic
	);
	end component;
	
	component UART_Fifo is
	generic(
		NBIT_DATA	:	integer := 11
		);
	port(
		FIFO_data	:	in  std_logic_vector(NBIT_DATA-1 downto 0); -- includes start, data, parity and stop
		FIFO_reset	:  in  std_logic;
		FIFO_enable	:	in  std_logic;
		--FIFO_ext_clk:  in	 std_logic;
		FIFO_clk:	in  std_logic;
		FIFO_load	:  in  std_logic;
		--FIFO_start	:	in  std_logic;
		--FIFO_parity :  in  std_logic;
		FIFO_bit_out:  out std_logic
	);
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

	signal s_zeros				: std_logic_vector(UART_N_bits-4 downto 0) := (others => '0');
	signal s_data_Treg		: std_logic_vector(UART_N_bits-1 downto 0);
	signal s_is_even			: std_logic;
	signal s_is_odd			: std_logic;
	signal s_parity			: std_logic;
	signal s_data_Freg_Tfifo: std_logic_vector(UART_N_bits-1 downto 0);
	signal s_internal_clock	: std_logic;
	signal s_uart_busy		: std_logic;
	signal s_bit_Ffifo_Tmux	: std_logic;
	signal s_load_Freg_Tfifo: std_logic;

begin
---------------------------------------------------------------------------
	Parity_XNOR : XNORGate_NX1 GENERIC MAP(N => UART_N_bits-3) 
					  PORT MAP (
							A => UART_data,
							B => s_zeros,
							Y => s_is_even
					  );
	
	s_is_odd <= NOT(s_is_even);
	
	Parity_MUX : Mux_1Bit_2X1 PORT MAP (
										port0 => s_is_even,
										port1 => s_is_odd,
										sel	=> UART_ODD_even,
										portY => s_parity
									  );
---------------------------------------------------------------------------  

---------------------------------------------------------------------------
	s_data_Treg	<= '0' & UART_data & s_parity & '1';
	
	Stream_REG : NRegister GENERIC MAP (N => UART_N_bits)
								  PORT MAP (
									clk 		=> UART_clock,
									reset 	=> UART_reset,
									data_in	=> s_data_Treg,
									enable	=> UART_enable,
									load		=> UART_event,
									data_out	=> s_data_Freg_Tfifo
								  );
---------------------------------------------------------------------------

---------------------------------------------------------------------------
	CLK_DIV : Clock_divider GENERIC MAP (CLKDIV_divider => 432)
									PORT MAP	(
										CLKDIV_clock	=> UART_clock,
										CLKDIV_reset	=> UART_event,
										CLKDIV_baudrate => s_internal_clock
									);
---------------------------------------------------------------------------

---------------------------------------------------------------------------
	SYNCH	: UART_Synchronizer GENERIC MAP (SYNCH_steps => UART_N_bits, SYNCH_NBIT => 8)
									  PORT MAP (
										SYNCH_clock			=> s_internal_clock,
										SYNCH_reset 		=> UART_event,
										SYNCH_UART_busy 	=> s_uart_busy
									  );
	UART_busy <= s_uart_busy;
---------------------------------------------------------------------------

---------------------------------------------------------------------------
	LoadReg : Reg1Bit PORT MAP (
									clk 		=> UART_clock, --50 Mhz
									reset 	=> UART_reset,
									data_in	=> UART_event,
									enable	=> UART_enable,
									load		=> '1',
									data_out	=> s_load_Freg_Tfifo
								  );
	
	
	FIFO :	UART_Fifo GENERIC MAP (NBIT_DATA => UART_N_bits)
							 PORT MAP (
								FIFO_data		=> s_data_Freg_Tfifo,
								FIFO_reset		=> UART_reset,
								FIFO_enable		=> s_uart_busy,
								FIFO_clk			=> s_internal_clock,
								FIFO_load		=> s_load_Freg_Tfifo,
								FIFO_bit_out	=> s_bit_Ffifo_Tmux
							 );
---------------------------------------------------------------------------

---------------------------------------------------------------------------
	MUX_out	: Mux_1Bit_2X1 PORT MAP (
										 port0 => '1',
										 port1 => s_bit_Ffifo_Tmux,
										 sel   => s_uart_busy,
										 portY => UART_out
									);

---------------------------------------------------------------------------
end Behavioral;

