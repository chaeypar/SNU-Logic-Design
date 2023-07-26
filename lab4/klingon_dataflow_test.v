`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:51:13 04/27/2023
// Design Name:   klingon_dataflow
// Module Name:   /csehome/kidsland09/bcd7segment/klingon_dataflow_test.v
// Project Name:  bcd7segment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: klingon_dataflow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module klingon_dataflow_test;

	// Inputs
	reg [3:0] I;

	// Outputs
	wire [6:0] Y;

	// Instantiate the Unit Under Test (UUT)
	klingon_dataflow uut (
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

