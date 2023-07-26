`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:43 05/18/2023 
// Design Name: 
// Module Name:    RS_flipflop 
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
module RS_flipflop(
    input S,
    input R,
    input Clk,
    output Q,
    output Qinv
    );

	//wire nand1, nand2;
	//nand T1(nand1, Clk, S);
	//nand T2(nand2, Clk, R);
	//nand T3(Q, nand1, Qinv);
	//nand T4(Qinv, nand2, Q);
	
	reg r, s;
	
	always @(posedge Clk)
		begin
			r = R;
			s = S;
		end
	RS_latch T1(.R(r), .S(s), .Q(Q), .Qinv(Qinv));
endmodule
