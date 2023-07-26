`timescale 1ns / 1ps

module bcd_structural(
    input [3:0] I,
    output [6:0] Y
    );

    wire [3:0] N_I;
    wire [1:0] A_I;
    wire [1:0] B_I;
    wire [3:0] D_I;
    wire [1:0] E_I;
    wire  F_I;
    wire [2:0] G_I;
   
    not T1(N_I[0], I[0]);
    not T2(N_I[1], I[1]);
    not T3(N_I[2], I[2]);
    not T4(N_I[3], I[3]);

    and T5(A_I[0], N_I[2], N_I[0]);
    and T6(A_I[1], I[2], I[0]);  
    or T7(Y[6], A_I[0], A_I[1], I[1], I[3]);

    and T8(B_I[0], N_I[1], N_I[0]);
    and T9(B_I[1], I[1], I[0]);
    or T10(Y[5], B_I[0], B_I[1], N_I[2]);

    or T11(Y[4], I[2], N_I[1], I[0]);

    and T12(D_I[0], I[2], N_I[1], I[0]);
    and T13(D_I[1], N_I[2], N_I[0]);
    and T14(D_I[2], N_I[2], I[1]);  
    and T15(D_I[3], I[1], N_I[0]);
    or T16(Y[3], D_I[0], D_I[1], D_I[2], D_I[3], I[3]);

    and T17(E_I[0], I[1], N_I[0]);
    and T18(E_I[1], N_I[2], N_I[0]);
    or T19(Y[2], E_I[0], E_I[1]);

    and T20(F_I, N_I[1], N_I[0]);
    or T21(Y[1], F_I, I[2], I[3]);

    and T22(G_I[0], I[2], N_I[1]);
    and T23(G_I[1], I[1], N_I[0]);
    and T24(G_I[2], N_I[2], I[1]);
    or T25(Y[0], G_I[0], G_I[1], G_I[2], I[3]);

endmodule
