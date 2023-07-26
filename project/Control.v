`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:27 06/08/2023 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input [1:0] instruction,
	 output RegDst,
    output RegWrite,
    output ALUSrc,
    output Branch,
    output MemRead,
    output MemWrite,
    output MemtoReg,
    output ALUOP
    );

	wire op1 = instruction[1];
	wire op0 = instruction[0];

	//Used K-map to minimize the equations (Ref: Microprocessor Design - ISA)
	assign RegDst = ~op1 & ~op0;
	assign RegWrite = ~op1;
	assign ALUSrc = (~op1 & op0)|(op1 & ~op0);
	assign Branch = op1 & op0;
	assign MemRead = ~op1 & op0;
	assign MemWrite =op1 & ~op0;
	assign MemtoReg = op0;
	assign ALUOP = ~op1 & ~op0;


endmodule
