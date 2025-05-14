-- toplevel.vhd
library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
    port (
        CLOCK_50_B6A : in std_logic;                     -- Entrée d'horloge (50 MHz)
        KEY          : in std_logic_vector(3 downto 0); -- Boutons
        LEDG         : out std_logic_vector(7 downto 0) -- LEDs vertes
    );
end toplevel;

architecture Behavioral of toplevel is

    -- Signaux internes
    signal clk       : std_logic;     
    signal rst       : std_logic;
    signal X         : std_logic;
    signal Y         : std_logic;

    -- Détection de front sur KEY(0)
    signal btn_sync_0 : std_logic := '0';
    signal btn_sync_1 : std_logic := '0';
    signal X_edge     : std_logic := '0';

    -- Déclaration du composant
    component bistable
        port (
            clk : in std_logic;
            rst : in std_logic;
            X   : in std_logic;
            Y   : out std_logic
        );
    end component;

begin

    -- Connexions d'entrée
    clk <= CLOCK_50_B6A;
    rst <= not KEY(1);  -- <-- reset actif à l'état bas (appui = reset)

    -- Logique de détection de front montant pour KEY(0)
    process(clk)
    begin
        if rising_edge(clk) then
            btn_sync_0 <= KEY(0);
            btn_sync_1 <= btn_sync_0;
            X_edge     <= btn_sync_0 and not btn_sync_1; -- détection du front montant
        end if;
    end process;

    X <= X_edge;

    -- Instanciation de la machine à états bistable
    FSM_inst : bistable
        port map (
            clk => clk,
            rst => rst,
            X   => X,
            Y   => Y
        );

    -- Sortie LED : toutes les LEDs vertes s'allument quand Y = '1'
    LEDG <= (others => Y);

end Behavioral;
