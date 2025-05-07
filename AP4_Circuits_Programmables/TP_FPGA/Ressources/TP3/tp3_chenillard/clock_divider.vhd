library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_divider is
    Port (
        CLKin  : in  std_logic;
        RST    : in  std_logic;                      -- Réinitialisation active à l'état haut
        N      : in  std_logic_vector(4 downto 0);   -- Facteur de division (sélection du bit du compteur)
        CLKout : out std_logic                       -- Horloge divisée en sortie
    );
end clock_divider;

architecture Behavioral of clock_divider is
    signal counter : unsigned(23 downto 0) := (others => '0');
    signal clk_reg : std_logic := '0';
begin
    process(CLKin)
    begin
        if rising_edge(CLKin) then
            if RST = '1' then
                -- Réinitialise le compteur et la sortie
                counter <= (others => '0');
                clk_reg <= '0';
            else
                -- Incrémente le compteur à chaque front montant
                counter <= counter + 1;
                -- La sortie prend la valeur du bit sélectionné du compteur (division par 2^(N+1))
                clk_reg <= counter(to_integer(unsigned(N)));
            end if;
        end if;
    end process;

    -- Assignation du signal d'horloge divisé à la sortie
    CLKout <= clk_reg;
end Behavioral;
