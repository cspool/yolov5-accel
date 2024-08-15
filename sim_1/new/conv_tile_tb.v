`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/07 23:53:46
// Design Name: 
// Module Name: conv_tile_tb
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


module conv_tile_tb(

    );
    
    reg [15:0] ox_start, oy_start, ix, iy;
    reg clk, reset, en, stall;
    reg [3:0]  k, s, p;
    
    wire [15:0] row_y1, row_y2, row_y3;
    
//    conv_tile cv_tile(
//        .ox_start(ox_start),
//        .oy_start(oy_start),
//        .ix(ix),
//        .iy(iy),
//        .clk(clk),
//        .reset(reset),
//        .en(en),
//        .stall(stall),
//        .k(k),
//        .s(s),
//        .p(p),
//        .row_y1(row_y1),
//        .row_y2(row_y2),
//        .row_y3(row_y3)
//    );
    
    always begin
    #5;
    clk <= ~clk;
end
    
    initial begin
    // cfg 0
    clk=0;
        reset = 1; en = 0; stall = 0;
        k = 6; s = 2; p = 2; ox_start = 1; oy_start = 1; ix = 32; iy = 32;
        
        #10;
        
        reset = 0; en = 1; stall = 0;
        
        #10;
        reset = 0; en = 0; stall = 1;
        
        #10;
        reset = 0; en = 0; stall = 1;
        
        #10;
        reset = 0; en = 0; stall = 0;
        
        #10;
        reset = 0; en = 0; stall = 1;
        
        #10;
        reset = 0; en = 0; stall = 1;
        
        #10;
        reset = 0; en = 0; stall = 0;
        
        
        
        end
    
endmodule
