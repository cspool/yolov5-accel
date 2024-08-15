`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/07 17:14:07
// Design Name: 
// Module Name: conv_tiling_tb
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


module conv_tiling_tb(

    );
    
    
    reg [15:0] ox, oy, ix, iy;
    reg [3:0] k, s, p;
    
    reg clk, en, reset,stall; // reset is valid a cycle before en being valid
    
    wire [15:0] ox_start, oy_start, pox, poy;
    
//conv_tiling cv_tiling(
//    .ox(ox),
//    .oy(oy),
//    .ix(ix),
//    .iy(iy),
//    .k(k),
//    .s(s),
//    .p(p),
//    .clk(clk),
//    .en(en),
//    .reset(reset),
//    .stall(stall),
//    .ox_start(ox_start),
//    .oy_start(oy_start),
//    .pox(pox),
//    .poy(poy)
//);

always begin
    #5;
    clk <= ~clk;
end
    
    initial begin
    // cfg 0
        clk = 0;
        reset = 1; en = 0; stall = 0;
        k = 1; s = 1; p = 0; ox = 64; oy = 64; ix = 128; iy = 128;
        
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
        
        
        
        
//    // cfg 1
//    reset = 1; en = 0;
//    k = 3; s = 1; p = 1; ox = 32; oy = 32; ix = 32; iy = 32; 
    
    
    
    
    
    
    
    
//    // cfg 2
//    reset = 1; en = 0;
//    k = 3; s = 2; p = 1; ox = 32; oy = 8; ix = 64; iy = 16;
    
    
    
    
    
    
    
    
    
//    // cfg 3
//    reset = 1; en = 0;
//    k = 6; s = 2; p = 2; ox = 32; oy = 8; ix = 64; iy = 16;
    
    
    
      
    
    end
endmodule
