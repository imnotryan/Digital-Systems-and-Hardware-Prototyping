`timescale 1ns / 1ps

module Memory(CS, WE, CLK, ADDR, Mem_Bus);
    
  input CS;
  input WE;
  input CLK;
  input [6:0] ADDR;
  inout [31:0] Mem_Bus;

  reg [31:0] data_out;
  reg [31:0] RAM [0:127];


  integer i;
  initial
  begin
    /* Write your Verilog-Text IO code here */
    //i/o
    //file name: itf
    //file location: C:\Users\Daniel Krueger\Lab7
    //all instructions in hex for now
    
    //$readmemh("itf.txt",RAM); C:\Users\RyanA\OneDrive\Desktop\Lab7\
//    $readmemh("itf.mem",RAM);
//    $display("read itf data into RAM:"); 
//    for (i=0; i < 2; i=i+1)
//    $display("%d:%h",i,RAM[i]);

    for (i=0; i < 128; i = i+1)
        begin
            RAM[i] = 32'd0; //intialize all locations to zero
        end
            $readmemh("TestProgram_PartB.mem", RAM);
  end

  assign Mem_Bus = ((CS == 1'b0) || (WE == 1'b1)) ? 32'bZ : data_out;

  always @(negedge CLK)
  begin
    if((CS == 1'b1) && (WE == 1'b1))
      RAM[ADDR] <= Mem_Bus[31:0];

    data_out <= RAM[ADDR];
  end
    
    
    
    
endmodule
