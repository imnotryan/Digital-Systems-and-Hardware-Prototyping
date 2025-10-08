`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2022 05:51:00 PM
// Design Name: 
// Module Name: tb_combinationalMux_14BitOutput
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


module tb_combinationalMux_14BitOutput();

reg [2:0] MODE = 0;
reg [13:0] totalSteps = 0;
reg [13:0] distanceCovered = 0;
reg [13:0] thirtyTwoStepsPerSecond = 0;
reg [13:0] sixtyFourStepsPerSecond = 0;


wire [13:0] mainOutputForMUX; 


combinationalMux_14BitOutput uut (MODE, totalSteps, distanceCovered, thirtyTwoStepsPerSecond, sixtyFourStepsPerSecond, mainOutputForMUX);


initial begin

MODE = 0; 
totalSteps = 1234;
distanceCovered = 567;
thirtyTwoStepsPerSecond = 45;
sixtyFourStepsPerSecond = 128;
#100
MODE = 1;
#100 
MODE = 2; 
#100 
MODE = 3;
#100
MODE = 0;



end




endmodule
