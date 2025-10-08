`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 03:42:33 PM
// Design Name: 
// Module Name: tb_MIPS
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


module tb_MIPS();

  reg CLK;
  reg RST;
  wire CS;
  wire WE;
  wire [31:0] Mem_Bus;
  wire [6:0] Address;

  initial
  begin
    CLK = 0;
  end

  MIPS CPU(CLK, RST, CS, WE, Address, Mem_Bus);
  Memory MEM(CS, WE, CLK, Address, Mem_Bus);

  always
  begin
    #5 CLK = !CLK;
  end

  always
  begin
    RST <= 1'b1; //reset the processor

    //Notice that the memory is initialize in the in the memory module not here

    @(posedge CLK);
    // driving reset low here puts processor in normal operating mode
    RST = 1'b0;

    /* add your testing code here */
    // you can add in a 'Halt' signal here as well to test Halt operation
    // you will be verifying your program operation using the
    // waveform viewer and/or self-checking operations
    //CS = 1;
    
    
    
    
    
    

    $display("TEST COMPLETE");
    $stop;
  end
//end






endmodule
