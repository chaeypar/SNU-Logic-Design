`timescale 1ns / 1ps

module klingon_structural(
    input [3:0] I,
    output [6:0] Y
    );
	 
	 wire [3:0] N_I;
	 
	 wire [1:0] B_I;
	 wire [1:0] C_I;
	 wire [2:0] D_I;
	 wire [2:0] E_I;
	 wire [1:0] F_I;
	 wire G_I;
	 
	 not T1(N_I[0], I[0]);
	 not T2(N_I[1], I[1]);
	 not T3(N_I[2], I[2]);
	 not T4(N_I[3], I[3]);
	 
	 and T5(Y[6], N_I[3], N_I[2]);
	 
	 and T6(B_I[0], N_I[1], N_I[0]);
	 and T7(B_I[1], I[2], N_I[0]);
	 or T8(Y[5], B_I[0], B_I[1], I[3]);
	 
	 and T9(C_I[0], I[2], I[0]);
	 and T10(C_I[1], N_I[2], N_I[1], N_I[0]);
	 or T11(Y[4], C_I[0], C_I[1], I[3]);
	 
	 and T12(D_I[0], N_I[3], N_I[2], N_I[1], N_I[0]);	 
	 and T13(D_I[1], I[2], N_I[1], I[0]);
	 and T24(D_I[2], N_I[2], I[1], I[0]);
	 or T14(Y[3], D_I[0], D_I[1], D_I[2]);
	 
	 and T15(E_I[0], N_I[2], N_I[1], N_I[0]);
	 and T16(E_I[1], I[2], N_I[1], I[0]);
	 and T17(E_I[2], I[2], I[1], N_I[0]);
	 or T18(Y[2], E_I[0], E_I[1], E_I[2], I[3]);
	 
	 and T19(F_I[0], I[2], I[1], I[0]);
	 and T20(F_I[1], N_I[1], N_I[0]);
	 or T21(Y[1], F_I[0], F_I[1], I[3]);
	 
	 and T22(G_I, I[3], I[0]);
	 or T23(Y[0], G_I, I[2], I[1]);
	 


endmodule
