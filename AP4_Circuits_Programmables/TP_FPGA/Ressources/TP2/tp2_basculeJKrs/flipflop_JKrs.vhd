--a.2.1
--J et K : entrées classiques (commandent le comportement Set/Reset/Toggle) au front d'horloge.
--clk : horloge (détecte les fronts montants pour l'action synchrone).
--Preset : force immédiatement (sans attendre l'horloge) la sortie Q à '1'.
--Reset  : force immédiatement la sortie Q à '0'.
-- Table caractéristique de la bascule JK

library ieee;
use ieee.std_logic_1164.all;

entity flipflop_JKrs is
    Port (
        J     : in  std_logic;  -- Entrée J (1 bit)
        K     : in  std_logic;  -- Entrée K (1 bit)
        CLK   : in  std_logic;  -- Horloge (front montant)
        SETn  : in  std_logic;  -- Preset asynchrone (actif bas)
        RSTn  : in  std_logic;  -- Reset asynchrone (actif bas)
        Q     : out std_logic;  -- Sortie Q
        Qn    : out std_logic   -- Sortie complémentée Qn
    );
end flipflop_JKrs;

architecture Behavioral of flipflop_JKrs is
    signal Q_reg : std_logic := '0'; -- État interne initialisé
begin

    process (SETn, RSTn, CLK)
    begin
        if RSTn = '0' then
            Q_reg <= '0'; -- Reset asynchrone
        elsif SETn = '0' then
            Q_reg <= '1'; -- Preset asynchrone
        elsif rising_edge(CLK) then
            -- Fonctionnement synchrone
            if (J = '0' and K = '0') then
                Q_reg <= Q_reg;     -- Pas de changement
            elsif (J = '0' and K = '1') then
                Q_reg <= '0';       -- Reset synchrone
            elsif (J = '1' and K = '0') then
                Q_reg <= '1';       -- Set synchrone
            elsif (J = '1' and K = '1') then
                Q_reg <= not Q_reg; -- Toggle
            end if;
        end if;
    end process;

    -- Affectations des sorties
    Q  <= Q_reg;
    Qn <= not Q_reg;

end Behavioral;
