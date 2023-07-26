`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:22 06/08/2023 
// Design Name: 
// Module Name:    Microprocessor 
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
module Microprocessor(
    input clk_in,
	 input clr,
	 input [7:0] instruction,
	 output [7:0] counter2,
	 output [6:0] seg1,
	 output [6:0] seg2,
	 output [6:0] seg3,
	 output [6:0] seg4,
	 output [6:0] seg5,
	 output [6:0] seg6
    );
	
	 wire [7:0] counter;
	 assign counter2 = counter - 1;
	 // Program Counter (for IMEM)
	 //wire [7:0] counter;
	 
	 // Instruction (for IMEM)
	 //wire [7:0] instruction;
	 
	 // Control Signals
	 wire RegDst;
    wire RegWrite;
    wire ALUSrc;
    wire Branch;
    wire MemRead;
    wire MemWrite;
    wire MemtoReg;
    wire ALUOP;
	
	 wire [1:0] WriteRegister;
	 wire [7:0] writeData;
	
	 //clock
	 wire clk;
	 
	 //register output
	 wire [7:0] read_data1;
	 wire [7:0] read_data2;
	 
	 //alu output
	 wire [7:0] alu_res;
	 
	 //data memory output
	 wire [7:0] data_out;

	 //Reg_Write_Data
	 wire [7:0] value;
	 wire [7:0] display;
	 assign value = MemtoReg ? data_out : alu_res;
	 assign display = MemWrite ? read_data2 : value;
	 
	 //signed extended signal
	 wire [7:0] extended;
	 
	 //slow clock (1Hz)
	 freq_divider T0(.clr(clr), .clk(clk_in), .clkout(clk));
	 
	 //Program Counter
	 PC T1(.branch(Branch),.add(extended), .clk(clk), .clr(clr), .counter(counter));
	 
	 //Module for check
	 //IMEM T2(.Read_Address(counter-1), .instruction(instruction));
	 
	 //Control Unit
	 Control T3(.instruction(instruction[7:6]), .RegDst(RegDst), .RegWrite(RegWrite), .ALUSrc(ALUSrc), .Branch(Branch),.MemRead(MemRead), .MemWrite(MemWrite), .MemtoReg(MemtoReg), .ALUOP(ALUOP));
    
	 //Registers
	 registers T4(.clr(clr), .clk(clk), .RegWrite(RegWrite), .rs(instruction[5:4]), .rt(instruction[3:2]), .writeRegister(RegDst?instruction[1:0]:instruction[3:2]), .writeData(value), .output_data1(read_data1), .output_data2(read_data2)); 
	 
	 //7 segments
	 bcd_to_7 T6(.bcd(display[7:4]), .seg(seg1));
	 bcd_to_7 T7(.bcd(display[3:0]), .seg(seg2));
	 bcd_to_7 T00(.bcd(counter[7:4]), .seg(seg3));
	 bcd_to_7 T01(.bcd(counter[3:0]), .seg(seg4));
	 bcd_to_7 T02(.bcd(alu_res[7:4]), .seg(seg5));
	 bcd_to_7 T03(.bcd(alu_res[3:0]), .seg(seg6));
	 
	 //Sign Extend
	 Signextend T8(.instruction(instruction[1:0]), .extended(extended));

	 //ALU
	 ALU T10(.Readdata1(read_data1), .Readdata2(ALUSrc?extended:read_data2), .ALUOP(ALUOP), .output_data(alu_res));
	 
	 //Data Memory
	 data_memory T11(.clk(clk), .clr(clr), .MemWrite(MemWrite), .MemRead(MemRead), .Address(alu_res), .WriteData(read_data2), .ReadData(data_out));

	 endmodule
