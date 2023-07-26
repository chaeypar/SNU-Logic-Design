`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:40 04/27/2023 
// Design Name: 
// Module Name:    bcd_dataflow 
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
module bcd_dataflow(
    input [3:0] I,
    output [6:0] Y
    );

	wire[6:0] out;
	
	assign Y = out;
	assign Y = (I==4'b0000)? 7'b1111110:
				(I==4'b0001) ? 7'b0110000:
				(I==4'b0010) ? 7'b1101101:
				(I==4'b0011) ? 7'b1111001:
				(I==4'b0100) ? 7'b0110011:
				(I==4'b0101) ? 7'b1011011:
				(I==4'b0110) ? 7'b1011111:
				(I==4'b0111) ? 7'b1110010:
				(I==4'b1000) ? 7'b1111111:
				(I==4'b1001) ? 7'b1111011:
				7'b0000000;
endmodule
