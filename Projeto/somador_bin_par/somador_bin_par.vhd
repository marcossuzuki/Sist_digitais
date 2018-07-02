LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_bin_par IS

	PORT( Av, Bv: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			C1in 	: IN STD_LOGIC;
			Sv 	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			C1out : OUT STD_LOGIC);
END somador_bin_par;

ARCHITECTURE LogicFunction OF somador_bin_par IS

SIGNAL Cv : STD_LOGIC_VECTOR (2 DOWNTO 0);

COMPONENT somador_completo
	PORT(A, B, Cin :  IN STD_LOGIC;
			S, Cout 	: OUT STD_LOGIC);
END COMPONENT;

BEGIN
	L1:somador_completo PORT MAP (Av(0), Bv(0), C1in, Sv(0), Cv(0));
	L2:somador_completo PORT MAP (Av(1), Bv(1), Cv(0), Sv(1), Cv(1));
	L3:somador_completo PORT MAP (Av(2), Bv(2), Cv(1), Sv(2), Cv(2));
	L4:somador_completo PORT MAP (Av(3), Bv(3), Cv(2), Sv(3), C1out);
	
END LogicFunction;