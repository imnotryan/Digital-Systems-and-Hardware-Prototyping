`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2022 03:19:49 PM
// Design Name: 
// Module Name: tb_Pulse_Generator
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


module tb_Pulse_Generator();


reg CLK = 0;
reg [1:0] MODE = 0;
reg START = 0;
reg RESET = 0;

wire PULSE; 


Pulse_Generator uut (CLK, MODE, START, RESET, PULSE);

always #5 CLK = ~CLK; // 100MHz

initial begin
//start typing inputs here

MODE = 2'b11;
RESET = 0;
START = 1; 


//#1500000000 // 1.5 billion = 1.5 seconds
//RESET = 1;

//#300000000 // 300,000,000 = 0.3 seconds later
//RESET = 0;

end



endmodule
