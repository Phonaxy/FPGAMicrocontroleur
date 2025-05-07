library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity chenillard is
    port(
        CLK  : in  std_logic;               -- Horloge d'entrée
        RST  : in  std_logic;               -- Reset actif haut (normal)
        CHEN : out std_logic_vector(9 downto 0) -- Sortie 10 bits
    );
end chenillard;

architecture behavioral of chenillard is
    signal state : integer range 0 to 10 := 0; -- Compteur d'états
begin

    process(CLK, RST)
    begin
        if RST = '1' then
            state <= 0; -- Reset sur l'état initial
        elsif rising_edge(CLK) then
            if state = 10 then
                state <= 0; -- Retour au début
            else
                state <= state + 1; -- Cycle suivant
            end if;
        end if;
    end process;

    -- Décodage de l'état vers CHEN
    with state select
        CHEN <= "0000001111" when 0,
                "0000011110" when 1,
                "0000111100" when 2,
                "0001111000" when 3,
                "0011110000" when 4,
                "0111100000" when 5,
                "1111000000" when 6,
                "1110000001" when 7,
                "1100000011" when 8,
                "1000000111" when 9,
                "0000001111" when 10, -- Boucle
                (others => '0') when others; -- Sécurité

end behavioral;