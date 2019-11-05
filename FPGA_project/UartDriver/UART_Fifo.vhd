----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:19 11/04/2019 
-- Design Name: 
-- Module Name:    UART_Fifo - Behavioral 
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

entity UART_Fifo is
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
end UART_Fifo;

architecture Behavioral of UART_Fifo is

	component D_FF_rst is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Not_Q : out  STD_LOGIC);
	end component;

	component Mux_Bit is
	generic(NBIT_Sel : integer := 2);
	port(
		inputs : in  std_logic_vector(2**NBIT_Sel-1 downto 0);
		sel    : in  std_logic_vector(NBIT_Sel-1 downto 0);
		output : out std_logic
	);
	end component;

	type matrix is array (0 to NBIT_DATA-1) of std_logic_vector(3 downto 0);
	signal s_input_mux		: matrix := (others => (others => '0'));
	
	signal s_D_Fmux_Tff	:	std_logic_vector(NBIT_DATA-1 downto 0);
	signal s_Q_Fff_Tmux	:	std_logic_vector(NBIT_DATA-1 downto 0);
	signal s_control_mux	:	std_logic_vector(1 downto 0);
	
	signal s_internal		:	std_logic;
	signal s_clk			:  std_logic;
	
	
begin
	
	s_control_mux(0) <= FIFO_enable AND NOT(FIFO_reset) AND FIFO_load;
	s_control_mux(1) <= NOT(FIFO_enable) OR FIFO_reset;
	
	s_internal <= NOT(s_control_mux(1)) AND s_control_mux(0);
	s_clk	<= s_internal OR FIFO_clk;
	
	
	FFcyc: for i in 0 to NBIT_DATA-1 generate
		FF_i : D_FF_rst PORT MAP (
						D => s_D_Fmux_Tff(i),
						clk => s_clk,
						rst => FIFO_reset,
						Q => s_Q_Fff_Tmux(i)
						--Not_Q => not connected
						);
	end generate FFcyc;
	
	MUX_cyc: for i in 0 to NBIT_DATA-1 generate
		
		IF_MUX0	: if i = 0 generate
			s_input_mux(i) <= '0' & s_Q_Fff_Tmux(i) & FIFO_data(i) & '0';
			MUX0 : Mux_Bit GENERIC MAP(NBIT_Sel => 2)
								PORT MAP (
									inputs => s_input_mux(i),
									sel => s_control_mux,
									output => s_D_Fmux_Tff(i)
								);
		end generate IF_MUX0;
		
		IF_MUXi	: if i > 0 generate
			s_input_mux(i) <= '0' & s_Q_Fff_Tmux(i) & FIFO_data(i) & s_Q_Fff_Tmux(i-1);
			MUXi : Mux_Bit GENERIC MAP(NBIT_Sel => 2)
								PORT MAP (
									inputs => s_input_mux(i),
									sel => s_control_mux,
									output => s_D_Fmux_Tff(i)
								);
		end generate IF_MUXi;
	end generate MUX_cyc;
	
	FIFO_bit_out <= s_Q_Fff_Tmux(NBIT_DATA-1);

end Behavioral;

