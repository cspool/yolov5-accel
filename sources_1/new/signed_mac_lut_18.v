`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 09:03:30 PM
// Design Name: 
// Module Name: signed_mac_lut_18
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


module signed_mac_lut_18(A, B, clk, en, reset, O
    );
    
    
parameter headroom = 8;

parameter pixel_width_18 = 8 + headroom;

parameter pe_parallel_pixel_18 = 1; 
parameter pe_parallel_weight_18 = 1; 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18;

parameter pixel_width = pixel_width_18;

    input [7:0] A;
    input B;
    input clk;
    input en;
    input reset;
//    input [pe_out_width-1 :0] psum;
    output reg [pe_out_width-1 :0] O;
    
    wire [8:0] AA;
    
    assign AA = {(~({{A[7]},A}))+9'b1};
    
    always @(posedge clk) begin
if (reset) begin
    O <= 0;
//        O <= psum;
end
else if(en) begin

        O <= O + (
                  (B == 1'b0)? {{(pe_out_width - 8){A[7]}},A}:
                   (B == 1'b1)? {{(pe_out_width - 9){AA[8]}},AA}: 
                   0
        );
    
end
    
else begin
        O <= O;
end
    
 end

endmodule
