`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:04:42 05/25/2023 
// Design Name: 
// Module Name:    TwoDigit 
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
module TwoDigit(
    input clr,
    input clk,
    output [6:0] high,
    output [6:0] low
    );
	 
	wire clkout;
	wire [3:0] hi;
	wire [3:0] lo;
	
	freq_divider Freq_module(.clr(clr), .clk(clk), .clkout(clkout));
	counter Counter_module(.clr(clr), .clk(clkout), .MSB(hi), .LSB(lo));
	bcd_to_7 MSB_module(.bcd(hi), .seg(high));
	bcd_to_7 LSB_module(.bcd(lo), .seg(low));
	
endmodule
