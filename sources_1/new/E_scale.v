`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 04:26:13 PM
// Design Name: 
// Module Name: E_Scale
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


module E_Scale(
//cycle 0 in
mode, 
clk, 
e_tail_reset,
quantify_en, quantify_reset,
E_scale_tail_set,
E_scale_rank_set,
 
add_bias_row,

//cycle 0 out
add_bias_row_in_mult_A_width,
E_scale_tail_row_in_mult_B_width,

//cycle 1 in
row_E_scale_tail_in_mult_P_width,

//cycle 1 out
quantified_row
    );
parameter sa_row_num = 4; //how many rows in conv core
parameter sa_column_num = 3; //how many columns in conv core
    
parameter row_num = 16; // how many rows in a sa
parameter column_num = 16; // how many columns in a sa
parameter pixels_in_row = 32;
parameter pixels_in_row_in_2pow = 5;

parameter headroom = 8;

parameter pixel_width_88 = 16 + headroom;
//parameter pixel_width_18 = 10 + headroom;
parameter pixel_width_18 = 8 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter add_bias_row_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter add_bias_row_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter add_bias_row_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num;
  
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

parameter mult_A_width = 24;
parameter mult_B_width = 16;
parameter mult_P_width = 40;
parameter mult_array_length = 576;
parameter mult_dsp_array_length = 528;
parameter mult_lut_array_length = mult_array_length - mult_dsp_array_length;
    
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

    //cycle -1
    input [E_scale_tail_set_width-1 :0] E_scale_tail_set;
    //16 bit * 2 channel
    input [E_scale_rank_set_width-1 :0] E_scale_rank_set;
    //8 bit * 2 channel

    //cycle 0
    input mode;
    
    input clk, quantify_en, quantify_reset, e_tail_reset;
    
    input [add_bias_row_width - 1: 0] add_bias_row;
    //16 bit * 32 pixels * 2 channel    
  
    output [add_bias_row_in_mult_A_width_width-1 : 0] add_bias_row_in_mult_A_width;       //pixels 
    //24 bit * 32 pixels * 2 channel
    output [E_scale_tail_row_in_mult_B_width_width-1 : 0] E_scale_tail_row_in_mult_B_width;       //E_scale_tile
    //16 bit * 32 pixels * 2 channel
            
    //cycle 1
    input [row_E_scale_tail_in_mult_P_width_width-1 : 0] row_E_scale_tail_in_mult_P_width;
    //40 bit * 32 pixels * 2 channel
    
    wire [E_scale_tail_width-1 :0] last_E_scale_tail_88;
    wire [E_scale_tail_width-1 :0] last_E_scale_tail_18_1, last_E_scale_tail_18_2;
    
    reg [E_scale_tail_set_width-1 :0] last_E_scale_tail_set;
    reg [E_scale_rank_set_width-1 :0] last_E_scale_rank_set;
    reg [E_scale_rank_set_width-1 :0] last_2_E_scale_rank_set;
    //8 bit * 2 channel
    wire [E_scale_rank_width-1 :0] last_E_scale_rank_88;
    wire [E_scale_rank_width-1 :0] last_E_scale_rank_18_1, last_E_scale_rank_18_2;
    
//    reg [quantified_row_width-1 :0] quantified_row_regs;
    output [quantified_row_width-1 :0] quantified_row;
    //8 bit * 32 pixels * 2 channel 
    
    wire [scaled_rank_row_width-1 :0] scaled_rank_row;
    //9 bit * 32 pixels * 2 channel 
    
    wire [add_bias_row_width_88 - 1 : 0] add_bias_row_88;
    //24 bit * 32 pixels * 1 channel
    wire [add_bias_row_width_18_2 - 1 : 0] add_bias_row_18_1, add_bias_row_18_2;
    //16 bit * 32 pixels * 1 channel
    
    assign add_bias_row_88 = add_bias_row[add_bias_row_width_88 - 1 : 0];
    assign add_bias_row_18_1 = add_bias_row[add_bias_row_width_18_2 - 1 : 0];
    assign add_bias_row_18_2 = add_bias_row[add_bias_row_width - 1 : add_bias_row_width_18_2];
    
    assign last_E_scale_tail_88 = last_E_scale_tail_set[E_scale_tail_width-1 :0];
    assign last_E_scale_tail_18_1 = last_E_scale_tail_88;
    assign last_E_scale_tail_18_2 = last_E_scale_tail_set[E_scale_tail_set_width-1 : E_scale_tail_width];
    
    assign last_E_scale_rank_88 = last_E_scale_rank_set[E_scale_rank_width-1 :0];
    assign last_E_scale_rank_18_1 = last_E_scale_rank_88;
    assign last_E_scale_rank_18_2 = last_E_scale_rank_set[E_scale_rank_set_width-1 : E_scale_rank_width];
    
    genvar i;
    
    //cycle 0
    generate
        // add_bias_row_in_24[24 * pe_parallel_pixel_88 * column_num -1 : 0]
        //24 bit * 32 pixels * 1 channel or 16 bit * 32 pixels * 2 channel
        for (i = 0; i < pe_parallel_pixel_88 * column_num; i = i + 1) begin
            assign add_bias_row_in_mult_A_width[i*mult_A_width +: mult_A_width] =
            (mode == 1'b0)? {{(mult_A_width-pixel_width_88){1'b0}},add_bias_row_88[i*pixel_width_88 +: pixel_width_88]}:
            (mode == 1'b1)? {{(mult_A_width-pixel_width_18){1'b0}},add_bias_row_18_1[i*pixel_width_18 +: pixel_width_18]}:
            0; 
        end
        
        // add_bias_row_in_24[add_bias_row_in_24_width-1 : 24 * pe_parallel_pixel_18 * column_num]
        for (i = 0; i < pe_parallel_pixel_18 * column_num; i = i + 1) begin
            assign add_bias_row_in_mult_A_width[(pe_parallel_pixel_18 * column_num + i) *mult_A_width +: mult_A_width] =
            (mode == 1'b1) ?{{(mult_A_width-pixel_width_18){1'b0}},add_bias_row_18_2[i*pixel_width_18 +: pixel_width_18]}:
            0; 
        end
        
        // E_scale_tail_row_in_16[18 * pe_parallel_pixel_18 * column_num -1 : 0]
        //16 bit * 32 pixels * 2 channel
        for (i = 0; i < pe_parallel_pixel_88 * column_num; i = i + 1) begin
            assign E_scale_tail_row_in_mult_B_width[i*mult_B_width +: mult_B_width] =
            {{(mult_B_width-E_scale_tail_width){1'b0}},last_E_scale_tail_88}; 
        end
        
        // E_scale_tail_row_in_18[E_scale_tail_row_in_18_width-1 : 18 * pe_parallel_pixel_18 * column_num]
        for (i = 0; i < pe_parallel_pixel_18 * column_num; i = i + 1) begin
            assign E_scale_tail_row_in_mult_B_width[(pe_parallel_pixel_18 * column_num + i) *mult_B_width +: mult_B_width] =
            (mode == 1'b1) ?{{(mult_B_width-E_scale_tail_width){1'b0}},last_E_scale_tail_18_2}:
            0; 
        end
        
    endgenerate
    
    //cycle 1
    generate
        //row_E_scale_tail_in_43->last_row_E_scale_tail_88
        //40 bit * 32 pixels * 1 channel
//        for (i = 0; i < pe_parallel_pixel_88 * column_num; i = i + 1) begin
//            assign last_row_E_scale_tail_88[i*pixel_E_scale_tail_width_88 +: pixel_E_scale_tail_width_88] =
//            row_E_scale_tail_in_43[i*mult_P_width +: pixel_E_scale_tail_width_88]; 
//        end
        
        //row_E_scale_tail_in_43->last_row_E_scale_tail_18_1, last_row_E_scale_tail_18_2
        //32 bit * 32 pixels * 1 channel
//        for (i = 0; i < pe_parallel_pixel_18 * column_num; i = i + 1) begin
//            assign last_row_E_scale_tail_18_1[i*pixel_E_scale_tail_width_18 +: pixel_E_scale_tail_width_18] =
//            row_E_scale_tail_in_43[i*mult_P_width +: pixel_E_scale_tail_width_18]; 
//        end
        
//        for (i = 0; i < pe_parallel_pixel_18 * column_num; i = i + 1) begin
//            assign last_row_E_scale_tail_18_2[i*pixel_E_scale_tail_width_18 +: pixel_E_scale_tail_width_18] =
//            row_E_scale_tail_in_43[(pe_parallel_pixel_18 * column_num + i)*mult_P_width +: pixel_E_scale_tail_width_18]; 
//        end
    
        // qualified_row[9 * pe_parallel_pixel_18 * column_num -1 : 0]
        //9 bit * 32 pixels * 2 channel 
//        for (i = 0; i < pe_parallel_pixel_18 * column_num; i = i + 1) begin
//            assign qualified_row[i*(qualified_pixel_width+1) +: (qualified_pixel_width+1)] =
//            (mode == 1'b0)? ((last_row_E_scale_tail_88[i*pixel_E_scale_tail_width_88 +: pixel_E_scale_tail_width_88]) >> (last_E_scale_rank_88)):
//            (mode == 1'b1)? ((last_row_E_scale_tail_18_1[i*pixel_E_scale_tail_width_18 +: pixel_E_scale_tail_width_18]) >> (last_E_scale_rank_18_1)):
//            0; 
//        end
        
        for (i = 0; i < pe_parallel_pixel_18 * column_num; i = i + 1) begin
            assign scaled_rank_row[i*(quantified_pixel_width+1) +: (quantified_pixel_width+1)]
            = (mode == 1'b0)? ((row_E_scale_tail_in_mult_P_width[i*mult_P_width +: pixel_E_scale_tail_width_88])
             >> (last_E_scale_rank_88)):
            (mode == 1'b1)? ((row_E_scale_tail_in_mult_P_width[i*mult_P_width +: pixel_E_scale_tail_width_18])
             >> (last_E_scale_rank_18_1)):
            0; 
            
            assign quantified_row[i*(quantified_pixel_width) +: (quantified_pixel_width)]
            = (scaled_rank_row[(i*(quantified_pixel_width+1)+quantified_pixel_width) +: 1] == 1'b0)?
            scaled_rank_row[i*(quantified_pixel_width+1) +: (quantified_pixel_width)] :
            0;
            
//            always@(posedge clk) begin
//                if (quantify_reset == 1'b1) begin
//                    quantified_row_regs[i*(quantified_pixel_width) +: (quantified_pixel_width)]
//                    <= 0;  
//                end
//                else if (quantify_en == 1'b1) begin
//                    quantified_row_regs[i*(quantified_pixel_width) +: (quantified_pixel_width)]
//                    <= (scaled_rank_row[(i*(quantified_pixel_width+1)+quantified_pixel_width) +: 1] == 1'b0)?
//                    scaled_rank_row[i*(quantified_pixel_width+1) +: (quantified_pixel_width)] :
//                    0;
//                end
//                else begin
//                    quantified_row_regs[i*(quantified_pixel_width) +: (quantified_pixel_width)]
//                    <= quantified_row_regs[i*(quantified_pixel_width) +: (quantified_pixel_width)];
//                end
//            end
        end
        
        // qualified_row[qualified_row_width-1 : 9 * pe_parallel_pixel_18 * column_num]
        for (i = 0; i < pe_parallel_pixel_18 * column_num; i = i + 1) begin    
            assign scaled_rank_row[(pe_parallel_pixel_18 * column_num+i)*(quantified_pixel_width+1) +: (quantified_pixel_width+1)]
            = (mode == 1'b1) ? ((row_E_scale_tail_in_mult_P_width[(pe_parallel_pixel_18 * column_num + i)*mult_P_width +: pixel_E_scale_tail_width_18])
            >> (last_E_scale_rank_18_2)):
            0;    
            
            assign quantified_row[(pe_parallel_pixel_18 * column_num+i)*(quantified_pixel_width) +: (quantified_pixel_width)]
            = (scaled_rank_row[
            ((pe_parallel_pixel_18 * column_num + i)*(quantified_pixel_width+1)+quantified_pixel_width) +: 1] == 1'b0) ?
            scaled_rank_row[(pe_parallel_pixel_18 * column_num + i)*(quantified_pixel_width) +: (quantified_pixel_width)]:
            0;
             
//            always@(posedge clk) begin
//                if (quantify_reset == 1'b1) begin
//                    quantified_row_regs[(pe_parallel_pixel_18 * column_num+i)*(quantified_pixel_width) +: (quantified_pixel_width)]
//                    <= 0;  
//                end
//                else if (quantify_en == 1'b1) begin
//                    quantified_row_regs[(pe_parallel_pixel_18 * column_num+i)*(quantified_pixel_width) +: (quantified_pixel_width)]
//                    <= (scaled_rank_row[(i*(quantified_pixel_width+1)+quantified_pixel_width) +: 1] == 1'b0) ?
//                    scaled_rank_row[i*(quantified_pixel_width) +: (quantified_pixel_width)]:
//                    0;
//                end
//                else begin
//                    quantified_row_regs[(pe_parallel_pixel_18 * column_num+i)*(quantified_pixel_width) +: (quantified_pixel_width)]
//                    <= quantified_row[(pe_parallel_pixel_18 * column_num+i)*(quantified_pixel_width) +: (quantified_pixel_width)];
//                end
//            end
        end
        
    endgenerate
    
    always@(posedge clk) begin
        if (e_tail_reset == 1'b1) begin
            last_2_E_scale_rank_set <= 0;  
        end
        else begin
            last_2_E_scale_rank_set <= E_scale_rank_set;
        end
    end
    
    always@(posedge clk) begin
        if (e_tail_reset == 1'b1) begin
            last_E_scale_rank_set <= 0;  
        end
        else begin
            last_E_scale_rank_set <= last_2_E_scale_rank_set;
        end
    end
    
    always@(posedge clk) begin
        if (e_tail_reset == 1'b1) begin
            last_E_scale_tail_set <= 0;  
        end
        else begin
            last_E_scale_tail_set <= E_scale_tail_set;
        end
    end
    
endmodule
