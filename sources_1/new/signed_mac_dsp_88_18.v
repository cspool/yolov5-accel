`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 04:50:08 PM
// Design Name: 
// Module Name: signed_mac_dsp_88_18
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

module signed_mac_dsp_88_18(clk,reset, en, I_A,I_B,mode,O);
 

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
input [7:0] I_B;
input mode;
output reg [pe_out_width-1:0] O ;
  
wire [41:0] mult_O;

wire [23:0] mult_A;
wire [17:0] mult_B;

//maybe outside the loop

assign mult_A = (mode == 0) ? ({I_A[15:8], 16'b0} + {{16{I_A[7]}}, I_A[7:0]}) :
                           (mode == 1)?  ({{3{I_B[1]}},1'b1, 20'b0} + {{23{I_B[0]}},1'b1}):
                            24'b0;

assign mult_B = (mode == 0) ? ({{10{I_B[7]}}, I_B[7:0]}) :
                            (mode == 1)? ({I_A[15:8], 10'b0} + {{10{I_A[7]}}, I_A[7:0]}):
                            18'b0;
  
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
    if (mode == 1'b0) begin //8bit * 8bit
//        O[16 + headroom - 1 : 0]                 <= O[16 + headroom - 1 : 0] + {{headroom{mult_O[15]}}, mult_O[15:0]};
        O[pixel_width_88 - 1 : 0]                 <= O[pixel_width_88 - 1 : 0] + {{headroom{mult_O[15]}}, mult_O[15:0]};
//        O[32 + 2 * headroom - 1 : 16 + headroom] <= O[32 + 2 * headroom - 1 : 16 + headroom] + {{headroom{mult_O[31]}}, mult_O[31:16]} + mult_O[15];
    O[2 * pixel_width_88 - 1 : pixel_width_88] <= O[2 * pixel_width_88 - 1 : pixel_width_88] + {{headroom{mult_O[31]}}, mult_O[31:16]} + mult_O[15];
    end
    
    else if (mode == 1'b1) begin
//        O[0 +: (10 + headroom)]                   <= O[0 +: (10 + headroom)] + {{headroom{mult_O[9]}}, mult_O[9:0]};
//        O[(10 + headroom) +: (10 + headroom)]      <= O[(10 + headroom) +: (10 + headroom)] + {{headroom{mult_O[19]}}, mult_O[19:10]} + mult_O[9];
//        O[(20 + 2 * headroom) +: (10 + headroom)] <= O[(20 + 2 * headroom) +: (10 + headroom)] + {{headroom{mult_O[29]}}, mult_O[29 -: 10]} + mult_O[19];
//        O[(30 + 3 * headroom) +: (10 + headroom)] <= O[(30 + 3 * headroom) +: (10 + headroom)] + {{headroom{mult_O[39]}}, mult_O[39 -: 10]} + mult_O[29];
        
        O[0 +: (pixel_width_18)]                   <= O[0 +: (pixel_width_18)] + {{(pixel_width_18 - 10){mult_O[9]}}, mult_O[9:0]};
        O[(pixel_width_18) +: (pixel_width_18)]      <= O[(pixel_width_18) +: (pixel_width_18)] + {{(pixel_width_18 - 10){mult_O[19]}}, mult_O[19:10]} + mult_O[9];
        O[(2 * pixel_width_18) +: (pixel_width_18)] <= O[(2 * pixel_width_18) +: (pixel_width_18)] + {{(pixel_width_18 - 10){mult_O[29]}}, mult_O[29 -: 10]} + mult_O[19];
        O[(3 * pixel_width_18) +: (pixel_width_18)] <= O[(3 * pixel_width_18) +: (pixel_width_18)] + {{(pixel_width_18 - 10){mult_O[39]}}, mult_O[39 -: 10]} + mult_O[29];
        
    end
else begin
        O <= O;
    end
end

end
 
endmodule
