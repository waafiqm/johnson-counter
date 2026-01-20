LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY johns IS
	PORT (
		Clrn, Clk : IN STD_LOGIC;
		
		W : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		Q : OUT STD_LOGIC_VECTOR (0 TO 2));
END johns;

ARCHITECTURE Behaivor OF johns IS
	signal Qreg : STD_LOGIC_VECTOR (0 TO 2);
	
BEGIN
	PROCESS (Clrn, Clk, Qreg)
	BEGIN
		IF Clrn = '0' THEN
			Qreg <= "000"; -- Clear when Clrn is '0'
		ELSIF (Clk'EVENT AND Clk = '1') THEN
			Qreg(0) <= NOT Qreg(2);
			Qreg(1) <= Qreg(0);
			Qreg(2) <= Qreg(1);
		END IF;
		-- depending on state of Q, W is assigned values corresponing to abcdef
		CASE Qreg IS -- d(i), i=4,…,9
			WHEN "000" => W <= "0010";  -- d4 -> 2
			WHEN "100" => W <= "0011";  -- d5 -> 3
			WHEN "110" => W <= "1000";  -- d6 -> 8
			WHEN "111" => W <= "0111";  -- d7 -> 7
			WHEN "011" => W <= "0000";  -- d8 -> 0
			WHEN "001" => W <= "0110";  -- d9 -> 6
			WHEN OTHERS => W <= "----"; -- catch all
		END CASE;
END PROCESS; -- student ID
Q <= Qreg; -- d1,d2,d3,d4,d5,d6,d7,d8,d9

END Behaivor; -- 5 0 1 2 3 8 7 0 6