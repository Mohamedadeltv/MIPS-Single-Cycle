----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:46 06/09/2021 
-- Design Name: 
-- Module Name:    Instruction_Memory - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity Instruction_Memory is
    Port ( ReadAddress : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0)
			);
end Instruction_Memory;
architecture Behavioral of Instruction_Memory is

type RAM_InstructionMemory is array (0 to 127) of STD_LOGIC_VECTOR(7 downto 0);

signal IM : RAM_InstructionMemory := ( x"20",x"02",x"00",x"00", -- addi $v0, $zero, 0
												   x"20",x"08",x"00",x"04", -- addi $t0, $zero, 4
													x"20",x"86",x"00",x"00", -- addi $a2, $a0, 0
													x"20",x"A7",x"00",x"00", -- addi $a3, $a1, 0
													x"20",x"09",x"00",x"01", -- addi $t1, $zero, 1
													x"8C",x"C3",x"00",x"00", -- lw $v1, 0($a2)
													x"20",x"42",x"00",x"01", -- addi $v0, $v0,1
													x"AC",x"E3",x"00",x"00", -- sw $v1, 0($a3) 
													x"00",x"C8",x"30",x"20", -- add $a2, $a2, $t0
													x"00",x"E8",x"38",x"20", -- add $a3, $a3, $t0
													x"00",x"69",x"50",x"2A", -- slt $t2, $v1, $t1
													x"11",x"40",x"FF",x"F9", -- beq $t2, $zero, loop(-7*4)
													x"00",x"49",x"10",x"22", -- sub $v0,$v0,$t1
													others=>x"00"
												);

begin

	Instruction <=	IM(to_integer(unsigned(ReadAddress)))&
						IM(to_integer(unsigned(ReadAddress))+1)&
						IM(to_integer(unsigned(ReadAddress))+2)&
						IM(to_integer(unsigned(ReadAddress))+3);


end Behavioral;

