`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2024 09:19:28 AM
// Design Name: 
// Module Name: signed_mult_dsp_88_18_tb
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


module signed_mult_dsp_88_18_tb(

    );
    parameter headroom = 4;
parameter out_width = 40 + (headroom << 2);

        reg clk, reset, en;
    reg [15:0] A; 
    reg [7:0] B; 
    reg mode;
    
    wire [41:0] mult_O;

wire [23:0] mult_A;
wire [17:0] mult_B;

assign mult_A = (mode == 0) ? ({A[15:8], 16'b0} + {{16{A[7]}}, A[7:0]}) : ({{3{B[1]}},1'b1, 20'b0} + {{23{B[0]}},1'b1});

assign mult_B = (mode == 0) ? ({{10{B[7]}}, B[7:0]}) : ({A[15:8], 10'b0} + {{10{A[7]}}, A[7:0]});

signed_mult_dsp mult (
  .CLK(clk),  // input wire CLK
  .A(mult_A),      // input wire [23 : 0] A
  .B(mult_B),      // input wire [17 : 0] B
  .P(mult_O)      // output wire [41 : 0] P
);

    always #5 clk = ~clk;
    
    wire [19:0] p1, p2;
    
    assign p1 = {{headroom{mult_O[15]}}, mult_O[15:0]};
    assign p2 = {{headroom{mult_O[31]}}, mult_O[31:16]} + mult_O[15];
    
    wire [13:0] r0, r1, r2, r3;
    assign r0 ={{headroom{mult_O[9]}}, mult_O[9:0]};
    assign r1 ={{headroom{mult_O[19]}}, mult_O[19:10]} + mult_O[9];
    assign r2 ={{headroom{mult_O[29]}}, mult_O[29 -: 10]} + mult_O[19];
    assign r3 = {{headroom{mult_O[39]}}, mult_O[39 -: 10]} + mult_O[29];
    
     initial begin
        clk = 0; reset = 1; A = 0; B = 0;mode = 0;
        
        #10;
        reset = 0; mode = 0; en = 1;
        A = 16'b1111_1100_0100_0000; //-4, 64
        B = 8'b1111_1100; //-4 
        
        #10;
        reset = 0; mode = 0; en = 1;
        A = 16'b1111_1100_0000_0001; //-4, 1
        B = 8'b0000_1100; //12
        
        #10;
        reset = 0; mode = 0; en = 1;
        A = 16'b1001_1000_1111_0011; // -104, -13
        B = 8'b0101_0101; //85
        
        #10;
        reset = 0; mode = 0; en = 1;
        
        #10;
        reset = 0; mode = 0; en = 0;
        
        #10;
        reset = 1; mode = 1; en = 0;
        #10;
        reset = 1; mode = 1; en = 0;
        B = 0;
        A = 0;
         #10;
        reset = 1; mode = 1; en = 0;
        B = 0;
        A = 0;
         #10;
        reset = 1; mode = 1; en = 0;
        B = 0;
        A = 0;
        
        #10;
        reset = 0; mode = 1; en = 0;
        B = 8'b0000_0000; //01, 01
        A = 16'b1111_1100_0100_0000; //-4, 64
        //-4, 64, -4, 64
        
        #10;
        reset = 0; mode = 1; en = 1;
        B = 8'b0000_0001; //01, -1
        A = 16'b1111_1100_0000_0001; //-4, 1
        //-4, 1, 4, -1
        
        #10;
        reset = 0; mode = 1; en = 1;
        B = 8'b0000_0010; //-1, 01
        A = 16'b1111_1100_0100_0000; //-4, 64
        //4, -64, -4, 64
        
        #10;
        reset = 0; mode = 1; en = 1;
        B = 8'b0000_0011; //-1, -1
        A = 16'b1111_1100_0000_0001; //-4, 1
        //4, -1, 4, -1
        
        #10;
        reset = 0; mode = 1; en = 1;
        
        #10;
        reset = 0; mode = 1; en = 0;
        A = 0;
        B = 0;
        
       
        
    end


endmodule
