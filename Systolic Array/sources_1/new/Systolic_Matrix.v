`timescale 1ns / 1ps


//this is the module with FULL floating-point integration

module Systolic_Matrix(
    input CLK,
    input START,
    input RESET,
    input [7:0] a00,a01,a02,a10,a11,a12,a20,a21,a22,
    input [7:0] b00,b01,b02,b10,b11,b12,b20,b21,b22,
    
    output DONE, 
    output [7:0] M1_out, M2_out, M3_out, M4_out, M5_out, M6_out, M7_out, M8_out, M9_out
    );
    
    
    
    
endmodule
