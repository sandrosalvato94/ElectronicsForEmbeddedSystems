
-- VHDL Instantiation Created from source file UartDriverTX.vhd -- 12:15:22 11/05/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UartDriverTX
	PORT(
		UART_clock : IN std_logic;
		UART_reset : IN std_logic;
		UART_load : IN std_logic;
		UART_data : IN std_logic_vector(7 downto 0);
		UART_enable : IN std_logic;
		UART_ODD_even : IN std_logic;
		UART_event : IN std_logic;          
		UART_busy : OUT std_logic;
		UART_out : OUT std_logic
		);
	END COMPONENT;

	Inst_UartDriverTX: UartDriverTX PORT MAP(
		UART_clock => ,
		UART_reset => ,
		UART_load => ,
		UART_data => ,
		UART_enable => ,
		UART_ODD_even => ,
		UART_event => ,
		UART_busy => ,
		UART_out => 
	);


