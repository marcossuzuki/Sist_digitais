LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_paralelo_4bits IS

	PORT( A1, B1: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			Cin 	: IN STD_LOGIC;
			aS71,bS71,cS71,dS71,eS71,fS71,gS71 	: OUT STD_LOGIC;
			aS72,bS72,cS72,dS72,eS72,fS72,gS72 	: OUT STD_LOGIC;
			Cout : OUT STD_LOGIC);
END somador_paralelo_4bits;

ARCHITECTURE LogicFunction OF somador_paralelo_4bits IS

SIGNAL STOBCD, BCDTO7SEG1, BCDTO7SEG2 : STD_LOGIC_VECTOR (3 DOWNTO 0);

COMPONENT somador_bin_par IS
	PORT( Av, Bv: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			C1in 	: IN STD_LOGIC;
			Sv 	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			C1out : OUT STD_LOGIC);
END COMPONENT;

COMPONENT bcd IS
	PORT( BIN	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			BCD0, BCD1 	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END COMPONENT;

COMPONENT decoder_BCD_7seg IS
	PORT( A,B,C,D	: IN STD_LOGIC;
			aS7,bS7,cS7,dS7,eS7,fS7,gS7 	: OUT STD_LOGIC);
END COMPONENT;

BEGIN
	L1:somador_bin_par PORT MAP (A1, B1, Cin, STOBCD, Cout);
	L2:bcd PORT MAP (STOBCD, BCDTO7SEG1, BCDTO7SEG2);
	L3:decoder_BCD_7seg PORT MAP (BCDTO7SEG1(0), BCDTO7SEG1(1), BCDTO7SEG1(2), BCDTO7SEG1(3),aS71,bS71,cS71,dS71,eS71,fS71,gS71);
	L4:decoder_BCD_7seg PORT MAP (BCDTO7SEG2(0), BCDTO7SEG2(1), BCDTO7SEG2(2), BCDTO7SEG2(3),aS72,bS72,cS72,dS72,eS72,fS72,gS72);
END LogicFunction;