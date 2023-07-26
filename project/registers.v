`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:28 06/08/2023 
// Design Name: 
// Module Name:    registers 
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
module registers(
	input clr,
	input clk,
	input RegWrite,
	input [1:0] rs,
	input [1:0] rt,
	input [1:0] writeRegister,
	input [7:0] writeData,
	output [7:0] output_data1,
	output [7:0] output_data2
	);
	
	//4 registers
	reg[7:0] data1;
	reg[7:0] data2;
	reg[7:0] data3;
	reg[7:0] data4;
	
	//output data determined by rs and rt
	assign output_data1 = (rs == 2'b00) ? data1:
				(rs == 2'b01) ? data2:
				(rs == 2'b10) ? data3:
				data4;
				
	assign output_data2 = (rt == 2'b00) ? data1:
				(rt == 2'b01) ? data2:
				(rt == 2'b10)? data3:
				data4;
	
	initial begin
		data1 = 8'b00000000;
		data2 = 8'b00000000;
		data3 = 8'b00000000;
		data4 = 8'b00000000;
	end
	always @(posedge clk or posedge clr) 
		begin
			if (clr)
				begin
					//Initialize data
					data1 = 8'b00000000;
					data2 = 8'b00000000;
					data3 = 8'b00000000;
					data4 = 8'b00000000;
				end
			else if (RegWrite) begin
				case (writeRegister)
					//Write data to the register corresponding to the value of WriteRegister
					2'b00: data1 = writeData;
					2'b01: data2 = writeData;
					2'b10: data3 = writeData;
					2'b11: data4 = writeData;
				endcase
			end
		end
	endmodule
