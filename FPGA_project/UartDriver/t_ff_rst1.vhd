library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity t_ff_rst1 is
    port(
        TFF_clk :   in  std_logic;
        TFF_rst :   in  std_logic;
        TFF_t   :   in  std_logic;
        TFF_q   :   out std_logic;
        TFF_nq  :   out std_logic);
end entity t_ff_rst1;

--architecture behavioral of t_ff_rst0 is
--    signal data : std_logic;
--begin
--    
--    MAIN : process(TFF_rst, TFF_clk)
--    begin
--        if TFF_rst = '1' then
--            data <= '0';
--        else
--            if TFF_clk'event and TFF_clk = '1' and TFF_t = '1' then
--                data <= not data;
--            end if;
--        end if;
--    end process;
--
--    TFF_q   <= data;
--    TFF_nq  <= not data;
--end architecture behavioral;

architecture Behavioral of t_ff_rst1 is
    signal data : std_logic;
begin
    
    MAIN : process(TFF_rst, TFF_clk)
    begin
        if TFF_rst = '1' then
            data <= '1';
        else
            if TFF_clk'event and TFF_clk = '1' and TFF_t = '1' then
                data <= not data;
            end if;
        end if;
    end process;

    TFF_q   <= data;
    TFF_nq  <= not data;
end architecture Behavioral;

