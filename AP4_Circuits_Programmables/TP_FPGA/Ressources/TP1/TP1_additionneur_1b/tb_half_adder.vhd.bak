library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_half_adder is
end tb_half_adder;

architecture tb of tb_half_adder is
    signal A, B : std_logic;
    signal S, C : std_logic;
begin
    UUT : entity work.half_adder port map (A => A, B => B, S => S, C => C);

    Count_A : process
    begin
        -- inputs
        -- Case 0 + 0 = 00
        A <= '0';
        B <= '0';
        wait for 10 ns;
        assert S = '0' report "Sum error in half adder (0 + 0)" severity error;
        assert C = '0' report "Carry error in half adder (0 + 0)" severity error;

        -- Case 0 + 1 = 01
        A <= '0';
        B <= '1';
        wait for 10 ns;
        assert S = '1' report "Sum error in half adder (0 + 1)" severity error;
        assert C = '0' report "Carry error in half adder (0 + 1)" severity error;

        -- Case 1 + 0 = 01
        A <= '1';
        B <= '0';
        wait for 10 ns;
        assert S = '1' report "Sum error in half adder (1 + 0)" severity error;
        assert C = '0' report "Carry error in half adder (1 + 0)" severity error;

        -- Case 1 + 1 = 10
        A <= '1';
        B <= '1';
        wait for 10 ns;
        assert S = '0' report "Sum error in half adder (1 + 1)" severity error;
        assert C = '1' report "Carry error in half adder (1 + 1)" severity error;

        wait;
    end process;
end tb;
