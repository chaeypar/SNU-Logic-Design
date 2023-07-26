`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:57 06/08/2023 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input branch,
    input [7:0] add,
    input clk,
	 input clr,
	 output reg [7:0] counter 
    );

    always@(posedge clk or posedge clr)
    begin
			if (clr == 1)
				begin
						counter = 8'b00000000; //Clear the counter
				end
				else begin
						if (branch == 1) begin
							counter = counter + add + 8'b00000001; // branch target
						end
						else begin
							counter = counter + 8'b00000001; // next instruction
						end
			end
		end

endmodule