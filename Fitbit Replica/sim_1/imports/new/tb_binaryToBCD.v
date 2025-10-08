`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2022 10:58:51 PM
// Design Name: 
// Module Name: tb_binaryToBCD
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


module tb_binaryToBCD();



reg [13:0] binaryInput = 0;

wire [3:0] BCD_THOUSANDS;
wire [3:0] BCD_HUNDREDS;
wire [3:0] BCD_TENS;
wire [3:0] BCD_ONES; 


binaryToBCD uut (binaryInput, BCD_THOUSANDS, BCD_HUNDREDS, BCD_TENS, BCD_ONES);

//no CLK!!!

initial begin
//insert input here

//binaryInput = 14'b10011010100001; // 9889
//binaryInput = 14'b10011100001111; //9999 WORKS

binaryInput = 1;


end




endmodule
