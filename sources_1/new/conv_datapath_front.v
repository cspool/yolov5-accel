`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/24 17:24:37
// Design Name: 
// Module Name: conv_datapath_front
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


module conv_datapath_front(
of, ox, oy, ix, iy, nif,
k, s, p,
clk, en, reset,
nif_in_2pow,
ix_in_2pow,
mode,
nif_mult_k_mult_k,

//channel_out_reset, channel_out_en,

out_row1_channel_set1, // pox res per channel
out_row1_channel_set2, // pox res per channel
out_row1_channel_set3, // pox res per channel
out_row1_channel_set4, // pox res per channel
out_row2_channel_set1, // pox res per channel
out_row2_channel_set2, // pox res per channel
out_row2_channel_set3, // pox res per channel
out_row2_channel_set4, // pox res per channel
out_row3_channel_set1, // pox res per channel
out_row3_channel_set2, // pox res per channel
out_row3_channel_set3, // pox res per channel
out_row3_channel_set4 // pox res per channel
    );
    
            parameter row_num = 16;
parameter column_num = 16; 
    parameter pixels_in_row = 32;
    parameter pixels_in_row_in_2pow = 5;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter buffers_num_minus_1 = buffers_num-1;
   parameter shift_regs_num = 70;
   
   parameter weights_in_row = row_num * 4; // 8bit
    parameter weight_row_length = weights_in_row * 8;

    parameter headroom = 8;

parameter pixel_width_88 = 16 + headroom;
//parameter pixel_width_18 = 10 + headroom;
parameter pixel_width_18 = 8 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18; // width of 18 is bigger than 88

parameter row_counter_width = ($clog2(row_num+1));

parameter out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;


    //cv router wire
    input mode;
    
    input [31:0] nif_mult_k_mult_k;
    
    input [3:0] k, s, p;
    
    input [15:0] of, ox, oy, ix, iy, nif;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    input [15:0] nif_in_2pow, ix_in_2pow;
    
    wire [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx; //tile info
    
    wire [pixels_in_row*8-1:0] re_row1_pixels, re_row2_pixels, re_row3_pixels;
    
    wire [3:0] west_pad, slab_num, east_pad;
    wire [15:0] row1_idx, row2_idx, row3_idx;
    
    wire [15:0] row_start_idx, row_end_idx;
    wire [15:0] reg_start_idx, reg_end_idx;
    
    wire conv_end;
    wire conv_pixels_add_end;
    
    wire [15:0] row1_buf_adr;
    wire [1:0] row1_buf_idx;
    
    wire [15:0] row2_buf_adr;
    wire [1:0] row2_buf_idx;
    
    wire [15:0] row3_buf_adr;
    wire [1:0] row3_buf_idx;
    
    wire [15:0] row_slab_start_idx;
    
    wire valid_row1_adr, valid_row2_adr, valid_row3_adr;
    
    //cv_bram_handler wire
    
    wire [15:0] buf1_adr;
    wire [15:0] buf2_adr;
    wire [15:0] buf3_adr;
    
    wire [pixels_in_row * 8 - 1: 0] buf1_pixels_32;
    wire [pixels_in_row * 8 - 1: 0] buf2_pixels_32;
    wire [pixels_in_row * 8 - 1: 0] buf3_pixels_32;
    
    wire [15:0] row1_slab_adr;
    wire [1:0] row1_slab_idx;
    wire [15:0] row2_slab_adr;
    wire [1:0] row2_slab_idx;
    wire [15:0] row3_slab_adr;
    wire [1:0] row3_slab_idx;
    
    wire [15:0] slab1_pixels_2;
    wire [15:0] slab2_pixels_2;
    wire [15:0] slab3_pixels_2;
    
    wire [15:0] slab1_adr;
    wire [15:0] slab2_adr;
    wire [15:0] slab3_adr;
    
    wire valid_mem1_adr, valid_mem2_adr, valid_mem3_adr;
    
    wire [15:0] last_row1_slab_2;
    wire [15:0] last_row2_slab_2;
    wire [15:0] last_row3_slab_2;
    
    //slab write
    wire [15:0] slab1_adr_wr;
    wire [15:0] slab2_adr_wr;
    wire [15:0] slab3_adr_wr;
    
    wire [15:0] slab1_pixels_2_wr;
    wire [15:0] slab2_pixels_2_wr;
    wire [15:0] slab3_pixels_2_wr;
    
    wire valid_slab1_adr_wr, valid_slab2_adr_wr, valid_slab3_adr_wr;
        
    //in buf handler
    
    //row regs
    wire [shift_regs_num * 8 -1 : 0] row_regs_1;
    wire [shift_regs_num * 8 -1 : 0] row_regs_2;
    wire [shift_regs_num * 8 -1 : 0] row_regs_3;
    wire shift_start;
        
    //shift regs
    wire [pixels_in_row * 8 - 1: 0] last_row1_pixels_32, last_row2_pixels_32, last_row3_pixels_32;
    wire re_fm_en, re_fm_end;
    
    //weight buf
    wire [weight_row_length-1 : 0] weights_vector; //(16 * 4) * 8 or (32 * 4) * 1
    
    //delay regs pixels
    wire [column_num*16-1:0] delay_row1_pixels, delay_row2_pixels, delay_row3_pixels;
    
    //delay regs weights
    wire [row_num*8-1:0] delay_weights_1, delay_weights_2, delay_weights_3, delay_weights_4;
    
    //sa
    reg pixels_counter_signal;
    reg [31:0] pixels_counter;
    wire loop_pixels_counter_add_begin, loop_pixels_counter_add_end;
    
    reg sa_en;
    reg channel_out_reset, channel_out_en; //need logic
    
    reg sa_counter_signal;
    reg [5:0] sa_counter;
    wire loop_sa_counter_add_begin, loop_sa_counter_add_end;
    output [out_width - 1: 0] out_row1_channel_set1; // pox res per channel
    output [out_width - 1: 0] out_row1_channel_set2; // pox res per channel
    output [out_width - 1: 0] out_row1_channel_set3; // pox res per channel
    output [out_width - 1: 0] out_row1_channel_set4; // pox res per channel
    output [out_width - 1: 0] out_row2_channel_set1; // pox res per channel
    output [out_width - 1: 0] out_row2_channel_set2; // pox res per channel
    output [out_width - 1: 0] out_row2_channel_set3; // pox res per channel
    output [out_width - 1: 0] out_row2_channel_set4; // pox res per channel
    output [out_width - 1: 0] out_row3_channel_set1; // pox res per channel
    output [out_width - 1: 0] out_row3_channel_set2; // pox res per channel
    output [out_width - 1: 0] out_row3_channel_set3; // pox res per channel
    output [out_width - 1: 0] out_row3_channel_set4; // pox res per channel
    
    conv_router_v2 cv_router(
        .mode(mode),
        .of(of),
        .ox(ox), 
        .oy(oy), 
        .ix(ix), 
        .iy(iy),
        .nif(nif),
        .k(k), 
        .s(s), 
        .p(p),
        .clk(clk), 
        .en(en), 
        .reset(reset),
        .nif_in_2pow(nif_in_2pow), 
        .ix_in_2pow(ix_in_2pow),
        
        .loop_sa_counter_add_end(loop_sa_counter_add_end),
        
        .ox_start(ox_start), 
        .oy_start(oy_start), 
        .pox(pox), 
        .poy(poy),
        .of_start(of_start), 
        .pof(pof), 
        .if_idx(if_idx),
        
        .row_slab_start_idx(row_slab_start_idx),
        
        .west_pad(west_pad), 
        .slab_num(slab_num), 
        .east_pad(east_pad),
        
        .row1_idx(row1_idx), 
        .row2_idx(row2_idx), 
        .row3_idx(row3_idx), 
        
        .row_start_idx(row_start_idx), 
        .row_end_idx(row_end_idx),
        
        .reg_start_idx(reg_start_idx), 
        .reg_end_idx(reg_end_idx),
        
        .conv_end(conv_end),
        .conv_pixels_add_end(conv_pixels_add_end),
        
        .row1_buf_adr(row1_buf_adr),
        .row1_buf_idx(row1_buf_idx),
        .row2_buf_adr(row2_buf_adr),
        .row2_buf_idx(row2_buf_idx),
        .row3_buf_adr(row3_buf_adr),
        .row3_buf_idx(row3_buf_idx),
    
        .row1_slab_adr(row1_slab_adr),
        .row1_slab_idx(row1_slab_idx),
        .row2_slab_adr(row2_slab_adr),
        .row2_slab_idx(row2_slab_idx),
        .row3_slab_adr(row3_slab_adr),
        .row3_slab_idx(row3_slab_idx),
        
        .valid_row1_adr(valid_row1_adr),
        .valid_row2_adr(valid_row2_adr),
        .valid_row3_adr(valid_row3_adr)
    );
    
     //last regs
    reg [3:0] last_west_pad, last_slab_num, last_east_pad;
    reg [15:0] last_row1_idx, last_row2_idx, last_row3_idx;

    reg [15:0] last_row_start_idx, last_row_end_idx;
    
    reg [15:0] last_reg_start_idx, last_reg_end_idx;
    
    reg state_valid_row1_adr, state_valid_row2_adr, state_valid_row3_adr;
    
    reg state_conv_pixels_add_end;
    
    reg [1:0] last_row1_buf_idx;
    reg [1:0] last_row2_buf_idx;
    reg [1:0] last_row3_buf_idx;
    
    reg [1:0] last_row1_slab_idx;
    reg [1:0] last_row2_slab_idx;
    reg [1:0] last_row3_slab_idx;
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            state_conv_pixels_add_end <= 0;  
            state_valid_row1_adr <= 0; 
            state_valid_row2_adr <= 0;  
            state_valid_row3_adr <= 0;  
            last_west_pad <= 0; 
            last_slab_num <= 0;
            last_east_pad <= 0; 
            last_row1_idx <= 16'hffff;
            last_row2_idx <= 16'hffff;
            last_row3_idx <= 16'hffff;
            last_row_start_idx <= 16'hffff;
            last_row_end_idx <= 16'hffff;
            last_reg_start_idx <= 16'hffff;
            last_reg_end_idx <= 16'hffff;
            last_row1_buf_idx <= 0;
            last_row2_buf_idx <= 0;
            last_row3_buf_idx <= 0;
    
            last_row1_slab_idx <= 0;
            last_row2_slab_idx <= 0;
            last_row3_slab_idx <= 0;
        end
        else begin
            state_conv_pixels_add_end <= conv_pixels_add_end;
            state_valid_row1_adr <= valid_row1_adr;
            state_valid_row2_adr <= valid_row2_adr;
            state_valid_row3_adr <= valid_row3_adr;
            last_west_pad <= west_pad; 
            last_slab_num <= slab_num;
            last_east_pad <= east_pad;
            last_row1_idx <= row1_idx;
            last_row2_idx <= row2_idx;
            last_row3_idx <= row3_idx;
            last_row_start_idx <= row_start_idx;
            last_row_end_idx <= row_end_idx;
            last_reg_start_idx <= reg_start_idx;
            last_reg_end_idx <= reg_end_idx;
            
            last_row1_buf_idx <= row1_buf_idx;
            last_row2_buf_idx <= row2_buf_idx;
            last_row3_buf_idx <= row3_buf_idx;
    
            last_row1_slab_idx <= row1_slab_idx;
            last_row2_slab_idx <= row2_slab_idx;
            last_row3_slab_idx <= row3_slab_idx;
        end
    end    
    
    Row_Regs row_regs(
        .reset(reset),
        .clk(clk),
        .en(en),
        
        .k(k),
        .s(s),
        
        .last_west_pad(last_west_pad),
        .last_slab_num(last_slab_num),
        .last_east_pad(last_east_pad),
        .last_row1_idx(last_row1_idx), 
        .last_row2_idx(last_row2_idx), 
        .last_row3_idx(last_row3_idx),
        .last_row_start_idx(last_row_start_idx), 
        .last_row_end_idx(last_row_end_idx),
            
        .last_reg_start_idx(last_reg_start_idx), 
        .last_reg_end_idx(last_reg_end_idx),
            
        .last_row1_pixels_32(last_row1_pixels_32), 
        .last_row2_pixels_32(last_row2_pixels_32), 
        .last_row3_pixels_32(last_row3_pixels_32),
        .last_row1_slab_2(last_row1_slab_2), 
        .last_row2_slab_2(last_row2_slab_2), 
        .last_row3_slab_2(last_row3_slab_2),
        
        .state_valid_row1_adr(state_valid_row1_adr),
        .state_valid_row2_adr(state_valid_row2_adr),
        .state_valid_row3_adr(state_valid_row3_adr),
        
        .state_conv_pixels_add_end(state_conv_pixels_add_end),
        
        .row_regs_1(row_regs_1),
        .row_regs_2(row_regs_2),
        .row_regs_3(row_regs_3),
        
        .shift_start(shift_start)
    );
    
    Shift_Regs shift_regs(
        .reset(reset),
        .clk(clk),
        .en(en),
        
        .k(k),
        .s(s),
        
        .row_regs_1(row_regs_1),
        .row_regs_2(row_regs_2),
        .row_regs_3(row_regs_3),
        
        .shift_start(shift_start),
        
        .re_row1_pixels(re_row1_pixels),
        .re_row2_pixels(re_row2_pixels),
        .re_row3_pixels(re_row3_pixels),
        .re_fm_en(re_fm_en),
        .re_fm_end(re_fm_end)
    );
    
        
    conv_bram_handler cv_bram_handler(
        .reset(reset),
        .clk(clk),
        .en(en),
                
        //cycle 0 in
        .valid_row1_adr(valid_row1_adr),
        .valid_row2_adr(valid_row2_adr),
        .valid_row3_adr(valid_row3_adr),

        .row1_buf_adr(row1_buf_adr),
        .row1_buf_idx(row1_buf_idx),
        .row2_buf_adr(row2_buf_adr),
        .row2_buf_idx(row2_buf_idx),
        .row3_buf_adr(row3_buf_adr),
        .row3_buf_idx(row3_buf_idx),
        
        .row1_slab_adr(row1_slab_adr),
        .row1_slab_idx(row1_slab_idx),
        .row2_slab_adr(row2_slab_adr),
        .row2_slab_idx(row2_slab_idx),
        .row3_slab_adr(row3_slab_adr),
        .row3_slab_idx(row3_slab_idx),
        
        //cycle 1 in
        .buf1_pixels_32(buf1_pixels_32),
        .buf2_pixels_32(buf2_pixels_32),
        .buf3_pixels_32(buf3_pixels_32),
        
        .last_row1_buf_idx(last_row1_buf_idx),
        .last_row2_buf_idx(last_row2_buf_idx),
        .last_row3_buf_idx(last_row3_buf_idx),
        
        .slab1_pixels_2(slab1_pixels_2),
        .slab2_pixels_2(slab2_pixels_2),
        .slab3_pixels_2(slab3_pixels_2),
        
        .last_row1_slab_idx(last_row1_slab_idx),
        .last_row2_slab_idx(last_row2_slab_idx),
        .last_row3_slab_idx(last_row3_slab_idx),
        
        //cycle 0 out
        .buf1_adr(buf1_adr),
        .buf2_adr(buf2_adr),
        .buf3_adr(buf3_adr),
        
        .slab1_adr(slab1_adr),
        .slab2_adr(slab2_adr),
        .slab3_adr(slab3_adr),
        
        .valid_mem1_adr(valid_mem1_adr),
        .valid_mem2_adr(valid_mem2_adr),
        .valid_mem3_adr(valid_mem3_adr),
        
        //cycle 1 out
        .last_row1_pixels_32(last_row1_pixels_32),
        .last_row2_pixels_32(last_row2_pixels_32),
        .last_row3_pixels_32(last_row3_pixels_32),
        
        .last_row1_slab_2(last_row1_slab_2),
        .last_row2_slab_2(last_row2_slab_2),
        .last_row3_slab_2(last_row3_slab_2),
        
        //cycle 1 out
        .slab1_adr_wr(slab1_adr_wr),
        .slab2_adr_wr(slab2_adr_wr),
        .slab3_adr_wr(slab3_adr_wr),
        .slab1_pixels_2_wr(slab1_pixels_2_wr),
        .slab2_pixels_2_wr(slab2_pixels_2_wr),
        .slab3_pixels_2_wr(slab3_pixels_2_wr),
        .valid_slab1_adr_wr(valid_slab1_adr_wr),
        .valid_slab2_adr_wr(valid_slab2_adr_wr),
        .valid_slab3_adr_wr(valid_slab3_adr_wr)
    );
    
    ROM1_handler rom1_handler( //in buf 1
        .clk(clk),
        .ena(valid_mem1_adr),
        .s(s),
        .address(buf1_adr),
        .data(buf1_pixels_32)
    );
    
    ROM2_handler rom2_handler(
        .clk(clk),
        .ena(valid_mem2_adr),
        .s(s),
        .address(buf2_adr),
        .data(buf2_pixels_32)
    );
    
    ROM3_handler rom3_handler(
        .clk(clk),
        .ena(valid_mem3_adr),
        .s(s),
        .address(buf3_adr),
        .data(buf3_pixels_32)
    );
    
    slab_1 slab_1 (
      .clka(clk),    // input wire clka
      .ena(valid_slab1_adr_wr),      // input wire ena
      .wea(valid_slab1_adr_wr),      // input wire [0 : 0] wea
      .addra(slab1_adr_wr[14 : 0]),  // input wire [14 : 0] addra
      .dina(slab1_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_mem1_adr),      // input wire enb
      .addrb(slab1_adr[14 : 0]),  // input wire [14 : 0] addrb
      .doutb(slab1_pixels_2)  // output wire [15 : 0] doutb
    );
    
    slab_2 slab_2 (
      .clka(clk),    // input wire clka
      .ena(valid_slab2_adr_wr),      // input wire ena
      .wea(valid_slab2_adr_wr),      // input wire [0 : 0] wea
      .addra(slab2_adr_wr[14 : 0]),  // input wire [14 : 0] addra
      .dina(slab2_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_mem2_adr),      // input wire enb
      .addrb(slab2_adr[14 : 0]),  // input wire [14 : 0] addrb
      .doutb(slab2_pixels_2)  // output wire [15 : 0] doutb
    );
    
    slab_3 slab_3 (
      .clka(clk),    // input wire clka
      .ena(valid_slab3_adr_wr),      // input wire ena
      .wea(valid_slab3_adr_wr),      // input wire [0 : 0] wea
      .addra(slab3_adr_wr[14 : 0]),  // input wire [14 : 0] addra
      .dina(slab3_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_mem3_adr),      // input wire enb
      .addrb(slab3_adr[14 : 0]),  // input wire [14 : 0] addrb
      .doutb(slab3_pixels_2)  // output wire [15 : 0] doutb
    );
    
    cv_weights_handler cv_weights_handler(
        .clk(clk), 
        .reset(reset),
        .re_fm_en(re_fm_en),
        .re_fm_end(re_fm_end),
        .weights_vector(weights_vector)
    
    );
    
    Delay_Regs_Pixels delay_regs_pixels_1(
        .clk(clk), 
        .reset(reset), 
        .re_fm_en(re_fm_en), 
        .re_fm_end(re_fm_end),
        .re_row_pixels(re_row1_pixels),
        .delay_row_pixels(delay_row1_pixels)
    );
    
    Delay_Regs_Pixels delay_regs_pixels_2(
        .clk(clk), 
        .reset(reset), 
        .re_fm_en(re_fm_en), 
        .re_fm_end(re_fm_end),
        .re_row_pixels(re_row2_pixels),
        .delay_row_pixels(delay_row2_pixels)
    );
    
    Delay_Regs_Pixels delay_regs_pixels_3(
        .clk(clk), 
        .reset(reset), 
        .re_fm_en(re_fm_en), 
        .re_fm_end(re_fm_end),
        .re_row_pixels(re_row3_pixels),
        .delay_row_pixels(delay_row3_pixels)
    );
    
    Delay_Regs_Weights delay_regs_weights_1(
        .clk(clk), 
        .reset(reset), 
        .re_fm_en(re_fm_en), 
        .re_fm_end(re_fm_end),
        .weights(weights_vector[(1-1)* row_num * 8 +: (row_num * 8)]),
        .delay_weights(delay_weights_1)
    );
    
    Delay_Regs_Weights delay_regs_weights_2(
        .clk(clk), 
        .reset(reset), 
        .re_fm_en(re_fm_en), 
        .re_fm_end(re_fm_end),
        .weights(weights_vector[(2-1)* row_num * 8 +: (row_num * 8)]),
        .delay_weights(delay_weights_2)
    );
    
    Delay_Regs_Weights delay_regs_weights_3(
        .clk(clk), 
        .reset(reset), 
        .re_fm_en(re_fm_en), 
        .re_fm_end(re_fm_end),
        .weights(weights_vector[(3-1)* row_num * 8 +: (row_num * 8)]),
        .delay_weights(delay_weights_3)
    );
    
    Delay_Regs_Weights delay_regs_weights_4(
        .clk(clk), 
        .reset(reset), 
        .re_fm_en(re_fm_en), 
        .re_fm_end(re_fm_end),
        .weights(weights_vector[(4-1)* row_num * 8 +: (row_num * 8)]),
        .delay_weights(delay_weights_4)
    );
    
    //sa 1
    SA_fin sa_row1_channel_set1(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_1), //weights 
        .column_in(delay_row1_pixels), //pixels
        .out(out_row1_channel_set1)
    );
    
    SA_fin sa_row1_channel_set2(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_2), //weights 
        .column_in(delay_row1_pixels), //pixels
        .out(out_row1_channel_set2)
    );
    
    SA_fin sa_row1_channel_set3(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_3), //weights 
        .column_in(delay_row1_pixels), //pixels
        .out(out_row1_channel_set3)
    );
    
    SA_fin sa_row1_channel_set4(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_4), //weights 
        .column_in(delay_row1_pixels), //pixels
        .out(out_row1_channel_set4)
    );
    
    //sa 2
    SA_fin sa_row2_channel_set1(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_1), //weights 
        .column_in(delay_row2_pixels), //pixels
        .out(out_row2_channel_set1)
    );
    
    SA_fin sa_row2_channel_set2(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_2), //weights 
        .column_in(delay_row2_pixels), //pixels
        .out(out_row2_channel_set2)
    );
    
    SA_fin sa_row2_channel_set3(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_3), //weights 
        .column_in(delay_row2_pixels), //pixels
        .out(out_row2_channel_set3)
    );
    
    SA_fin sa_row2_channel_set4(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_4), //weights 
        .column_in(delay_row2_pixels), //pixels
        .out(out_row2_channel_set4)
    );
    
    //sa 3
    SA_fin sa_row3_channel_set1(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_1), //weights 
        .column_in(delay_row3_pixels), //pixels
        .out(out_row3_channel_set1)
    );
    
    SA_fin sa_row3_channel_set2(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_2), //weights 
        .column_in(delay_row3_pixels), //pixels
        .out(out_row3_channel_set2)
    );
    
    SA_fin sa_row3_channel_set3(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_3), //weights 
        .column_in(delay_row3_pixels), //pixels
        .out(out_row3_channel_set3)
    );
    
    SA_fin sa_row3_channel_set4(
        .clk(clk), 
        .reset(reset), 
        .en(sa_en), 
        .mode(mode), 
        .channel_out_reset(channel_out_reset),
        .channel_out_en(channel_out_en), 
        .row_in(delay_weights_4), //weights 
        .column_in(delay_row3_pixels), //pixels
        .out(out_row3_channel_set4)
    );
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            pixels_counter_signal <= 0;
        end
        else if (re_fm_en == 1'b1) begin
            pixels_counter_signal <= 1;
        end
        else if (loop_pixels_counter_add_end == 1'b1) begin
            pixels_counter_signal <= 0;
        end
        else begin
            pixels_counter_signal <= pixels_counter_signal;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            pixels_counter <= 0;
        end
        else if (loop_pixels_counter_add_begin == 1'b1) begin
            if (loop_pixels_counter_add_end == 1'b1) begin //last
                pixels_counter <= 0;
            end
            else begin
                pixels_counter <= pixels_counter + 1;
            end 
        end
        else begin
            pixels_counter <= pixels_counter;
        end
    end
    
    assign loop_pixels_counter_add_begin = (re_fm_en == 1'b1) || (pixels_counter_signal == 1'b1);
    assign loop_pixels_counter_add_end = loop_pixels_counter_add_begin && (pixels_counter == nif_mult_k_mult_k);
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            sa_counter_signal <= 0;
        end
        else if (loop_pixels_counter_add_end == 1'b1) begin
            sa_counter_signal <= 1;
        end
        else if (loop_sa_counter_add_end == 1'b1) begin
            sa_counter_signal <= 0;
        end
        else begin
            sa_counter_signal <= sa_counter_signal;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            sa_counter <= 0;
        end
        else if (loop_sa_counter_add_begin == 1'b1) begin
            if (loop_sa_counter_add_end == 1'b1) begin //last
                sa_counter <= 0;
            end
            else begin
                sa_counter <= sa_counter + 1;
            end 
        end
        else begin
            sa_counter <= sa_counter;
        end
    end
    
    assign loop_sa_counter_add_begin = (sa_counter_signal == 1'b1) || (loop_pixels_counter_add_end == 1'b1);
    assign loop_sa_counter_add_end = loop_sa_counter_add_begin && (sa_counter == 6'd32);
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            channel_out_en <= 0;
        end
        else if (sa_counter == 6'd16) begin
            channel_out_en <= 1;
        end
        else if (loop_sa_counter_add_end) begin //xxx
            channel_out_en <= 0;
        end
        else begin
            channel_out_en <= channel_out_en;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            channel_out_reset <= 0;
        end
        else if (loop_pixels_counter_add_end == 1'b1) begin
            channel_out_reset <= 1;
        end
        else if (channel_out_reset == 1'b1) begin
            channel_out_reset <= 0;
        end
        else begin
            channel_out_reset <= channel_out_reset;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            sa_en <= 0;
        end
        else if (re_fm_en == 1'b1) begin
            sa_en <= 1;
        end
//        else if (sa_counter == 6'd31) begin //all end sa stop
//            sa_en <= 0;
//        end
        else begin
            sa_en <= sa_en;
        end
    end
    
    //stop and refresh after finishing a tile
    
endmodule

