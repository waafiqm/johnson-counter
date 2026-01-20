LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg2 IS
PORT ( bcd : IN STD_LOGIC ; -- 1 bit input
sign : IN STD_LOGIC; -- sign of input 
leds: OUT STD_LOGIC_VECTOR(0 TO 6) ) ; -- display, sign display
END sseg2;

ARCHITECTURE Behavior OF sseg2 IS
BEGIN
PROCESS ( bcd,sign )
BEGIN 

-- Left display, magnitude of 4 bit input
CASE bcd IS --          abcdefg
WHEN '0' =>leds <= ("0000001");
WHEN '1' =>leds <= ("1001111");
WHEN OTHERS =>leds <= ("0000000");
END CASE;
END PROCESS;
END behavior;