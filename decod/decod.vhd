LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decod IS
PORT ( 
	w : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	En : IN STD_LOGIC;
	y : OUT STD_LOGIC_VECTOR(0 TO 3));
END decod;

ARCHITECTURE Behavior OF decod IS
	SIGNAL Enw : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	Enw <= En & w; 
	-- En is 1 then both decodes run (so ignore the 1st bit of enw), but if w2 is 0 only 1st decoder runs (00,0 - 11,0 is 0 - 3 on decoder 1)
	-- if w2 is 1 then only 2nd decoder runs (00,1 - 11,1 is 0 - 3 on decoder 2)
	WITH Enw SELECT y <=
	 "1000" WHEN "100",
	 "0100" WHEN "101",
	 "0010" WHEN "110",
	 "0001" WHEN "111",
	 "0000" WHEN OTHERS;
END Behavior ;