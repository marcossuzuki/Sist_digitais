LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY mux_2_1 IS
	PORT( S	: IN STD_LOGIC;
			W	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			F 	: OUT STD_LOGIC);
END mux_2_1;

ARCHITECTURE behavioral OF mux_2_1 IS
BEGIN
	F <= 	W(0) WHEN S='0' ELSE
			W(1) WHEN S='1';

END behavioral;
