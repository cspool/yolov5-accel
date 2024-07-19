`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 05:34:35 PM
// Design Name: 
// Module Name: signed_mac_dsp_88
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


module signed_mac_dsp_88(
clk,reset, en, I_A,I_B,O);
 

parameter headroom = 8;

parameter pixel_width_88 = 16 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;

parameter pe_out_width =  (pixel_width_88) * pe_parallel_pixel_88 *  pe_parallel_weight_88;

parameter pixel_width = pixel_width_88;
 
input clk;
input reset;
input en;
input [23:0] I_A;
input [7:0] I_B;
//input [pe_out_width-1:0] psum ;
output reg [pe_out_width-1:0] O ;
  
wire [31:0] mult_O;

  
signed_mult_dsp_88 mult (
  .CLK(clk),  // input wire CLK
  .A(I_A),      // input wire [23 : 0] A
  .B(I_B),      // input wire [7 : 0] B
  .P(mult_O)      // output wire [31 : 0] P
);
   
always @(posedge clk) begin
if (reset) begin
        O <=0;
//    O <= psum;
end
else if(en) begin

        O[16 + headroom - 1 : 0]                 <= O[16 + headroom - 1 : 0] + {{headroom{mult_O[15]}}, mult_O[15:0]};
        O[32 + 2 * headroom - 1 : 16 + headroom] <= O[32 + 2 * headroom - 1 : 16 + headroom] + {{headroom{mult_O[31]}}, mult_O[31:16]} + mult_O[15];
end
    
else begin
        O <= O;
end

end
endmodule
