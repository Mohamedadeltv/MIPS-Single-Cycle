
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity MIPS is
    Port ( reset : in  STD_LOGIC;
           clk_Main : in  STD_LOGIC := '0');
end MIPS;

architecture Behavioral of MIPS is

	signal se_in : STD_LOGIC_VECTOR (15 downto 0) ; 
	signal se_out : STD_LOGIC_VECTOR (31 downto 0) ;
	signal reg2 : STD_LOGIC_VECTOR (31 downto 0) ;
	signal ALUInput2 : STD_LOGIC_VECTOR (31 downto 0) ;
	signal ALUSrcSignal : STD_LOGIC ;
	
	
	signal Instruction25to21 : STD_LOGIC_VECTOR (4 downto 0) ;
	signal Instruction20to16 : STD_LOGIC_VECTOR (4 downto 0) ;
	signal InstructionfromMUX : STD_LOGIC_VECTOR (4 downto 0) ;
	signal RegWriteControl : STD_LOGIC;
	signal WriteDataa: STD_LOGIC_VECTOR (31 downto 0);
	signal reg1: STD_LOGIC_VECTOR (31 downto 0);
	
	signal Instruction15to11 : STD_LOGIC_VECTOR (4 downto 0);
	signal RegDstSignal : STD_LOGIC ;
	
	signal Instruction31to26 : STD_LOGIC_VECTOR (5 downto 0);
	signal Instruction5to0 : STD_LOGIC_VECTOR (5 downto 0);
	signal PCout : STD_LOGIC_VECTOR (31 downto 0) ;
	
	signal ALUOpSignal : STD_LOGIC_VECTOR (1 downto 0) ;
	signal ALUOperation : STD_LOGIC_VECTOR (3 downto 0) ;
	
	signal ALUOutput : STD_LOGIC_VECTOR (31 downto 0) ;
	signal ZeroFlagSignal : STD_LOGIC ;
	
	signal MemReadSignal : STD_LOGIC ;
	signal MemWriteSignal : STD_LOGIC ;
	signal ReadDataMemory : STD_LOGIC_VECTOR (31 downto 0) ;
	
	signal MemtoRegSignal : STD_LOGIC ;
	signal JumpSignal : STD_LOGIC ;
	signal BranchSignal : STD_LOGIC ;
	
	signal InPCSignal : STD_LOGIC_VECTOR (31 downto 0) ;
	
	Signal PCADDEROutput : STD_LOGIC_VECTOR (31 downto 0);
	Signal shiftleftOutput : STD_LOGIC_VECTOR (31 downto 0);
	Signal SecondAdderOutput : STD_LOGIC_VECTOR (31 downto 0);
	Signal BranchMuxOutput : STD_LOGIC_VECTOR (31 downto 0);
	
	Signal shiftleftInput2 : STD_LOGIC_VECTOR (27 downto 0);
	Signal shiftleftOutput2 : STD_LOGIC_VECTOR (27 downto 0);
	
	signal BranchMuxControl : STD_Logic ;
	Signal ADDERiNPUT2 : STD_LOGIC_VECTOR (31 downto 0);
			 
	
	
	
	
begin


-- instantiating THE ALU MUX
	U1: entity work.mux2to1(Behavioral)
		port map(
			  a => reg2,
			  b => se_out,
			  sel => ALUSrcSignal,
			  output => ALUInput2
		);
		
-- instantiating THE SIGN EXTENDER
	U2: entity work.signextend(Behavioral)
	   port map(
			imm => se_in,
			SignExtend=> se_out
		);
		
-- instantiating THE RegisterFile	
	U3: entity work.Registers(Behavioral)
		port map(
			  READ_REG1 => Instruction25to21,
           READ_REG2 => Instruction20to16,
           WRITE_REG => InstructionfromMUX,
           READ_DATA_1 => reg1,
           READ_DATA_2 => reg2,
			  clk => clk_main,
           WRITE_DATA => WriteDataa,
           REGWRITE => RegWriteControl
			);
			
-- instantiating THE Instruction MUX
	U4: entity work.mux2to1(Behavioral)
		Generic map (N => 5)
		port map(
			  a => Instruction20to16,
			  b => se_in(15 downto 11),
			  sel => RegDstSignal,
			  output => InstructionfromMUX
		);
	
	U5: entity work.Instruction_Memory(Behavioral)
		port map(
					ReadAddress => PCout,
					Instruction(31 downto 26) => Instruction31to26,
					Instruction(25 downto 21) => Instruction25to21,
					Instruction(20 downto 16) => Instruction20to16,
					Instruction(15 downto 0) => se_in
					
		);
	
	U6: entity work.ALU(Behavioral)
	   port map(
					func => se_in(5 downto 0),
					ALUOP => ALUOpSignal,
					operation => ALUOperation
		);
	
	U7: entity work.ALU2(Behavioral)
	   port map(
					A => reg1,
					B => ALUInput2,
					S => ALUOperation,
					RESULT => ALUOutput,
					FLAG => ZeroFlagSignal
		);
		
	U8: entity work.datamemory(Behavioral)
	   port map(
					Address => ALUOutput,
					WriteData => reg2,
					MemRead =>  MemReadSignal,
					MemWrite => MemWriteSignal,
					ReadData => ReadDataMemory,
					Clk => clk_Main
		);
		
	U9: entity work.mux2to1(Behavioral)
		port map(
					a => ALUOutput,
					b => ReadDataMemory,
					sel => MemtoRegSignal,
					output => WriteDataa
		);
		
	U10: entity work.ControlUnit(Behavioral)
		port map(
					Opcode => Instruction31to26,
					RegDst => RegDstSignal,
					Jump => JumpSignal,
					Branch => BranchSignal,
					MemRead => MemReadSignal,
					MemToReg => MemToRegSignal,
					ALUOp => ALUOpSignal,
					MemWrite => MemWriteSignal,
					ALUSrc => ALUSrcSignal,
					RegWrite => RegWriteControl
				);
		
	U11 : entity work.PC(Behavioral)
		port map(
					pcnew => InPCSignal,
					pccurrent => PCOut,
					clk => clk_Main
		);
		
	U12 : entity work.pcadder(Behavioral)
		port map(
					pcold=> PCOut,
					update=> x"00000004",
					pcplusfour=> PCADDEROutput
		);
		
	U13 : entity work.shiftleft(Behavioral)
		port map(
					shiftin => se_out,
					shiftout => shiftleftOutput
		);
		
	U14 : entity work.pcadder(Behavioral)
		port map(
					pcold=> PCADDEROutput,
					update=> shiftleftOutput,
					pcplusfour=> SecondAdderOutput
		);
		
	BranchMuxControl <= ZeroFlagSignal and BranchSignal;
	
	U15 : entity work.mux2to1(Behavioral)
		port map(
					a => PCADDEROutput,
					b => SecondAdderOutput,
					sel => BranchMuxControl,
					output => BranchMuxOutput
		);
		
	shiftleftInput2 <= "00" & Instruction25to21 & Instruction20to16 & se_in ;
	
	U16 : entity work.shiftleft(Behavioral)
		Generic map (N => 28)
		port map(
					shiftin => shiftleftInput2,
					shiftout => shiftleftOutput2
		);
		
	ADDERiNPUT2 <= PCADDEROutput(31 downto 28) & shiftleftOutput2 ;
	
	U17 : entity work.mux2to1(Behavioral)
		port map(
					a => BranchMuxOutput,
					b => ADDERiNPUT2,
					sel => JumpSignal,
					output => InPCSignal
		);
		
		
	
	

end Behavioral;

