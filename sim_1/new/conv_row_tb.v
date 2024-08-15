`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/09 21:47:29
// Design Name: 
// Module Name: conv_row_tb
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


module conv_row_tb(

    );
    
   reg[15:0] row_y, ix, ox_start, pox;
   reg [3:0] k, s, p;
   reg clk, reset, en; 
   
   wire [3:0] west_pad, slab_num, east_pad;
   wire [15:0] row_idx, row_start_idx, row_end_idx;
   wire [15:0] reg_start_idx, reg_end_idx;
   
//   conv_row cv_row(
//        .row_y(row_y),
//        .ix(ix),
//        .ox_start(ox_start),
//        .pox(pox),
//        .k(k),
//        .s(s),
//        .p(p),
//        .clk(clk),
//        .reset(reset),
//        .en(en),
        
//        .west_pad(west_pad),
//        .slab_num(slab_num),
//        .east_pad(east_pad),
//        .row_idx(row_idx),
//        .row_start_idx(row_start_idx),
//        .row_end_idx(row_end_idx),
//        .reg_start_idx(reg_start_idx),
//        .reg_end_idx(reg_end_idx)
//   );
   
   always begin
    #5;
    clk <= ~clk;
end
    
    initial begin
    // cfg 0
    clk=0;
        reset = 1; en = 0; 
        k = 6; s = 2; p = 2; ox_start = 1; ix = 128; row_y = 1; pox = 32;
        
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
