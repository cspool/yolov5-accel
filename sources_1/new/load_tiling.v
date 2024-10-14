`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 09:41:55 AM
// Design Name: 
// Module Name: load_tiling
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


module load_tiling(
ix_init, iy_init, nif_init,
k_init, s_init, p_init,
clk, en, reset, //en means initial finish
nif_in_2pow_init,
ix_in_2pow_init,
buf_depth_2pow_init,

word_lenth_mult_word_num_mult_spare_num, word_num_mult_spare_num

    );
    
    parameter sa_row_num = 4; //how many rows in conv core
    parameter sa_column_num = 3; //how many columns in conv core

    parameter pixels_in_row = 32;
    parameter pixels_in_row_in_2pow = 5;
    parameter buffers_num = sa_column_num;
    
    input [3:0] k_init, s_init, p_init;
    
    input [15:0] ix_init, iy_init, nif_init;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    input [3:0] nif_in_2pow_init, ix_in_2pow_init, buf_depth_2pow_init;
    
    reg [3:0] k, s, p;
    
    reg [15:0] ix, iy, nif;
    
    reg [3:0] nif_in_2pow, ix_in_2pow, buf_depth_2pow;

    
    input [15:0] word_lenth_mult_word_num_mult_spare_num, word_num_mult_spare_num;
    
    //loop tif
    reg signal_add;
    reg [15:0] tif;
    wire loop_load_tif_add_begin, loop_load_tif_add_end;
    
    //loop bufx
    reg [15:0] bufx;
    wire loop_load_bufx_add_begin, loop_load_bufx_add_end;
    
    //loop siy
    reg [15:0] siy;
    wire loop_load_siy_add_begin, loop_load_siy_add_end;
    
    //loop spare num
    reg [15:0] sparex;
    wire loop_load_sparex_add_begin, loop_load_sparex_add_end;
    
    //loop tix
    reg [15:0] tix;
    wire loop_load_tix_add_begin, loop_load_tix_add_end;
    
    //loop tiy
    reg [15:0] tiy;
    wire loop_load_tiy_add_begin, loop_load_tiy_add_end;
    
    wire [15:0] load_row_idx, load_row_start_idx, load_row_end_idx, load_if_idx;
    wire [15:0] ix_mask;
    
    assign ix_mask = 16'hffff >> (16 - ix_in_2pow);
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin //set
            k <= k_init; 
            s <= s_init; 
            p <= p_init;
    
            ix <= ix_init; 
            iy <= iy_init;
            nif <= nif_init;
    
            nif_in_2pow <= nif_in_2pow_init;
            ix_in_2pow <= ix_in_2pow_init;
            buf_depth_2pow <= buf_depth_2pow_init;
        end
        else begin
            k <= k; 
            s <= s; 
            p <= p;
    
            ix <= ix; 
            iy <= iy;
            nif <= nif;
    
            nif_in_2pow <= nif_in_2pow;
            ix_in_2pow <= ix_in_2pow;
            buf_depth_2pow <= buf_depth_2pow;
            
        end
   end
   
   always@(posedge clk) begin
        if (reset == 1'b1) begin
            signal_add <= 0;
        end
        else if (en == 1'b1) begin
            signal_add <= 1;
        end
        else if (loop_load_tiy_add_end == 1'b1) begin // load end
            signal_add <= 0;
        end
        else begin
            signal_add <= signal_add;
        end
    end
    
    //loop tif
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tif <= 1;
       end
       else if((loop_load_tif_add_begin == 1'b1))begin
           if(loop_load_tif_add_end == 1'b1) begin
              tif <= 1;
           end
           else begin
              tif <= tif + 1; 
           end
       end
       else begin
            tif <= tif;
       end
    end
    
    assign loop_load_tif_add_begin = (signal_add == 1'b1);
    
    assign loop_load_tif_add_end = loop_load_tif_add_begin 
    && (tif == nif);   
    
    //loop bufx
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           bufx <= 1;
       end
       else if((loop_load_bufx_add_begin == 1'b1))begin
           if(loop_load_bufx_add_end == 1'b1) begin
              bufx <= 1;
           end
           else begin
              bufx <= bufx + 1; 
           end
       end
       else begin
            bufx <= bufx;
       end
    end
    
    assign loop_load_bufx_add_begin = (loop_load_tif_add_end == 1'b1);
    
    assign loop_load_bufx_add_end = loop_load_bufx_add_begin 
    && ((bufx == buffers_num) || (load_row_idx == iy));  
    
    //loop siy
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           siy <= 1;
       end
       else if((loop_load_siy_add_begin == 1'b1))begin
           if(loop_load_siy_add_end == 1'b1) begin
              siy <= 1;
           end
           else begin
              siy <= siy + 1; 
           end
       end
       else begin
            siy <= siy;
       end
    end
    
    assign loop_load_siy_add_begin = (loop_load_bufx_add_end == 1'b1);
    
    assign loop_load_siy_add_end = loop_load_siy_add_begin 
    && ((siy == {{12'b0},s}) || (load_row_idx == iy));  
   
    //loop spare num
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           sparex <= 1;
       end
       else if((loop_load_sparex_add_begin == 1'b1))begin
           if(loop_load_sparex_add_end == 1'b1) begin
              sparex <= 1;
           end
           else begin
              sparex <= sparex + 1; 
           end
       end
       else begin
            sparex <= sparex;
       end
    end
    
    assign loop_load_sparex_add_begin = (loop_load_siy_add_end == 1'b1);
    
    assign loop_load_sparex_add_end = loop_load_sparex_add_begin 
    && ((sparex == word_num_mult_spare_num) || (load_row_end_idx == ix)); 
   
    //loop tix
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tix <= 1;
       end
       else if((loop_load_tix_add_begin == 1'b1))begin
           if(loop_load_tix_add_end == 1'b1) begin
              tix <= 1;
           end
           else begin
              tix <= tix + word_lenth_mult_word_num_mult_spare_num; 
           end
       end
       else begin
            tix <= tix;
       end
    end
    
    assign loop_load_tix_add_begin = (loop_load_sparex_add_end == 1'b1);
    
    assign loop_load_tix_add_end = loop_load_tix_add_begin 
    && ((tix + word_lenth_mult_word_num_mult_spare_num - 1) >= ix); 
   
   
    //loop tiy
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tiy <= 1;
       end
       else if((loop_load_tiy_add_begin == 1'b1))begin
           if(loop_load_tiy_add_end == 1'b1) begin
              tiy <= 1;
           end
           else begin
              tiy <= tiy + s + (s << 1); 
           end
       end
       else begin
            tiy <= tiy;
       end
    end
    
    assign loop_load_tiy_add_begin = (loop_load_tix_add_end == 1'b1);
    
    assign loop_load_tiy_add_end = loop_load_tiy_add_begin 
    && (((tiy + s + (s << 1) - 1) >= iy) || (load_row_idx == iy)); 
    
    
    assign load_row_idx = tiy + (siy << 1) + siy - 3 + bufx - 1;
    
    assign load_row_start_idx = tix + (sparex << pixels_in_row_in_2pow) - pixels_in_row;
    
    assign load_row_end_idx = (load_row_start_idx + word_lenth_mult_word_num_mult_spare_num - 1) & ix_mask;
    
    assign load_if_idx = tif;
    
endmodule
