`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:47 05/25/2023 
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
module freq_divider(
    input clr,
    input clk,
    output reg clkout
    );
	 reg [31:0] cnt;
	 always @(posedge clk)
		begin
			if (clr) begin
				cnt<=32'd0;
				clkout <=1'b0;
			end
			else if (cnt ==32'd25000000) begin
				cnt <=32'd0;
				clkout <= ~clkout;
			end
			else begin
				cnt<=cnt+1;
			end
		end

endmodule
