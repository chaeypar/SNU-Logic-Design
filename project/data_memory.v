`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:04:00 06/12/2023
// Design Name:   data_memory
// Module Name:   /csehome/kidsland09/finalproject/data_memory.v
// Project Name:  finalproject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module data_memory(
    input clk,
    input clr,
    input MemWrite,
    input MemRead,
    input [7:0] Address,
    input [7:0] WriteData,
    output [7:0] ReadData
    );
	 integer i;

	reg [7:0] mem [31:0]; 
	
	//output
	assign ReadData = MemRead ? mem[Address] : 0;
	
	//Initialize the Data Memory
	initial begin 
		for(i = 0; i < 16; i= i+ 1)
			begin
				mem[i] = i;
				mem[i + 16] = -i;
			end
	end
	
	always @(posedge clk or posedge clr) begin
		 if (clr) begin
				//Initialize the Data Memory
				for(i = 0; i < 16; i= i+ 1)
					begin
						mem[i] = i;
						mem[i + 16] = -i;
					end
		 end
		 else begin
			  //Store the value of 'WriteData' to memory
			  if (MemWrite) begin
						mem[Address] = WriteData;
					end
			  end

		 end
endmodule
