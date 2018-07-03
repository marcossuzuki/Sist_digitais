LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder_BCD_7seg IS
	PORT( A,B,C,D	: IN STD_LOGIC;
			aS7,bS7,cS7,dS7,eS7,fS7,gS7 	: OUT STD_LOGIC);
END decoder_BCD_7seg;

ARCHITECTURE LogicFunction OF decoder_BCD_7seg IS
BEGIN
		aS7 <= A OR C OR (B AND D) OR (NOT B AND NOT D);
		bS7 <= NOT B OR  (NOT C AND NOT D) OR (C AND D);
		cS7 <= B OR (NOT C) OR D;
		dS7 <= (NOT B AND NOT D) OR (C AND NOT D) OR (B AND NOT C AND D) OR (NOT B AND C) OR A;
		eS7 <= (NOT B AND NOT D) OR (C AND NOT D); 
		fS7 <= A OR (NOT C AND NOT D) OR (B AND NOT C) OR (B AND NOT D);
		gS7 <= A OR (B AND NOT C) OR (NOT B AND C) OR (C AND NOT D);
END LogicFunction;