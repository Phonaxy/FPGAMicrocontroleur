--Un registre à décalage est composé d'une cascade de bascules dont la sortie (Q)
--est connectée à l'entrée de données (D) de la bascule suivante de la chaîne
library ieee;
use ieee.std_logic_1164.all;

entity shift_register_SISO8 is
    Port (
        Si    : in  std_logic;  --Entrée série (Serial In)
        CLK   : in  std_logic;  --Horloge (front montant)
        SETn  : in  std_logic;  --Préréglage asynchrone (active à l'état bas)
        RSTn  : in  std_logic;  --Reset asynchrone (active à l'état bas)
        So    : out std_logic   --Sortie du registre (Serial Out)
    );
end shift_register_SISO8;

--Définition de l'architecture
architecture Behavioral of shift_register_SISO8 is
    signal registre : std_logic := '0';  -- Registre interne (initialisé à 0)
begin

    --Processus de gestion des entrées et du registre
    process (CLK, SETn, RSTn)
    begin
        --Traitement asynchrone
        if (RSTn = '0') then
            registre <= '0';  --Reset du registre à 0
        elsif (SETn = '0') then
            registre <= '1';  --Préréglage du registre à 1
        --Traitement synchrone
        elsif rising_edge(CLK) then
            registre <= Si;  --Décalage du bit Si dans le registre
        end if;
    end process;

    So <= registre;  --La sortie So est l'état actuel du registre

end Behavioral;
