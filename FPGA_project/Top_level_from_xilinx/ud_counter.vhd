library ieee;
use ieee.std_logic_1164.all;


entity UD_COUNTER is
  
  generic (
    UDC_NBIT : integer := 4);           -- number of bits

  port (
    UDC_EN  : in  std_logic;            -- enable counter
    UDC_UP  : in  std_logic;            -- up / not down signal
    UDC_CLK : in  std_logic;            -- clock signal
    UDC_RST : in  std_logic;            -- reset signal (asynch.)
    UDC_OUT : out std_logic_vector(UDC_NBIT - 1 downto 0));  -- out count

end entity UD_COUNTER;

architecture STR of UD_COUNTER is
  
  component t_ff_rst0 is
    port(
        TFF_clk :   in  std_logic;
        TFF_rst :   in  std_logic;
        TFF_t   :   in  std_logic;
        TFF_q   :   out std_logic;
        TFF_nq  :   out std_logic);
   end component;
   
--   component t_ff_rst1 is
--    port(
--        TFF_clk :   in  std_logic;
--        TFF_rst :   in  std_logic;
--        TFF_t   :   in  std_logic;
--        TFF_q   :   out std_logic;
--        TFF_nq  :   out std_logic);
--   end component;


  signal s_up   : std_logic := '0';     -- internal 'up' signal
  signal s_down : std_logic := '0';     -- internal 'down' signal

  signal s_q  : std_logic_vector (UDC_NBIT - 1 downto 0) := (others => '0');  -- internal q signal
  signal s_nq : std_logic_vector(UDC_NBIT - 1 downto 0)  := (others => '0');  -- internal 'not q' signal

  signal s_en_inc : std_logic_vector (UDC_NBIT - 1 downto 0) := (others => '0');  -- enable to count up
  signal s_en_dec : std_logic_vector(UDC_NBIT - 1 downto 0)  := (others => '0');  -- enable to count down

  signal s_toggle : std_logic_vector(UDC_NBIT downto 0) := (others => '0');  --internal out
  
begin  -- architecture STR

  s_up   <= UDC_UP;
  s_down <= not UDC_UP;

  MAIN_GEN : for i in 0 to UDC_NBIT - 1 generate

    FIRST_FF : if i = 0 generate

      FF_0 : t_ff_rst0 
        port map(
          TFF_t   => UDC_EN,
          TFF_clk => UDC_CLK,
          TFF_rst => UDC_RST,
          TFF_q      => s_q(i),
          TFF_nq     => s_nq(i));
      s_en_inc(i) <= s_up and s_q(i);
      s_en_dec(i) <= s_down and s_nq(i);
      
    end generate FIRST_FF;

    SECOND_FF : if i > 0 AND i < UDC_NBIT - 1 generate

      FF_i : t_ff_rst0       port map(
          TFF_t   => s_toggle(i),
          TFF_clk => UDC_CLK,
          TFF_rst => UDC_RST,
          TFF_q   => s_q(i),
          TFF_nq  => s_nq(i));
      
      s_en_inc(i) <= s_en_inc(i-1) and s_q(i);
      s_en_dec(i) <= s_en_dec(i-1) and s_nq(i);
    end generate SECOND_FF;
    
    LAST_FF : if i = UDC_NBIT-1 generate

      FF_N : t_ff_rst0       port map(
          TFF_t   => s_toggle(i),
          TFF_clk => UDC_CLK,
          TFF_rst => UDC_RST,
          TFF_q   => s_q(i),
          TFF_nq  => s_nq(i));
      
      s_en_inc(i) <= s_en_inc(i-1) and s_q(i);
      s_en_dec(i) <= s_en_dec(i-1) and s_nq(i);
    end generate LAST_FF;
    

    s_toggle(i+1) <= UDC_EN and (s_en_dec(i) or s_en_inc(i));

  end generate MAIN_GEN;

  UDC_OUT <= s_q;

end architecture STR;


