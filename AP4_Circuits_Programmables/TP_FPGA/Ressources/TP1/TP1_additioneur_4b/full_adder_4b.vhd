-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"
-- CREATED		"Tue Apr 22 11:35:28 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder_4b IS 
	PORT
	(
		Cin :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Cout :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END full_adder_4b;

ARCHITECTURE bdf_type OF full_adder_4b IS 

COMPONENT full_adder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 Sum : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Cout_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : full_adder
PORT MAP(A => A(0),
		 B => B(0),
		 Cin => Cin,
		 Sum => S_ALTERA_SYNTHESIZED(0),
		 Cout => Cout_ALTERA_SYNTHESIZED(0));


b2v_inst1 : full_adder
PORT MAP(A => A(1),
		 B => B(1),
		 Cin => Cout_ALTERA_SYNTHESIZED(0),
		 Sum => S_ALTERA_SYNTHESIZED(1),
		 Cout => Cout_ALTERA_SYNTHESIZED(1));


b2v_inst2 : full_adder
PORT MAP(A => A(2),
		 B => B(2),
		 Cin => Cout_ALTERA_SYNTHESIZED(1),
		 Sum => S_ALTERA_SYNTHESIZED(2),
		 Cout => Cout_ALTERA_SYNTHESIZED(2));


b2v_inst3 : full_adder
PORT MAP(A => A(3),
		 B => B(3),
		 Cin => Cout_ALTERA_SYNTHESIZED(2),
		 Sum => S_ALTERA_SYNTHESIZED(3),
		 Cout => Cout);

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;