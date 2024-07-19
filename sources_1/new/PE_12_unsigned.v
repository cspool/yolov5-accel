`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 02:47:28 PM
// Design Name: 
// Module Name: PE_12_signed
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


module PE_12_unsigned(
clk, reset, en, left, up, right, bottom, out
    );
    
     parameter headroom = 6;

parameter pixel_width_12 = 2 + headroom;

parameter pe_parallel_pixel_12 = 4;
parameter pe_parallel_weight_12 = 4;

parameter pe_out_width =  (pixel_width_12) * pe_parallel_pixel_12 *  pe_parallel_weight_12;

parameter pixel_width = pixel_width_12;

input clk, reset, en;

input [20:0] up;
input [11:0] left;

output reg [20:0] bottom;
output reg [11:0] right;
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

unsigned_mac_dsp_12 mac(
    .clk(clk),
    .reset(reset),
    .en(en),
    .I_A(up),
    .I_B(left),
    .O(out)
);
endmodule
