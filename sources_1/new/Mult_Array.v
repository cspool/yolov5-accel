`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 04:03:16 PM
// Design Name: 
// Module Name: Mult_Array
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


module Mult_Array(
    clk, 
    mult_en,
    vector_A,
    vector_B,
    vector_P
    );
    parameter mult_A_width = 25;
    parameter mult_B_width = 18;
    parameter mult_P_width = 43;
    parameter mult_array_length = 512;
    parameter vector_A_width = mult_array_length * mult_A_width;
    parameter vector_B_width = mult_array_length * mult_B_width;
    parameter vector_P_width = mult_array_length * mult_P_width;
    
    input clk, mult_en; 
    
    input [vector_A_width-1 :0] vector_A;
    input [vector_B_width-1 :0] vector_B;
    input [vector_P_width-1 :0] vector_P;
    
    genvar i;
    
    generate
        for (i = 0; i < mult_array_length; i = i + 1) begin: mult_array
            signed_dsp_25_18 signed_mult_25_18 (
              .CLK(clk),  // input wire CLK
              .A(vector_A[(i * mult_A_width) +: mult_A_width]),      // input wire [24 : 0] A
              .B(vector_B[(i * mult_B_width) +: mult_B_width]),      // input wire [17 : 0] B
              .CE(mult_en),
              .P(vector_P[(i * mult_P_width) +: mult_P_width])      // output wire [42 : 0] P
            );
        end
    endgenerate
    
    
endmodule
