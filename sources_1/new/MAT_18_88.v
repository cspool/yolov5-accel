`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2024 12:11:23 PM
// Design Name: 
// Module Name: MAT_18_88
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
//xxxxxxxxxxxxx useless module

module MAT_18_88(
clk,reset, en, I_A,I_B,mode,O
    );
    
    parameter headroom = 8;

parameter pixel_width_88 = 16 + headroom;
//parameter pixel_width_18 = 10 + headroom;
parameter pixel_width_18 = 8 + headroom;

parameter parallel_pixel_88 = 2; // mult activation parallel of a dsp
parameter parallel_weight_88 = 1; //mult weight parallel of a dsp
parameter parallel_pixel_18 = 2; 
parameter parallel_weight_18 = 2; 

parameter mat_width = 4; //pif = 2 * 4 = 8;

parameter tree_width = 4;
parameter tree_height = 3;

parameter parallel_pe_wo = 1;
parameter parallel_pe_ci = mat_width * parallel_pixel_88; //88 or 18;  pci= 8;
parameter parallel_pe_ho = 1;
parameter parallel_pe_co_88 = parallel_weight_88;//pco = 1 in 88
parameter parallel_pe_co_18 = parallel_weight_18;//pco = 2 in 18
 
parameter pe_out_width =  (pixel_width_18) * parallel_pe_wo *  parallel_pe_co_18; // (16 bit, 16bit) 1/8, 24bit 8/8 

parameter pixel_width = pixel_width_88;

parameter activations_width = 24; //mixture width of activations
parameter weights_width = 18; //mixture width of weight

input clk;
input reset;
input en;
input [mat_width * activations_width -1:0] I_A;
input [weights_width -1 :0] I_B;
input mode;
output reg [pe_out_width-1:0] O ;

  wire [activations_width + weights_width-1 :0] mult_O[mat_width-1 : 0];
  
  wire [15:0] pmult_88_0[mat_width-1: 0];
  wire [15:0] pmult_88_1[mat_width-1: 0];
  
  wire [7:0] pmult_18_0[mat_width-1: 0];
  wire [7:0] pmult_18_1[mat_width-1: 0];
  wire [7:0] pmult_18_2[mat_width-1: 0];
  wire [7:0] pmult_18_3[mat_width-1: 0];
  
  wire [1:0]sign_L[mat_width-1: 0];
  wire sign_S[mat_width-1: 0];
  
  wire [16 - 1 : 0]psum_L0_add0[mat_width-1: 0]; //3-input adders
  wire [16 - 1 : 0]psum_L0_add1[mat_width-1: 0]; //3-input adders
  
  wire [16 + 1 - 1 : 0]psum_L0[mat_width-1: 0]; //3-input adders
  wire [8 + 1 - 1 : 0]psum_S0[mat_width-1: 0]; //3-input adders
  
  wire [16 + 1 + 1 - 1 : 0]psum_L1[mat_width/2 -1: 0]; //3-input adders
  wire [8 + 1 + 1 - 1 : 0]psum_S1[mat_width/2 -1: 0]; //3-input adders
  
  wire [pixel_width_88 - 1 : 0]psum_L2; //3-input adders
  wire [pixel_width_18 - 1 : 0]psum_S2; //3-input adders
  
  
      
   genvar i, j;
   
  generate
        
         //height 0
        for (j = 0; j < mat_width; j = j + 1) begin: column
               signed_mult_dsp mult (
                  .CLK(clk),  // input wire CLK
                  .A(I_A[j * activations_width +: activations_width]),      // input wire [23 : 0] A
                  .B(I_B),      // input wire [17 : 0] B
                  .P(mult_O[j])      // output wire [41 : 0] P
                );
                   
               assign pmult_88_0[j] =  mult_O[j][15:0];
               assign pmult_88_1[j] =  mult_O[j][31:16];
               assign pmult_18_0[j] = mult_O[j][7:0];
               assign pmult_18_1[j] = mult_O[j][15:8];
               assign pmult_18_2[j] = mult_O[j][23:16];
               assign pmult_18_3[j] = mult_O[j][31:24];
               
               assign sign_L[j] = (mode == 1'b0)? {{1'b0},mult_O[j][15]}:
                                             (mode == 1'b1)? mult_O[j][15] + mult_O[j][23]:
                                             2'b0;
                                             
               assign sign_S[j] = mult_O[j][7];
               
               assign psum_L0_add0[j] = (mode == 1'b0)?{{(pixel_width_88 - 16){pmult_88_0[j][15]}}, pmult_88_0[j]}:
                                        (mode == 1'b1)? {{(pixel_width_88 - 8){pmult_18_2[j][7]}}, pmult_18_2[j]}:
                                        0;
                                        
               assign psum_L0_add1[j] = (mode == 1'b0)?{{(pixel_width_88 - 16){pmult_88_1[j][15]}}, pmult_88_1[j]}:
                                        (mode == 1'b1)? {{(pixel_width_88 - 8){pmult_18_3[j][7]}}, pmult_18_3[j]}:
                                        0;
               
               assign psum_L0[j]= (psum_L0_add0[j] + psum_L0_add1[j] + {{(pixel_width_88 - 2){1'b0}}, sign_L[j]});
               
               assign psum_S0[j] = pmult_18_0[j] + pmult_18_1[j] + sign_S[j];
  
        end

        // height 1
       for (j = 0; j < (tree_width >> 1); j = j + 1) begin
            assign psum_L1[j] = psum_L0[j*2] + psum_L0[j*2+1]; 
            assign psum_S1[j] = psum_S0[j*2] + psum_S0[j*2+1]; 
       end
  
        // height 2
       assign psum_L2 = psum_L1[0] + psum_L1[1];
       assign psum_S2 = psum_S1[0] + psum_S1[1];
       
  endgenerate
  
 always @(posedge clk) begin
        if (reset) begin
            
        
        end
 
 
 end
  
  

endmodule
