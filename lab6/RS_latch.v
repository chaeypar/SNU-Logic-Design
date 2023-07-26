`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:03 05/18/2023 
// Design Name: 
// Module Name:    RS_latch 
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
module RS_latch(
    input R,
    input S,
    output Q,
    output Qinv
    );

	reg q, qinv;
	
	assign Q = q;
	assign Qinv = qinv;
	
	always @(R or S)
		begin
			if (R==1&&S==0)
					begin
						q = 0;
						qinv = 1;
					end
			if (R==0&&S==1)
				begin
					q=1;
					qinv =0;
				end
			if (R==1&&S==1)
				begin
					q=0;
					qinv =0;
				end
		end
endmodule
