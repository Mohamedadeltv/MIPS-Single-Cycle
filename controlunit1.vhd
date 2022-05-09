----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:12:19 04/14/2021 
-- Design Name: 
-- Module Name:    controlunit1 - Behavioral 
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

entity ControlUnit is
	port( 	Opcode: in STD_LOGIC_VECTOR( 5 downto 0 );
				RegDst: Out STD_LOGIC;
				Jump: Out STD_LOGIC;
				Branch: Out STD_LOGIC;
				MemRead: Out STD_LOGIC;
				MemToReg: Out STD_LOGIC;
				ALUOp: Out STD_LOGIC_vector( 1 downto 0 );
				MemWrite: Out STD_LOGIC;
				ALUSrc: Out STD_LOGIC;
				RegWrite: Out STD_LOGIC
	);
end ControlUnit;

architecture Behavioral of ControlUnit is
begin

	process(Opcode)
	begin
	
		RegWrite <= '0';
		
		case Opcode is
		
		when "000000" => -- R-type
		RegDst <= '1';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= '0';
		ALUOp <= "10";
		MemWrite <= '0';
		ALUSrc <= '0';
		RegWrite <= '1' after 10 ns;
		
		when "100011" => -- Load word
		RegDst <= '0';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '1';
		MemToReg <= '1';
		ALUOp <= "00";
		MemWrite <= '0';
		ALUSrc <= '1';
		RegWrite <= '1' after 10 ns;
		
		when "101011" => -- Store Word
		RegDst <= 'X';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= 'X';
		ALUOp <= "00";
		MemWrite <= '1';
		ALUSrc <= '1';
		RegWrite <= '0';
		
		when "000100" => -- Branch Equal
		RegDst <= 'X';
		Jump <= '0';
		Branch <= '1' after 2 ns;
		MemRead <= '0';
		MemToReg <= 'X';
		ALUOp <= "01";
		MemWrite <= '0';
		ALUSrc <= '0';
		RegWrite <= '0';
		
		when "000010" => -- Jump
		RegDst <= 'X';
		Jump <= '1';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= 'X';
		ALUOp <= "XX";
		MemWrite <= '0';
		ALUSrc <= 'X';
		RegWrite <= '0';
		
		when others => null;
		RegDst <= '0';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= '0';
		ALUOp <= "00";
		MemWrite <= '0';
		ALUSrc <= '0';
		RegWrite <= '0';
	
	end case;
  end process;
  


end Behavioral;

