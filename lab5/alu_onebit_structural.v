`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    21:03:51 05/04/2023
// Design Name:
// Module Name:    one
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
module one(
    input M,
    input A,
    input B,
    input S0,
    input S1,
    output [5:0] out
    );

	wire N_I[4:0];
	wire M_0[2:0];
	wire M_1[2:0];
	wire temp[5:0];

	not T1(N_I[4], M);
	not T2(N_I[3], A);
	not T3(N_I[2], B);
	not T4(N_I[1], S0);
	not T5(N_I[0], S1);

	and T6(M_0[1], N_I[4], N_I[1], N_I[0], A);
	and T7(M_1[1], M, N_I[1], N_I[0], A);
	or T8(out[5], M_0[1], M_1[1]);

	and T9(M_0[0], N_I[4], N_I[0], S0, N_I[3]);
	and T10(M_1[0], M, N_I[0], S0, N_I[3]);
	or T11(out[4], M_0[0], M_1[0]);

	xor T12(temp[0], A, B);
	and T13(out[3], N_I[4], S1, N_I[1], temp[0]);

	not T14(temp[1], temp[0]);
	and T15(out[2], N_I[4], S1, S0, temp[1]);

	or T16(temp[2], A, B);
	and T17(out[1], M, N_I[1], S1, temp[2]);

	or T18(temp[3], N_I[3], B);
	and T19(out[0], M, S1, S0, temp[3]);

endmodule