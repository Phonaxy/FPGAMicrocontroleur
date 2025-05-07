--toplevel
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Définition de l'entité toplevel
entity toplevel is
    port (
        LEDR : out std_logic_vector(9 downto 0);  -- LEDs rouges pour afficher les entrées
        LEDG : out std_logic_vector(7 downto 0);  -- LEDs vertes pour afficher les sorties
        SW   : in std_logic_vector(9 downto 0)    -- Interrupteurs pour les entrées
    );
end entity;

-- Architecture pour l'entité toplevel
architecture Behavioral of toplevel is

    -- Signaux internes pour l'additionneur
    signal A, B : std_logic_vector(3 downto 0);  -- Les deux opérandes de l'additionneur
    signal Cin : std_logic;                       -- La retenue d'entrée
    signal S : std_logic_vector(3 downto 0);     -- La sortie (résultat de l'addition)
    signal Cout : std_logic;                     -- La retenue de sortie

    -- Instantiation de l'additionneur 4-bits
    component full_adder_4b
        port (
            Cin : in std_logic;
            A : in std_logic_vector(3 downto 0);
            B : in std_logic_vector(3 downto 0);
            Cout : out std_logic;
            S : out std_logic_vector(3 downto 0)
        );
    end component;

begin
    -- Connexion des entrées (SW) aux signaux internes
    A <= SW(3 downto 0);   -- A correspond à SW0 à SW3
    B <= SW(7 downto 4);   -- B correspond à SW4 à SW7
    Cin <= SW(9);          -- Cin correspond à SW9

    -- Instantiation de l'additionneur
    adder : full_adder_4b
        port map (
            A => A,
            B => B,
            Cin => Cin,
            S => S,
            Cout => Cout
        );

    -- Connexion des sorties (LEDs)
    LEDR(3 downto 0) <= A;         -- Affiche A sur les LEDs rouges 0 à 3
    LEDR(7 downto 4) <= B;         -- Affiche B sur les LEDs rouges 4 à 7
    LEDR(9) <= Cin;                -- Affiche Cin sur la LED rouge 9
    LEDG(3 downto 0) <= S;         -- Affiche la sortie S sur les LEDs vertes 0 à 3
    LEDG(7) <= Cout;               -- Affiche Cout sur la LED verte 7
end architecture;
