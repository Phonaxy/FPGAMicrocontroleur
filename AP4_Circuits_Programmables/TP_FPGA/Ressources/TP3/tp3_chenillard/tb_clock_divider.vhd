-- tb_clock_divider
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_clock_divider is
end tb_clock_divider;

architecture behavior of tb_clock_divider is

    -- Signaux pour le module testé (UUT - Unit Under Test)
    signal CLKin   : std_logic := '0';
    signal RST     : std_logic := '1';
    signal N       : std_logic_vector(4 downto 0) := "00010";  -- Division par 2^(2+1) = 8
    signal CLKout  : std_logic;

    -- Période de l'horloge
    constant clk_period : time := 10 ns;

begin

    -- Instanciation du diviseur d'horloge
    uut: entity work.clock_divider
        port map (
            CLKin  => CLKin,
            RST    => RST,
            N      => N,
            CLKout => CLKout
        );

    -- Processus de génération d'horloge
    clk_process: process
    begin
        while true loop
            CLKin <= '0';
            wait for clk_period / 2;
            CLKin <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Processus de stimulation
    stim_proc: process
    begin
        -- Réinitialisation du système
        RST <= '0';
        wait for 20 ns;
        RST <= '1';

        -- Laisse tourner un moment pour observer les changements de CLKout
        wait for 500 ns;

        -- test du changement dynamique de N
        N <= "00001";  -- Sortie plus rapide
        wait for 200 ns;

        N <= "00011";  -- Sortie plus lente
        wait for 500 ns;

        wait;
    end process;

end behavior;
