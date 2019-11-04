entity EightButtonDriver  is
port(
	tmp:	in std_logic
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

begin
	
	
	
end Structural;