`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/24 19:43:38
// Design Name: 
// Module Name: slab1_tb
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


module slab1_tb(

    );
       reg clk;
       reg ena;
       reg [0 : 0] wea;
       reg [14 : 0] addra;
       reg [15 : 0] dina;
       reg enb;
       reg [14 : 0] addrb;
       wire [15 : 0] doutb;
    
    
    slab_1 slab_1 (
      .clka(clk),    // input wire clka
      .ena(ena),      // input wire ena
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [14 : 0] addra
      .dina(dina),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(enb),      // input wire enb
      .addrb(addrb),  // input wire [14 : 0] addrb
      .doutb(doutb)  // output wire [15 : 0] doutb
    );
    
    always begin
        #5;
        clk <= ~clk;
    end
    
    initial begin
    // cfg 0
        clk = 0;
        ena = 1;
        wea = 1;
       addra = 0;
       dina = 16'h0201;
       
       enb = 0;
       addrb = 0;
       
       #10; //init
       
       ena = 0;
        wea = 0;
       addra = 0;
       dina = 0;
       
       enb = 1;
       addrb = 0;
       
       #10; //slab read, buf read at adr 1
       ena = 0;
        wea = 0;
       addra = 0;
       dina = 0;
       
       enb = 1;
       addrb = 1;
        
       #10; //wr
       ena = 1;
        wea = 1;
       addra = 2;
       dina = 16'h0403;
       
       enb = 1;
       addrb = 2;
        
    end
    
    
endmodule
