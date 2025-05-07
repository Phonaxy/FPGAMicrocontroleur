library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bistable is
    port(
        -- ENTRÉES
        clk : in std_logic;
        rst : in std_logic;
        X   : in std_logic;
        -- SORTIE
        Y   : out std_logic
    );
end entity;

architecture behavioral of bistable is

    -- États définis dans le diagramme
    type state_type is (A, B, C, D);
    signal current_state : state_type;
    signal future_state  : state_type;

begin

    -- Registre d’états
    process(clk, rst)
    begin
        if rst = '1' then
            current_state <= A;  -- reset = retour à l’état A
        elsif rising_edge(clk) then
            current_state <= future_state;
        end if;
    end process;

    -- Calcul de l’état futur
    process(X, current_state)
    begin
        case current_state is
            when A =>
                if X = '1' then
                    future_state <= B;
                else
                    future_state <= A;
                end if;

            when B =>
                if X = '0' then
                    future_state <= C;
                else
                    future_state <= B;
                end if;

            when C =>
                if X = '1' then
                    future_state <= D;
                else
                    future_state <= C;
                end if;

            when D =>
                if X = '0' then
                    future_state <= A;
                else
                    future_state <= D;
                end if;

            when others =>
                future_state <= A;
        end case;
    end process;


    -- Calcul des sorties
    process(current_state)
    begin
        case current_state is
            when A =>
                Y <= '0';
            when B =>
                Y <= '1';
            when C =>
                Y <= '1';
            when D =>
                Y <= '0';
            when others =>
                Y <= 'X'; -- erreur
        end case;
    end process;

end behavioral;

