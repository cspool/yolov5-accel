module signed_mac_dsp_88_18_op(clk,reset, en, I_A,I_B,mode,O);
 
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
input [23:0] I_A;
input [17:0] I_B;
input mode;
output reg [pe_out_width-1:0] O ;
  
wire [41:0] mult_O;

  
signed_mult_dsp mult (
  .CLK(clk),  // input wire CLK
  .A(I_A),      // input wire [23 : 0] A
  .B(I_B),      // input wire [17 : 0] B
  .P(mult_O)      // output wire [41 : 0] P
);
   
always @(posedge clk) begin
if (reset) begin
    O <= 0;
end
else if(en) begin
    if (mode == 1'b0) begin //8bit * 8bit
        O[pixel_width_88 - 1 : 0]                 <= O[pixel_width_88 - 1 : 0] + {{headroom{mult_O[15]}}, mult_O[15:0]};
         O[2 * pixel_width_88 - 1 : pixel_width_88] <= O[2 * pixel_width_88 - 1 : pixel_width_88] + {{headroom{mult_O[31]}}, mult_O[31:16]} + mult_O[15];
    end
    else if (mode == 1'b1) begin
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