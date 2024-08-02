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
 
input clk;
input reset;
input en;
input [15:0] I_A;
input [17:0] I_B;

//input [15:0] I_A;
//input [7:0] I_B;
output reg [pe_out_width-1:0] O ;
  
wire [33:0] mult_O;

//wire [23:0] mult_A;
//wire [17:0] mult_B;

//assign mult_A = ({{3{I_B[1]}},1'b1, 20'b0} + {{23{I_B[0]}},1'b1});

//assign mult_B = ({I_A[15:8], 10'b0} + {{10{I_A[7]}}, I_A[7:0]});
  
signed_mult_dsp_18 mult (
  .CLK(clk),  // input wire CLK
  .A(I_A),      // input wire [23 : 0] A
  .B(I_B),      // input wire [17 : 0] B
//  .A(mult_A),      // input wire [23 : 0] A
//  .B(mult_B),      // input wire [17 : 0] B
  .P(mult_O)      // output wire [41 : 0] P
);
   
always @(posedge clk) begin
if (reset) begin
    O <= 0;
end
else if(en) begin
     O[0 +: (pixel_width_18)]                   <= O[0 +: (pixel_width_18)] + {{(pixel_width_18 - 8){mult_O[7]}}, mult_O[7:0]};
    O[(pixel_width_18) +: (pixel_width_18)]      <= O[(pixel_width_18) +: (pixel_width_18)] + {{(pixel_width_18 - 8){mult_O[15]}}, mult_O[15:8]} + mult_O[7];
    O[(2 * pixel_width_18) +: (pixel_width_18)] <= O[(2 * pixel_width_18) +: (pixel_width_18)] + {{(pixel_width_18 - 8){mult_O[23]}}, mult_O[23 -: 8]} + mult_O[15];
    O[(3 * pixel_width_18) +: (pixel_width_18)] <= O[(3 * pixel_width_18) +: (pixel_width_18)] + {{(pixel_width_18 - 8){mult_O[31]}}, mult_O[31 -: 8]} + mult_O[23];
end
else begin
        O <= O;
end

end
endmodule
