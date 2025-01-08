`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 08:22:00 PM
// Design Name: 
// Module Name: conv_initial_controller
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


module conv_initial_controller(
clk, reset, start,
conv_inital_fin,
k, s, p,
of, ox, oy, ix, iy, nif,
nif_in_2pow, ix_in_2pow, of_in_2pow, ox_in_2pow,
nif_mult_k_mult_k,
buf_depth_in_row_2pow,
mode,
bias_tile_val,
E_scale_tail_tile_val,
E_scale_rank_tile_val,
conv_load_start
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

parameter weights_row_in_width = 8 * row_num;
parameter sa_row_in_width = weights_row_in_width;

parameter pixels_column_in_width = 16 * column_num;
parameter sa_column_in_width = 24 * column_num;

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18; // width of 18 is bigger than 88

parameter row_counter_width = ($clog2(row_num+1));

parameter out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;

parameter bias_width = 8; //8 bit bias
parameter bias_set_width = bias_width * pe_parallel_weight_18; //32; vconv pixel out_width
parameter bias_set_4_channel_width = bias_set_width * sa_row_num; //4 * 16 bit

parameter bias_sets_num_in_row = sa_row_num * row_num; //64
parameter bias_tile_length = bias_set_width * bias_sets_num_in_row; //64 * 16bit

parameter add_bias_row_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter add_bias_row_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter add_bias_row_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num;

parameter mult_A_width = 24;
parameter mult_B_width = 16;
parameter mult_P_width = 40;
parameter mult_array_length = 576;
parameter mult_dsp_array_length = 528;
parameter mult_lut_array_length = mult_array_length - mult_dsp_array_length;
parameter vector_A_width = mult_array_length * mult_A_width;
parameter vector_B_width = mult_array_length * mult_B_width;
parameter vector_P_width = mult_array_length * mult_P_width;
parameter mult_array_length_per_sa = mult_array_length / sa_row_num / sa_column_num; //48

parameter E_scale_tail_width = 16; //16 bit E_scale tail
parameter E_scale_tail_set_width = E_scale_tail_width * pe_parallel_weight_18; //32 bit
parameter E_scale_tail_set_4_channel_width = E_scale_tail_set_width * sa_row_num; //4 * 32 bit
parameter E_scale_tail_sets_num_in_row = sa_row_num * row_num; //64    
parameter E_scale_tail_tile_length = E_scale_tail_set_width * E_scale_tail_sets_num_in_row; //64 * 32bit regs to str
 
parameter E_scale_rank_width = 8; //8 bit E_scale rank
parameter E_scale_rank_set_width = E_scale_rank_width * pe_parallel_weight_18; //16 bit
parameter E_scale_rank_set_4_channel_width = E_scale_rank_set_width * sa_row_num; //4 * 16 bit
parameter E_scale_rank_sets_num_in_row = sa_row_num * row_num; //64   
parameter E_scale_rank_tile_length = E_scale_rank_set_width * E_scale_rank_sets_num_in_row; //64 * 16bit regs to str 
 
parameter pixel_E_scale_tail_width_88 = pixel_width_88 + E_scale_tail_width; //40 bit
parameter pixel_E_scale_tail_width_18 = pixel_width_18 + E_scale_tail_width; //32 bit
parameter row_E_scale_tail_width_88 = pixel_E_scale_tail_width_88 * pe_parallel_weight_88 * pe_parallel_pixel_88 * column_num; 
//40 bit * 32 pixels * 1 channel
parameter row_E_scale_tail_width_18_2 = pixel_E_scale_tail_width_18 * 1 * pe_parallel_pixel_18 * column_num; 
//32 bit * 32 pixels * 1 channel
    
parameter add_bias_row_in_mult_A_width_width = mult_A_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num;
//24 bit * 32 pixels * 2 channel
parameter E_scale_tail_row_in_mult_B_width_width = mult_B_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
//16 bit * 32 pixels * 2 channel
parameter row_E_scale_tail_in_mult_P_width_width = mult_P_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
//40 bit * 32 pixels * 2 channel > 32 bit * 32 pixels * 2 channel > 40 bit * 32 pixels * 1 channel
  
parameter quantified_pixel_width = 8; 
parameter quantified_row_width = (quantified_pixel_width) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
//8 bit * 32 pixels * 2 channel
parameter scaled_rank_row_width = (quantified_pixel_width+1) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
//9 bit * 32 pixels * 2 channel

    input clk, reset, start;
    
    output reg conv_inital_fin;
    
    //all below come from ddr
    output reg [3:0] k, s, p;
    
    output reg [15:0] of, ox, oy, ix, iy, nif;
    
    output reg [3:0] nif_in_2pow, ix_in_2pow, of_in_2pow, ox_in_2pow;
    
    output reg [31:0] nif_mult_k_mult_k;
    
    output reg [15:0] buf_depth_in_row_2pow;
    
    output reg mode;
    
    output reg [bias_tile_length -1 : 0] bias_tile_val;
    
    output reg [E_scale_tail_tile_length -1 : 0] E_scale_tail_tile_val; 
    
    output reg [E_scale_rank_tile_length -1 : 0] E_scale_rank_tile_val; 

    output reg conv_load_start;
    
    always@(posedge clk) begin //xxxxx
       if(reset == 1'b1)begin
           conv_inital_fin <= 1'b0;
       end
       else if(start == 1'b1)begin
           conv_inital_fin <= 1'b1;
       end
       else if(conv_inital_fin == 1'b1)begin
           conv_inital_fin <= 1'b0;
       end
       else begin
           conv_inital_fin <= conv_inital_fin;
       end
    end
    
    always@(posedge clk) begin //xxxxx
       if(reset == 1'b1)begin
           conv_load_start <= 1'b0;
       end
       else if(conv_inital_fin == 1'b1)begin
           conv_load_start <= 1'b1;
       end
       else if(conv_load_start == 1'b1)begin
           conv_load_start <= 1'b0;
       end
       else begin
           conv_load_start <= conv_load_start;
       end
    end
    
    always@(posedge clk)begin
        if(reset == 1'b1) begin
            k <= 0; 
            s <= 0; 
            p <= 0; 
            of <= 0; 
            ox <= 0; 
            oy <= 0;
            of_in_2pow <= 0; 
            ox_in_2pow <= 0;
            ix <= 0; 
            iy <= 0; // a tile computation
            ix_in_2pow <= 0;
            nif <= 0; 
            nif_in_2pow <= 0; 
            nif_mult_k_mult_k <= 0;
            buf_depth_in_row_2pow <= 0;
            mode <= 0; 
            bias_tile_val <= 0;
                             
            E_scale_tail_tile_val <= 0;//xx
            E_scale_rank_tile_val <= 0;//xx
       end
       else if(start == 1'b1)begin
            k <= 3; 
            s <= 2; 
            p <= 1; 
            of <= 64; 
            ox <= 64; 
            oy <= 3;
            of_in_2pow <= 6; 
            ox_in_2pow <= 6;
            ix <= 256; 
            iy <= 256; // a tile computation
            ix_in_2pow <= 8;
            nif <= 2; 
            nif_in_2pow <= 1; 
            nif_mult_k_mult_k <= 18; //nif*k*k
            buf_depth_in_row_2pow <= 13;
            
            //mode 0
            mode <= 0; 
            bias_tile_val <= {{16'h00a6},{16'h00a5},{16'h00a4},{16'h00a3},//1
                             {16'h00a2},{16'h00a1},{16'h00a0},{16'h0009},
                             {16'h0008},{16'h0007},{16'h0006},{16'h0005},
                             {16'h0004},{16'h0003},{16'h0002},{16'h0001},
                             {16'h00a6},{16'h00a5},{16'h00a4},{16'h00a3},//2
                             {16'h00a2},{16'h00a1},{16'h00a0},{16'h0009},
                             {16'h0008},{16'h0007},{16'h0006},{16'h0005},
                             {16'h0004},{16'h0003},{16'h0002},{16'h0001},
                             {16'h00a6},{16'h00a5},{16'h00a4},{16'h00a3},//3
                             {16'h00a2},{16'h00a1},{16'h00a0},{16'h0009},
                             {16'h0008},{16'h0007},{16'h0006},{16'h0005},
                             {16'h0004},{16'h0003},{16'h0002},{16'h0001},
                             {16'h00a6},{16'h00a5},{16'h00a4},{16'h00a3},//4
                             {16'h00a2},{16'h00a1},{16'h00a0},{16'h0009},
                             {16'h0008},{16'h0007},{16'h0006},{16'h0005},
                             {16'h0004},{16'h0003},{16'h0002},{16'h0001}
                             };
                             
            E_scale_tail_tile_val <= 
                            {{32'h000000a6},{32'h000000a5},{32'h000000a4},{32'h000000a3},//1
                             {32'h000000a2},{32'h000000a1},{32'h000000a0},{32'h00000009},
                             {32'h00000008},{32'h00000007},{32'h00000006},{32'h00000005},
                             {32'h00000004},{32'h00000003},{32'h00000002},{32'h00000001},
                             {32'h000000a6},{32'h000000a5},{32'h000000a4},{32'h000000a3},//2
                             {32'h000000a2},{32'h000000a1},{32'h000000a0},{32'h00000009},
                             {32'h00000008},{32'h00000007},{32'h00000006},{32'h00000005},
                             {32'h00000004},{32'h00000003},{32'h00000002},{32'h00000001},
                             {32'h000000a6},{32'h000000a5},{32'h000000a4},{32'h000000a3},//3
                             {32'h000000a2},{32'h000000a1},{32'h000000a0},{32'h00000009},
                             {32'h00000008},{32'h00000007},{32'h00000006},{32'h00000005},
                             {32'h00000004},{32'h00000003},{32'h00000002},{32'h00000001},
                             {32'h000000a6},{32'h000000a5},{32'h000000a4},{32'h000000a3},//4
                             {32'h000000a2},{32'h000000a1},{32'h000000a0},{32'h00000009},
                             {32'h00000008},{32'h00000007},{32'h00000006},{32'h00000005},
                             {32'h00000004},{32'h00000003},{32'h00000002},{32'h00000001}
                             };//xx
            E_scale_rank_tile_val <= 
                            {{16'h00a6},{16'h00a5},{16'h00a4},{16'h00a3},//1
                             {16'h00a2},{16'h00a1},{16'h00a0},{16'h0009},
                             {16'h0008},{16'h0007},{16'h0006},{16'h0005},
                             {16'h0004},{16'h0003},{16'h0002},{16'h0001},
                             {16'h00a6},{16'h00a5},{16'h00a4},{16'h00a3},//2
                             {16'h00a2},{16'h00a1},{16'h00a0},{16'h0009},
                             {16'h0008},{16'h0007},{16'h0006},{16'h0005},
                             {16'h0004},{16'h0003},{16'h0002},{16'h0001},
                             {16'h00a6},{16'h00a5},{16'h00a4},{16'h00a3},//3
                             {16'h00a2},{16'h00a1},{16'h00a0},{16'h0009},
                             {16'h0008},{16'h0007},{16'h0006},{16'h0005},
                             {16'h0004},{16'h0003},{16'h0002},{16'h0001},
                             {16'h00a6},{16'h00a5},{16'h00a4},{16'h00a3},//4
                             {16'h00a2},{16'h00a1},{16'h00a0},{16'h0009},
                             {16'h0008},{16'h0007},{16'h0006},{16'h0005},
                             {16'h0004},{16'h0003},{16'h0002},{16'h0001}
                             };//xx
                             
            //mode 1
//        mode = 1; 
//        bias_tile_val = {{16'ha6a6},{16'ha5a5},{16'ha4a4},{16'ha3a3},//1
//                         {16'ha2a2},{16'ha1a1},{16'ha0a0},{16'h0909},
//                         {16'h0808},{16'h0707},{16'h0606},{16'h0505},
//                         {16'h0404},{16'h0303},{16'h0202},{16'h0101},
//                         {16'ha6a6},{16'ha5a5},{16'ha4a4},{16'ha3a3},//2
//                         {16'ha2a2},{16'ha1a1},{16'ha0a0},{16'h0909},
//                         {16'h0808},{16'h0707},{16'h0606},{16'h0505},
//                         {16'h0404},{16'h0303},{16'h0202},{16'h0101},
//                         {16'ha6a6},{16'ha5a5},{16'ha4a4},{16'ha3a3},//3
//                         {16'ha2a2},{16'ha1a1},{16'ha0a0},{16'h0909},
//                         {16'h0808},{16'h0707},{16'h0606},{16'h0505},
//                         {16'h0404},{16'h0303},{16'h0202},{16'h0101},
//                         {16'ha6a6},{16'ha5a5},{16'ha4a4},{16'ha3a3},//4
//                         {16'ha2a2},{16'ha1a1},{16'ha0a0},{16'h0909},
//                         {16'h0808},{16'h0707},{16'h0606},{16'h0505},
//                         {16'h0404},{16'h0303},{16'h0202},{16'h0101}
//                         };
                         
//        E_scale_tail_tile_val = 
//                        {{32'h00a600a6},{32'h00a500a5},{32'h00a400a4},{32'h00a300a3},//1
//                         {32'h00a200a2},{32'h00a100a1},{32'h00a000a0},{32'h00090009},
//                         {32'h00080008},{32'h00070007},{32'h00060006},{32'h00050005},
//                         {32'h00040004},{32'h00030003},{32'h00020002},{32'h00010001},
//                         {32'h00a600a6},{32'h00a500a5},{32'h00a400a4},{32'h00a300a3},//2
//                         {32'h00a200a2},{32'h00a100a1},{32'h00a000a0},{32'h00090009},
//                         {32'h00080008},{32'h00070007},{32'h00060006},{32'h00050005},
//                         {32'h00040004},{32'h00030003},{32'h00020002},{32'h00010001},
//                         {32'h00a600a6},{32'h00a500a5},{32'h00a400a4},{32'h00a300a3},//3
//                         {32'h00a200a2},{32'h00a100a1},{32'h00a000a0},{32'h00090009},
//                         {32'h00080008},{32'h00070007},{32'h00060006},{32'h00050005},
//                         {32'h00040004},{32'h00030003},{32'h00020002},{32'h00010001},
//                         {32'h00a600a6},{32'h00a500a5},{32'h00a400a4},{32'h00a300a3},//4
//                         {32'h00a200a2},{32'h00a100a1},{32'h00a000a0},{32'h00090009},
//                         {32'h00080008},{32'h00070007},{32'h00060006},{32'h00050005},
//                         {32'h00040004},{32'h00030003},{32'h00020002},{32'h00010001}
//                         };//xx
//        E_scale_rank_tile_val = 
//                        {{16'ha6a6},{16'ha5a5},{16'ha4a4},{16'ha3a3},//1
//                         {16'ha2a2},{16'ha1a1},{16'ha0a0},{16'h0909},
//                         {16'h0808},{16'h0707},{16'h0606},{16'h0505},
//                         {16'h0404},{16'h0303},{16'h0202},{16'h0101},
//                         {16'ha6a6},{16'ha5a5},{16'ha4a4},{16'ha3a3},//2
//                         {16'ha2a2},{16'ha1a1},{16'ha0a0},{16'h0909},
//                         {16'h0808},{16'h0707},{16'h0606},{16'h0505},
//                         {16'h0404},{16'h0303},{16'h0202},{16'h0101},
//                         {16'ha6a6},{16'ha5a5},{16'ha4a4},{16'ha3a3},//3
//                         {16'ha2a2},{16'ha1a1},{16'ha0a0},{16'h0909},
//                         {16'h0808},{16'h0707},{16'h0606},{16'h0505},
//                         {16'h0404},{16'h0303},{16'h0202},{16'h0101},
//                         {16'ha6a6},{16'ha5a5},{16'ha4a4},{16'ha3a3},//4
//                         {16'ha2a2},{16'ha1a1},{16'ha0a0},{16'h0909},
//                         {16'h0808},{16'h0707},{16'h0606},{16'h0505},
//                         {16'h0404},{16'h0303},{16'h0202},{16'h0101}
//                         };//xx                 
       end
       else begin
            k <= k; 
            s <= s; 
            p <= p; 
            of <= of; 
            ox <= ox; 
            oy <= oy;
            of_in_2pow <= of_in_2pow; 
            ox_in_2pow <= ox_in_2pow;
            ix <= ix; 
            iy <= iy; // a tile computation
            ix_in_2pow <= ix_in_2pow;
            nif <= nif; 
            nif_in_2pow <= nif_in_2pow; 
            nif_mult_k_mult_k <= nif_mult_k_mult_k;
            buf_depth_in_row_2pow <= buf_depth_in_row_2pow;
            mode <= mode; 
            bias_tile_val <= bias_tile_val;
                             
            E_scale_tail_tile_val <= E_scale_tail_tile_val;//xx
            E_scale_rank_tile_val <= E_scale_rank_tile_val;//xx
       end
    end
    
    
    
endmodule
