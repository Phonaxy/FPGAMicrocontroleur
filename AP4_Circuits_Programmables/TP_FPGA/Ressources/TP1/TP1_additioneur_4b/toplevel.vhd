--toplevel
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity toplevel is
	port( 
		LEDR : out std_logic_vector(9 downto 0); 
		LEDG : out std_logic_vector(7 downto 0); 
		SW   : in  std_logic_vector(9 downto 0) 
	); 
end entity;