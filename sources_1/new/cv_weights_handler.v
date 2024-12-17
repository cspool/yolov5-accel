`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/08/29 19:30:22
// Design Name:
// Module Name: cv_weights_handler
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


module cv_weights_handler(
    clk, reset,

    mode_init,
    of_init,
    //cycle 0 in
    re_fm_en, //the first input is needed in next cycle
    re_fm_end,//the last input is needed in cur cycle
    cur_pof,
    cur_of_start,

    weights_counter,

    //cylce 1 in
    weights_dout,

    //cycle 0 out
    weight_en_rd,
    weight_adr_rd,

    //cycle 1 out
    weights_vector
  );


  parameter weights_in_tile_mode0 = 64; // 8bit; //amount of weights needed in a computation tile
  parameter weights_in_tile_mode1 = 128; // 1bit
  parameter weight_word_length = weights_in_tile_mode0 * 8;
  parameter weights_in_word_mode0 = 64; //amount of weights read in a weight word
  parameter weights_in_word_mode1 = 512;


  input mode_init;

  input reset,clk;

  input re_fm_en, re_fm_end;

  reg [1:0] part_select; //0, 1, 2 ,3

  input [weight_word_length-1 : 0] weights_dout;

  input [15:0] cur_pof, cur_of_start;

  input [15:0] of_init;

  wire [weights_in_tile_mode0 * 8 -1 : 0] weights_vector_mode0;

  wire [weights_in_tile_mode1 * 1 -1 :0] weights_vector_mode1;

  wire [weight_word_length-1 :0] weights_vector_mode1_fin;

  output [weight_word_length-1 : 0] weights_vector;

  output weight_en_rd;

  output [15:0] weight_adr_rd;

  reg valid_weight;

  reg mode;

  reg [15:0] of;

  reg [15:0] weight_base_adr_rd;

  input [31:0] weights_counter; //in nif*k*k

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin //set
      mode <= mode_init;
      of <= of_init;
    end
    else
    begin
      mode <= mode;
      of <= of;
    end
  end

  // weights_tiles_in_word = weights_in_word / weights_in_tile
  // weights_tiles_in_word = (mode == 1'b0)? 1 : (mode == 1'b1)? 4: 0;
  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      part_select <= 0;   //first adr
    end
    else if ((re_fm_en == 1'b1) && (re_fm_end == 1'b1)) //tile ofi finished
    begin
      part_select <= part_select + 2'd1;
    end
    else
    begin
      part_select <= part_select;
    end
  end

  //re_pixels from re_fm_en to re_fm_end consist of nif channels of a input tile that its computing needed
  // the adr need more completely logic
  //and adr mapping in different mode

  assign conv_out_channel_fin = (cur_of_start + cur_pof - 1 == of)? 1'b1 : 1'b0;

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      weight_base_adr_rd <= 0;   //first adr
    end
    else if ((re_fm_en == 1'b1) && (re_fm_end == 1'b1))
    begin
      weight_base_adr_rd <= 0; //every weight tile is loaded before needed, and discarded after used 
      // if (mode == 1'b0)
      // begin
      //   weight_base_adr_rd <= (conv_out_channel_fin == 1'b0)? weight_adr_rd + 1: 0;
      // end
      // else if (mode == 1'b1)
      // begin
      //   if (part_select == 2'd3)
      //   begin
      //     weight_base_adr_rd <= (conv_out_channel_fin == 1'b0)? weight_adr_rd + 1: 0;
      //   end
      //   else
      //   begin
      //     weight_base_adr_rd <= weight_base_adr_rd;
      //   end
      // end
      // else
      // begin
      //   weight_base_adr_rd <= 0;
      // end
    end
    else
    begin
      weight_base_adr_rd <= weight_base_adr_rd;
    end
  end

  assign weight_adr_rd = weight_base_adr_rd + weights_counter; //weights_counter is 0,1,...,nif*k*k-1

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      valid_weight <= 0;
    end
    else if (re_fm_en == 1'b1)
    begin
      if (re_fm_end == 1'b1)
      begin
        valid_weight <= 0;
      end
      else
      begin
        valid_weight <= 1;
      end
    end
    else
    begin
      valid_weight <= valid_weight;
    end
  end

  assign weight_en_rd = ((re_fm_en == 1'b1) && (re_fm_end == 1'b0))? 1 : 0;

  assign weights_vector_mode0 = weights_dout;

  assign weights_vector_mode1 =
         (part_select == 2'd0)? weights_dout[0 +: weights_in_tile_mode1 * 1]:
         (part_select == 2'd1)? weights_dout[weights_in_tile_mode1 * 1 +: weights_in_tile_mode1 * 1]:
         (part_select == 2'd2)? weights_dout[weights_in_tile_mode1 * 2 +: weights_in_tile_mode1 * 1]:
         weights_dout[weights_in_tile_mode1 * 3 +: weights_in_tile_mode1 * 1];

  genvar i;

  generate
    for (i = 0; i < (weights_in_tile_mode1 >> 1); i = i + 1)
    begin
      assign weights_vector_mode1_fin[i*8 +: 8] =
             {6'b0,weights_vector_mode1[2*i+1], weights_vector_mode1[2*i]};
    end
  endgenerate

  assign weights_vector =
         (mode == 1'b0) ? ((valid_weight == 1'b1)? weights_vector_mode0 : 0) :
         (mode == 1'b1) ? ((valid_weight == 1'b1)? weights_vector_mode1_fin : 0) :
         0;

endmodule
