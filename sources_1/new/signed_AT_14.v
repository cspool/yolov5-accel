`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2024 06:18:00 PM
// Design Name: 
// Module Name: signed_AT_14
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


module signed_AT_14(
A, B, clk, en, reset, O
    );
    
    parameter pwo = 32;
    parameter pci = 4;
    parameter headroom = 8;
    parameter pe_out_width =  4 + headroom;
    parameter tree_width = pwo * pci/2;
    
    
    
    input [4 * pwo * pci -1: 0]A;
    input [1 * pwo * pci -1 :0]B;
    input clk;
    input en;
    input reset;
//    input [pe_out_width-1 :0] psum;
    output reg [pe_out_width-1 :0] O;
    
  wire [5 - 1 : 0]psum_L6[tree_width-1: 0]; 

  wire [6 - 1 : 0]psum_L5[tree_width/2 -1: 0]; 
  
  wire [7 - 1 : 0]psum_L4[tree_width/4 -1: 0]; 
  
  wire [8 - 1 : 0]psum_L3[tree_width/8 -1: 0]; 
  
  wire [9 - 1 : 0]psum_L2[tree_width/16 -1: 0]; 
  
  wire [10 - 1 : 0]psum_L1[tree_width/32 -1: 0]; 
  
  wire [11 - 1 : 0]psum_L0; 
  
  wire [4:0]AA[pwo * pci-1:0];
  
  wire [pe_out_width-1 :0]temp_out;
  
  genvar i, j;

  generate 
  
        for (j = 0; j < pwo * pci; j = j + 1) begin
                assign AA[j] =(B[j] == 1'b0)? {{1'b0},A[j*4 +: 4]}:
                                    (B[j] == 1'b1)? {(~({{A[j*4+3]}, A[j*4 +: 4]}))+5'b1}:
                                    0;
        end
        
          //height 0
        for (j = 0; j < tree_width; j = j + 1) begin
                assign psum_L6[j] = AA[j*2] + AA[j*2+1];
        end
        
        //height 1
        for (j = 0; j < (tree_width/2); j = j + 1) begin
                assign psum_L5[j] = psum_L6[j*2] + psum_L6[j*2+1];
        end
        
        //height 2
        for (j = 0; j < (tree_width/4); j = j + 1) begin
                assign psum_L4[j] = psum_L5[j*2] + psum_L5[j*2+1];
        end
        
        //height 3
        for (j = 0; j < (tree_width/8); j = j + 1) begin
                assign psum_L3[j] = psum_L4[j*2] + psum_L4[j*2+1];
        end
        
        //height 4
        for (j = 0; j < (tree_width/16); j = j + 1) begin
                assign psum_L2[j] = psum_L3[j*2] + psum_L3[j*2+1];
        end
        
        
        //height 5
        for (j = 0; j < (tree_width/32); j = j + 1) begin
                assign psum_L1[j] = psum_L2[j*2] + psum_L2[j*2+1];
        end
     
        //height 0
        assign psum_L0 = psum_L1[0] + psum_L1[1];

  endgenerate
  
  
  always@(posedge clk) begin
        if (reset) begin
    O <= 0;
//        O <= psum;
end
else if(en) begin

        O <= O + psum_L0;
    
end
    
else begin
        O <= O;
end
  
  end
    
endmodule
