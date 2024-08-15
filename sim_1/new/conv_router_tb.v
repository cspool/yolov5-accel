`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/13 21:02:43
// Design Name: 
// Module Name: conv_router_tb
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


module conv_router_tb(

    );
    
    reg [3:0] k, s, p;
    
    reg [15:0] ox, oy, ix, iy;
    
    reg clk, en, reset; // reset is valid a cycle before en being valid
    
    wire [3:0] west_pad1, slab_num1, east_pad1;
    wire [3:0] west_pad2, slab_num2, east_pad2;
    wire [3:0] west_pad3, slab_num3, east_pad3;
    wire [15:0] row_idx1, row_start_idx1, row_end_idx1;
    wire [15:0] row_idx2, row_start_idx2, row_end_idx2;
    wire [15:0] row_idx3, row_start_idx3, row_end_idx3;
    wire [15:0] reg_start_idx1, reg_end_idx1;
    wire [15:0] reg_start_idx2, reg_end_idx2;
    wire [15:0] reg_start_idx3, reg_end_idx3;
    
    conv_tiling cv_tiling(
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
        
        .west_pad1(west_pad1), 
        .slab_num1(slab_num1), 
        .east_pad1(east_pad1),
        .west_pad2(west_pad2), 
        .slab_num2(slab_num2), 
        .east_pad2(east_pad2),
        .west_pad3(west_pad3), 
        .slab_num3(slab_num3), 
        .east_pad3(east_pad3),
        .row_idx1(row_idx1), 
        .row_start_idx1(row_start_idx1), 
        .row_end_idx1(row_end_idx1),
        .row_idx2(row_idx2), 
        .row_start_idx2(row_start_idx2), 
        .row_end_idx2(row_end_idx2),
        .row_idx3(row_idx3), 
        .row_start_idx3(row_start_idx3), 
        .row_end_idx3(row_end_idx3),
        .reg_start_idx1(reg_start_idx1), 
        .reg_end_idx1(reg_end_idx1),
        .reg_start_idx2(reg_start_idx2), 
        .reg_end_idx2(reg_end_idx2),
        .reg_start_idx3(reg_start_idx3), 
        .reg_end_idx3(reg_end_idx3)
    );
    
    
    always begin
    #5;
    clk <= ~clk;
end
    
    initial begin
    // cfg 0
        clk = 0;
        reset = 1; en = 0;
        k = 1; s = 1; p = 0; ox = 64; oy = 64; ix = 128; iy = 128;
        
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
