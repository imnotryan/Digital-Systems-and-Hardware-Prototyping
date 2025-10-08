`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 03:44:25 PM
// Design Name: 
// Module Name: Complete_MIPS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Complete_MIPS(CLK, RST, Address_Out, Data_Out);
// Will need to be modified to add functionality
  //What do A_Out and D_Out do?
  input CLK;
  input RST;
  output [6:0] Address_Out;
  output [31:0] Data_Out;
  wire CS, WE;
  wire [6:0] ADDR;
  wire [31:0] Mem_Bus;
//  assign Address_out = ADDR;
//  assign Data_Out = Mem_Bus;

  MIPS CPU(CLK, RST, CS, WE, ADDR, Mem_Bus);
  Memory MEM(CS, WE, CLK, ADDR, Mem_Bus);
    
    
    
    
endmodule
