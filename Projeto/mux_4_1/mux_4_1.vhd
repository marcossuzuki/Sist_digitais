LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY mux_4_1 IS
	PORT( S0	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			W0	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			F0	: OUT STD_LOGIC);
END mux_4_1;

ARCHITECTURE behavioral OF mux_4_1 IS

SIGNAL f0_0, aux1, aux2 : STD_LOGIC_VECTOR (1 DOWNTO 0); 

COMPONENT mux_2_1
	PORT( S	: IN STD_LOGIC;
			W	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			F : OUT STD_LOGIC);
END COMPONENT;


BEGIN
	aux1<= W0(1 DOWNTO 0);
	aux2<= W0(3 DOWNTO 2);
	L1: mux_2_1 PORT MAP(S0(0), aux1, f0_0(0));
	L2: mux_2_1 PORT MAP(S0(0), aux2, f0_0(1));
	L3: mux_2_1 PORT MAP(S0(1), f0_0, F0);
	
END behavioral;

