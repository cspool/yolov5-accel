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
cur_ox_start, cur_oy_start, cur_of_start, cur_pox, cur_poy, cur_pof,
channel_out_en, quantify_en, quantify_add_end,
cur_oy_start_base_in_3,
of_in_2pow, ox_in_2pow,

out_buf1_adr, out_buf2_adr, out_buf3_adr,
valid_row1_out_buf1_adr, valid_row2_out_buf2_adr, valid_row3_out_buf3_adr,

row1_out_buf1_adr, row2_out_buf2_adr, row3_out_buf3_adr
    );
    
    parameter pixels_in_out_row_in_2pow_mode0 = 32;
    parameter pixels_in_out_row_in_2pow_mode1 = 64;
    
    parameter sa_row_num = 4; //how many rows in conv core
    parameter sa_column_num = 3; //how many columns in conv core
    
    input mode;
    
    input clk, en, reset;
    
    input [15:0] cur_ox_start, cur_oy_start, cur_of_start, cur_pox, cur_poy, cur_pof, cur_oy_start_base_in_3;
    
    input channel_out_en, quantify_en, quantify_add_end;
    
    input [15:0] of_in_2pow, ox_in_2pow;
    
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
    
    assign valid_row1_out_buf1_adr = (cur_poy < 1) ? 1'b0: 1'b1;
    assign valid_row2_out_buf2_adr = (cur_poy < 2) ? 1'b0: 1'b1;
    assign valid_row3_out_buf3_adr = (cur_poy < 3) ? 1'b0: 1'b1;

    assign pixels_in_out_row_in_2pow = (mode == 1'b0)? pixels_in_out_row_in_2pow_mode0:
                                       (mode == 1'b1)? pixels_in_out_row_in_2pow_mode1: 0;   
             
    assign row1_out_buf1_adr = ((cur_oy_start_base_in_3 << (of_in_2pow + ox_in_2pow - pixels_in_out_row_in_2pow))
                        + (((cur_ox_start - 1) << of_in_2pow) >> pixels_in_out_row_in_2pow))
                        + (cur_of_start + of_counter - 1);
    
    reg signal_add;
    reg [3:0] sa_row_no, sa_column_no;
    reg [7:0] row_counter; //0-16 in mode 0, 0-31 in mode 1
    wire [7:0] row_num;
    wire loop_row_counter_add_begin, loop_row_counter_add_end;
    wire loop_sa_row_no_add_begin, loop_sa_row_no_add_end;
    wire loop_sa_column_no_add_begin, loop_sa_column_no_add_end;
    
    wire conv_out_add_end;
    
    assign conv_out_add_end = loop_sa_column_no_add_end;
    
    assign row_num = (mode == 1'b0) ? 8'd16:
                     (mode == 1'b1) ? 8'd32:   
                     0;
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            signal_add <= 0;
        end
        else if (en == 1'b1) begin
            signal_add <= 1;
        end
        else if (loop_sa_column_no_add_end == 1'b1) begin // conv out end
            signal_add <= 0;
        end
        else begin
            signal_add <= signal_add;
        end
    end
    
    //loop row no
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           row_counter <= 1;
       end
       else if((loop_row_counter_add_begin == 1'b1))begin
           if(loop_row_counter_add_end == 1'b1) begin //the last row_no
              row_counter <= 1;
           end
           else begin
              row_counter <= row_counter + 1; 
           end
       end
       else begin
            row_counter <= row_counter;
       end
    end
    
    //fifo rd en in 1/1 cycle in mode 0, 1/2 cycle in mode 1.
    
    assign loop_row_counter_add_begin = (signal_add == 1'b1);
    
    assign loop_row_counter_add_end = loop_row_counter_add_begin && (row_counter == row_num);   
    
        //loop row no
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           sa_row_no <= 1;
       end
       else if((loop_sa_row_no_add_begin == 1'b1))begin
           if(loop_sa_row_no_add_end == 1'b1) begin //the last row_no
              sa_row_no <= 1;
           end
           else begin
              sa_row_no <= sa_row_no + 1; 
           end
       end
       else begin
            sa_row_no <= sa_row_no;
       end
    end
    
    
    assign loop_sa_row_no_add_begin = (loop_row_counter_add_end == 1'b1);
    
    assign loop_sa_row_no_add_end = loop_sa_row_no_add_begin && (sa_row_no == sa_row_num);
    
    //loop column no
    always@(posedge clk)begin 
        if(reset ==1'b1)begin
            sa_column_no <= 1;
        end
        else if(loop_sa_column_no_add_begin == 1'b1) begin
           if(loop_sa_column_no_add_end == 1'b1) begin // the last tile_f_start
              sa_column_no <= 1;
           end
           else begin
              sa_column_no <= sa_column_no + 1; 
           end
       end
       else begin
            sa_column_no <= sa_column_no;
       end
    end
    
    assign loop_sa_column_no_add_begin = (loop_sa_row_no_add_end == 1'b1);
    
    assign loop_sa_column_no_add_end = loop_sa_column_no_add_begin && (sa_column_no == sa_column_num);

                        
endmodule
