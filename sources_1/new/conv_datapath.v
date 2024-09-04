`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 22:07:07
// Design Name: 
// Module Name: conv_datapath
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


module conv_datapath(
of, ox, oy, ix, iy, nif,
k, s, p,
clk, en, reset,
nif_in_2pow,
ix_in_2pow,
mode,
nif_mult_k_mult_k,

bias_tile_val // will be removed at end

    );
    
parameter sa_row_num = 4; //how many rows in conv core
parameter sa_column_num = 3; //how many columns in conv core
    
parameter row_num = 16; // how many rows in a sa
parameter column_num = 16; // how many columns in a sa
parameter pixels_in_row = 32;
parameter pixels_in_row_in_2pow = 5;
parameter buffers_num = sa_column_num;
parameter pixels_in_row_minus_1 = pixels_in_row-1;
parameter buffers_num_minus_1 = buffers_num-1;
parameter shift_regs_num = 70;
   
parameter weights_in_row = row_num * sa_row_num; // 8bit, length of 1 bit is shorter than that in 8 bit 
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

parameter bias_width = 8; //8 bit bias
parameter bias_set_width = bias_width * pe_parallel_weight_18; //32; vconv pixel out_width
parameter bias_4_channel_sets_width = bias_set_width * sa_row_num;

parameter bias_sets_num_in_row = sa_row_num * row_num; //64
parameter bias_tile_length = bias_set_width * bias_sets_num_in_row; //64 * 16bit

parameter res_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter res_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter res_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num;

    //cv router wire
    input mode;
    
    input [31:0] nif_mult_k_mult_k;
    
    input [3:0] k, s, p;
    
    input [15:0] of, ox, oy, ix, iy, nif;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    input [15:0] nif_in_2pow, ix_in_2pow;
    
    input [bias_tile_length -1 : 0] bias_tile_val; //will come from args buffer that has not existed
    
    wire [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx; //tile info
    
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
    
    wire valid_buf1_adr,
        valid_slab1_adr,
        valid_buf2_adr, 
        valid_slab2_adr,
        valid_buf3_adr,
        valid_slab3_adr;
    
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
    
    wire [pixels_in_row*8-1:0] re_rowi_pixels[sa_column_num-1 :0];
    
    //weight buf
    wire [weight_row_length-1 : 0] weights_vector; //(16 * 4) * 8 or (32 * 4) * 1
    
    //delay regs pixels
//    wire [column_num*16-1:0] delay_row1_pixels, delay_row2_pixels, delay_row3_pixels;
    wire [column_num*16-1:0] delay_rowi_pixels[sa_column_num-1 :0];
    
    //delay regs weights
//    wire [row_num*8-1:0] delay_weights_1, delay_weights_2, delay_weights_3, delay_weights_4;
    wire [row_num*8-1:0] delay_weights_sets[sa_row_num-1 :0];
    //sa
        // sa control
    wire sa_en, sa_reset;
    wire channel_out_reset, channel_out_en; //need logic
    
    wire [5:0] out_sa_row_idx; //output sa row idx [1,16]
    
    wire loop_sa_counter_add_end;
    
    wire [out_width - 1: 0] out_rowi_channel_sets[sa_column_num-1 :0][sa_row_num-1 :0]; // pox res per channel
    
    //bias
    wire [bias_4_channel_sets_width-1 :0] bias_4_channel_sets; //4 sets of 16bit(1 bias or 2 bias)
    
    wire [res_width - 1: 0] add_bias_rowi_channel_sets[sa_column_num-1 : 0][sa_row_num-1 : 0];
    
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
        
        .loop_sa_counter_add_end(loop_sa_counter_add_end), //the last sa output channel
        
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
        
        .re_row1_pixels(re_rowi_pixels[1-1]),
        .re_row2_pixels(re_rowi_pixels[2-1]),
        .re_row3_pixels(re_rowi_pixels[3-1]),
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
        
        .valid_buf1_adr(valid_buf1_adr),
        .valid_slab1_adr(valid_slab1_adr),
        .valid_buf2_adr(valid_buf2_adr), 
        .valid_slab2_adr(valid_slab2_adr),
        .valid_buf3_adr(valid_buf3_adr),
        .valid_slab3_adr(valid_slab3_adr),
        
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
        .ena(valid_buf1_adr),
        .s(s),
        .address(buf1_adr),
        .data(buf1_pixels_32)
    );
    
    ROM2_handler rom2_handler(
        .clk(clk),
        .ena(valid_buf2_adr),
        .s(s),
        .address(buf2_adr),
        .data(buf2_pixels_32)
    );
    
    ROM3_handler rom3_handler(
        .clk(clk),
        .ena(valid_buf3_adr),
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
      .enb(valid_slab1_adr),      // input wire enb
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
      .enb(valid_slab2_adr),      // input wire enb
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
      .enb(valid_slab3_adr),      // input wire enb
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
    
    genvar i, j;
    
    generate
        for (i = 1; i <= sa_column_num; i = i + 1) begin: delay_regs_column //poy, rows
            Delay_Regs_Pixels delay_regs_pixels(
                .clk(clk), 
                .reset(reset), 
                .re_fm_en(re_fm_en), 
                .re_fm_end(re_fm_end),
                .re_row_pixels(re_rowi_pixels[i-1]),
                .delay_row_pixels(delay_rowi_pixels[i-1])
            );
        end
        for (j = 1; j <= sa_row_num; j = j + 1) begin: delay_regs_row //output channel
            Delay_Regs_Weights delay_regs_weights(
                .clk(clk), 
                .reset(reset), 
                .re_fm_en(re_fm_en), 
                .re_fm_end(re_fm_end),
                .weights(weights_vector[(j-1)* row_num * 8 +: (row_num * 8)]),
                .delay_weights(delay_weights_sets[j-1])
            );    
        end
        for (i = 1; i <= sa_column_num; i = i + 1) begin: sa_column //poy, rows
            Delay_Regs_Pixels delay_regs_pixels(
                .clk(clk), 
                .reset(reset), 
                .re_fm_en(re_fm_en), 
                .re_fm_end(re_fm_end),
                .re_row_pixels(re_rowi_pixels[i-1]),
                .delay_row_pixels(delay_rowi_pixels[i-1])
            );
            for (j = 1; j <= sa_row_num; j = j + 1) begin: sa_row //output channel
                SA_fin sa(
                    .clk(clk), 
                    .reset(reset), 
                    .en(sa_en), 
                    .mode(mode), 
                    .channel_out_reset(channel_out_reset),
                    .channel_out_en(channel_out_en), 
                    .row_in(delay_weights_sets[j-1]), //weights 
                    .column_in(delay_rowi_pixels[i-1]), //pixels
                    .out(out_rowi_channel_sets[i-1][j-1])
                );
                
                Add_Bias bias_adder(
                    .clk(clk), 
                    .reset(reset), 
                    .en(channel_out_en), 
                    .mode(mode), 
                    .rowi_channel_seti(out_rowi_channel_sets[i-1][j-1]), // pox res per channel
                    .bias(bias_4_channel_sets[(j-1)*bias_width +: bias_width]),
                    .add_bias_rowi_channel_seti(add_bias_rowi_channel_sets[i-1][j-1]) // pox res per channel
                );
            end
        end
    endgenerate
    
    // sa control
    SA_Ctrl sa_ctrl(
        .clk(clk), 
        .reset(reset), 
        .en(en), 
        .re_fm_en(re_fm_en),
        .nif_mult_k_mult_k(nif_mult_k_mult_k),
        .sa_en(sa_en), 
        .sa_reset(sa_reset),
        .channel_out_reset(channel_out_reset), 
        .channel_out_en(channel_out_en),
        .loop_sa_counter_add_end(loop_sa_counter_add_end)
    );
    
    //bias regs
    Bias_Regs bias_regs(
        .clk(clk), 
        .set(reset),
        .mode(mode),
        .bias_tile_val(bias_tile_val),
        .out_sa_row_idx(out_sa_row_idx),
        .bias_4_channel_sets(bias_4_channel_sets)
    );

endmodule
