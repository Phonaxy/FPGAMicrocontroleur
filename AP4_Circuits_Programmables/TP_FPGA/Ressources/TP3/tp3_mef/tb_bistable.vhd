library ieee;
use ieee.std_logic_1164.all;

entity tb_bistable is
end entity;

architecture sim of tb_bistable is

    -- Signaux connectés au composant testé (DUT)
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal X   : std_logic := '0';
    signal Y   : std_logic;

    -- Période d'horloge (50 MHz => période de 20 ns)
    constant clk_period : time := 20 ns;

    -- Déclaration du composant testé
    component bistable
        port (
            clk : in std_logic;
            rst : in std_logic;
            X   : in std_logic;
            Y   : out std_logic
        );
    end component;

begin

    -- Instanciation du composant testé (Device Under Test)
    UUT: bistable
        port map (
            clk => clk,
            rst => rst,
            X   => X,
            Y   => Y
        );

    -- Génération de l’horloge
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Processus de stimulation
    stim_proc: process
    begin
        -- Étape 1 : réinitialisation
        rst <= '1';
        wait for 40 ns;
        rst <= '0';

        -- Étape 2 : simulation d'une entrée de bascule
        wait for 40 ns;  X <= '1';  -- A -> B
        wait for 40 ns;  X <= '0';  -- B -> C
        wait for 40 ns;  X <= '1';  -- C -> D
        wait for 40 ns;  X <= '0';  -- D -> A
        wait for 40 ns;  X <= '1';  -- A -> B à nouveau
        wait for 40 ns;  X <= '0';  -- B -> C

        wait for 100 ns;
        assert false report "Simulation terminée." severity failure;
    end process;

end sim;
