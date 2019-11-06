library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;

entity EightButtonDriver  is
	port(
		EBD_buttons		:	in  std_logic_vector(7 downto 0);
		EBD_clock		:	in	 std_logic;
		EBD_reset		:  in	 std_logic;
		EBD_event		:	out std_logic;
		EBD_buttons_save:	out std_logic_vector(7 downto 0)
	);
end EightButtonDriver;

architecture Structural  of EightButtonDriver is

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
	
	component Reg1Bit is
	port(
		clk:	in  std_logic;
		reset:	in  std_logic; --Active high
		data_in:	in  std_logic;
		enable:	in  std_logic;
		load:	in  std_logic; --Load enable high
		data_out: out std_logic);
	end component;
	
	component ORGate_NX1 is
	generic(N: integer:= 8);
	port(
		A:	in  std_logic_vector(N-1 downto 0);
		B:	in  std_logic_vector(N-1 downto 0);
		Y:	out std_logic);
	end component;
	
	signal s_event	: std_logic;
	
begin
	
	OR8x1 : ORGate_NX1 GENERIC MAP (N => 8) 
							PORT MAP (
							A => EBD_buttons,
							B => "00000000",
							Y => s_event
						);
	
	
	But_Reg: NRegister GENERIC MAP(N => 8) 
							 PORT MAP (
								clk => EBD_clock,
								reset => EBD_reset,
								data_in => EBD_buttons,
								enable => '1',
								load => s_event,
								data_out => EBD_buttons_save
							 );
	Eve_Reg : Reg1Bit PORT MAP (
							clk => EBD_clock,
							reset => EBD_reset,
							data_in => s_event,
							enable => '1',
							load => '1',
							data_out => EBD_event
							);
	
	
end Structural;