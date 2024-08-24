`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/19 22:33:06
// Design Name: 
// Module Name: Shift_Regs
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


module Shift_Regs(
reset,
clk,

k,s,

west_pad,
slab_num,
east_pad,
row1_idx, 
row2_idx, 
row3_idx,
row_start_idx, 
row_end_idx,
    
reg_start_idx, 
reg_end_idx,
    
row1_pixels_32, 
row2_pixels_32, 
row3_pixels_32,
row1_slab_2, 
row2_slab_2, 
row3_slab_2,

conv_min_pixels_add_end,
conv_pixels_add_end,

re_row1_pixels,
re_row2_pixels,
re_row3_pixels,

shift_add_end
    );
    
    parameter shift_regs_num = 70;
    parameter pixels_in_row = 32;
    
    input reset,clk;
    
    input [3:0] k, s;
    
    input [3:0] west_pad, slab_num, east_pad;
    input [15:0] row1_idx, row2_idx, row3_idx;

    input [15:0] row_start_idx, row_end_idx;
    
    input [15:0] reg_start_idx, reg_end_idx;
    
    input [pixels_in_row * 8 - 1: 0] row1_pixels_32, row2_pixels_32, row3_pixels_32;
    input [2 * 8 - 1: 0] row1_slab_2, row2_slab_2, row3_slab_2;
    
    input conv_min_pixels_add_end, conv_pixels_add_end;
    
    output [pixels_in_row*8-1:0] re_row1_pixels, re_row2_pixels, re_row3_pixels;
    
    output shift_add_end;
    
    wire [shift_regs_num * 8 - 1 : 0] row1_buf;
    wire [shift_regs_num * 8 - 1 : 0] row1_slab_buf;
    wire [shift_regs_num * 8 - 1 : 0] row1_fill;
    
    wire [shift_regs_num * 8 - 1 : 0] row2_buf;
    wire [shift_regs_num * 8 - 1 : 0] row2_slab_buf;
    wire [shift_regs_num * 8 - 1 : 0] row2_fill;
    
    wire [shift_regs_num * 8 - 1 : 0] row3_buf;
    wire [shift_regs_num * 8 - 1 : 0] row3_slab_buf;
    wire [shift_regs_num * 8 - 1 : 0] row3_fill;
    
    reg [shift_regs_num * 8 -1 : 0] shift_regs_1;
    reg [shift_regs_num * 8 -1 : 0] shift_regs_2;
    reg [shift_regs_num * 8 -1 : 0] shift_regs_3;
    
    wire [shift_regs_num * 2 -1 : 0] ops;
    
    //001111111...11 && ...
    wire [shift_regs_num * 8 - 1 : 0] row1_buf_mask;
    wire [shift_regs_num * 8 - 1 : 0] row1_buf_pix;
    
    assign row1_buf_mask = {(shift_regs_num){8'hff}} >> ((shift_regs_num - reg_end_idx)<<3);
    assign row1_buf_pix = row1_pixels_32 << ((reg_start_idx - 1)<<3);
    
    assign row1_buf = (row1_buf_mask) & (row1_buf_pix);
    
    //slab_num > 0
    assign row1_slab_buf = (slab_num == 4'd2)? {{(shift_regs_num - 2){8'h0}}, row1_slab_2} :
                           (slab_num == 4'd1)? {{(shift_regs_num - 1){8'h0}}, row1_slab_2[7:0]} :
                           0;
    
    assign row1_fill = row1_buf | row1_slab_buf;
    
    //001111111...11 && ...
    assign row2_buf = ({(shift_regs_num){8'hff}} >> ((shift_regs_num - reg_end_idx)<<3)) & (row2_pixels_32 << ((reg_start_idx - 1)<<3));
    
    //slab_num > 0
    assign row2_slab_buf = (slab_num == 4'd2)? {{(shift_regs_num - 2){8'h0}}, row2_slab_2} :
                           (slab_num == 4'd1)? {{(shift_regs_num - 1){8'h0}}, row2_slab_2[7:0]} : 0;
    
    assign row2_fill = row2_buf | row2_slab_buf;
    
    //001111111...11 && ...
    assign row3_buf = ({(shift_regs_num){8'hff}} >> ((shift_regs_num - reg_end_idx)<<3)) & (row3_pixels_32 << ((reg_start_idx - 1)<<3));
    
    //slab_num > 0
    assign row3_slab_buf = (slab_num == 4'd2)? {{(shift_regs_num - 2){8'h0}}, row3_slab_2} :
                           (slab_num == 4'd1)? {{(shift_regs_num - 1){8'h0}}, row3_slab_2[7:0]} : 0;
    
    assign row3_fill = row3_buf | row3_slab_buf;
    
    wire [15:0] ops_right_shift = (shift_regs_num - reg_end_idx - {12'b0,east_pad});
    
    wire [15:0] ops_left_shift = (reg_start_idx - {12'b0,slab_num} - {12'b0,west_pad} - 1);
    
    wire [15:0] ops_right_shift_2 = (shift_regs_num - ops_left_shift);
    
    wire [shift_regs_num * 2 -1 : 0] ops_shift_buf;
    
    wire [shift_regs_num * 2 -1 : 0] ops_0_buf_0;
    
    wire [shift_regs_num * 2 -1 : 0] ops_shift;
    
    reg [15:0] shift_counter;//0...k-1, from the cycle of loop_shift_add_begin being 1
    wire loop_shift_add_begin, loop_shift_add_end;
    
    reg state_conv_min_pixels_end, state_conv_pixels_end;
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            state_conv_min_pixels_end <= 0;  
        end
        else if (conv_min_pixels_add_end == 1'b1) begin
            state_conv_min_pixels_end <= 1;
        end
        else if (loop_shift_add_end == 1'b1) begin // all end
            state_conv_min_pixels_end <= 0;
        end
        else begin
            state_conv_min_pixels_end <= state_conv_min_pixels_end;
        end
    end
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            state_conv_pixels_end <= 0;  
        end
        else if (conv_pixels_add_end == 1'b1) begin
            state_conv_pixels_end <= 1;
        end
        else if (loop_shift_add_end == 1'b1) begin // all end
            state_conv_pixels_end <= 0;
        end
        else begin
            state_conv_pixels_end <= state_conv_pixels_end;
        end
    end
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            shift_counter <= 0;  
        end
        else if (loop_shift_add_begin == 1'b1) begin
            if (loop_shift_add_end == 1'b1) begin // all end
                shift_counter <= 0;
            end
            else begin
                shift_counter <= shift_counter + 1;
            end
        end
        else begin
            shift_counter <= shift_counter;
        end
    end
    
    assign loop_shift_add_begin = state_conv_min_pixels_end;
    
    assign loop_shift_add_end = loop_shift_add_begin && ((shift_counter + 1) == k);
    
    assign shift_add_end = loop_shift_add_end;
    
    assign ops_0_buf_0 = ({(shift_regs_num){2'd1}} >> (ops_right_shift << 1)) 
    & ({(shift_regs_num){2'd1}} << (ops_left_shift << 1));
    
    assign ops_shift = {(shift_regs_num){2'd2}};
    
    assign ops_shift_buf = ops_0_buf_0
    | (ops_shift >> (ops_right_shift_2 << 1));
    
    assign ops = ((state_conv_min_pixels_end == 1'b0) && (state_conv_pixels_end == 1'b0)) ?
                 ops_0_buf_0:
                 ((state_conv_min_pixels_end == 1'b1) && (state_conv_pixels_end == 1'b0)) ?
                 ops_shift_buf:
                 ((state_conv_min_pixels_end == 1'b1) && (state_conv_pixels_end == 1'b1) && (loop_shift_add_end == 1'b0)) ?
                 ops_shift:
                 {(shift_regs_num){2'd3}};
                   

    genvar i;
    
    //shift regs 1
    generate 
        for (i = 0; i < shift_regs_num - 1; i = i + 1) begin
            always@(posedge clk) begin
                if (reset == 1'b1) begin
                    shift_regs_1[i*8 +: 8] <= 0;
                end
                else if (ops[i*2 +: 2] == 2'd0) begin // stay
                    shift_regs_1[i*8 +: 8] <= shift_regs_1[i*8 +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd1) begin // from buffer, pad
                    shift_regs_1[i*8 +: 8] <= row1_fill[i*8 +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd2) begin // from reg nearby(shift)
                    shift_regs_1[i*8 +: 8] <= shift_regs_1[(i*8+8) +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd3) begin // 0
                    shift_regs_1[i*8 +: 8] <= 0;
                end
                else begin
                    shift_regs_1[i*8 +: 8] <= shift_regs_1[i*8 +: 8];
                end
            end
        end
    endgenerate
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            shift_regs_1[69*8 +: 8] <= 0;
        end
        else if (ops[69*8 +: 8] == 2'd0) begin // stay
            shift_regs_1[69*8 +: 8] <= shift_regs_1[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd1) begin // from buffer, pad
            shift_regs_1[69*8 +: 8] <= row1_fill[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd2) begin // from reg nearby(shift)
            shift_regs_1[69*8 +: 8] <= shift_regs_1[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd3) begin // 0
            shift_regs_1[69*8 +: 8] <= 0;
        end
        else begin
            shift_regs_1[69*8 +: 8] <= shift_regs_1[69*8 +: 8];
        end
    end
    
    //shift regs 2
    generate 
        for (i = 0; i < shift_regs_num - 1; i = i + 1) begin
            always@(posedge clk) begin
                if (reset == 1'b1) begin
                    shift_regs_2[i*8 +: 8] <= 0;
                end
                else if (ops[i*2 +: 2] == 2'd0) begin // stay
                    shift_regs_2[i*8 +: 8] <= shift_regs_2[i*8 +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd1) begin // from buffer, pad
                    shift_regs_2[i*8 +: 8] <= row2_fill[i*8 +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd2) begin // from reg nearby(shift)
                    shift_regs_2[i*8 +: 8] <= shift_regs_2[(i*8+8) +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd3) begin // 0
                    shift_regs_2[i*8 +: 8] <= 0;
                end
                else begin
                    shift_regs_2[i*8 +: 8] <= shift_regs_2[i*8 +: 8];
                end
            end
        end
    endgenerate
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            shift_regs_2[69*8 +: 8] <= 0;
        end
        else if (ops[69*8 +: 8] == 2'd0) begin // stay
            shift_regs_2[69*8 +: 8] <= shift_regs_2[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd1) begin // from buffer, pad
            shift_regs_2[69*8 +: 8] <= row2_fill[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd2) begin // from reg nearby(shift)
            shift_regs_2[69*8 +: 8] <= shift_regs_2[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd3) begin // 0
            shift_regs_2[69*8 +: 8] <= 0;
        end
        else begin
            shift_regs_2[69*8 +: 8] <= shift_regs_2[69*8 +: 8];
        end
    end
    
    //shift regs 3
    generate 
        for (i = 0; i < shift_regs_num - 1; i = i + 1) begin
            always@(posedge clk) begin
                if (reset == 1'b1) begin
                    shift_regs_3[i*8 +: 8] <= 0;
                end
                else if (ops[i*2 +: 2] == 2'd0) begin // stay
                    shift_regs_3[i*8 +: 8] <= shift_regs_3[i*8 +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd1) begin // from buffer, pad
                    shift_regs_3[i*8 +: 8] <= row3_fill[i*8 +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd2) begin // from reg nearby(shift)
                    shift_regs_3[i*8 +: 8] <= shift_regs_3[(i*8+8) +: 8];
                end
                else if (ops[i*2 +: 2] == 2'd3) begin // 0
                    shift_regs_3[i*8 +: 8] <= 0;
                end
                else begin
                    shift_regs_3[i*8 +: 8] <= shift_regs_3[i*8 +: 8];
                end
            end
        end
    endgenerate
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            shift_regs_3[69*8 +: 8] <= 0;
        end
        else if (ops[69*8 +: 8] == 2'd0) begin // stay
            shift_regs_3[69*8 +: 8] <= shift_regs_3[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd1) begin // from buffer, pad
            shift_regs_3[69*8 +: 8] <= row3_fill[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd2) begin // from reg nearby(shift)
            shift_regs_3[69*8 +: 8] <= shift_regs_3[69*8 +: 8];
        end
        else if (ops[69*8 +: 8] == 2'd3) begin // 0
            shift_regs_3[69*8 +: 8] <= 0;
        end
        else begin
            shift_regs_3[69*8 +: 8] <= shift_regs_3[69*8 +: 8];
        end
    end
    
    genvar j;
    
    //output
    generate 
        for (j = 0; j < pixels_in_row; j = j + 1) begin
            assign re_row1_pixels[j*8 +: 8] = (s == 4'd1)? shift_regs_1[j*8 +: 8]:
                                         (s == 4'd2)? shift_regs_1[j*16 +: 8]:
                                         0;
                                         
            assign re_row2_pixels[j*8 +: 8] = (s == 4'd1)? shift_regs_2[j*8 +: 8]:
                                         (s == 4'd2)? shift_regs_2[j*16 +: 8]:
                                         0;   
                                         
            assign re_row3_pixels[j*8 +: 8] = (s == 4'd1)? shift_regs_3[j*8 +: 8]:
                                         (s == 4'd2)? shift_regs_3[j*16 +: 8]:
                                         0;                                          
        end
    endgenerate
    
    
endmodule
