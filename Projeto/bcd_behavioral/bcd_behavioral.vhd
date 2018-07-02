LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY bcd_behavioral IS
	PORT( Av	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Bv : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END bcd_behavioral;

ARCHITECTURE behavioral OF bcd_behavioral IS
	SIGNAL aux: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	WITH Av SELECT
		aux(7 DOWNTO 0) <= 	("0000" & Av(3 DOWNTO 0)) WHEN "0000" TO "1001",
									"00010000" WHEN "1010",
									"00010001" WHEN "1011",
									"00010010" WHEN "1100",
									"00010011" WHEN "1101",
									"00010100" WHEN "1110",
									"00010101" WHEN "1111";
	Bv <= aux;
END behavioral;
