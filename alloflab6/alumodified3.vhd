library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity alumodified3 is
port( Clock : in std_logic; --input clock signal
		A,B : in unsigned(7 downto 0); --8-bit inputs from latches A and B
		student_id : in unsigned(3 downto 0); --4 bit student id from FSM
		OP : in unsigned(15 downto 0); --16-bit selector for Operation from Decoder output
		Result : out unsigned(3 downto 0)); -- lower 4-bits of 8-bit Result Output
 -- higher 4-bits of 8-bit Result Output
	end alumodified3;
architecture calculation of alumodified3 is --temperary signal declarations.
signal Reg1,Reg2 : unsigned(7 downto 0):=(others=>'0');
signal Reg4: unsigned(7 downto 0);


begin

Reg1 <= A; --temporarily store A in Reg1 local variable
Reg2 <= B; --temporarily store B in Reg2 local variable




process( Clock, OP, Reg1, Reg2)
variable borrow : integer := 0;
begin
if (Clock'Event AND Clock='1') THEN
	 --Do the calculation @ positive edge of clock cycle
	 if((student_id(3 downto 0)> Reg1(7 downto 4))or (student_id(3 downto 0) >Reg1(3 downto 0))) then
	 Result<="0001";
	 else
	 Result<="0000";
	 end if;
		case OP is
		WHEN "0000000000000001" =>
		Reg4<=Reg1 + Reg2;

					--Do Addition for Reg1 and Reg2
			WHEN "0000000000000010" =>
			Reg4<="--------";



			WHEN "0000000000000100" =>
			Reg4<=not(Reg1);

					--Do Inverse
			WHEN "0000000000001000" =>
			Reg4<=Reg1 nand Reg2;

					--Do Boolean NAND
			WHEN "0000000000010000" =>
			Reg4<=Reg1 nor Reg2;

			
					--Do Boolean NOR
			WHEN "0000000000100000" =>
			Reg4<=Reg1 and Reg2;

				--Do Boolean AND
			WHEN "0000000001000000" =>
			Reg4<=Reg1 or Reg2;

					--Do Boolean OR
			WHEN "0000000010000000" =>
			Reg4<=Reg1 xor Reg2;

					--Do Boolean XOR
			WHEN "0000000100000000" =>
			Reg4<=Reg1 xnor Reg2;
	
					--Do Boolean XNOR
			WHEN OTHERS => 
			Reg4<="--------";

					--Don't care, do nothing
		end case;
	end if;
end process;


end calculation;
					