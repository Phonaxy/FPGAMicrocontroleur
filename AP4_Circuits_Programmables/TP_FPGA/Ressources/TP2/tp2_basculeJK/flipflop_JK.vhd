--a.1.1
-- Table caractéristique de la bascule JK
-- +-----+-----+-----+------+
-- |  J  |  K  |  Qn | Qn+1 |
-- +-----+-----+-----+------+
-- |  0  |  0  |  0  |  0   |  -- Pas de changement
-- |  0  |  0  |  1  |  1   |  -- Pas de changement
-- |  0  |  1  |  0  |  0   |  -- Reset
-- |  0  |  1  |  1  |  0   |  -- Reset
-- |  1  |  0  |  0  |  1   |  -- Set
-- |  1  |  0  |  1  |  1   |  -- Set
-- |  1  |  1  |  0  |  1   |  -- Toggle
-- |  1  |  1  |  1  |  0   |  -- Toggle
-- +-----+-----+-----+------+
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Déclaration de l'entité flipflop_JK (bascule JK)
entity flipflop_JK is
    Port (
        J    : in  std_logic;  -- Entrée J (1 bit)
        K    : in  std_logic;  -- Entrée K (1 bit)
        CLK  : in  std_logic;  -- Horloge (front montant)
        Q    : out std_logic;  -- Sortie Q
        Qn   : out std_logic   -- Sortie complémentée Qn
    );
end flipflop_JK;

-- Définition de l'architecture
architecture Behavioral of flipflop_JK is
    signal Q_reg : std_logic := '0'; -- État interne initialisé à 0
begin

    process (CLK)
    begin
        if rising_edge(CLK) then
            -- Fonctionnement synchrone sur front montant de l'horloge
            if (J = '0' and K = '0') then
                Q_reg <= Q_reg;    -- Pas de changement
            elsif (J = '0' and K = '1') then
                Q_reg <= '0';      -- Reset
            elsif (J = '1' and K = '0') then
                Q_reg <= '1';      -- Set
            elsif (J = '1' and K = '1') then
                Q_reg <= not Q_reg; -- Toggle
            end if;
        end if;
    end process;

    -- Affectation des sorties
    Q  <= Q_reg;
    Qn <= not Q_reg;

end Behavioral;
