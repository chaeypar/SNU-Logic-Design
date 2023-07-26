`timescale 1ns / 1ps

module full_adder(
    input a,
    input b,
    input c,
    output sum,
    output cout
    );
   
    wire s;
    wire c1;
    wire c2;
   
    half_adder T1(.a(a), .b(b), .sum(s), .cout(c1));
    half_adder T2(.a(c), .b(s), .sum(sum), .cout(c2));
    or T3(cout, c1, c2);

endmodule
