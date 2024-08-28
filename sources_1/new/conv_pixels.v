`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/14 23:41:21
// Design Name: 
// Module Name: conv_pixels
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


module conv_pixels(
ix, ox_start,
pox,
k, s, p,
clk, reset, en,

next_ox_start,

conv_tiling_add_end,

conv_row_begin,
conv_pixels_add_end,
west_pad, slab_num, east_pad,
row_start_idx, row_end_idx,
reg_start_idx, reg_end_idx,

valid_adr
    );
    
   parameter pixels_in_row = 32;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
    
   input [15:0] ix, ox_start, pox;
   input [3:0] k, s, p;
   input clk, reset, en; 
   
   input [15:0] next_ox_start;
   
   input conv_tiling_add_end;
   
   output conv_row_begin;
   
   output conv_pixels_add_end;
   
//   output conv_min_pixels_add_end;
   
   output [3:0] west_pad, slab_num, east_pad;
   output [15:0] row_start_idx, row_end_idx;
   output [15:0] reg_start_idx, reg_end_idx;
   
   output valid_adr;
   
   wire [15:0] ix_start;
   
   wire [15:0] next_ix_start;
   
   wire [15:0] ix_end;
//   wire [15:0] ix_end_min0, ix_end_min;
   
//   wire [3:0] left_pad, right_pad, right_pad_min, overlap;
   wire [3:0] left_pad, right_pad, overlap;
   
   wire [3:0] next_left_pad, next_overlap;
   
   wire [15:0] row_start_fix;
   
//   wire [15:0] row_end_min, row_end;
   
//   wire [15:0] row_end_min_low, row_end_min_high, row_end_low, row_end_high;
   
//   wire [15:0] row_end_min_fix0, row_end_min_fix, row_end_fix0, row_end_fix;
   wire [15:0] row_end;
   
   wire [15:0] row_end_low, row_end_high;
   
   wire [15:0] row_end_fix0, row_end_fix;
   
   wire [15:0] ix_end_s_1;
   
//   wire [15:0] ix_end_min_s_1;
   
   wire [15:0] p_plus_ix;
   
   wire[15:0] p_plus_1;
   
   wire[15:0] ix_minus_1;
   
   wire [15:0] pox_minus_1; 
   wire [15:0] pox_minus_2;
   
   wire [15:0] reg_from_initial;
   
   wire [15:0] next_reg_from_initial;
   
//   reg [15:0] reg_from, reg_from_2;
//   wire [15:0] reg_to, reg_to_2;
   reg [15:0] reg_from;
   wire [15:0] reg_to;

//   reg [15:0] adr1, adr2;
   reg [15:0] adr1;
   
//   reg signal_add1, signal_add2, adr_switch;
   reg signal_add1;
   
//   wire loop_adr1_add_begin, loop_adr1_add_end, loop_adr2_add_begin, loop_adr2_add_end;
   wire loop_adr1_add_begin, loop_adr1_add_end;
   
   wire stall;
   
   reg[3:0] row_length, stall_counter;
   
   assign pox_minus_1 = pox-1;
   assign pox_minus_2 = pox-2;
   
   // ix_start = (ox_start - 1) * s + 1;
   assign ix_start = (s == 4'd1)? ox_start:
                     (s == 4'd2)? (ox_start << 1) - 1:
                     0;
                     
   //next ix_start
   assign next_ix_start = (s == 4'd1)? next_ox_start:
                     (s == 4'd2)? (next_ox_start << 1) - 1:
                     0;
   
   // ix_end = ix_start + (pox-1) * s + k-1;                 
   assign ix_end_s_1 = ix_start + k + pox_minus_2;
   
   assign ix_end = (s == 4'd1)? ix_end_s_1:
                   (s == 4'd2)? ix_end_s_1 + pox_minus_1:
                   0;
                   
   // ix_end_min = ix_start + (pox-1) * s + 1
//   assign ix_end_min_s_1 = ix_start + pox;
   
//   assign ix_end_min0 = (s == 4'd1)? ix_end_min_s_1:
//                   (s == 4'd2)? ix_end_min_s_1 + pox_minus_1:
//                   0;
                   
//   assign ix_end_min = (ix_end_min0 > ix_end)? ix_end: ix_end_min0;
   
   assign left_pad = (ix_start <= {{12'b0}, p})? ({{12'b0}, p} - ix_start + 1):0;
   
   //next left_pad
   assign next_left_pad = (next_ix_start <= {{12'b0}, p})? ({{12'b0}, p} - next_ix_start + 1):0;
   
   assign p_plus_ix = {{12'b0}, p} + ix;
   
   assign right_pad = (ix_end > p_plus_ix)? (ix_end - p_plus_ix): 0;
   
//   assign right_pad_min = (ix_end_min > p_plus_ix)? (ix_end_min - p_plus_ix): 0;
   
   assign p_plus_1 = {{12'b0}, p} + 1;
   
   assign overlap = (ix_start <= p_plus_1)? 0: {{12'b0}, p};
   
   //next overlap
   assign next_overlap = (next_ix_start <= p_plus_1)? 0: {{12'b0}, p};
   
   assign row_start_fix = ix_start + left_pad - p_plus_1 + overlap;
   
//   assign row_end_min = ix_end_min - right_pad_min - p_plus_1;
   
   assign row_end = ix_end - right_pad - p_plus_1;
   
   assign ix_minus_1 = ix - 1;
   
   // row_end_min = min(math.ceil((row_end_min0 + 1) / pixels_in_row) * pixels_in_row -1, ix-1)
                   
//   assign row_end_min_low = (row_end_min+1) & 16'h001f;
//   assign row_end_min_high = (row_end_min+1) & 16'hffe0;
   
//   assign row_end_min_fix0 = (row_end_min_low == 16'h0)? (row_end_min - 16'h0001):
//                        (row_end_min_high + 16'h001f);
                        
//   assign row_end_min_fix = (row_end_min_fix0 > ix_minus_1)? ix_minus_1:
//                             row_end_min_fix0;
   
   // row_end = min(math.ceil((row_end0 +1) / pox) * pox -1, ix-1)                    
   assign row_end_low = (row_end+1) & 16'h001f;
   assign row_end_high = (row_end+1) & 16'hffe0;
   
   assign row_end_fix0 = (row_end_low == 16'h0)? (row_end - 16'h0001):
                        (row_end_high + 16'h001f);
                        
   assign row_end_fix = (row_end_fix0 > ix_minus_1)? ix_minus_1:
                             row_end_fix0;
  
   assign reg_from_initial = left_pad + {{12'b0}, overlap} + 1;
   
   //next reg_from_initial
   assign next_reg_from_initial = next_left_pad + {{12'b0}, next_overlap} + 1;                          
   
   assign valid_adr = loop_adr1_add_begin;
   
   // for adr1 in range(0, row_end_min_fix - row_start_fix + 1, pixels_in_row)
   always@(posedge clk) begin
        if (reset == 1'b1) begin
            signal_add1 <= 0;
        end
        else if (en == 1'b1) begin
            signal_add1 <= 1;
        end
        else if (conv_tiling_add_end == 1'b1) begin // all end
            signal_add1 <= 0;
        end
        else begin
            signal_add1 <= signal_add1;
        end
    end   
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            adr1 <= 0;    
            reg_from <= next_reg_from_initial;
        end
        else if (loop_adr1_add_begin == 1'b1) begin
            if (loop_adr1_add_end == 1'b1) begin// the last adr1 or adr2
                adr1 <= 0;    
                reg_from <= next_reg_from_initial;
            end
//            else if(adr_switch == 1'b0) begin
//                adr1 <= adr1 + pixels_in_row;
//                reg_from <= reg_to + 1;
//            end
            else begin
                adr1 <= adr1 + pixels_in_row;
                reg_from <= reg_to + 1;
            end
        end
        else begin
            adr1 <= adr1;
            reg_from <= reg_from;
        end
    end  
    
    assign loop_adr1_add_begin = (signal_add1 == 1'b1) && (stall == 1'b0);
//    assign loop_adr1_add_end = loop_adr1_add_begin && ((adr1 + pixels_in_row) > (row_end_min_fix - row_start_fix));
    
    assign loop_adr1_add_end = loop_adr1_add_begin && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
    
//    assign reg_to = (row_start_idx + pixels_in_row_minus_1 > row_end_min_fix)?
//                    (reg_from + row_end_min_fix - row_start_idx):
//                    (reg_from + pixels_in_row_minus_1);
                    
    assign reg_to = (row_start_idx + pixels_in_row_minus_1 > row_end)?
                    (reg_from + row_end - row_start_idx):
                    (reg_from + pixels_in_row_minus_1);       

    assign conv_row_begin = loop_adr1_add_begin;
    
    //stall
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            row_length <= 0;
        end
        else if (en == 1'b1) begin
            row_length <= 1;
        end
        else if (loop_adr1_add_begin == 1'b1) begin
            if (loop_adr1_add_end == 1'b1) begin// the last adr1
                row_length <= 1;
            end
            else begin
                row_length <= row_length + 1;
            end
        end
        else begin
            row_length <= row_length;
        end
    end  
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            stall_counter <= 0;
        end
        else if (en == 1'b1) begin //first cycle no need stall
            stall_counter <= 0;
        end
        else if (loop_adr1_add_end == 1'b1) begin // the last pixels word
            stall_counter <= (k - row_length);
        end
        else if (stall_counter > 0)begin
            stall_counter <= stall_counter - 1;
        end
        else begin
            stall_counter <= stall_counter;
        end
    end 

      assign stall= (stall_counter > 0)? 1 : 0;

//    //for adr2 in range(1, row_end_fix - row_end_min_fix + 1, pixels_in_row):
//    always@(posedge clk) begin
//        if (reset == 1'b1) begin
//            adr_switch <= 0;  
//        end
//        else if ((loop_adr1_add_end == 1'b1) && (row_end_fix > row_end_min_fix)) begin
//            adr_switch <= 1;
//        end
//        else if (conv_pixels_add_end == 1'b1) begin //this adr2/adr1 term is over
//            adr_switch <= 0; // next cycle
//        end
//        else begin
//            adr_switch <= adr_switch;
//        end
//    end
    
//    always@(posedge clk) begin
//        if (reset == 1'b1) begin
//            signal_add2 <= 0;  
//        end
//        else if ((loop_adr1_add_end == 1'b1) && (row_end_fix > row_end_min_fix)) begin
//            signal_add2 <= 1;
//        end
//        else if (loop_adr2_add_end == 1'b1) begin //this adr2 term is over
//            signal_add2 <= 0;
//        end
//        else begin
//            signal_add2 <= signal_add2;
//        end
//    end  
    
//    always@(posedge clk) begin
//        if (reset == 1'b1) begin
//            adr2 <= 1;
//            reg_from_2 <= 0;
//        end
//        else if (loop_adr1_add_end == 1'b1) begin //initial
//            adr2 <= 1;
//            reg_from_2 <= reg_to + 1;
//        end
//        else if ((loop_adr2_add_begin == 1'b1) && (loop_adr2_add_end == 1'b0)) begin // never reach
//            adr2 <= adr2 + pixels_in_row;
//            reg_from_2 <= reg_from_2 + pixels_in_row;
//        end
//        else begin
//            adr2 <= adr2;
//            reg_from_2 <= reg_from_2;
//        end
//    end  
    
//    assign reg_to_2 = (row_start_idx + pixels_in_row_minus_1 > row_end)? 
//                     (reg_from_2 + row_end - row_start_idx):
//                     reg_from_2 + pixels_in_row_minus_1;
    
//    assign loop_adr2_add_begin = signal_add2;
//    assign loop_adr2_add_end = loop_adr2_add_begin && ((adr2 + pixels_in_row) > (row_end_fix - row_end_min_fix));
                  
    //output
//    assign row_start_idx = (adr_switch == 1'b0)? (adr1 + row_start_fix):
//                           (adr_switch == 1'b1)? (adr2 + row_end_min_fix):
//                           16'hffff;
                           
    assign row_start_idx = adr1 + row_start_fix;                       
                           
    assign row_end_idx = row_start_idx + pixels_in_row - 1;
    
    assign west_pad = (row_start_idx == row_start_fix)? left_pad: 0;
    
    assign slab_num = (row_start_idx == row_start_fix)? overlap: 0;
    
//    assign east_pad = (((row_end_min_fix == row_end_fix) && (loop_adr1_add_end == 1'b1))
//                      || (loop_adr2_add_end == 1'b1)) ? right_pad:
//                      0;
    
    assign east_pad = (loop_adr1_add_end == 1'b1) ? right_pad:0;
    
//    assign reg_start_idx = (row_start_idx == row_start_fix)? 1:
//                           (adr_switch == 1'b0)? reg_from:
//                           (adr_switch == 1'b1)? reg_from_2:
//                           16'hffff;
                           
//    assign reg_start_idx = (adr_switch == 1'b0)? reg_from:
//                           (adr_switch == 1'b1)? reg_from_2:
//                           16'hffff;
                           
    assign reg_start_idx = reg_from;
                           
//    assign reg_end_idx = (adr_switch == 1'b0)? (reg_to + east_pad):
//                         (adr_switch == 1'b1)? (reg_to_2 + east_pad):
//                         16'hffff;

    assign reg_end_idx = reg_to + east_pad;
    
//    assign conv_pixels_add_end = ((row_end_min_fix == row_end_fix) && (loop_adr1_add_end == 1'b1))
//                       || (loop_adr2_add_end == 1'b1);
    
    assign conv_pixels_add_end = (loop_adr1_add_end == 1'b1);
    
//    assign conv_min_pixels_add_end = loop_adr1_add_end;

endmodule
