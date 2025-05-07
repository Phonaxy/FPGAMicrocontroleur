--toplevel
library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
    port (
        SW      : in  std_logic_vector(9 downto 0);   -- SW[9:0]
        KEY     : in  std_logic_vector(3 downto 0);   -- KEY[3:0]
        LEDG    : out std_logic_vector(7 downto 0)    -- LED verte
    );
end toplevel;

architecture structure of toplevel is

    component shift_register_universal8
        port (
            SSR   : in  std_logic;
            SSL   : in  std_logic;
            Pi    : in  std_logic_vector(7 downto 0);
            SEL   : in  std_logic_vector(2 downto 0);
            CLK   : in  std_logic;
            SETn  : in  std_logic;
            RSTn  : in  std_logic;
            SOR   : out std_logic;
            SOL   : out std_logic;
            Qo    : out std_logic_vector(7 downto 0)
        );
    end component;

    signal unused_SOL, unused_SOR : std_logic;

begin

    -- Instantiation des registres
    UUT: shift_register_universal8
        port map (
            SSR   => SW(9),
            SSL   => SW(8),
            Pi    => (others => '0'),          -- Entrée parallel desactive
            SEL   => SW(2 downto 0),           -- SW2 = SEL(2), SW1 = SEL(1), SW0 = SEL(0)
            CLK   => not KEY(0),               -- Front montant au relachement de KEY0
            SETn  => KEY(2),
            RSTn  => KEY(3),
            SOR   => unused_SOR,               -- Non connecte a une led
            SOL   => unused_SOL,               -- Non connecte a une led
            Qo    => LEDG                      -- Connecte a la led verte
        );

end structure;