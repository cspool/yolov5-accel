`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2024 11:05:50 AM
// Design Name: 
// Module Name: sign_mac_lut_14
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


module sign_mac_lut_14(A, B, clk, en, reset, O
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
    
    wire [4-1:0] BB;
    
    wire [4-1:0] AB;
    
    assign BB = {4{B}};
    
    assign AB = A ^ BB + {{(4-1){1'b0}},{B}};
    
    always @(posedge clk) begin
if (reset) begin
    O <= 0;
//        O <= psum;
end
else if(en) begin

        O <= O + {{(pe_out_width-4){AB[3]}},AB};
    
end
    
else begin
        O <= O;
end
    
 end
endmodule
