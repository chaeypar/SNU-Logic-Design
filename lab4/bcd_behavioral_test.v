`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:32:05 04/27/2023
// Design Name:   bcd_behavioral
// Module Name:   /csehome/kidsland09/bcd7segment/bcd_behavioral_test.v
// Project Name:  bcd7segment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_behavioral
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_behavioral_test;

	// Inputs
	reg [3:0] I;

	// Outputs
	wire [6:0] Y;

	// Instantiate the Unit Under Test (UUT)
	bcd_behavioral uut (
		.I(I), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		I = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		I=1;
		
		#100;
		I=2;
		
		#100;
		I=3;
		
		#100;
		I=4;
		
		#100;
		I=5;
		
		#100;
		I=6;
		
		#100;
		I=7;
		
		#100;
		I=8;
		
		#100;
		I=9;
		
		#100;
		I=10;
		
		#100;
	end
      
endmodule

