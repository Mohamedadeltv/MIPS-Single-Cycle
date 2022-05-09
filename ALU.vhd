----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:14 03/24/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( func : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU;

architecture Behavioral of ALU is

begin


process(func,ALUOP)
begin
case ALUOP is
when "00"=>
operation<="0010";
when "01"=>
operation<="0110";
when "10"=>
case func (3 downto 0)is
  when "0000"=>
 operation<="0010";
  when "0010"=>
 operation<="0110";
  when "0100"=>
 operation<="0000";
  when "0101"=>
 operation<="0001";
  when "1010"=>
 operation<="0111";
 when others => NULL; operation<="0000";
 end case;
 when "11"=>
 case func (3 downto 0) is
 when "0010"=>
 operation<="0110";
  when "1010"=>
 operation<="0111";
 when others => NULL; operation<="0000";
 end case;
  when others => NULL; operation<="0000";
 end case;
 end process;



end Behavioral;

