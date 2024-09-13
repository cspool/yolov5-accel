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
//cycle 0 in
mode,
clk, en, reset,
cur_ox_start, cur_oy_start, cur_of_start, cur_pox, cur_poy, cur_pof,
channel_out_en, quantify_en, quantify_add_end,
of_in_2pow, ox_in_2pow,

//cycle 0 out
fifo_rds,

//cycle 1 in
fifo_data,

//cycle 1 out
//rowi_out_buf_adr,
fifo_column_no, fifo_row_no,
valid_rowi_out_buf_adr,
out_y_idx, out_x_idx, out_f_idx,
out_data,
conv_out_add_end
    );
    
    parameter pixels_in_row = 32;
    parameter pixels_in_row_in_2pow = 5;
    
    parameter sa_row_num = 4; //how many rows in conv core
    parameter sa_column_num = 3; //how many columns in conv core
    parameter row_num = 16; // how many rows in a sa
    parameter column_num = 16; // how many columns in a sa
    
    parameter pe_parallel_pixel_88 = 2;
    parameter pe_parallel_weight_88 = 1;
    parameter pe_parallel_pixel_18 = 2; 
    parameter pe_parallel_weight_18 = 2;
    
    parameter quantified_pixel_width = 8; 
    parameter quantified_row_width = (quantified_pixel_width) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
    
    parameter out_data_width = quantified_pixel_width * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
    
    //cycle 0 in
    input mode;
    
    input clk, en, reset;
    
    input [15:0] cur_ox_start, cur_oy_start, cur_of_start, cur_pox, cur_poy, cur_pof;
    
    input channel_out_en, quantify_en, quantify_add_end;
    
    input [15:0] of_in_2pow, ox_in_2pow;
    
    //cycle 1 in
    input [quantified_row_width-1 : 0] fifo_data;
    
    //cycle 0 out
    output [sa_row_num * sa_column_num-1:0] fifo_rds;
    
    //cycle 1 out
//    output reg [15:0] rowi_out_buf_adr;
    output reg [3:0] fifo_column_no, fifo_row_no;
    output reg valid_rowi_out_buf_adr;                    
    output reg [15:0] out_y_idx, out_x_idx, out_f_idx;                   
    output reg conv_out_add_end;

    output [out_data_width-1 : 0] out_data;
    
    //out ctrl
    reg signal_add;
    reg [15:0] of_counter;
    reg [3:0] oy_counter;
    reg [15:0] channel_counter; //0-16 in mode 0, 0-31 in mode 1
    wire row_fifo_rd_en;
    wire [15:0] channel_num;
    wire [3:0] log_channel_num;
    wire loop_channel_counter_add_begin, loop_channel_counter_add_end;
    wire loop_of_counter_add_begin, loop_of_counter_add_end;
    wire loop_oy_counter_add_begin, loop_oy_counter_add_end;
    
    //fifo ctrl
    wire [out_data_width-1 : 0] out_data_mode0, out_data_mode1;
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            valid_rowi_out_buf_adr <= 0;
//            rowi_out_buf_adr <= 0;
            out_y_idx <= 0;
            out_x_idx <= 0;
            out_f_idx <= 0;   
            conv_out_add_end <= 0;
            fifo_column_no <= 0;
            fifo_row_no <= 0;
        end
        else begin
            valid_rowi_out_buf_adr <= loop_channel_counter_add_begin;
//            rowi_out_buf_adr <=
//            (((cur_oy_start - 1 + oy_counter - 1) << (of_in_2pow + ox_in_2pow - pixels_in_row_in_2pow))
//                        + (((cur_ox_start - 1) << of_in_2pow) >> pixels_in_row_in_2pow))
//                        + (cur_of_start - 1 + (of_counter - 1) + channel_counter - 1);           
            out_y_idx <= cur_oy_start - 1 + oy_counter;
            out_x_idx <= cur_ox_start;
            out_f_idx <= cur_of_start - 1 + (of_counter - 1) + channel_counter;             
            conv_out_add_end <= loop_oy_counter_add_end;
            fifo_column_no <= oy_counter - 1; //0,1,2
            fifo_row_no <= (of_counter -1)>> log_channel_num; //0,1,2,3
        end
    end 
    
    assign row_fifo_rd_en = (mode == 1'b0)? 1'b1: //0,1,...,15
                         (mode == 1'b1)? channel_counter[0]:
                         0;
    
    genvar i;
    
    generate
        for (i = 0; i < sa_row_num * sa_column_num; i=i+1) begin
            assign fifo_rds[i] = 
            ((((oy_counter - 1) << 2) + ((of_counter -1)>> log_channel_num)) == i)? 
            (row_fifo_rd_en):
            1'b0;
        end
    
    endgenerate
    
    assign out_data_mode0 = fifo_data[out_data_width-1 : 0];
    
    assign out_data_mode1 = (channel_counter[0] == 1'b1) ? fifo_data[out_data_width-1 : 0] : 
    (channel_counter[0] == 1'b0) ? fifo_data[quantified_row_width-1 : out_data_width] :
    0;
    
    assign out_data = (valid_rowi_out_buf_adr == 1'b0)? 0:
                      (valid_rowi_out_buf_adr == 1'b1)?
                      ((mode == 1'b0)? out_data_mode0 :
                      (mode == 1'b1)? out_data_mode1 : 0):
                      0;  
    
    assign channel_num = (mode == 1'b0) ? 8'd16:
                     (mode == 1'b1) ? 8'd32:   
                     0;
                     
    assign log_channel_num = (mode == 1'b0) ? 4'd4:
                         (mode == 1'b1) ? 4'd5:   
                         0;
                         
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            signal_add <= 0;
        end
        else if (quantify_add_end == 1'b1) begin
            signal_add <= 1;
        end
        else if (loop_oy_counter_add_end == 1'b1) begin // conv out end
            signal_add <= 0;
        end
        else begin
            signal_add <= signal_add;
        end
    end
    
    //loop row no
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           channel_counter <= 1;
       end
       else if((loop_channel_counter_add_begin == 1'b1))begin
           if(loop_channel_counter_add_end == 1'b1) begin //the last row_no
              channel_counter <= 1;
           end
           else begin
              channel_counter <= channel_counter + 1; 
           end
       end
       else begin
            channel_counter <= channel_counter;
       end
    end
    
    //fifo rd en in 1/1 cycle in mode 0, 1/2 cycle in mode 1.
    
    assign loop_channel_counter_add_begin = (signal_add == 1'b1);
    
    assign loop_channel_counter_add_end = loop_channel_counter_add_begin 
    && ((of_counter - 1 + channel_counter == cur_pof) || (channel_counter == channel_num));   
    
        //loop row no
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           of_counter <= 1;
       end
       else if((loop_of_counter_add_begin == 1'b1))begin
           if(loop_of_counter_add_end == 1'b1) begin //the last row_no
              of_counter <= 1;
           end
           else begin
              of_counter <= of_counter + channel_num; 
           end
       end
       else begin
            of_counter <= of_counter;
       end
    end
    
    assign loop_of_counter_add_begin = (loop_channel_counter_add_end == 1'b1);
    
    assign loop_of_counter_add_end = loop_of_counter_add_begin 
    && (of_counter - 1 + channel_counter == cur_pof);
    
    //loop column no
    always@(posedge clk)begin 
        if(reset ==1'b1)begin
            oy_counter <= 1;
        end
        else if(loop_oy_counter_add_begin == 1'b1) begin
           if(loop_oy_counter_add_end == 1'b1) begin // the last tile_f_start
              oy_counter <= 1;
           end
           else begin
              oy_counter <= oy_counter + 1; 
           end
       end
       else begin
            oy_counter <= oy_counter;
       end
    end
    
    assign loop_oy_counter_add_begin = (loop_of_counter_add_end == 1'b1);
    
    assign loop_oy_counter_add_end = loop_oy_counter_add_begin
    && (oy_counter == cur_poy);

                        
endmodule
