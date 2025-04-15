--Demi additionneur
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder is -- Définition de notre entité / bloc
	port(
		A : in std_logic; 	-- On définie A comme une entrée
		B : in std_logic;		-- On définie B comme une entrée
		C : out std_logic;	-- On définie C comme une sortie
		S : out std_logic	-- On définie D comme une sortie
	);
end half_adder;

architecture adder of half_adder is

begin
	C <= A and B;
	S <= A xor B;
	
end adder;
		