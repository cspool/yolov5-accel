`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/25 21:24:40
// Design Name: 
// Module Name: conv_dp_front_tb
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


module conv_dp_front_tb(

    );
    
   parameter pixels_in_row = 32;
   parameter pixels_in_row_in_2pow = 5;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter buffers_num_minus_1 = buffers_num-1;
   parameter shift_regs_num = 70;
    
    reg [3:0] k, s, p;
    
    reg [15:0] ox, oy, ix, iy, nif;
    
    reg clk, en, reset; // reset is valid a cycle before en being valid
    
    reg [15:0] nif_in_2pow, ix_in_2pow;
    
    wire [pixels_in_row*8-1:0] re_row1_pixels, re_row2_pixels, re_row3_pixels;

conv_datapath_front cv_datapath_front(
    .ox(ox), 
    .oy(oy), 
    .ix(ix), 
    .iy(iy), 
    .nif(nif),
    .k(k), 
    .s(s), 
    .p(p),
    .clk(clk), 
    .en(en), 
    .reset(reset),
    .nif_in_2pow(nif_in_2pow),
    .ix_in_2pow(ix_in_2pow),
    
    .re_row1_pixels(re_row1_pixels), 
    .re_row2_pixels(re_row2_pixels), 
    .re_row3_pixels(re_row3_pixels)
);


always begin
    #5;
    clk <= ~clk;
end
    
    initial begin
    // cfg 0
        clk = 0;
        reset = 1; en = 0;
        k = 1; s = 1; p = 0; ox = 64; oy = 64; ix = 256; iy = 256; nif = 1;
        nif_in_2pow = 0; ix_in_2pow = 8;
        
        
        #10;
        
        reset = 0; en = 1;
        
        #10;
        reset = 0; en = 0;
        
        #10;
        reset = 0; en = 0;
        
        #10;
        reset = 0; en = 0;
        
        #10;
        reset = 0; en = 0;
        
        #10;
        reset = 0; en = 0;
        
        #10;
        reset = 0; en = 0;
        
    end





endmodule
