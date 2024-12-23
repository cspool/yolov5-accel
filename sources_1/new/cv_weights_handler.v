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
    //cycle 0 in
    re_fm_en, //the first input is needed in next cycle
    re_fm_end,//the last input is needed in cur cycle

    //cylce 1 in
    weights_dout,

    //cycle 0 out
    weights_word_buf_en_rd,
    weights_word_buf_adr_rd,

    //cycle 1 out
    weights_vector
  );
// weight buffer read control in the computation term

  parameter weights_in_tile_mode0 = 64; // 8bit; //amount of weights needed in a computation tile
  parameter weights_in_tile_mode1 = 128; // 1bit
  parameter weight_word_length = weights_in_tile_mode0 * 8;
  parameter weights_in_word_mode0 = 64; //amount of weights read in a weight word
  parameter weights_in_word_mode1 = 128;


  input mode_init;

  input reset,clk;

  input re_fm_en, re_fm_end;

  input [weight_word_length-1 : 0] weights_dout;

  wire [weights_in_tile_mode0 * 8 -1 : 0] weights_vector_mode0;

  wire [weights_in_tile_mode1 * 1 -1 :0] weights_vector_mode1;

  wire [weight_word_length-1 :0] weights_vector_mode1_fin;

  output [weight_word_length-1 : 0] weights_vector;

  output weights_word_buf_en_rd;

  output [15:0] weights_word_buf_adr_rd;

  reg valid_weight;

  reg mode;

  reg [31:0] weights_counter; //in nif*k*k
  wire loop_weights_counter_add_begin, loop_weights_counter_add_end;


  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin //set
      mode <= mode_init;
    end
    else
    begin
      mode <= mode;
    end
  end

  //read from weights buffer

  //re_pixels from re_fm_en to re_fm_end consist of nif channels of a input tile that its computing needed
  // the adr need more completely logic
  //and adr mapping in different mode
  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      weights_counter <= 1;   //first adr
    end
    else if (loop_weights_counter_add_begin == 1'b1)
    begin
      if (loop_weights_counter_add_end == 1'b1)
      begin
        weights_counter <= 1;
      end
      else
      begin
        weights_counter <= weights_counter + 1;
      end
    end
    else
    begin
      weights_counter <= weights_counter;
    end
  end

  assign loop_weights_counter_add_begin = re_fm_en;
  assign loop_weights_counter_add_end = loop_weights_counter_add_begin && (re_fm_end == 1'b1);

  assign weights_word_buf_adr_rd = weights_counter - 1; //weights_counter is 1,...,nif*k*k

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      valid_weight <= 0;
    end
    else if (loop_weights_counter_add_begin == 1'b1)
    begin
      if (loop_weights_counter_add_end == 1'b1)
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

  assign weights_word_buf_en_rd = ((re_fm_en == 1'b1) && (re_fm_end == 1'b0))? 1 : 0;

  assign weights_vector_mode0 = weights_dout;

  assign weights_vector_mode1 = weights_dout[0 +: weights_in_tile_mode1 * 1];

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
