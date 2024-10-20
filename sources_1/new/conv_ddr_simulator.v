`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 05:54:22 PM
// Design Name: 
// Module Name: conv_ddr_simulator
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


module conv_ddr_simulator(
        reset, 
        
        clk,
        
        ddr_rd_adr,
        
        ddr_rd,
        
        ddr_word
    );
    
    input reset, clk;
    
    input [31:0] ddr_rd_adr;
    
    input ddr_rd;
    
    output [511:0] ddr_word;
    
    reg [511:0] word_counter;
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            word_counter <= 0; 
        end
        else if (ddr_rd == 1'b1) begin
            word_counter[255:0] <= word_counter[255:0] + 256'd1; 
            word_counter[511:256] <= word_counter[511:256] + 256'd1; 
        end
        else begin
            word_counter <= word_counter; 
        end
    end
    
    assign ddr_word = word_counter;
    
endmodule
