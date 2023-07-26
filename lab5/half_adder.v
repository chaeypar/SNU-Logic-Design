`timescale 1ns / 1ps
module ripple_carry_adder(
    input [1:0] a,
    input [1:0] b,
    input c0,
    output c2,
    output [1:0] s
    );

    wire c1;

    full_adder T1(.a(a[0]), .b(b[0]), .c(c0), .sum(s[0]), .cout(c1));
    full_adder T2(.a(a[1]), .b(b[1]), .c(c1), .sum(s[1]), .cout(c2));

endmodule
