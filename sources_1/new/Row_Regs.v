`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/28 13:16:21
// Design Name: 
// Module Name: Row_Regs
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


module Row_Regs(
reset,
clk,
en,

k,s,

last_west_pad,
last_slab_num,
last_east_pad,
last_row1_idx, 
last_row2_idx, 
last_row3_idx,
last_row_start_idx, 
last_row_end_idx,
    
last_reg_start_idx, 
last_reg_end_idx,
    
last_row1_pixels_32, 
last_row2_pixels_32, 
last_row3_pixels_32,
last_row1_slab_2, 
last_row2_slab_2, 
last_row3_slab_2,

state_valid_row1_adr,
state_valid_row2_adr,
state_valid_row3_adr,

state_conv_pixels_add_end,

row_regs_1,
row_regs_2,
row_regs_3,

shift_start
    );
    
    parameter shift_regs_num = 70;
    parameter pixels_in_row = 32;
    
    input reset,clk,en;
    
    input [3:0] k, s;
    
//    input [3:0] west_pad, slab_num, east_pad;
//    input [15:0] row1_idx, row2_idx, row3_idx;

//    input [15:0] row_start_idx, row_end_idx;
    
//    input [15:0] reg_start_idx, reg_end_idx;
    
    input [pixels_in_row * 8 - 1: 0] last_row1_pixels_32, last_row2_pixels_32, last_row3_pixels_32;
    input [2 * 8 - 1: 0] last_row1_slab_2, last_row2_slab_2, last_row3_slab_2;
    
//    input conv_min_pixels_add_end, conv_pixels_add_end;
    input state_conv_pixels_add_end;
    
    input [3:0] last_west_pad, last_slab_num, last_east_pad;
    input [15:0] last_row1_idx, last_row2_idx, last_row3_idx;

    input [15:0] last_row_start_idx, last_row_end_idx;
    
    input [15:0] last_reg_start_idx, last_reg_end_idx;
    
    input state_valid_row1_adr, state_valid_row2_adr, state_valid_row3_adr;
        
    output reg [shift_regs_num * 8 -1 : 0] row_regs_1;
    output reg [shift_regs_num * 8 -1 : 0] row_regs_2;
    output reg [shift_regs_num * 8 -1 : 0] row_regs_3;
    output reg shift_start;

    wire [shift_regs_num * 8 - 1 : 0] row1_buf;
    wire [shift_regs_num * 8 - 1 : 0] row1_slab_buf;
    wire [shift_regs_num * 8 - 1 : 0] row1_fill;
    
    wire [shift_regs_num * 8 - 1 : 0] row2_buf;
    wire [shift_regs_num * 8 - 1 : 0] row2_slab_buf;
    wire [shift_regs_num * 8 - 1 : 0] row2_fill;
    
    wire [shift_regs_num * 8 - 1 : 0] row3_buf;
    wire [shift_regs_num * 8 - 1 : 0] row3_slab_buf;
    wire [shift_regs_num * 8 - 1 : 0] row3_fill;
    
    wire [shift_regs_num * 2 -1 : 0] ops_1, ops_2, ops_3;
    
    //001111111...11 && ...
    wire [shift_regs_num * 8 - 1 : 0] row1_buf_mask;
    wire [shift_regs_num * 8 - 1 : 0] row1_buf_pix;
    
    wire [15:0] ops_right_shift;
    wire [15:0] ops_left_shift;
    wire [15:0] ops_right_shift_2;

    wire [shift_regs_num * 2 -1 : 0] ops_0_buf_0;
    
    
    assign row1_buf_mask = {(shift_regs_num){8'hff}} >> ((shift_regs_num - last_reg_end_idx)<<3);
    assign row1_buf_pix = last_row1_pixels_32 << ((last_reg_start_idx - 1)<<3);
    
    assign row1_buf = (row1_buf_mask) & (row1_buf_pix);
    
    //slab_num > 0
    assign row1_slab_buf = (last_slab_num == 4'd2)? {{(shift_regs_num - 2){8'h0}}, last_row1_slab_2} :
                           (last_slab_num == 4'd1)? {{(shift_regs_num - 1){8'h0}}, last_row1_slab_2[7:0]} :
                           0;
    
    assign row1_fill = row1_buf | row1_slab_buf;
    
    //001111111...11 && ...
    assign row2_buf = ({(shift_regs_num){8'hff}} >> ((shift_regs_num - last_reg_end_idx)<<3)) 
    & (last_row2_pixels_32 << ((last_reg_start_idx - 1)<<3));
    
    //slab_num > 0
    assign row2_slab_buf = (last_slab_num == 4'd2)? {{(shift_regs_num - 2){8'h0}}, last_row2_slab_2} :
                           (last_slab_num == 4'd1)? {{(shift_regs_num - 1){8'h0}}, last_row2_slab_2[7:0]} : 0;
    
    assign row2_fill = row2_buf | row2_slab_buf;
    
    //001111111...11 && ...
    assign row3_buf = ({(shift_regs_num){8'hff}} >> ((shift_regs_num - last_reg_end_idx)<<3)) 
    & (last_row3_pixels_32 << ((last_reg_start_idx - 1)<<3));
    
    //slab_num > 0
    assign row3_slab_buf = (last_slab_num == 4'd2)? {{(shift_regs_num - 2){8'h0}}, last_row3_slab_2} :
                           (last_slab_num == 4'd1)? {{(shift_regs_num - 1){8'h0}}, last_row3_slab_2[7:0]} : 0;
    
    assign row3_fill = row3_buf | row3_slab_buf;
    
    assign ops_right_shift = (shift_regs_num - last_reg_end_idx - {12'b0,last_east_pad});
    
    assign ops_left_shift = (last_reg_start_idx - {12'b0,last_slab_num} - {12'b0,last_west_pad} - 1);
    
    assign ops_right_shift_2 = (shift_regs_num - ops_left_shift);
   

    always@(posedge clk) begin
        if (reset == 1'b1) begin
            shift_start <= 0;  
        end
        else if (state_conv_pixels_add_end == 1'b1) begin
            shift_start <= 1;
        end
        else if ((state_conv_pixels_add_end == 1'b0) && (shift_start == 1'b1)) begin
            shift_start <= 0;
        end
        else begin
            shift_start <= shift_start;
        end
    end
    
    assign ops_0_buf_0 = ({(shift_regs_num){2'd1}} >> (ops_right_shift << 1)) 
    & ({(shift_regs_num){2'd1}} << (ops_left_shift << 1));
    
    assign ops_1 = (state_valid_row1_adr == 1'b1) ?
                 ops_0_buf_0:
                 {(shift_regs_num){2'd3}};
                 
    assign ops_2 = (state_valid_row2_adr == 1'b1) ?
                 ops_0_buf_0:
                 {(shift_regs_num){2'd3}};
    
    assign ops_3 = (state_valid_row3_adr == 1'b1) ?
                 ops_0_buf_0:
                 {(shift_regs_num){2'd3}};             

    genvar i;
    
    //row regs 1
    generate 
        for (i = 0; i < shift_regs_num; i = i + 1) begin
            always@(posedge clk) begin
                if (reset == 1'b1) begin
                    row_regs_1[i*8 +: 8] <= 0;
                end
                else if (ops_1[i*2 +: 2] == 2'd0) begin // stay or first clr
                    row_regs_1[i*8 +: 8] <= 
                    (shift_start == 1'b1)? 0 : row_regs_1[i*8 +: 8];
                end
                else if (ops_1[i*2 +: 2] == 2'd1) begin // from buffer, pad
                    row_regs_1[i*8 +: 8] <= row1_fill[i*8 +: 8];
                end
                else if (ops_1[i*2 +: 2] == 2'd3) begin // 0
                    row_regs_1[i*8 +: 8] <= 0;
                end
                else begin
                    row_regs_1[i*8 +: 8] <= row_regs_1[i*8 +: 8];
                end
            end
        end
    endgenerate
    
    //row regs 2
    generate 
        for (i = 0; i < shift_regs_num; i = i + 1) begin
            always@(posedge clk) begin
                if (reset == 1'b1) begin
                    row_regs_2[i*8 +: 8] <= 0;
                end
                else if (ops_2[i*2 +: 2] == 2'd0) begin // stay
                    row_regs_2[i*8 +: 8] <= 
                    (shift_start == 1'b1)? 0 : row_regs_2[i*8 +: 8];
                end
                else if (ops_2[i*2 +: 2] == 2'd1) begin // from buffer, pad
                    row_regs_2[i*8 +: 8] <= row2_fill[i*8 +: 8];
                end
                else if (ops_2[i*2 +: 2] == 2'd3) begin // 0
                    row_regs_2[i*8 +: 8] <= 0;
                end
                else begin
                    row_regs_2[i*8 +: 8] <= row_regs_2[i*8 +: 8];
                end
            end
        end
    endgenerate
    
    //row regs 3
    generate 
        for (i = 0; i < shift_regs_num; i = i + 1) begin
            always@(posedge clk) begin
                if (reset == 1'b1) begin
                    row_regs_3[i*8 +: 8] <= 0;
                end
                else if (ops_3[i*2 +: 2] == 2'd0) begin // stay
                    row_regs_3[i*8 +: 8] <= 
                    (shift_start == 1'b1)? 0 : row_regs_3[i*8 +: 8];
                end
                else if (ops_3[i*2 +: 2] == 2'd1) begin // from buffer, pad
                    row_regs_3[i*8 +: 8] <= row3_fill[i*8 +: 8];
                end
                else if (ops_3[i*2 +: 2] == 2'd3) begin // 0
                    row_regs_3[i*8 +: 8] <= 0;
                end
                else begin
                    row_regs_3[i*8 +: 8] <= row_regs_3[i*8 +: 8];
                end
            end
        end
    endgenerate
    
    
endmodule
