`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2022 03:39:57 PM
// Design Name: 
// Module Name: tb_totalStepCount
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


module tb_totalStepCount();



//reg CLK = 0;
reg PULSE = 0;
reg RESET = 0;

wire [13:0] sevenSegOut; 
wire [13:0] totalStepsOut; 
wire SI; 


totalStepCount uut (PULSE, RESET, sevenSegOut, totalStepsOut, SI);

//always #5 CLK = ~CLK; // 100MHz

initial begin

//put inputs here
RESET = 0;
PULSE = 0;


#10 // 1st PULSE
PULSE = 1;
#10
PULSE = 0;

#10 // 2nd PULSE
PULSE = 1;
#10 
PULSE = 0;

#10 //3rd PULSE
PULSE = 1;
#10 
PULSE = 0;


end 


endmodule
