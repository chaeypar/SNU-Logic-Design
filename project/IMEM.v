`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:42 06/08/2023 
// Design Name: 
// Module Name:    IMEM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IMEM(instruction,Read_Address);
	
	output [7:0] instruction;

	input [7:0] Read_Address;

	wire [7:0] memory[31:0]; //32 words (bytes) of memory, just example..
	
	////// Basic Operation Test Set ///
	
	// lw $s2, 1($s0)
		assign memory[0] = 8'b01100101; //$s1 = Mem[$s2 + 1] = Mem[1] = 1
		assign memory[1] = 8'b10000100; //$Mem[$s0 + 0] = Mem[0] = $s1 = 1
		assign memory[2] = 8'b01011000; //$s2 = Mem[$s1 + 0] = Mem[1] = 1
		assign memory[3] = 8'b00100111; //$s3 = $s2 + $s1 = 2
		assign memory[4] = 8'b00111010; //$s2 = $s3 + $s2 = 3
 
		assign memory[5] = 8'b00111010; //$s2 = $s3 + $s2 = 5
		assign memory[6] = 8'b00101101; //$s1 = $s2 + $s3 = 7
		assign memory[7] = 8'b10000101; //Mem[$0 + 1] = Mem[1] = $s1 = 7
		assign memory[8] = 8'b01001101; //$s3 = Mem[$s0 + 1] = Mem[1] = 7

		assign memory[9] = 8'b00011110; //$s2 = $s1 + $s3 = 0E(14)
		assign memory[10] = 8'b01000100; //$s1 = Mem[$s0 + 0] = Mem[0] = 1
		assign memory[11] = 8'b00011010; //$s2 = $s1 + $s2 = 0F(15)
		assign memory[12] = 8'b00011010; //$s2 = $s1 + $s2 = 10(16)

		assign memory[13] = 8'b00011010; //$s2 = $s1 + $s2 = 11(17)
		assign memory[14] = 8'b00011010; //$s2 = $s1 + $s2 = 12(18)
		assign memory[15] = 8'b01101111; //$s3 = Mem[$s2 - 1] = Mem[17] = FF(-1)
		assign memory[16] = 8'b00101101; //$s1 = $s2 + $s3 = 11(17)

		assign memory[17] = 8'b01101001; //$s2 = Mem[$s2 + 1] = Mem[19] = FD(-3)
		assign memory[18] = 8'b00101101; //$s1 = $s2 + $s3 = FC(-4)
		assign memory[19] = 8'b11000001; // jump to Next PC + 1
		assign memory[20] = 8'b00011010; // garbage

		assign memory[21] = 8'b01000101; // $s1 = Mem[$s0 + 1] = Mem[1] = 7

	assign instruction = memory[Read_Address];
endmodule