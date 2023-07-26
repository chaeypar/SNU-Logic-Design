`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:03 05/25/2023 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clr,
    input clk,
    output [3:0] MSB,
    output [3:0] LSB
    );
	 
	 reg [3:0]msb_rnm0 =0;
	 reg [3:0]lsb_rnm0 =0;
	 
	 assign MSB = msb_rnm0;
	 assign LSB = lsb_rnm0;
	 
	 always @(posedge clk or posedge clr)
		begin
			if (clr) begin
				lsb_rnm0 = 4'b0000;
				msb_rnm0 = 4'b0000;
			end
			else begin
				lsb_rnm0 = lsb_rnm0+1;
				if (lsb_rnm0 == 4'b1010) begin
					lsb_rnm0 = 4'b0000;
					msb_rnm0 = msb_rnm0 + 1;
				end
				if (msb_rnm0 == 4'b1010) begin
					msb_rnm0 = 4'b0000;
				end
			end
		end

endmodule
