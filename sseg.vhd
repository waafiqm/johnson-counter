LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
PORT ( bcd1 : IN STD_LOGIC_VECTOR(0 TO 3) ; -- 3 bit input
bcd2 : IN STD_LOGIC_VECTOR(0 TO 3) ;
sign : IN STD_LOGIC; -- sign of input 
leds: OUT STD_LOGIC_VECTOR(0 TO 7) ) ; -- display, sign display
END sseg;

ARCHITECTURE Behavior OF sseg IS
	SIGNAL bcd : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
PROCESS ( bcd,sign )
BEGIN
	bcd <= bcd1 & bcd2; 

-- Left display, magnitude of 4 bit input
CASE bcd IS --          abcdefg
WHEN "10000000" =>leds <= bcd;
WHEN "01000000" =>leds <= bcd;
WHEN "00100000" =>leds <= bcd;
WHEN "00010000" =>leds <= bcd;
WHEN "00001000" =>leds <= bcd;
WHEN "00000100" =>leds <= bcd;
WHEN "00000010" =>leds <= bcd;
WHEN "00000001" =>leds <= bcd;
WHEN OTHERS =>leds <= ("00000000");
END CASE;
END PROCESS;
END behavior;