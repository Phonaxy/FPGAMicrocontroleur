library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity toplevel is
    Port (
        CLOCK_50_B6A : in  std_logic;                        -- Horloge principale 50 MHz
        KEY          : in  std_logic_vector(3 downto 0);    -- Boutons de la carte (actifs à l'état bas)
        LEDR         : out std_logic_vector(9 downto 0)     -- Sortie vers les LED rouges
    );
end toplevel;

architecture Structural of toplevel is
    signal clk_divided : std_logic;                         -- Horloge divisée (générée par le diviseur)
    signal clk_div_n   : std_logic_vector(4 downto 0) := "10100"; -- Valeur N = 20 pour diviser l’horloge
    signal rst         : std_logic;                         -- Signal de réinitialisation
    signal leds        : std_logic_vector(9 downto 0);      -- Sortie du chenillard

    -- Déclaration du composant clock_divider
    component clock_divider
        Port (
            CLKin  : in  std_logic;
            RST    : in  std_logic;
            N      : in  std_logic_vector(4 downto 0);
            CLKout : out std_logic
        );
    end component;

    -- Déclaration du composant chenillard
    component chenillard
        Port (
            CLK  : in  std_logic;
            RST  : in  std_logic;
            CHEN : out std_logic_vector(9 downto 0)
        );
    end component;

begin
    rst <= not KEY(0);  -- Réinitialisation active à l'état bas (inversée ici pour correspondre à la logique interne)

    -- Instanciation du diviseur d'horloge
    divider_inst : clock_divider
        port map (
            CLKin  => CLOCK_50_B6A,
            RST    => rst,
            N      => clk_div_n,
            CLKout => clk_divided
        );

    -- Instanciation du chenillard
    chenillard_inst : chenillard
        port map (
            CLK  => clk_divided,
            RST  => rst,
            CHEN => leds
        );

    -- Connexion de la sortie du chenillard aux LEDs de la carte
    LEDR <= leds;

end Structural;
