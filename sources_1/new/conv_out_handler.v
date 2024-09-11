`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2024 04:35:37 PM
// Design Name: 
// Module Name: conv_out_handler
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


module conv_out_handler(
mode,
clk, en, reset,
ox_start, oy_start, of_start, pox, poy, pof,
channel_out_en, quantify_en, quantify_add_end,
oy_start_base_in_3,
of_in_2pow, ox_in_2pow,

cur_ox_start, cur_pox,
cur_oy_start, cur_poy,
cur_oy_start_base_in_3,
cur_of_start, cur_pof,

out_buf1_adr, out_buf2_adr, out_buf3_adr,
valid_row1_out_buf1_adr, valid_row2_out_buf2_adr, valid_row3_out_buf3_adr,

row1_out_buf1_adr, row2_out_buf2_adr, row3_out_buf3_adr
    );
    
    parameter pixels_in_out_row_in_2pow_mode0 = 32;
    parameter pixels_in_out_row_in_2pow_mode1 = 64;
    
    input mode;
    
    input clk, en, reset;
    
    input [15:0] ox_start, oy_start, of_start, pox, poy, pof, oy_start_base_in_3;
    
    input channel_out_en, quantify_en, quantify_add_end;
    
    input [15:0] of_in_2pow, ox_in_2pow;
    
    output reg [15:0] cur_ox_start, cur_pox;
    output reg [15:0] cur_oy_start, cur_poy, cur_oy_start_base_in_3; 
    output reg [15:0] cur_of_start, cur_pof;
    
    output [15:0] out_buf1_adr, out_buf2_adr, out_buf3_adr;
    output valid_row1_out_buf1_adr, valid_row2_out_buf2_adr, valid_row3_out_buf3_adr;
    
    output [15:0] row1_out_buf1_adr;
    
    output [15:0] row2_out_buf2_adr;
    
    output [15:0] row3_out_buf3_adr; 
    
    wire [15:0] pixels_in_out_row_in_2pow;
    
    reg [15:0] of_counter;
    
    always@(posedge clk)begin
       if(reset ==1'b1)begin
            of_counter <= 0;
       end
       else if(quantify_en == 1'b1)begin
            if (quantify_add_end == 1'b1)begin
                of_counter <= 0;
            end
            else begin
                of_counter <= of_counter + 1;
            end
       end
       else begin
            of_counter <= of_counter;
       end
    end
    
    always@(posedge clk)begin
       if(reset ==1'b1)begin
            cur_ox_start <= 0;
            cur_oy_start <= 0;
            cur_of_start <= 0;
            cur_pox <= 0;
            cur_poy <= 0;
            cur_pof <= 0;
            cur_oy_start_base_in_3 <= 0;
       end
       else if((channel_out_en == 1'b1) && (quantify_add_end == 1'b0))begin
            cur_ox_start <= ox_start;
            cur_oy_start <= oy_start;
            cur_of_start <= of_start;
            cur_pox <= pox;
            cur_poy <= poy;
            cur_pof <= pof;
            cur_oy_start_base_in_3 <= oy_start_base_in_3;
       end
       else begin
            cur_ox_start <= cur_ox_start;
            cur_oy_start <= cur_oy_start;
            cur_of_start <= cur_of_start;
            cur_pox <= cur_pox;
            cur_poy <= cur_poy;
            cur_pof <= cur_pof;
            cur_oy_start_base_in_3 <= cur_oy_start_base_in_3;
       end
    end
    
    assign valid_row1_out_buf1_adr = (cur_poy < 1) ? 1'b0: 1'b1;
    assign valid_row2_out_buf2_adr = (cur_poy < 2) ? 1'b0: 1'b1;
    assign valid_row3_out_buf3_adr = (cur_poy < 3) ? 1'b0: 1'b1;
    

    
    
    
    assign pixels_in_out_row_in_2pow = (mode == 1'b0)? pixels_in_out_row_in_2pow_mode0:
                                       (mode == 1'b1)? pixels_in_out_row_in_2pow_mode1: 0;   
    
    
                       
    assign row1_out_buf1_adr = ((cur_oy_start_base_in_3 << (of_in_2pow + ox_in_2pow - pixels_in_out_row_in_2pow))
                        + (((cur_ox_start - 1) << of_in_2pow) >> pixels_in_out_row_in_2pow))
                        + (cur_of_start + of_counter - 1);
                        
endmodule
