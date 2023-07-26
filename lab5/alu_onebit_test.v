`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:27:16 05/04/2023
// Design Name:   alu_onebit_structural
// Module Name:   /csehome/kidsland09/ALU/alu_onebit_test.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_onebit_structural
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_onebit_test;

	// Inputs
	reg M;
	reg A;
	reg B;
	reg S0;
	reg S1;

	// Outputs
	wire [5:0] out;

	// Instantiate the Unit Under Test (UUT)
	one uut (
		.M(M), 
		.A(A), 
		.B(B), 
		.S0(S0), 
		.S1(S1), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		

		M = 0; A = 0; B = 0; S0 = 0; S1 = 0;
		#100 M = 0; A = 0; B = 0; S0 = 0; S1 = 1;
		#100 M = 0; A = 0; B = 0; S0 = 1; S1 = 0;
		#100 M = 0; A = 0; B = 0; S0 = 1; S1 = 1;
		#100 M = 0; A = 0; B = 1; S0 = 0; S1 = 0;
		#100 M = 0; A = 0; B = 1; S0 = 0; S1 = 1;
		#100 M = 0; A = 0; B = 1; S0 = 1; S1 = 0;
		#100 M = 0; A = 0; B = 1; S0 = 1; S1 = 1;
		#100 M = 0; A = 1; B = 0; S0 = 0; S1 = 0;
		#100 M = 0; A = 1; B = 0; S0 = 0; S1 = 1;
		#100 M = 0; A = 1; B = 0; S0 = 1; S1 = 0;
		#100 M = 0; A = 1; B = 0; S0 = 1; S1 = 1;
		#100 M = 0; A = 1; B = 1; S0 = 0; S1 = 0;
		#100 M = 0; A = 1; B = 1; S0 = 0; S1 = 1;
		#100 M = 0; A = 1; B = 1; S0 = 1; S1 = 0;
		#100 M = 0; A = 1; B = 1; S0 = 1; S1 = 1;
		#100 M = 1; A = 0; B = 0; S0 = 0; S1 = 0;
		#100 M = 1; A = 0; B = 0; S0 = 0; S1 = 1;
		#100 M = 1; A = 0; B = 0; S0 = 1; S1 = 0;
		#100 M = 1; A = 0; B = 0; S0 = 1; S1 = 1;
		#100 M = 1; A = 0; B = 1; S0 = 0; S1 = 0;
		#100 M = 1; A = 0; B = 1; S0 = 0; S1 = 1;
		#100 M = 1; A = 0; B = 1; S0 = 1; S1 = 0;
		#100 M = 1; A = 0; B = 1; S0 = 1; S1 = 1;
		#100 M = 1; A = 1; B = 0; S0 = 0; S1 = 0;
		#100 M = 1; A = 1; B = 0; S0 = 0; S1 = 1;
		#100 M = 1; A = 1; B = 0; S0 = 1; S1 = 0;
		#100 M = 1; A = 1; B = 0; S0 = 1; S1 = 1;
		#100 M = 1; A = 1; B = 1; S0 = 0; S1 = 0;
		#100 M = 1; A = 1; B = 1; S0 = 0; S1 = 1;
		#100 M = 1; A = 1; B = 1; S0 = 1; S1 = 0;
		#100 M = 1; A = 1; B = 1; S0 = 1; S1 = 1;
		
		
	end
      
endmodule

