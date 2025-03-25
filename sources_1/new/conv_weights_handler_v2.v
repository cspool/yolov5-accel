`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 12:49:09
// Design Name: 
// Module Name: conv_weights_handler_v2
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


module conv_weights_handler_v2 (
    clk,
    reset,

    mode,
    //cycle 0 in
    re_fm_en,  //the first input is needed in next cycle
    re_fm_end,  //the last input is needed in cur cycle
    //cycle 0 out
    weights_word_buf_en_rd,
    weights_word_buf_adr_rd
);
  // weight buffer read control in the computation term
  parameter weights_in_tile_mode0 = 64;  // 8bit; //amount of weights needed in a computation tile
  parameter weights_in_tile_mode1 = 128;  // 1bit
  parameter weight_word_length = weights_in_tile_mode0 * 8;
  parameter weights_in_word_mode0 = 64;  //amount of weights read in a weight word
  parameter weights_in_word_mode1 = 128;

  input reset, clk;
  input [3:0] mode;
  input re_fm_en, re_fm_end;
  output weights_word_buf_en_rd;
  output [15:0] weights_word_buf_adr_rd;

  reg [31:0] weights_counter;  //in nif*k*k
  wire loop_weights_counter_add_begin, loop_weights_counter_add_end;

  //read from weights buffer

  //re_pixels from re_fm_en to re_fm_end consist of nif channels of a input tile that its computing needed
  // the adr need more completely logic
  //and adr mapping in different mode
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      weights_counter <= 1;  //first adr
    end else if (loop_weights_counter_add_begin == 1'b1) begin
      if (loop_weights_counter_add_end == 1'b1) begin
        weights_counter <= 1;
      end else begin
        weights_counter <= weights_counter + 1;
      end
    end else begin
      weights_counter <= weights_counter;
    end
  end

  assign loop_weights_counter_add_begin = re_fm_en;
  assign loop_weights_counter_add_end   = loop_weights_counter_add_begin && (re_fm_end == 1'b1);
  // re_fm_end == 1'b1 <=====> weights_counter == nif*k*k 

  assign weights_word_buf_adr_rd        = weights_counter - 1;  //weights_counter is 1,...,nif*k*k

  assign weights_word_buf_en_rd         = ((re_fm_en == 1'b1) && (re_fm_end == 1'b0)) ? 1 : 0;

endmodule
