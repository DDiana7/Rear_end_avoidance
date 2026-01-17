library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity RestoringDivision is
    generic ( N : integer := 12);
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;      
        start      : in  std_logic;
        dividend   : in  std_logic_vector(N-1 downto 0);
        divisor    : in  std_logic_vector(N-1 downto 0);
        quotient   : out std_logic_vector(N-1 downto 0);
        remainder  : out std_logic_vector(N downto 0);
        gata       : out std_logic;
        leds       : out std_logic_vector(3 downto 0) -- Conectat la pinii fizici LD0-LD3
    );
end entity RestoringDivision;

architecture Behavioral of RestoringDivision is
    type state_type is (S_ASTEPTARE, S_CALCUL, S_FINAL);
    signal state  : state_type;
    signal A      : std_logic_vector(N downto 0);
    signal M      : std_logic_vector(N downto 0);
    signal Q      : std_logic_vector(N-1 downto 0);
    signal contor : integer range 0 to N;
    signal leds_reg : std_logic_vector(3 downto 0) := "0000";
begin
    -- Atribuire continuă pentru ieșirea LED
    leds <= leds_reg;

    process(clk, rst)
        variable A_prim, A_partial : std_logic_vector(N downto 0);
        variable Q_partial :  std_logic_vector(N-1 downto 0);
        variable currentCont : integer range 0 to N;
    begin
        if rst = '1' then
            state     <= S_ASTEPTARE;
            M         <= (others => '0');
            Q         <= (others => '0');
            A         <= (others => '0');
            gata      <= '0';
            leds_reg  <= (others => '0');
            contor    <= N;
        elsif rising_edge(clk) then
            case state is
                when S_ASTEPTARE =>
                    gata <= '0';
                    if start = '1' then
                        -- 1. Actualizăm LED-urile cu valoarea primită din PS (Vitis)
                        leds_reg <= dividend(3 downto 0);
                        
                        -- 2. Inițializăm restul registrelor pentru algoritm
                        Q <= dividend;
                        M <= '0' & divisor;
                        A <= (others => '0');
                        contor <= N;
                        state <= S_CALCUL;
                    end if;

                when S_CALCUL =>
                    currentCont := contor;
                    Q_partial := Q;
                    
                    -- Shift Left (A, Q)
                    A_prim := A(N-1 downto 0) & Q_partial(N-1);
                    Q_partial(N-1 downto 1) := Q_partial(N-2 downto 0);
                    
                    A_partial := A_prim;
                    
                    -- Încercăm scăderea: A = A - M
                    -- (Folosind std_logic_unsigned, operația e directă)
                    A_prim := A_prim - M;
                    
                    if A_prim(N) = '1' then -- Rezultat negativ
                        A <= A_partial;    -- Restaurăm restul
                        Q_partial(0) := '0';
                    else                   -- Rezultat pozitiv
                        A <= A_prim;
                        Q_partial(0) := '1';
                    end if;

                    Q <= Q_partial;
                    
                    if currentCont = 1 then
                        state <= S_FINAL;
                        contor <= 0;
                    else
                        contor <= currentCont - 1;
                    end if;

                when S_FINAL =>
                    quotient  <= Q;
                    remainder <= A;
                    gata      <= '1';
                    state     <= S_ASTEPTARE;
                    
            end case;
        end if;
    end process;
end architecture Behavioral;
