`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/29/2024 02:42:43 PM
// Design Name:
// Module Name: conv_load_input_controller_tb
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


module conv_load_input_controller_tb(

  );

  //conv_load_input_controller
  reg clk, conv_load_input, reset; //load input means fin of the last execuation term
  reg ddr_en;

  reg mode_init;
  reg [3:0] k_init, s_init, p_init;
  reg [15:0] of_init, ox_init, oy_init, ix_init, iy_init, nif_init;

  reg [3:0] nif_in_2pow_init, ix_in_2pow_init;
  reg [15:0] input_ddr_layer_base_adr_init;

  reg [7:0] of_div_row_num_ceil_init;
  //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_first_tilex_first_split_size_init;
  // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_first_tilex_last_split_size_init;
  //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_first_tilex_mid_split_size_init;
  //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_last_tilex_first_split_size_init;
  //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_last_tilex_last_split_size_init;
  //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_last_tilex_mid_split_size_init;
  //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_mid_tilex_first_split_size_init;
  //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_mid_tilex_last_split_size_init;
  //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_mid_tilex_mid_split_size_init;
  //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  reg [7:0] tilex_first_ix_word_num_init;
  //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
  reg [7:0] tilex_last_ix_word_num_init;
  //tilex_mid_ix_word_num = s
  reg [7:0] tilex_mid_ix_word_num_init;
  //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  reg [7:0] tiley_first_iy_row_num_init;
  // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
  reg [7:0] tiley_last_iy_row_num_init;
  //tiley_mid_iy_row_num = buffers_num * s
  reg [7:0] tiley_mid_iy_row_num_init;

  wire [15:0] load_input_row_idx;
  wire [15:0] load_input_row_start_idx;
  wire [15:0] load_input_if_idx;
  wire [15:0] load_input_row_buf_adr;
  wire [1:0] load_input_row_buf_idx;

  wire input_word_ddr_en_rd;
  wire [15:0] input_word_ddr_adr_rd;
  wire input_word_load_info_fifo_en_wt;
  wire [31:0] input_word_load_info_fifo_wt;

  reg valid_load_input;

  reg [511:0] last_load_input_word;
  reg state_valid_load_input;

  reg [31:0] input_word_load_info_fifo_rd;

  conv_load_input_controller cv_load_input_ctrl(
                               .clk(clk),
                               .conv_load_input(conv_load_input),
                               .reset(reset),
                               .ddr_en(ddr_en),

                               .mode_init(mode_init),
                               .of_init(of_init),
                               .ox_init(ox_init),
                               .oy_init(oy_init),
                               .ix_init(ix_init),
                               .iy_init(iy_init),
                               .nif_init(nif_init),
                               .k_init(k_init),
                               .s_init(s_init),
                               .p_init(p_init),
                               .nif_in_2pow_init(nif_in_2pow_init),
                               .ix_in_2pow_init(ix_in_2pow_init),
                               .input_ddr_layer_base_adr_init(input_ddr_layer_base_adr_init),
                               .of_div_row_num_ceil_init(of_div_row_num_ceil_init),
                               .tiley_first_tilex_first_split_size_init(tiley_first_tilex_first_split_size_init),
                               .tiley_first_tilex_last_split_size_init(tiley_first_tilex_last_split_size_init),
                               .tiley_first_tilex_mid_split_size_init(tiley_first_tilex_mid_split_size_init),
                               .tiley_last_tilex_first_split_size_init(tiley_last_tilex_first_split_size_init),
                               .tiley_last_tilex_last_split_size_init(tiley_last_tilex_last_split_size_init),
                               .tiley_last_tilex_mid_split_size_init(tiley_last_tilex_mid_split_size_init),
                               .tiley_mid_tilex_first_split_size_init(tiley_mid_tilex_first_split_size_init),
                               .tiley_mid_tilex_last_split_size_init(tiley_mid_tilex_last_split_size_init),
                               .tiley_mid_tilex_mid_split_size_init(tiley_mid_tilex_mid_split_size_init),
                               .tilex_first_ix_word_num_init(tilex_first_ix_word_num_init),
                               .tilex_last_ix_word_num_init(tilex_last_ix_word_num_init),
                               .tilex_mid_ix_word_num_init(tilex_mid_ix_word_num_init),
                               .tiley_first_iy_row_num_init(tiley_first_iy_row_num_init),
                               .tiley_last_iy_row_num_init(tiley_last_iy_row_num_init),
                               .tiley_mid_iy_row_num_init(tiley_mid_iy_row_num_init),

                               .load_input_row_idx(load_input_row_idx),
                               .load_input_row_start_idx(load_input_row_start_idx),
                               .load_input_if_idx(load_input_if_idx),
                               .load_input_row_buf_adr(load_input_row_buf_adr),
                               .load_input_row_buf_idx(load_input_row_buf_idx),
                               .input_word_ddr_en_rd(input_word_ddr_en_rd),
                               .input_word_ddr_adr_rd(input_word_ddr_adr_rd),
                               .input_word_load_info_fifo_en_wt(input_word_load_info_fifo_en_wt),
                               .input_word_load_info_fifo_wt(input_word_load_info_fifo_wt)
                             );

  always
  begin
    #5;
    clk <= ~clk;
  end

  //DDR
  DDR DDR (
        .clka(clk),    // input wire clka
        .ena(weights_word_ddr_en_rd),      // input wire ena
        .wea(0),      // input wire [0 : 0] wea
        .addra(weights_word_ddr_adr_rd),  // input wire [12 : 0] addra
        .dina(0),    // input wire [511 : 0] dina
        .douta(DDR_out)  // output wire [511 : 0] douta
      );

  always @(posedge clk)
  begin
    if (reset)
    begin
      valid_load_input <= 0;
    end
    else
    begin
      valid_load_input <= input_word_ddr_en_rd; //DDR sim
    end
  end

  assign load_input_word = (valid_load_input == 1'b1) ? DDR_out : 0;


  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      last_load_input_word <= 0;
      state_valid_load_input <= 0;
    end
    else if (valid_load_input == 1'b1)
    begin
      last_load_input_word <= load_input_word;
      state_valid_load_input <= valid_load_input;
    end
    else if ((valid_load_input == 1'b0) && (state_valid_load_input == 1'b1))
    begin
      last_load_input_word <= 0;
      state_valid_load_input <= 0;
    end
    else
    begin
      last_load_input_word <= last_load_input_word;
      state_valid_load_input <= state_valid_load_input;
    end
  end

  assign input_word_buf_wr = last_load_input_word;
  assign input_word_buf_en_wr = state_valid_load_input;

  //fifo
  load_input_info_fifo load_input_info_fifo (
                         .clk(clk),                // input wire clk
                         .srst(reset),              // input wire srst
                         .din(input_word_load_info_fifo_wt),                // input wire [31 : 0] din
                         .wr_en(input_word_load_info_fifo_en_wt),            // input wire wr_en
                         .rd_en(input_word_load_info_fifo_en_rd),            // input wire rd_en
                         .dout(input_word_load_info_fifo_rd),              // output wire [31 : 0] dout
                         .full(full),              // output wire full
                         .empty(empty),            // output wire empty
                         .data_count(data_count)  // output wire [8 : 0] data_count
                       );

  assign input_word_load_info_fifo_en_rd = valid_load_input;
  assign input_word_buf_idx_wr = input_word_load_info_fifo_rd[0 +: 16];
  assign input_word_buf_adr_wr = input_word_load_info_fifo_rd[16 +: 16];


  initial
  begin
    clk = 0;
    conv_load_input = 0; //begin weights loading
    ddr_en = 1; //mig fifo can accept request

    mode_init = 0;
    
    of_init = 128;
    

    reset = 1;

    #10;
    reset = 0;
    conv_load_input = 1;

    #10;
    conv_load_input = 0;

    

  end

endmodule
