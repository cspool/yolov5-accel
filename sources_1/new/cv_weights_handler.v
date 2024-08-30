`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 19:30:22
// Design Name: 
// Module Name: cv_weights_handler
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


module cv_weights_handler(
clk, reset,

re_fm_en,
re_fm_end,

weights_vector
    );
    
    
   parameter weights_in_row = 64; // 8bit
    parameter weight_row_length = weights_in_row * 8;
    
    input reset,clk;
    
    input re_fm_en, re_fm_end;
    
    reg [15:0] adr;
    
    output [weight_row_length-1 : 0] weights_vector;
    
    wire weight_en;
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            adr <= 0;   //first adr
        end
        else if (re_fm_en == 1'b1) begin
            if (re_fm_end == 1'b1) begin
                adr <= 0;  
            end
            else begin
                adr <= adr + 1;
            end
        end
        else begin
            adr <= adr;
        end
    end
    
    assign weight_en = ((re_fm_en == 1'b1) && (re_fm_end == 1'b0))? 1 : 0;
    
    weights_buffer weights_buffer (
      .clka(clk),    // input wire clka
      .ena(weight_en),      // input wire ena
      .addra(adr[10:0]),  // input wire [10 : 0] addra
      .douta(weights_vector)  // output wire [511 : 0] douta
    );
    
    
endmodule
