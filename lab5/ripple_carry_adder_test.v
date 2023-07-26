`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:06:18 05/04/2023
// Design Name:   ripple_carry_adder
// Module Name:   /csehome/kidsland09/ripple_carryadder/ripple_carry_adder_test.v
// Project Name:  ripple_carryadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_carry_adder_test;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;
	reg c0;

	// Outputs
	wire c2;
	wire [1:0] s;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.c2(c2), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 2'b00;
		b = 2'b00;
		c0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 2'b00;
		b = 2'b01;
		c0 = 0;
		
		#100 a = 2'b00; b = 2'b10; c0 = 0;
		#100 a = 2'b00; b = 2'b11; c0 = 0;
		#100 a = 2'b01; b = 2'b00; c0 = 0;
		#100 a = 2'b01; b = 2'b01; c0 = 0;
		#100 a = 2'b01; b = 2'b10; c0 = 0;
		#100 a = 2'b01; b = 2'b11; c0 = 0;
		#100 a = 2'b10; b = 2'b00; c0 = 0;
		#100 a = 2'b10; b = 2'b01; c0 = 0;
		#100 a = 2'b10; b = 2'b10; c0 = 0;
		#100 a = 2'b10; b = 2'b11; c0 = 0;
		#100 a = 2'b11; b = 2'b00; c0 = 0;
		#100 a = 2'b11; b = 2'b01; c0 = 0;
		#100 a = 2'b11; b = 2'b10; c0 = 0;
		#100 a = 2'b11; b = 2'b11; c0 = 0;
		
		#100 a = 2'b00; b = 2'b00; c0 = 1;
		#100 a = 2'b00; b = 2'b01; c0 = 1;
		#100 a = 2'b00; b = 2'b10; c0 = 1;
		#100 a = 2'b00; b = 2'b11; c0 = 1;
		#100 a = 2'b01; b = 2'b00; c0 = 1;
		#100 a = 2'b01; b = 2'b01; c0 = 1;
		#100 a = 2'b01; b = 2'b10; c0 = 1;
		#100 a = 2'b01; b = 2'b11; c0 = 1;
		#100 a = 2'b10; b = 2'b00; c0 = 1;
		#100 a = 2'b10; b = 2'b01; c0 = 1;
		#100 a = 2'b10; b = 2'b10; c0 = 1;
		#100 a = 2'b10; b = 2'b11; c0 = 1;
		#100 a = 2'b11; b = 2'b00; c0 = 1;
		#100 a = 2'b11; b = 2'b01; c0 = 1;
		#100 a = 2'b11; b = 2'b10; c0 = 1;
		#100 a = 2'b11; b = 2'b11; c0 = 1;
		
	end
      
endmodule

