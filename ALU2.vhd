----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:18:43 06/09/2021 
-- Design Name: 
-- Module Name:    ALU2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU2 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           RESULT : out  STD_LOGIC_VECTOR (31 downto 0);
           FLAG : out  STD_LOGIC);
end ALU2;
architecture Behavioral of ALU2 is


begin
process(A,B,S) is begin 
if(S="0000") then 
RESULT<= A AND B ; 
elsif(S="0001") then 
RESULT<= A OR B ; 
elsif(S="0010") then 
RESULT<= A + B ; 
elsif(S="0110") then 
RESULT<= A - B ; 
elsif(S="0111") then 
	if(A<B) then
		RESULT<=x"00000001";
	else 
		RESULT<=x"00000000";
	end if; 
elsif(S="1100") then 
RESULT<= A NOR B ; 
else 
RESULT<=x"00000000";

end if; 


if(A=B) then 
FLAG<= '1';  
else 
FLAG<= '0' ; 
end if;

end process;

end Behavioral;

