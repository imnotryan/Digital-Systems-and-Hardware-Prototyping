`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2022 03:37:33 PM
// Design Name: 
// Module Name: tb_OneSecondCounter
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


module tb_OneSecondCounter();

reg CLK = 0;
reg RESET = 0;
reg START_COUNTING = 0;

wire [7:0] NumOfSec; 

OneSecondCounter uut (CLK, RESET, START_COUNTING, NumOfSec);

always #5 CLK = ~CLK; // 100MHz

initial begin
//start typing inputs here

RESET = 0;
START_COUNTING = 0;
#20 
START_COUNTING = 1;






end

endmodule
