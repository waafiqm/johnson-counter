LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg3 IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- 4 bit input
leds: OUT STD_LOGIC_VECTOR(0 TO 6) ) ; -- display, sign display
END sseg3;

ARCHITECTURE Behavior OF sseg3 IS
BEGIN
PROCESS ( bcd)
BEGIN

-- Right display, sign of digit

-- Left display, magnitude of 4 bit input
CASE bcd IS --          abcdefg
WHEN "0000" =>leds <= NOT("1111110");
WHEN "0001" =>leds <= NOT("0110000");
WHEN "0010" =>leds <= NOT("1101101");
WHEN "0011" =>leds <= NOT("1111001");
WHEN "0100" =>leds <= NOT("0110011");
WHEN "0101" =>leds <= NOT("1011011");
WHEN "0110" =>leds <= NOT("1011111");
WHEN "0111" =>leds <= NOT("1110000");
WHEN "1000" =>leds <= NOT("1111111");
WHEN "1001" =>leds <= NOT("1110011");
WHEN OTHERS =>leds <= ("-------");
END CASE;
END PROCESS;
END behavior;