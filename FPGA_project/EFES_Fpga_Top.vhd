library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EFES_Fpga_Top  is
port(
-- Input
	TOP_Buttons			:	in  std_logic_vector(7 downto 0);
	TOP_clk				:	in	 std_logic;
	
-- Output UART driver
	TOP_uart_output	:	out std_logic;

-- Output 7-Seg digit
	TOP_7_dig_A			:  out std_logic;
	TOP_7_dig_B			:  out std_logic;
	TOP_7_dig_C			:  out std_logic;
	TOP_7_dig_D			:  out std_logic;
	TOP_7_dig_E			:  out std_logic;
	TOP_7_dig_F			:  out std_logic;
	TOP_7_dig_G			:  out std_logic;
	TOP_7_dig_cntr		:	out std_logic_vector(3 downto 0);

-- Output SDRAM Interface
	
	TOP_mem_address	:	out std_logic_vector(12 downto 0);
	TOP_mem_bank		:  out std_logic_vector(1 downto 0);
	TOP_mem_data		:	inout std_logic_vector(15 downto 0);
	TOP_mem_ras_n		:	out std_logic;
	TOP_mem_cas_n		: 	out std_logic;
	TOP_mem_we_n		:	out std_logic; --write enable
	TOP_mem_clk_enable:	out std_logic; --clock enable
	TOP_mem_clk			:	out std_logic;
	TOP_mem_cs_n		:  out std_logic; --chip select
	TOP_mem_dqml		:  out std_logic;
	TOP_mem_dqmh		:  out std_logic
	);
end EFES_Fpga_Top;

architecture Structural  of EFES_Fpga_Top is
begin
	
	
end Structural;