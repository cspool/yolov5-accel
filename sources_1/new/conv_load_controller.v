`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 04:51:13 PM
// Design Name: 
// Module Name: conv_load_controller
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


module conv_load_controller(
ix_init, iy_init, nif_init,
k_init, s_init, p_init,
clk, load_ddr_start, reset,
load_ddr_continue,
nif_in_2pow_init,
ix_in_2pow_init,
buf_depth_in_row_2pow_init,

word_lenth_mult_word_num_mult_spare_num, word_num_mult_spare_num,
valid_load_data,

//ddr info
load_row_idx_ddr,
load_row_start_idx_ddr, 
load_row_end_idx_ddr,
load_if_start_idx_ddr, 
load_if_end_idx_ddr,

load_ddr_adr,

//buf info
load_buf_idx,
load_row_idx_in_3_buf, 
load_row_idx_buf,
load_row_start_idx_buf, 
load_row_end_idx_buf,
load_if_start_idx_buf, 
load_if_end_idx_buf,

load_buf_adr,
    
load_tile_fin,
    
load_tile0_fin,
load_tileN_fin
    );
    
    parameter sa_row_num = 4; //how many rows in conv core
    parameter sa_column_num = 3; //how many columns in conv core

    parameter pixels_in_row = 32;
    parameter pixels_in_row_in_2pow = 5;
    parameter buffers_num = sa_column_num;
    
    parameter ddr_load_ratio = 2;
    
    parameter ifs_in_row_2pow = 1;
    
    input [3:0] k_init, s_init, p_init;
    
    input [15:0] ix_init, iy_init, nif_init;
    
    input clk, load_ddr_start, reset;
    
    input load_ddr_continue; //str_fin
    
    input [3:0] nif_in_2pow_init, ix_in_2pow_init, buf_depth_in_row_2pow_init;
    
    reg [3:0] k, s, p;
    
    reg [15:0] ix, iy, nif;
    
    reg [3:0] nif_in_2pow, ix_in_2pow, buf_depth_in_row_2pow;

    input [15:0] word_lenth_mult_word_num_mult_spare_num, word_num_mult_spare_num;

    input valid_load_data;
    
    //ddr controller
    //loop tif
    reg signal_add;
    reg [15:0] tif_ddr;
    wire loop_load_tif_ddr_add_begin, loop_load_tif_ddr_add_end;
    
    //loop spare num
    reg [15:0] sparex_ddr;
    wire loop_load_sparex_ddr_add_begin, loop_load_sparex_ddr_add_end;
    
    //loop bufy
    reg [15:0] bufy_ddr;
    wire loop_load_bufy_ddr_add_begin, loop_load_bufy_ddr_add_end;
    
    //loop siy
    reg [15:0] siy_ddr;
    wire loop_load_siy_ddr_add_begin, loop_load_siy_ddr_add_end;
    
    //loop tix
    reg [15:0] tix_ddr;
    wire loop_load_tix_ddr_add_begin, loop_load_tix_ddr_add_end;
    
    //loop tiy
    reg [15:0] row_counter_3s_ddr;
    reg [15:0] tiy_ddr;
    wire loop_load_tiy_ddr_add_begin, loop_load_tiy_ddr_add_end;
    
    output [15:0] load_row_idx_ddr; 
    output [15:0] load_row_start_idx_ddr, load_row_end_idx_ddr;
    output [15:0] load_if_start_idx_ddr, load_if_end_idx_ddr;
    
    output [15:0] load_ddr_adr;
    
    //load stall
    reg load_tile_ddr_stall;
    
    //loop tif
    reg [15:0] tif_buf;
    wire loop_load_tif_buf_add_begin, loop_load_tif_buf_add_end;
    
    //loop spare num
    reg [15:0] sparex_buf;
    wire loop_load_sparex_buf_add_begin, loop_load_sparex_buf_add_end;
    
    //loop bufy
    reg [1:0] bufy_buf;
    wire loop_load_bufy_buf_add_begin, loop_load_bufy_buf_add_end;
    
    //loop siy
    reg [15:0] siy_buf;
    wire loop_load_siy_buf_add_begin, loop_load_siy_buf_add_end;
    
    //loop tix
    reg [15:0] tix_buf;
    wire loop_load_tix_buf_add_begin, loop_load_tix_buf_add_end;
    
    //loop tiy
    reg [15:0] row_counter_3s_buf;
    reg [15:0] tiy_buf;
    wire loop_load_tiy_buf_add_begin, loop_load_tiy_buf_add_end;
    
    output [1:0] load_buf_idx;
    output [15:0] load_row_idx_in_3_buf, load_row_idx_buf;
    output [15:0] load_row_start_idx_buf, load_row_end_idx_buf;
    output [15:0] load_if_start_idx_buf, load_if_end_idx_buf;
    
    output [15:0] load_buf_adr;
    
    output load_tile_fin;
    
    output load_tile0_fin, load_tileN_fin;
   
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            load_tile_ddr_stall <= 0;
        end
        else if (load_tileN_fin == 1'b1) begin
            load_tile_ddr_stall <= 1;
        end
        else if (load_ddr_continue == 1'b1) begin
            load_tile_ddr_stall <= 0;
        end
        else begin
            load_tile_ddr_stall <= load_tile_ddr_stall;
        end
    end
    
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
            buf_depth_in_row_2pow <= buf_depth_in_row_2pow_init;
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
            buf_depth_in_row_2pow <= buf_depth_in_row_2pow;
            
        end
   end
   
   always@(posedge clk) begin
        if (reset == 1'b1) begin
            signal_add <= 0;
        end
        else if (load_ddr_start == 1'b1) begin
            signal_add <= 1;
        end
        else if (loop_load_tiy_ddr_add_end == 1'b1) begin // load end
            signal_add <= 0;
        end
        else begin
            signal_add <= signal_add;
        end
    end
    
    //loop tif_ddr
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tif_ddr <= 1;
       end
       else if((loop_load_tif_ddr_add_begin == 1'b1))begin
           if(loop_load_tif_ddr_add_end == 1'b1) begin
              tif_ddr <= 1;
           end
           else begin
              tif_ddr <= tif_ddr + ddr_load_ratio; 
           end
       end
       else begin
            tif_ddr <= tif_ddr;
       end
    end
    
    assign loop_load_tif_ddr_add_begin = (signal_add == 1'b1) && (load_tile_ddr_stall == 1'b0);
    
    assign loop_load_tif_ddr_add_end = loop_load_tif_ddr_add_begin 
    && ((tif_ddr + ddr_load_ratio - 1) >= nif);   
    
    //loop spare_ddr num
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           sparex_ddr <= 1;
       end
       else if((loop_load_sparex_ddr_add_begin == 1'b1))begin
           if(loop_load_sparex_ddr_add_end == 1'b1) begin
              sparex_ddr <= 1;
           end
           else begin
              sparex_ddr <= sparex_ddr + 1; 
           end
       end
       else begin
            sparex_ddr <= sparex_ddr;
       end
    end
    
    assign loop_load_sparex_ddr_add_begin = (loop_load_tif_ddr_add_end == 1'b1);
    
    assign loop_load_sparex_ddr_add_end = loop_load_sparex_ddr_add_begin 
    && ((sparex_ddr == word_num_mult_spare_num) || (load_row_end_idx_ddr == ix)); 
    
    //loop bufy_ddr
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           bufy_ddr <= 1;
       end
       else if((loop_load_bufy_ddr_add_begin == 1'b1))begin
           if(loop_load_bufy_ddr_add_end == 1'b1) begin
              bufy_ddr <= 1;
           end
           else begin
              bufy_ddr <= bufy_ddr + 1; 
           end
       end
       else begin
            bufy_ddr <= bufy_ddr;
       end
    end
    
    assign loop_load_bufy_ddr_add_begin = (loop_load_sparex_ddr_add_end == 1'b1);
    
    assign loop_load_bufy_ddr_add_end = loop_load_bufy_ddr_add_begin 
    && ((bufy_ddr == buffers_num) || (load_row_idx_ddr == iy));  
    
    //loop siy
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           siy_ddr <= 1;
       end
       else if((loop_load_siy_ddr_add_begin == 1'b1))begin
           if(loop_load_siy_ddr_add_end == 1'b1) begin
              siy_ddr <= 1;
           end
           else begin
              siy_ddr <= siy_ddr + 1; 
           end
       end
       else begin
            siy_ddr <= siy_ddr;
       end
    end
    
    assign loop_load_siy_ddr_add_begin = (loop_load_bufy_ddr_add_end == 1'b1);
    
    assign loop_load_siy_ddr_add_end = loop_load_siy_ddr_add_begin 
    && ((siy_ddr == {{12'b0},s}) || (load_row_idx_ddr == iy));  
   
    
   
    //loop tix_ddr
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tix_ddr <= 1;
       end
       else if((loop_load_tix_ddr_add_begin == 1'b1))begin
           if(loop_load_tix_ddr_add_end == 1'b1) begin
              tix_ddr <= 1;
           end
           else begin
              tix_ddr <= tix_ddr + word_lenth_mult_word_num_mult_spare_num; 
           end
       end
       else begin
            tix_ddr <= tix_ddr;
       end
    end
    
    assign loop_load_tix_ddr_add_begin = (loop_load_siy_ddr_add_end == 1'b1);
    
    assign loop_load_tix_ddr_add_end = loop_load_tix_ddr_add_begin 
    && ((tix_ddr + word_lenth_mult_word_num_mult_spare_num - 1) >= ix); 
   
   
    //loop tiy_ddr
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tiy_ddr <= 1;
           row_counter_3s_ddr <= 0;
       end
       else if((loop_load_tiy_ddr_add_begin == 1'b1))begin
           if(loop_load_tiy_ddr_add_end == 1'b1) begin
              tiy_ddr <= 1;
              row_counter_3s_ddr <= 0;
           end
           else begin
              tiy_ddr <= tiy_ddr + s + (s << 1); 
              row_counter_3s_ddr <= row_counter_3s_ddr + 1;
           end
       end
       else begin
            tiy_ddr <= tiy_ddr;
            row_counter_3s_ddr <= row_counter_3s_ddr;
       end
    end
    
    assign loop_load_tiy_ddr_add_begin = (loop_load_tix_ddr_add_end == 1'b1);
    
    assign loop_load_tiy_ddr_add_end = loop_load_tiy_ddr_add_begin 
    && (((tiy_ddr + s + (s << 1) - 1) >= iy) || (load_row_idx_ddr == iy)); 
    
    //load ddr adr
    //0,1,2,3...
    assign load_row_idx_ddr = tiy_ddr - 1 + (siy_ddr << 1) + siy_ddr - 3 + bufy_ddr - 1;
    
    assign load_row_start_idx_ddr = tix_ddr - 1 + (sparex_ddr << pixels_in_row_in_2pow) - pixels_in_row;
    
    assign load_row_end_idx_ddr = (load_row_start_idx_ddr + word_lenth_mult_word_num_mult_spare_num - 1) >= ix ?
                              ix - 1:
                              (load_row_start_idx_ddr + word_lenth_mult_word_num_mult_spare_num - 1);
    
    assign load_if_start_idx_ddr = tif_ddr;
    
    assign load_if_end_idx_ddr = (load_if_start_idx_ddr + ddr_load_ratio - 1) > nif ?
                             nif:
                             (load_if_start_idx_ddr + ddr_load_ratio - 1);
    
    assign load_ddr_adr =  ((load_row_idx_ddr << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
                        + ((load_row_start_idx_ddr << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
                        + ((load_if_start_idx_ddr - 1) >> ifs_in_row_2pow);
    
    //load to buf
    //loop tif_buf
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tif_buf <= 1;
       end
       else if((loop_load_tif_buf_add_begin == 1'b1))begin
           if(loop_load_tif_buf_add_end == 1'b1) begin
              tif_buf <= 1;
           end
           else begin
              tif_buf <= tif_buf + ddr_load_ratio; 
           end
       end
       else begin
            tif_buf <= tif_buf;
       end
    end
    
    assign loop_load_tif_buf_add_begin = (valid_load_data == 1'b1);
    
    assign loop_load_tif_buf_add_end = loop_load_tif_buf_add_begin 
    && ((tif_buf + ddr_load_ratio - 1) >= nif);   
    
    //loop spare_buf num
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           sparex_buf <= 1;
       end
       else if((loop_load_sparex_buf_add_begin == 1'b1))begin
           if(loop_load_sparex_buf_add_end == 1'b1) begin
              sparex_buf <= 1;
           end
           else begin
              sparex_buf <= sparex_buf + 1; 
           end
       end
       else begin
            sparex_buf <= sparex_buf;
       end
    end
    
    assign loop_load_sparex_buf_add_begin = (loop_load_tif_buf_add_end == 1'b1);
    
    assign loop_load_sparex_buf_add_end = loop_load_sparex_buf_add_begin 
    && ((sparex_buf == word_num_mult_spare_num) || (load_row_end_idx_buf == ix)); 
    
    //loop bufy_buf
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           bufy_buf <= 1;
       end
       else if((loop_load_bufy_buf_add_begin == 1'b1))begin
           if(loop_load_bufy_buf_add_end == 1'b1) begin
              bufy_buf <= 1;
           end
           else begin
              bufy_buf <= bufy_buf + 1; 
           end
       end
       else begin
            bufy_buf <= bufy_buf;
       end
    end
    
    assign loop_load_bufy_buf_add_begin = (loop_load_sparex_buf_add_end == 1'b1);
    
    assign loop_load_bufy_buf_add_end = loop_load_bufy_buf_add_begin 
    && ((bufy_buf == buffers_num) || (load_row_idx_buf == iy));  
    
    //loop siy
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           siy_buf <= 1;
       end
       else if((loop_load_siy_buf_add_begin == 1'b1))begin
           if(loop_load_siy_buf_add_end == 1'b1) begin
              siy_buf <= 1;
           end
           else begin
              siy_buf <= siy_buf + 1; 
           end
       end
       else begin
            siy_buf <= siy_buf;
       end
    end
    
    assign loop_load_siy_buf_add_begin = (loop_load_bufy_buf_add_end == 1'b1);
    
    assign loop_load_siy_buf_add_end = loop_load_siy_buf_add_begin 
    && ((siy_buf == {{12'b0},s}) || (load_row_idx_buf == iy));  
   
    
   
    //loop tix_buf
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tix_buf <= 1;
       end
       else if((loop_load_tix_buf_add_begin == 1'b1))begin
           if(loop_load_tix_buf_add_end == 1'b1) begin
              tix_buf <= 1;
           end
           else begin
              tix_buf <= tix_buf + word_lenth_mult_word_num_mult_spare_num; 
           end
       end
       else begin
            tix_buf <= tix_buf;
       end
    end
    
    assign loop_load_tix_buf_add_begin = (loop_load_siy_buf_add_end == 1'b1);
    
    assign loop_load_tix_buf_add_end = loop_load_tix_buf_add_begin 
    && ((tix_buf + word_lenth_mult_word_num_mult_spare_num - 1) >= ix); 
   
   
    //loop tiy_buf
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tiy_buf <= 1;
           row_counter_3s_buf <= 0;
       end
       else if((loop_load_tiy_buf_add_begin == 1'b1))begin
           if(loop_load_tiy_buf_add_end == 1'b1) begin
              tiy_buf <= 1;
              row_counter_3s_buf <= 0;
           end
           else begin
              tiy_buf <= tiy_buf + s + (s << 1); 
              row_counter_3s_buf <= row_counter_3s_buf + 1;
           end
       end
       else begin
            tiy_buf <= tiy_buf;
            row_counter_3s_buf <= row_counter_3s_buf;
       end
    end
    
    assign loop_load_tiy_buf_add_begin = (loop_load_tix_buf_add_end == 1'b1);
    
    assign loop_load_tiy_buf_add_end = loop_load_tiy_buf_add_begin 
    && (((tiy_buf + s + (s << 1) - 1) >= iy) || (load_row_idx_buf == iy)); 
    
    
    // load_buf_adr
    //0,1,2,3,...
    assign load_row_idx_in_3_buf = (s == 4'd1)? (1 - 1 + row_counter_3s_buf + siy_buf - 1):
                            (s == 4'd2)? (1 - 1 + (row_counter_3s_buf << 1) + siy_buf - 1):
                            0;
                            
    assign load_buf_idx = bufy_buf;                        
    
    assign load_row_idx_buf = tiy_buf - 1 + (siy_buf << 1) + siy_buf - 3 + bufy_buf - 1;
    
    assign load_row_start_idx_buf = tix_buf - 1 + (sparex_buf << pixels_in_row_in_2pow) - pixels_in_row;
    
    assign load_row_end_idx_buf = (load_row_start_idx_buf + word_lenth_mult_word_num_mult_spare_num - 1) >= ix ?
                              ix - 1:
                              (load_row_start_idx_buf + word_lenth_mult_word_num_mult_spare_num - 1);
    
    assign load_if_start_idx_buf = tif_buf;
    
    assign load_if_end_idx_buf = (tif_buf + ddr_load_ratio - 1) > nif ?
                             nif :
                             (tif_buf + ddr_load_ratio - 1);
    
    assign load_buf_adr =  ((load_row_idx_in_3_buf << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
                        + ((load_row_start_idx_buf << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
                        + ((load_if_start_idx_buf - 1) >> ifs_in_row_2pow);
                             
    //load ddr word counter
    assign load_tile_fin = (loop_load_siy_buf_add_end == 1'b1);
    
    assign load_tile0_fin = (loop_load_siy_buf_add_end == 1'b1) && (tiy_buf == 16'd1) && (tix_buf == 16'd1);
    
    assign load_tileN_fin = (loop_load_siy_buf_add_end == 1'b1) && (tiy_buf > 16'd1) && (tix_buf > 16'd1);
    
endmodule

