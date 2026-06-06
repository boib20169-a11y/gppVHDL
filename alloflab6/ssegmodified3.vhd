LIBRARY ieee;
USE ieee.std_logic_1164.all ;
ENTITY ssegmodified3 IS
PORT (bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
leds: OUT STD_LOGIC_VECTOR(1 TO 7)) ;
END ssegmodified3;
ARCHITECTURE Behavior OF ssegmodified3 IS
BEGIN 
PROCESS( bcd)
BEGIN	



CASE bcd IS          -- abcdefg
WHEN "0000" => leds <= "1101010" ;
WHEN "0001" => leds <= "1000100" ;



WHEN OTHERS => leds <= "-------";
END CASE ;
END PROCESS;
END Behavior;