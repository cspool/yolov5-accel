`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 07:20:48 PM
// Design Name: 
// Module Name: signed_mac_dsp_18
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


module signed_mac_dsp_18(clk,reset, en, I_A,I_B,O );
    
    parameter headroom = 4;

parameter pixel_width_88 = 16 + headroom;
parameter pixel_width_18 = 10 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18;

parameter pixel_width = pixel_width_88;
 
input clk;
input reset;
input en;
input [15:0] I_A;
input [7:0] I_B;
output reg [pe_out_width-1:0] O ;
  
wire [41:0] mult_O;

wire [23:0] mult_A;
wire [17:0] mult_B;

assign mult_A =({{3{I_B[1]}},1'b1, 20'b0} + {{23{I_B[0]}},1'b1});

assign mult_B =({I_A[15:8], 10'b0} + {{10{I_A[7]}}, I_A[7:0]});
  
signed_mult_dsp mult (
  .CLK(clk),  // input wire CLK
  .A(mult_A),      // input wire [23 : 0] A
  .B(mult_B),      // input wire [17 : 0] B
  .P(mult_O)      // output wire [41 : 0] P
);
   
always @(posedge clk) begin
if (reset) begin
    O <= 0;
end
else if(en) begin
    O[0 +: (10 + headroom)]                   <= O[0 +: (10 + headroom)] + {{headroom{mult_O[9]}}, mult_O[9:0]};
    O[(10 + headroom) +: (10 + headroom)]      <= O[(10 + headroom) +: (10 + headroom)] + {{headroom{mult_O[19]}}, mult_O[19:10]} + mult_O[9];
    O[(20 + 2 * headroom) +: (10 + headroom)] <= O[(20 + 2 * headroom) +: (10 + headroom)] + {{headroom{mult_O[29]}}, mult_O[29 -: 10]} + mult_O[19];
    O[(30 + 3 * headroom) +: (10 + headroom)] <= O[(30 + 3 * headroom) +: (10 + headroom)] + {{headroom{mult_O[39]}}, mult_O[39 -: 10]} + mult_O[29];

end
else begin
        O <= O;
end

end
endmodule
