`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:14 06/08/2023 
// Design Name: 
// Module Name:    Signextend 
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
module Signextend(
    input [1:0] instruction,
    output [7:0] extended
    );
	//00 0 8'b00000000
	//01 1 8'b00000001
	//10 -2 8'b11111110
	//11 -1 8'b11111111
	
	// imm value is 2 bit long, so we extended it to 8 bits
	assign extended = (instruction == 2'b00) ? 8'b00000000:
							(instruction == 2'b01) ? 8'b00000001:
							(instruction == 2'b10) ? 8'b11111110:
							  8'b11111111;
endmodule
