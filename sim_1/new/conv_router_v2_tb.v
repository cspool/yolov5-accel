`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/14 21:36:54
// Design Name: 
// Module Name: conv_router_v2_tb
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


module conv_router_v2_tb(

    );
    
    reg [3:0] k, s, p;
    
    reg [15:0] ox, oy, ix, iy;
    
    reg clk, en, reset; // reset is valid a cycle before en being valid
    
    wire [3:0] west_pad, slab_num, east_pad;
    wire [15:0] row_idx1, row_idx2, row_idx3; 
    wire [15:0] row_start_idx, row_end_idx;
    wire [15:0] reg_start_idx, reg_end_idx;
    wire conv_end;
    
    conv_router_v2 cv_router(
        .ox(ox), 
        .oy(oy), 
        .ix(ix), 
        .iy(iy),
        .k(k), 
        .s(s), 
        .p(p),
        .clk(clk), 
        .en(en), 
        .reset(reset),
        
        .west_pad(west_pad), 
        .slab_num(slab_num), 
        .east_pad(east_pad),
        
        .row_idx1(row_idx1), 
        .row_idx2(row_idx2), 
        .row_idx3(row_idx3), 
        
        .row_start_idx(row_start_idx), 
        .row_end_idx(row_end_idx),
        
        .reg_start_idx(reg_start_idx), 
        .reg_end_idx(reg_end_idx),
        
        .conv_end(conv_end)
    );
    
    
    always begin
        #5;
        clk <= ~clk;
    end
    
    initial begin
    // cfg 0
        clk = 0;
        reset = 1; en = 0;
        k = 6; s = 2; p = 2; ox = 64; oy = 64; ix = 128; iy = 128;
        
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
