`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2024 01:42:20 PM
// Design Name: 
// Module Name: signed_mac_dsp_88_18_op_v2_tb
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


module signed_mac_dsp_88_18_op_v2_tb(

    );
    
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
    
    reg clk, reset,en;
    reg [15:0] A; 
    reg [7:0] B; 
    reg mode;
    wire [pe_out_width-1:0] out;
    
    signed_mac_dsp_88_18_op_v2 mac(
        .clk(clk),
        .reset(reset),
        .en(en),
        .I_A(A),
        .I_B(B),
        .mode(mode),
        .O(out)
    );
    
    always #5 clk = ~clk;
    
    wire [19:0] p1, p2;
    
    assign p1 = out[0 +: pixel_width_88];
    assign p2 = out[pixel_width_88 +: pixel_width_88];
    
    wire [pixel_width_18-1:0] r0, r1, r2, r3;
    assign r0 = out[0 +: pixel_width_18];
    assign r1 = out[pixel_width_18 +: pixel_width_18];
    assign r2 = out[2*pixel_width_18 +: pixel_width_18];
    assign r3 = out[3*pixel_width_18+: pixel_width_18];
    
    initial begin
        clk = 0; reset = 1; A = 0; B = 0;mode = 0;en=1;
        
        #10;
        reset = 0; mode = 0;
        A = 16'b1111_1100_0100_0000; //-4, 64
        B = 8'b1111_1100; //-4 
        
        #10;
        reset = 0; mode = 0;
        A = 16'b1111_1100_0000_0001; //-4, 1
        B = 8'b0000_1100; //12
        
        #10;
        reset = 0; mode = 0;
        A = 16'b1001_1000_1111_0011; // -104, -13
        B = 8'b0101_0101; //85
        
        #10;
        reset = 0; mode = 0;
         B = 0;
        A = 0;
        
        #10;
        reset = 0; mode = 0; en=0;
        
        #10;
        reset = 0; mode = 1;
        #10;
        reset = 1; mode = 1;en=1;
        B = 0;
        A = 0;
         #10;
        reset = 1; mode = 1;
        B = 0;
        A = 0;
         #10;
        reset = 1; mode = 1;
        B = 0;
        A = 0;
        
        #10;
        reset = 0; mode = 1;
        B = 8'b0000_0000; //01, 01
        A = 16'b1111_1100_0100_0000; //-4, 64
        //-4, 64, -4, 64
        
        #10;
        reset = 0; mode = 1;
        B = 8'b0000_0001; //01, -1
        A = 16'b1111_1100_0000_0001; //-4, 1
        //-4, 1, 4, -1
        
        #10;
        reset = 0; mode = 1;
        B = 8'b0000_0010; //-1, 01
        A = 16'b1111_1100_0100_0000; //-4, 64
        //4, -64, -4, 64
        
        #10;
        reset = 0; mode = 1;
        B = 8'b0000_0011; //-1, -1
        A = 16'b1111_1100_0000_0001; //-4, 1
        //4, -1, 4, -1
        
        #10;
        reset = 0; mode = 1;
        
        #10;
        reset = 0; mode = 1;en=0;
        A = 0;
        B = 0;
        
       
        
    end
endmodule
