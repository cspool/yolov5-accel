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
 reg [12:0] address;
 wire [255:0] data;

    
    
    
//    ROM_32_32_512_1_1_0_controller rom1_ctrl(
//    .clk(clk),
//    .ena(ena),
//    .address(address),
//    .data(data)
//    );
    
    always  begin
        #5; 
        clk <= ~clk;
    end
         
    
    initial begin
        clk = 0;
        ena = 0;
        address = 0;
        
        
        #10;
        
        ena = 1;
        address = 0;
        
        #20;
        
        address = 1;
        
        #20;
        
    
    
    end
    
endmodule
