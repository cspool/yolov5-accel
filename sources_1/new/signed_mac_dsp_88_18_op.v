module signed_mac_dsp_88_18_op(clk,reset, en, I_A,I_B,mode,O);
 

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
        O[16 + headroom - 1 : 0]                 <= O[16 + headroom - 1 : 0] + {{headroom{mult_O[15]}}, mult_O[15:0]};
        O[32 + 2 * headroom - 1 : 16 + headroom] <= O[32 + 2 * headroom - 1 : 16 + headroom] + {{headroom{mult_O[31]}}, mult_O[31:16]} + mult_O[15];
    end
    
    else if (mode == 1'b1) begin
        O[0 +: (10 + headroom)]                   <= O[0 +: (10 + headroom)] + {{headroom{mult_O[9]}}, mult_O[9:0]};
        O[(10 + headroom) +: (10 + headroom)]      <= O[(10 + headroom) +: (10 + headroom)] + {{headroom{mult_O[19]}}, mult_O[19:10]} + mult_O[9];
        O[(20 + 2 * headroom) +: (10 + headroom)] <= O[(20 + 2 * headroom) +: (10 + headroom)] + {{headroom{mult_O[29]}}, mult_O[29 -: 10]} + mult_O[19];
        O[(30 + 3 * headroom) +: (10 + headroom)] <= O[(30 + 3 * headroom) +: (10 + headroom)] + {{headroom{mult_O[39]}}, mult_O[39 -: 10]} + mult_O[29];
    end
else begin
        O <= O;
    end
end

end
 
endmodule