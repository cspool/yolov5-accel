`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2024 12:44:32 PM
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb(

    );
    
    reg clk;
reg ena;
reg [3:0]s;
 reg [14:0] address;
 wire [255:0] data;

    
    
    
    ROM1_handler rom1_handler(
    .clk(clk),
    .ena(ena),
    .s(s),
    .address({{1'b0},address}),
    .data(data)
    );
    
    always  begin
        #5; 
        clk <= ~clk;
    end
         
    
    initial begin
        clk = 0;
        ena = 0;
        address = 0;
        s = 1;
        
        #10;
        ena = 1;
        address = 0;
        
        #10;
        address = 1;
        
        #10;
        address = 8;
        
        #10;
        address = 9;
        
        #10;
        address = 16;
        
        #10;
        s = 2;        
        ena = 1;
        address = 0;
        
        #10;
        address = 1;
        
        #10;
        address = 8;
        
        #10;
        address = 9;
        
        #10;
        address = 16;
    
    
    end
    
endmodule
