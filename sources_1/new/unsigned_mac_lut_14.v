`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2024 03:39:41 PM
// Design Name: 
// Module Name: unsigned_mac_lut_14
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


module unsigned_mac_lut_14(A, B, clk, en, reset, O
    );
    
    
parameter headroom = 8;

parameter pixel_width_14 = 4 + headroom;

parameter pe_parallel_pixel_14 = 1; 
parameter pe_parallel_weight_14 = 1; 

parameter pe_out_width =  (pixel_width_14) * pe_parallel_pixel_14 *  pe_parallel_weight_14;

parameter pixel_width = pixel_width_14;

    input [3:0] A;
    input B;
    input clk;
    input en;
    input reset;
//    input [pe_out_width-1 :0] psum;
    output reg [pe_out_width-1 :0] O;
    
    always @(posedge clk) begin
if (reset) begin
    O <= 0;
//        O <= psum;
end
else if(en & B) begin

        O <= O + {{(pe_out_width - 4){1'b0}},A};
    
end
    
else begin
        O <= O;
end
    
 end
endmodule
