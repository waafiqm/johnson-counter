LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg4 IS
PORT ( bcd : IN STD_LOGIC_VECTOR(1 TO 0) ; -- 3 bit input
zin : IN STD_LOGIC;
zout : OUT STD_LOGIC;
leds: OUT STD_LOGIC_VECTOR(0 TO 1) ) ; -- display, sign display
END sseg4;

ARCHITECTURE Behavior OF sseg4 IS
BEGIN
PROCESS ( bcd)
BEGIN

-- Left display, magnitude of 4 bit input
CASE bcd IS --          abcdefg
WHEN "00" =>leds <= bcd;
WHEN "01" =>leds <= bcd;
WHEN "10" =>leds <= bcd;
WHEN "11" =>leds <= bcd;
WHEN OTHERS =>leds <= ("00");
END CASE;

CASE zin IS --          abcdefg
WHEN '0' => zout <= zin;
WHEN '1' =>zout <= zin;
END CASE;

END PROCESS;
END behavior;