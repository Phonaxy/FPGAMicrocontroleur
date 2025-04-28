--tb_full_adder_4b
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_full_adder_4b is
end tb_full_adder_4b;

architecture behavior of tb_full_adder_4b is

    -- Inputs
    signal A    : std_logic_vector(3 downto 0);
    signal B    : std_logic_vector(3 downto 0);
    signal Cin  : std_logic;

    -- Outputs
    signal S    : std_logic_vector(3 downto 0);
    signal Cout : std_logic;

begin

    -- Unit Under Test
    UUT: entity work.full_adder_4b
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            S    => S,
            Cout => Cout
        );

    stimulus: process
    begin
        -- Case 1: Pas de retenu
        A <= "0010"; B <= "0011"; Cin <= '0'; wait for 10 ns;
        -- 2 + 3 = 5 → S = 0101, Cout = 0

        -- Case 2: Retenu avec LSB uniquement
        A <= "0001"; B <= "0001"; Cin <= '1'; wait for 10 ns;
        -- 1 + 1 + 1 = 3 → S = 0011, Cout = 0

        -- Case 3: Retenu du bit 0 au bit 1
        A <= "0011"; B <= "0001"; Cin <= '1'; wait for 10 ns;
        -- 3 + 1 + 1 = 5 → triggers carry chain from LSB

        -- Case 4: Retenu tout le long (4-bit d'overflow)
        A <= "1111"; B <= "0001"; Cin <= '1'; wait for 10 ns;
        -- 15 + 1 + 1 = 17 → S = 0001, Cout = 1

        -- Case 5: Valeur d'entrée au max, A and B = 1111
        A <= "1111"; B <= "1111"; Cin <= '0'; wait for 10 ns;
        -- 15 + 15 = 30 → S = 1110, Cout = 1

        -- Case 6: Bascule intermédiaire de bit
        A <= "1010"; B <= "0101"; Cin <= '1'; wait for 10 ns;
        -- 10 + 5 + 1 = 16 → S = 0000, Cout = 1

        wait;
    end process;

end behavior;