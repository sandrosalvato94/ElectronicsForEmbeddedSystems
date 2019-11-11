----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:53:17 11/07/2019 
-- Design Name: 
-- Module Name:    MemoryInterface - Behavioral 
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

entity MemoryInterface is
	port(
		MI_buttons			:	in  std_logic_vector(7 downto 0);
		MI_clk				:	in	 std_logic;
		MI_reset				:	in	 std_logic;
		MI_enable			:  in  std_logic;
		MI_RW					:  in  std_logic; -- external event, no event reading, event writing
		MI_action			:  in  std_logic; -- active low
		MI_address			:  in  std_logic_vector(14 downto 0);
		
--		real interface
		
		MI_address_9_0		:	out std_logic_vector(9 downto 0);
		MI_address_10		:	out std_logic;
		MI_address_12_11	:	out std_logic_vector(12 downto 11);
		MI_bank				:	out std_logic_vector(1 downto 0);
		MI_data				:	inout std_logic_vector(15 downto 0);
		MI_CAS				:	out std_logic; -- active low
		MI_RAS				:	out std_logic; -- active low
		MI_CS					:  out std_logic; -- active low
		MI_write_enable	: 	out std_logic; -- active low
		MI_clk_enable		:  out std_logic;	-- active high
		MI_memory_clk		:  out std_logic;
		MI_DQML				:  out std_logic;
		MI_DQMH				: 	out std_logic
	);
end MemoryInterface;

architecture Behavioral of MemoryInterface is

	type mem_command	is	(CMD_DESL, CMD_NOP, CMD_BST, CMD_READ, CMD_READA, CMD_WRITE, CMD_WRITEA, CMD_ACT, CMP_PRE, CMP_PALL, CMD_REF, CMD_SELF, CMD_MRS);
	type mem_states	is	(MEM_RESET,
								 MEM_RESET_NOP0,
								 MEM_RESET_NOP1,
								 MEM_RESET_NOP2,
								 MEM_RESET_NOP,
								 MEM_RESET_PRECHARGE,
								 MEM_RESET_AREFRESH,
								 MEM_LOAD_MODE_REG,
								 MEM_IDLE, 
								 MEM_RW_ACTIVATING, 
								 MEM_RW_ACTIVATING_NOP1,
								 MEM_RW_ACTIVATING_NOP2,
								 MEM_READ, MEM_WRITE, 
								 
								 MEM_RD_WR_NOP1,
								 
								 MEM_READA, MEM_WRITEA, MEM_PRECHARGING, MEM_WT_RECOVERING, MEM_WT_RECOVERING_WITH_APRECHARGE, MEM_REFRESH, MEM_MRA);
	
	signal prev_state, curr_state, next_state	:	mem_states;
	
	signal s_init_cyc	: std_logic_vector(3 downto 0);
	signal s_zeros		: std_logic_vector(3 downto 0) := (others => '0');
	signal s_conf_already_done	: std_logic := '0';
	

begin


	cmd_proc	:  process(MI_clk)
	begin
		--if 
	end process;
 
	clk_proc	:	process(MI_clk, MI_reset, MI_enable)
	begin
		if(MI_reset = '1') then
			curr_state <= MEM_RESET;
		else if (MI_clk = '1' and MI_clk'event and MI_enable = '1') then
			curr_state <= next_state;
			end if;
		end if;
	end process;
	
	
	state_proc	:	process(MI_clk, curr_state)
	begin
		if(MI_clk = '0' and MI_clk'event) then
			case (curr_state) is
				when MEM_RESET =>
					MI_address_9_0 	<= (others => '0');
					MI_address_10		<= '0';
					MI_address_12_11	<= (others => '0');
					MI_bank				<= (others => '0');
					MI_data				<= (others => 'Z');
					MI_CAS				<= '1';
					MI_RAS				<= '1';
					MI_CS					<= '1'; -- not active
					MI_write_enable	<= '1';
					MI_clk_enable		<= '0'; -- not active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					s_init_cyc <= (others => '0');
					s_conf_already_done <= '0';
					next_state 			<= MEM_RESET_NOP0;
					
					
				
				when MEM_RESET_NOP0 =>
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= (others => '0');
					MI_address_10		<= '0';
					MI_address_12_11	<= (others => '0');
					MI_address_9_0 	<= (others => '0');
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					next_state 			<= MEM_RESET_PRECHARGE;
				
					
				when MEM_RESET_PRECHARGE => -- aka PALL all banks
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '0';
					MI_CAS				<= '1';
					MI_write_enable	<= '0';
					MI_bank				<= (others => '0');
					MI_address_10		<= '1';
					MI_address_12_11	<= (others => '0');
					MI_address_9_0 	<= (others => '0');
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					next_state 			<= MEM_RESET_AREFRESH;
				
					
				when MEM_RESET_AREFRESH => -- aka REF
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '0';
					MI_CAS				<= '0';
					MI_write_enable	<= '1';
					MI_bank				<= (others => '0');
					MI_address_10		<= '1';
					MI_address_12_11	<= (others => '0');
					MI_address_9_0 	<= (others => '0');
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
				
					if(s_init_cyc < "1000") then
						s_init_cyc <= std_logic_vector((unsigned(s_init_cyc)+ 1));
						next_state <= MEM_RESET_NOP1;
					else
						s_init_cyc <= "0000";
						next_state <= MEM_RESET_NOP1;
					end if;
				when MEM_RESET_NOP1 =>
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= (others => '0');
					MI_address_10		<= '0';
					MI_address_12_11	<= (others => '0');
					MI_address_9_0 	<= (others => '0');
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
				
					if(s_init_cyc < "1000") then
						--s_init_cyc <= s_init_cyc + 1;
						next_state <= MEM_RESET_AREFRESH;
					elsif(s_conf_already_done = '0') then
						s_conf_already_done <= '1';
						next_state <= MEM_LOAD_MODE_REG;
					else
						next_state <= MEM_IDLE;
					end if;
				
				when MEM_LOAD_MODE_REG =>
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '0';
					MI_CAS				<= '0';
					MI_write_enable	<= '0';
					MI_bank				<= (others => '0');
					MI_address_10		<= '0';
					MI_address_12_11	<= (others => '0');
					MI_address_9_0 	<= "1000100000"; -- [9]Single location access, [8-7]standard operation, [6-4]2 CAS latency, [3]Sequential, [2-0]Burst length = 1
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					
				
					next_state <= MEM_RESET_NOP2;
				
				when MEM_RESET_NOP2 =>
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= (others => '0');
					MI_address_10		<= '0';
					MI_address_12_11	<= (others => '0');
					MI_address_9_0 	<= (others => '0');
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					
					next_state 			<= MEM_IDLE;
					
					
				when MEM_IDLE =>
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= (others => '0');
					MI_address_10		<= '0';
					MI_address_12_11	<= (others => '0');
					MI_address_9_0 	<= (others => '0');
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					if(MI_reset = '0' and MI_enable = '1' and MI_action = '0') then -- IDLE NOP
						next_state 			<= MEM_RESET_PRECHARGE; 
					elsif(MI_reset = '0' and MI_enable = '1' and MI_action = '1') then -- IDLE ROW ACTIVATING
						next_state			<= MEM_RW_ACTIVATING;
					end if;
				
				when MEM_RW_ACTIVATING => 
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '0';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= MI_address(14 downto 13);
					MI_address_10		<= MI_address(10);
					MI_address_12_11	<= MI_address(12 downto 11);
					MI_address_9_0 	<= MI_address(9 downto 0);
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					next_state			<= MEM_RW_ACTIVATING_NOP1;
				
				when MEM_RW_ACTIVATING_NOP1 => 
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= MI_address(14 downto 13); 	-- don't care
					MI_address_10		<= MI_address(10); 				-- don't care
					MI_address_12_11	<= MI_address(12 downto 11); 	-- don't care
					MI_address_9_0 	<= MI_address(9 downto 0); 	-- don't care
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					next_state			<= MEM_RW_ACTIVATING_NOP2;
				
				when MEM_RW_ACTIVATING_NOP2 => 
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= MI_address(14 downto 13); 	-- don't care
					MI_address_10		<= MI_address(10); 				-- don't care
					MI_address_12_11	<= MI_address(12 downto 11); 	-- don't care
					MI_address_9_0 	<= MI_address(9 downto 0); 	-- don't care
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					
					if(MI_reset = '0' and MI_reset = '1' and MI_RW = '0') then
						next_state			<= MEM_READ;
					elsif(MI_reset = '0' and MI_reset = '1' and MI_RW = '0') then
						next_state			<= MEM_WRITE;
					end if;
					
				
				when MEM_READ =>
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '0';
					MI_write_enable	<= '1';
					MI_bank				<= MI_address(14 downto 13); 	-- don't care
					MI_address_10		<= MI_address(10); 				-- to be set to 1 for auto precharge
					MI_address_12_11	<= MI_address(12 downto 11); 	-- don't care
					MI_address_9_0 	<= MI_address(9 downto 0); 	-- don't care
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					next_step			<= MEM_RD_WR_NOP1;
					
				when MEM_WRITE =>
				
				when MEM_RD_WR_NOP1 =>
					MI_data				<= (others => 'Z');
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= MI_address(14 downto 13); 	-- don't care
					MI_address_10		<= MI_address(10); 				-- to be set to 1 for auto precharge
					MI_address_12_11	<= MI_address(12 downto 11); 	-- don't care
					MI_address_9_0 	<= MI_address(9 downto 0); 	-- don't care
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					next_step			<= MEM_RD_WR_NOP2;
				
				when MEM_RD_WR_NOP2 =>
					--MI_data				<= (others => 'Z'); here data available from memory
					MI_CS					<= '0'; -- active
					MI_RAS				<= '1';
					MI_CAS				<= '1';
					MI_write_enable	<= '1';
					MI_bank				<= MI_address(14 downto 13); 	-- don't care
					MI_address_10		<= MI_address(10); 				-- to be set to 1 for auto precharge
					MI_address_12_11	<= MI_address(12 downto 11); 	-- don't care
					MI_address_9_0 	<= MI_address(9 downto 0); 	-- don't care
					MI_clk_enable		<= '1'; -- active
					MI_memory_clk		<= MI_clk;
					MI_DQML				<= '0';
					MI_DQMH				<= '0';
					next_step			<= ;
				
				when others =>
					
			 end case; 
		 end if;
	end process;

end Behavioral;

