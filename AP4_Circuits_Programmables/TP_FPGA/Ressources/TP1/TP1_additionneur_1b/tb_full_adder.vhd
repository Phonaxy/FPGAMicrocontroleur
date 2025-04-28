--tb_full_adder
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_full_adder is
end tb_full_adder;

architecture tb of tb_full_adder is
    signal A, B, Cin : std_logic;
    signal Sum, Cout : std_logic;
begin
    UUT: entity work.full_adder port map (
        A => A,
        B => B,
        Cin => Cin,
        Sum => Sum,
        Cout => Cout
    );

    stimulus: process
    begin
        -- Format: A, B, Cin => Sum, Cout

        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        assert (Sum = '0' and Cout = '0') report "Error: 0+0+0" severity error;

        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        assert (Sum = '1' and Cout = '0') report "Error: 0+0+1" severity error;

        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        assert (Sum = '1' and Cout = '0') report "Error: 0+1+0" severity error;

        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        assert (Sum = '0' and Cout = '1') report "Error: 0+1+1" severity error;

        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        assert (Sum = '1' and Cout = '0') report "Error: 1+0+0" severity error;

        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        assert (Sum = '0' and Cout = '1') report "Error: 1+0+1" severity error;

        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        assert (Sum = '0' and Cout = '1') report "Error: 1+1+0" severity error;

        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
        assert (Sum = '1' and Cout = '1') report "Error: 1+1+1" severity error;

        wait;
    end process;
end tb;