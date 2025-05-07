library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity shift_register_universal8 is
    Port (
        SSR   : in  std_logic;       -- Entrée série de décalage à droite
        SSL   : in  std_logic;       -- Entrée série de décalage à gauche
        Pi    : in  std_logic_vector(7 downto 0); -- Entrée parallèle
        SEL   : in  std_logic_vector(2 downto 0); -- Sélection du mode
        CLK   : in  std_logic;       -- Horloge (front montant)
        SETn  : in  std_logic;       -- Préréglage asynchrone (actif bas)
        RSTn  : in  std_logic;       -- Reset asynchrone (actif bas)
        SOR   : out std_logic;       -- Sortie du décalage à droite
        SOL   : out std_logic;       -- Sortie du décalage à gauche
        Qo    : out std_logic_vector(7 downto 0)  -- Sortie parallèle
    );
end shift_register_universal8;

architecture Behavioral of shift_register_universal8 is
    signal registre : std_logic_vector(7 downto 0) := (others => '0');
begin

    process (CLK, SETn, RSTn)
    begin
        if (RSTn = '0') then
            registre <= (others => '0');
        elsif (SETn = '0') then
            registre <= (others => '1');
        elsif rising_edge(CLK) then
            case SEL is
                when "000" =>
                    registre <= registre;

                when "011" =>  -- Chargement parallel
                    registre <= Pi;

                when "001" =>  -- Decalage droite
                    registre(7) <= SSR;
                    registre(6) <= registre(7);
                    registre(5) <= registre(6);
                    registre(4) <= registre(5);
                    registre(3) <= registre(4);
                    registre(2) <= registre(3);
                    registre(1) <= registre(2);
                    registre(0) <= registre(1);

                when "010" =>  -- Decalage gauche
                    registre(0) <= SSL;
                    registre(1) <= registre(0);
                    registre(2) <= registre(1);
                    registre(3) <= registre(2);
                    registre(4) <= registre(3);
                    registre(5) <= registre(4);
                    registre(6) <= registre(5);
                    registre(7) <= registre(6);

                when "101" =>  -- Rotation droite
                    registre(7) <= registre(0);
                    registre(6) <= registre(7);
                    registre(5) <= registre(6);
                    registre(4) <= registre(5);
                    registre(3) <= registre(4);
                    registre(2) <= registre(3);
                    registre(1) <= registre(2);
                    registre(0) <= registre(1);

                when "110" =>  -- Rotation gauche
                    registre(0) <= registre(1);
                    registre(1) <= registre(2);
                    registre(2) <= registre(3);
                    registre(3) <= registre(4);
                    registre(4) <= registre(5);
                    registre(5) <= registre(6);
                    registre(6) <= registre(7);
                    registre(7) <= registre(0);

                when others =>
                    registre <= registre;
            end case;
        end if;
    end process;

    -- Affectation des sorties
    SOR <= registre(0);
    SOL <= registre(7);
    Qo  <= registre;

end Behavioral;
