`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:58 04/27/2023 
// Design Name: 
// Module Name:    klingon_behavioral 
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
module klingon_behavioral(
    input [3:0] I,
    output [6:0] Y
    );
	
	 reg[6:0] out;
	 assign Y = out;

	always@(I)
		begin
			case(I)
				4'b0000 : out=7'b1111110;
				4'b0001 : out=7'b1000000;
				4'b0010 : out=7'b1000001;
				4'b0011 : out=7'b1001001;
				4'b0100 : out=7'b0100011;
				4'b0101 : out=7'b0011101;
				4'b0110 : out=7'b0100101;
				4'b0111 : out=7'b0010011;
				4'b1000 : out=7'b0110110;
				4'b1001 : out=7'b0110111;
				default: out=7'b0000000;
				
				
				
			endcase
		end

endmodule
