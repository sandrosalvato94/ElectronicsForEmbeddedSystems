library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EFES_Fpga_Top  is
port(
-- Input
	TOP_Buttons			:	in  std_logic_vector(7 downto 0);
	TOP_clk				:	in	 std_logic;
	TOP_reset			: 	in	 std_logic;
	TOP_enable			:  in  std_logic;
	
-- Output UART driver
	TOP_uart_output	:	out std_logic;
	TOP_uart_busy		:	out std_logic
--
---- Output 7-Seg digit
--	TOP_7_dig_A			:  out std_logic;
--	TOP_7_dig_B			:  out std_logic;
--	TOP_7_dig_C			:  out std_logic;
--	TOP_7_dig_D			:  out std_logic;
--	TOP_7_dig_E			:  out std_logic;
--	TOP_7_dig_F			:  out std_logic;
--	TOP_7_dig_G			:  out std_logic;
--	TOP_7_dig_cntr		:	out std_logic_vector(3 downto 0);
--
---- Output SDRAM Interface
--	
--	TOP_mem_address	:	out std_logic_vector(12 downto 0);
--	TOP_mem_bank		:  out std_logic_vector(1 downto 0);
--	TOP_mem_data		:	inout std_logic_vector(15 downto 0);
--	TOP_mem_ras_n		:	out std_logic;
--	TOP_mem_cas_n		: 	out std_logic;
--	TOP_mem_we_n		:	out std_logic; --write enable
--	TOP_mem_clk_enable:	out std_logic; --clock enable
--	TOP_mem_clk			:	out std_logic;
--	TOP_mem_cs_n		:  out std_logic; --chip select
--	TOP_mem_dqml		:  out std_logic;
--	TOP_mem_dqmh		:  out std_logic
	);
end EFES_Fpga_Top;

architecture Structural  of EFES_Fpga_Top is

	component EightButtonDriver  is
	port(
		EBD_buttons		:	in  std_logic_vector(7 downto 0);
		EBD_clock		:	in	 std_logic;
		EBD_reset		:  in	 std_logic;
		EBD_event		:	out std_logic;
		EBD_buttons_save:	out std_logic_vector(7 downto 0)
	);
	end component;
	
	component UartDriverTX is
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
	end component;
	
	signal s_event_Febd_Tuart	:	std_logic;
	signal s_buttons_Febd_Tuart:	std_logic_vector(7 downto 0);
	
begin
	
	Buttons_Driver : EightButtonDriver  PORT MAP (
														EBD_buttons			=> TOP_Buttons,
														EBD_clock			=> TOP_clk,
														EBD_reset			=> TOP_reset,
														EBD_event			=> s_event_Febd_Tuart,
														EBD_buttons_save 	=> s_buttons_Febd_Tuart
													);
	
	UART_Driver : UartDriverTX --GENERIC MAP left as default
					  PORT MAP (
						UART_clock 		=> TOP_clk,
						UART_reset 		=> TOP_reset,
						UART_load  		=> '0', -- actually not connected internally
						UART_data		=> s_buttons_Febd_Tuart,
						UART_enable		=> TOP_enable,
						UART_ODD_even	=> '1',
						UART_event		=> s_event_Febd_Tuart,
						UART_busy		=> TOP_uart_busy,
						UART_out			=> TOP_uart_output
					  );
end Structural;