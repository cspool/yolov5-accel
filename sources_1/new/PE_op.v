`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2024 08:45:27 PM
// Design Name: 
// Module Name: PE_op
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


module PE_op(
clk, reset, en, mode, left, up, right, bottom, out
    );
    
parameter headroom = 8;

parameter pixel_width_88 = 16 + headroom;
//parameter pixel_width_18 = 10 + headroom;
parameter pixel_width_18 = 8 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18;

parameter pixel_width = pixel_width_88;

input clk, reset, en, mode;

input [23:0] up;
input [17:0] left;

output reg [23:0] bottom;
output reg [17:0] right;
output [pe_out_width - 1 : 0] out;

always @(posedge clk) begin
    if (reset) begin
        right <= 0;
        bottom <= 0;
    end
    else if(en) begin
        right <= left;
        bottom <= up;
    end
    else begin
        right <= right;
        bottom <= bottom;
    end
end

signed_mac_dsp_88_18_op_v2 mac(
    .clk(clk),
    .reset(reset),
    .en(en),
    .I_A(up),
    .I_B(left),
    .mode(mode),
    .O(out)
);

//signed_mac_dsp_88_18_op mac(
//    .clk(clk),
//    .reset(reset),
//    .en(en),
//    .I_A(up),
//    .I_B(left),
//    .mode(mode),
//    .O(out)
//);

endmodule
