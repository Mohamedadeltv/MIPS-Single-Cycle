----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:38:19 06/09/2021 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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

entity pc is
    Port ( pcnew : in  STD_LOGIC_VECTOR (31 downto 0);
           pccurrent : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC); 
end pc;

architecture Behavioral of pc is
signal temp : STD_LOGIC_VECTOR (31 downto 0):=x"00000000";
begin
process(clk)
begin
if rising_edge(clk) then pccurrent <= temp;
elsif falling_edge(clk) then temp<=pcnew;
end if;
end process;


end Behavioral;

