`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 02:11:39 PM
// Design Name: 
// Module Name: signed_mac_dsp_12
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


module signed_mac_dsp_12(
clk,reset, en, I_A,I_B,O
    );
    parameter headroom = 6;

parameter pixel_width_12 = 2 + headroom;

parameter pe_parallel_pixel_12 = 4;
parameter pe_parallel_weight_12 = 4;

parameter pe_out_width =  (pixel_width_12) * pe_parallel_pixel_12 *  pe_parallel_weight_12;

parameter pixel_width = pixel_width_12;
 
input clk;
input reset;
input en;
input [20:0] I_A;
input [11:0] I_B;
output reg [pe_out_width-1:0] O ;
  
wire [32:0] mult_O;

  
signed_mult_dsp_12 signed_mult_dsp_12 (
  .CLK(clk),  // input wire CLK
  .A(I_A),      // input wire [20 : 0] A
  .B(I_B),      // input wire [11 : 0] B
  .P(mult_O)      // output wire [32 : 0] P
);
   
always @(posedge clk) begin
if (reset) begin
    O <= 0;
end
else if(en) begin
    O[0 +: (2 + headroom)]                   <= O[0 +: (2 + headroom)] + {{headroom{mult_O[1]}}, mult_O[1:0]};
    O[(2 + headroom) +: (2 + headroom)]      <= O[(2 + headroom) +: (2 + headroom)] + {{headroom{mult_O[3]}}, mult_O[3:2]} + mult_O[1];
    O[(4 + 2 * headroom) +: (2 + headroom)] <=   O[(4 + 2 * headroom) +: (2 + headroom)]  + {{headroom{mult_O[5]}}, mult_O[5:4]} + mult_O[3];
    O[(6 + 3 * headroom) +: (2 + headroom)] <=   O[(6 + 3 * headroom) +: (2 + headroom)]+ {{headroom{mult_O[7]}}, mult_O[7:6]} + mult_O[5];
    O[(8 + 4 * headroom) +: (2 + headroom)] <=  O[(8 + 4 * headroom) +: (2 + headroom)]+ {{headroom{mult_O[9]}}, mult_O[9:8]} + mult_O[7];
    O[(10 + 5 * headroom) +: (2 + headroom)] <=  O[(10 + 5 * headroom) +: (2 + headroom)]+ {{headroom{mult_O[11]}}, mult_O[11:10]} + mult_O[9];
    O[(12 + 6 * headroom) +: (2 + headroom)] <=  O[(12 + 6 * headroom) +: (2 + headroom)]  + {{headroom{mult_O[13]}}, mult_O[13:12]} + mult_O[11];
    O[(14 + 7 * headroom) +: (2 + headroom)] <=    O[(14 + 7 * headroom) +: (2 + headroom)]  + {{headroom{mult_O[15]}}, mult_O[15:14]} + mult_O[13];
    O[(16 + 8 * headroom) +: (2 + headroom)] <=    O[(16 + 8 * headroom) +: (2 + headroom)] + {{headroom{mult_O[17]}}, mult_O[17:16]} + mult_O[15];
    O[(18 + 9 * headroom) +: (2 + headroom)] <=   O[(18 + 9 * headroom) +: (2 + headroom)] + {{headroom{mult_O[19]}}, mult_O[19:18]} + mult_O[17];
    O[(20 + 10 * headroom) +: (2 + headroom)] <=  O[(20 + 10 * headroom) +: (2 + headroom)]+ {{headroom{mult_O[21]}}, mult_O[21:20]} + mult_O[19];
    O[(22 + 11 * headroom) +: (2 + headroom)] <=  O[(22 + 11 * headroom) +: (2 + headroom)]+ {{headroom{mult_O[23]}}, mult_O[23:22]} + mult_O[21];
    O[(24 + 12 * headroom) +: (2 + headroom)] <=  O[(24 + 12 * headroom) +: (2 + headroom)] + {{headroom{mult_O[25]}}, mult_O[25:24]} + mult_O[23];
    O[(26 + 13 * headroom) +: (2 + headroom)] <=  O[(26 + 13 * headroom) +: (2 + headroom)]+ {{headroom{mult_O[27]}}, mult_O[27:26]} + mult_O[25];
    O[(28 + 14 * headroom) +: (2 + headroom)] <=   O[(28 + 14 * headroom) +: (2 + headroom)] + {{headroom{mult_O[29]}}, mult_O[29:28]} + mult_O[27];
    O[(30 + 15 * headroom) +: (2 + headroom)] <=  O[(30 + 15 * headroom) +: (2 + headroom)] + {{headroom{mult_O[31]}}, mult_O[31:30]} + mult_O[29];
end

else begin
        O <= O;
end

end
    
endmodule
