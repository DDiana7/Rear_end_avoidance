library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_pot_leds is
  port(
    clk     : in  std_logic;                 -- 100/125MHz, orice ai tu în board
    rst     : in  std_logic;                 -- reset activ pe 1
    vaux14p : in  std_logic;                 -- din XDC
    vaux14n : in  std_logic;                 -- din XDC
    leds_0  : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of top_pot_leds is

  --------------------------------------------------------------------
  -- XADC Wizard (instanța ta poate avea alt nume de entity/porturi).
  -- Dacă ai deja XADC Wizard generat, deschide "Instantiation Template"
  -- și copiază EXACT porturile.
  --------------------------------------------------------------------
  component xadc_wiz_0 is
    port (
      dclk_in    : in  std_logic;
      reset_in   : in  std_logic;

      vauxp14    : in  std_logic;
      vauxn14    : in  std_logic;

      do_out     : out std_logic_vector(15 downto 0);
      drdy_out   : out std_logic;

      channel_out: out std_logic_vector(4 downto 0)
    );
  end component;

  signal xadc_do    : std_logic_vector(15 downto 0);
  signal xadc_drdy  : std_logic;
  signal xadc_chan  : std_logic_vector(4 downto 0);

  signal adc12      : unsigned(11 downto 0) := (others => '0');

  constant TH_30 : unsigned(11 downto 0) := to_unsigned(1229, 12);
  constant TH_60 : unsigned(11 downto 0) := to_unsigned(2457, 12);
  constant TH_90 : unsigned(11 downto 0) := to_unsigned(3686, 12);

begin

  -- XADC Wizard: conectat pe VAUX14
  XADC0 : xadc_wiz_0
    port map(
      dclk_in     => clk,
      reset_in    => rst,
      vauxp14     => vaux14p,
      vauxn14     => vaux14n,
      do_out      => xadc_do,
      drdy_out    => xadc_drdy,
      channel_out => xadc_chan
    );

  -- XADC dă datele în do_out; pentru XADC Wizard, de obicei
  -- valoarea ADC (12 biți) e în do_out(15 downto 4).
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        adc12 <= (others => '0');
      else
        if xadc_drdy = '1' then
          adc12 <= unsigned(xadc_do(15 downto 4)); -- 12-bit sample
        end if;
      end if;
    end if;
  end process;

  -- LED logic 30/60/90
  -- Exemplu: LED0 se aprinde peste 30%, LED1 peste 60%, LED2 peste 90%, LED3 liber
  leds_0(0) <= '1' when adc12 >= TH_30 else '0';
  leds_0(1) <= '1' when adc12 >= TH_60 else '0';
  leds_0(2) <= '1' when adc12 >= TH_90 else '0';
  leds_0(3) <= '0';

end architecture;
