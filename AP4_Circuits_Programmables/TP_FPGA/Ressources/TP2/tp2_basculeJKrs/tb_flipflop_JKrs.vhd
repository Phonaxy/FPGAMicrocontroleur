library ieee;
use ieee.std_logic_1164.all;

entity tb_flipflop_JKrs is
end tb_flipflop_JKrs;

architecture Behavioral of tb_flipflop_JKrs is

    -- Déclaration des signaux
    signal J_tb     : std_logic := '0';
    signal K_tb     : std_logic := '0';
    signal CLK_tb   : std_logic := '0';
    signal SETn_tb  : std_logic := '1'; -- Inactif (preset actif bas)
    signal RSTn_tb  : std_logic := '1'; -- Inactif (reset actif bas)
    signal Q_tb     : std_logic;
    signal Qn_tb    : std_logic;

    constant clk_period : time := 10 ns;

begin

    -- Instanciation du flipflop
    uut: entity work.flipflop_JKrs
        port map (
            J    => J_tb,
            K    => K_tb,
            CLK  => CLK_tb,
            SETn => SETn_tb,
            RSTn => RSTn_tb,
            Q    => Q_tb,
            Qn   => Qn_tb
        );

    -- Génération de l'horloge
    clk_process : process
    begin
        while true loop
            CLK_tb <= '0';
            wait for clk_period/2;
            CLK_tb <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    stim_proc: process
    begin

        -- Phase 1 : Test Reset asynchrone
        RSTn_tb <= '0'; -- Activation reset
        wait for 5 ns;
        RSTn_tb <= '1'; -- Désactivation
        wait for clk_period;

        -- Phase 2 : Test Set (Preset) asynchrone
        SETn_tb <= '0'; -- Activation preset
        wait for 5 ns;
        SETn_tb <= '1'; -- Désactivation
        wait for clk_period;

        -- Phase 3 : Test comportement synchrone

        -- Pas de changement : J = 0, K = 0
        J_tb <= '0'; K_tb <= '0';
        wait for clk_period;

        -- Reset synchrone : J = 0, K = 1
        J_tb <= '0'; K_tb <= '1';
        wait for clk_period;

        -- Set synchrone : J = 1, K = 0
        J_tb <= '1'; K_tb <= '0';
        wait for clk_period;

        -- Bascule synchrone : J = 1, K = 1
        J_tb <= '1'; K_tb <= '1';
        wait for clk_period;

        -- Nouvelle bascule pour valider inversion
        wait for clk_period;

        -- Repos : J = 0, K = 0
        J_tb <= '0'; K_tb <= '0';
        wait for clk_period;

        -- Fin de simulation
        wait;
    end process;

end Behavioral;
