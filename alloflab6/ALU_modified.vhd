library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ALU_modified is
port( Clock : in std_logic; --input clock signal
		A,B : in unsigned(7 downto 0); --8-bit inputs from latches A and B
		student_id : in unsigned(3 downto 0); --4 bit student id from FSM
		OP : in unsigned(15 downto 0); --16-bit selector for Operation from Decoder
		Neg: out std_logic; --is the result negative ? Set -ve bit output
		R1 : out unsigned(3 downto 0); -- lower 4-bits of 8-bit Result Output
		R2: out unsigned(3 downto 0)); -- higher 4-bits of 8-bit Result Output
	end ALU_modified;
architecture calculation of ALU_modified is --temperary signal declarations.
signal Reg1,Reg2,Result : unsigned(7 downto 0):=(others=>'0');
signal Reg4: unsigned(7 downto 0);


begin

Reg1 <= A; --temporarily store A in Reg1 local variable
Reg2 <= B; --temporarily store B in Reg2 local variable




process( Clock, OP, Reg1, Reg2)
variable borrow : integer := 0;
begin
if (Clock'Event AND Clock='1') THEN
	 --Do the calculation @ positive edge of clock cycle
		case OP is
		WHEN "0000000000000001" =>
		Neg<= '0';
		Reg4<=Reg1 + 2;

					--Do Addition for Reg1 and Reg2
			WHEN "0000000000000010" =>
			Neg<= '0';
		Reg4<="00" & Reg2(7 downto 2);
	

					---shift 3 to the right
			WHEN "0000000000000100" =>
			Neg<= '0';
			Reg4<="1111" & Reg1(7 downto 4);
		

					--shift 4 to the right
			WHEN "0000000000001000" =>
			Neg<= '0';
			if Reg1>Reg2 THEN
			Reg4<=Reg2;
			else
			Reg4<=Reg1;
			end if;
					--min function
					
			WHEN "0000000000010000" =>
			Neg<= '0';
			Reg4<=Reg1(5 downto 0) & Reg1(7 downto 6);
						--rotate function
			
					
			WHEN "0000000000100000" =>
			Neg<= '0';
			Reg4<=Reg2(0) & Reg2(1) & Reg2(2) & Reg2(3) &
        Reg2(4) & Reg2(5) & Reg2(6) & Reg2(7);

				--lsb to msb
			WHEN "0000000001000000" =>
			Neg<= '0';
			Reg4<=Reg1 xor Reg2;

					--Do Boolean xor
			WHEN "0000000010000000" =>
			Neg<= '0';
			Reg4<=Reg1 + Reg2 -4;

					--reg1 + reg2 -4
			WHEN "0000000100000000" =>
			Neg<= '0';
			Reg4 <= (others => '1');
	
					--high bits
			WHEN OTHERS => 
			Neg<= '0';
			Reg4<="--------";

					--Don't care, do nothing
		end case;
	end if;
end process;

R1 <= Reg4(3 downto 0); --Since the output seven segments can
R2 <= Reg4(7 downto 4); -- only 4-bits, split the 8-bit to two 4-bits
end calculation;
					