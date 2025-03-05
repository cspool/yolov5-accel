`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/18 16:47:19
// Design Name: 
// Module Name: conv_activate_quantify_decoder
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


module conv_activate_quantify_decoder (
    clk,
    reset,
    conv_decode,
    conv_instr_args,
    conv_start,
    mode,
    k,
    s,
    p,
    of,
    ox,
    oy,
    ix,
    iy,
    nif,
    nif_in_2pow,
    ix_in_2pow,
    of_in_2pow,
    ox_in_2pow,
    nif_mult_k_mult_k,
    N_chunks,
    E_layer_base_buf_adr_rd,
    bias_layer_base_buf_adr_rd,
    scale_layer_base_buf_adr_rd,
    weights_layer_base_ddr_adr_rd,
    input_ddr_layer_base_adr,
    output_ddr_layer_base_adr,
    of_div_row_num_ceil,
    tiley_first_tilex_first_split_size,
    tiley_first_tilex_last_split_size,
    tiley_first_tilex_mid_split_size,
    tiley_last_tilex_first_split_size,
    tiley_last_tilex_last_split_size,
    tiley_last_tilex_mid_split_size,
    tiley_mid_tilex_first_split_size,
    tiley_mid_tilex_last_split_size,
    tiley_mid_tilex_mid_split_size,
    tilex_first_ix_word_num,
    tilex_last_ix_word_num,
    tilex_mid_ix_word_num,
    tiley_first_iy_row_num,
    tiley_last_iy_row_num,
    tiley_mid_iy_row_num,
    ix_index_num,
    iy_index_num
);
  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;
  parameter buffers_num = 3;
  parameter row_num_in_mode0 = 64;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_in_mode1 = 128;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_mode0_2pow = 6;
  parameter row_num_mode1_2pow = 7;
  parameter ifs_in_row_2pow = 1;
  parameter input_buffer_size_2pow = 12;  //4096
  parameter buf_rd_ratio = 2;
  parameter conv_instr_args_num = 38;

  input clk, reset, conv_decode;
  input [511:0] conv_instr_args;
  output reg conv_start;
  //all below come from instr
  output reg [3:0] mode;
  output reg [3:0] k, s, p;
  output reg [15:0] of, ox, oy, ix, iy, nif;
  output reg [3:0] nif_in_2pow, ix_in_2pow, of_in_2pow, ox_in_2pow;
  output reg [31:0] nif_mult_k_mult_k;
  output reg [31:0] N_chunks;
  output reg [15:0] E_layer_base_buf_adr_rd;
  output reg [15:0] bias_layer_base_buf_adr_rd;
  output reg [15:0] scale_layer_base_buf_adr_rd;
  output reg [31:0] weights_layer_base_ddr_adr_rd;
  output reg [31:0] input_ddr_layer_base_adr;
  output reg [31:0] output_ddr_layer_base_adr;
  output reg [7:0] of_div_row_num_ceil;
  //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_first_tilex_first_split_size;
  // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_first_tilex_last_split_size;
  //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_first_tilex_mid_split_size;
  //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_last_tilex_first_split_size;
  //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_last_tilex_last_split_size;
  //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_last_tilex_mid_split_size;
  //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_mid_tilex_first_split_size;
  //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_mid_tilex_last_split_size;
  //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_mid_tilex_mid_split_size;
  //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  output reg [7:0] tilex_first_ix_word_num;
  //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1 - 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row - 1)*s+k-p)/pixels_in_row)
  output reg [7:0] tilex_last_ix_word_num;
  //tilex_mid_ix_word_num = s
  output reg [7:0] tilex_mid_ix_word_num;
  //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  output reg [7:0] tiley_first_iy_row_num;
  // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
  output reg [7:0] tiley_last_iy_row_num;
  //tiley_mid_iy_row_num = buffers_num * s
  output reg [7:0] tiley_mid_iy_row_num;
  //ix_index_num = ceil(ix/pixels_in_row)
  //iy_index_num = ceil(iy/buffers_num)xxxxx =iy
  output reg [15:0] ix_index_num, iy_index_num;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      conv_start <= 1'b0;
    end else if (conv_decode == 1'b1) begin
      conv_start <= 1'b1;
    end else if (conv_start == 1'b1) begin
      conv_start <= 1'b0;
    end else begin
      conv_start <= conv_start;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      mode                               <= 0;
      k                                  <= 0;
      s                                  <= 0;
      p                                  <= 0;
      of                                 <= 0;
      of_in_2pow                         <= 0;
      ox                                 <= 0;
      ox_in_2pow                         <= 0;
      oy                                 <= 0;
      ix                                 <= 0;
      ix_in_2pow                         <= 0;
      iy                                 <= 0;
      nif                                <= 0;
      nif_in_2pow                        <= 0;
      nif_mult_k_mult_k                  <= 0;
      N_chunks                           <= 0;
      E_layer_base_buf_adr_rd            <= 0;
      bias_layer_base_buf_adr_rd         <= 0;
      scale_layer_base_buf_adr_rd        <= 0;
      weights_layer_base_ddr_adr_rd      <= 0;
      input_ddr_layer_base_adr           <= 0;
      output_ddr_layer_base_adr          <= 0;
      tilex_first_ix_word_num            <= 0;
      tilex_last_ix_word_num             <= 0;
      tilex_mid_ix_word_num              <= 0;
      tiley_first_iy_row_num             <= 0;
      tiley_last_iy_row_num              <= 0;
      tiley_mid_iy_row_num               <= 0;
      ix_index_num                       <= 0;
      iy_index_num                       <= 0;
      of_div_row_num_ceil                <= 0;
      tiley_first_tilex_first_split_size <= 0;
      tiley_first_tilex_last_split_size  <= 0;
      tiley_first_tilex_mid_split_size   <= 0;
      tiley_last_tilex_first_split_size  <= 0;
      tiley_last_tilex_last_split_size   <= 0;
      tiley_last_tilex_mid_split_size    <= 0;
      tiley_mid_tilex_first_split_size   <= 0;
      tiley_mid_tilex_last_split_size    <= 0;
      tiley_mid_tilex_mid_split_size     <= 0;
    end else if (conv_decode == 1'b1) begin
      mode                               <= conv_instr_args[0+:4];  //4
      k                                  <= conv_instr_args[4+:4];  //4
      s                                  <= conv_instr_args[8+:4];  //4
      p                                  <= conv_instr_args[12+:4];  //4
      of                                 <= conv_instr_args[16+:16];  //16
      of_in_2pow                         <= conv_instr_args[32+:4];  //4
      ox                                 <= conv_instr_args[36+:16];  //16
      ox_in_2pow                         <= conv_instr_args[52+:4];  //4
      oy                                 <= conv_instr_args[56+:16];  //16
      ix                                 <= conv_instr_args[72+:16];  //16
      ix_in_2pow                         <= conv_instr_args[88+:4];  //4
      iy                                 <= conv_instr_args[92+:16];  //16
      nif                                <= conv_instr_args[108+:16];  //16
      nif_in_2pow                        <= conv_instr_args[124+:4];  //4
      nif_mult_k_mult_k                  <= conv_instr_args[128+:32];  //32
      N_chunks                           <= conv_instr_args[160+:32];  //32
      E_layer_base_buf_adr_rd            <= conv_instr_args[192+:16];  //16
      bias_layer_base_buf_adr_rd         <= conv_instr_args[208+:16];  //16
      scale_layer_base_buf_adr_rd        <= conv_instr_args[224+:16];  //16
      weights_layer_base_ddr_adr_rd      <= conv_instr_args[240+:32];  //32
      input_ddr_layer_base_adr           <= conv_instr_args[272+:32];  //32
      output_ddr_layer_base_adr          <= conv_instr_args[304+:32];  //32
      tilex_first_ix_word_num            <= conv_instr_args[336+:8];  //8
      tilex_last_ix_word_num             <= conv_instr_args[344+:8];  //8
      tilex_mid_ix_word_num              <= conv_instr_args[352+:8];  //8
      tiley_first_iy_row_num             <= conv_instr_args[360+:8];  //8
      tiley_last_iy_row_num              <= conv_instr_args[368+:8];  //8
      tiley_mid_iy_row_num               <= conv_instr_args[376+:8];  //8
      ix_index_num                       <= conv_instr_args[384+:16];  //16
      iy_index_num                       <= conv_instr_args[400+:16];  //16
      of_div_row_num_ceil                <= conv_instr_args[416+:8];  //8
      tiley_first_tilex_first_split_size <= conv_instr_args[424+:8];  //8
      tiley_first_tilex_last_split_size  <= conv_instr_args[432+:8];  //8
      tiley_first_tilex_mid_split_size   <= conv_instr_args[440+:8];  //8
      tiley_last_tilex_first_split_size  <= conv_instr_args[448+:8];  //8
      tiley_last_tilex_last_split_size   <= conv_instr_args[456+:8];  //8
      tiley_last_tilex_mid_split_size    <= conv_instr_args[464+:8];  //8
      tiley_mid_tilex_first_split_size   <= conv_instr_args[472+:8];  //8
      tiley_mid_tilex_last_split_size    <= conv_instr_args[480+:8];  //8
      tiley_mid_tilex_mid_split_size     <= conv_instr_args[488+:8];  //8
    end else begin
      mode                               <= mode;
      k                                  <= k;
      s                                  <= s;
      p                                  <= p;
      of                                 <= of;
      of_in_2pow                         <= of_in_2pow;
      ox                                 <= ox;
      ox_in_2pow                         <= ox_in_2pow;
      oy                                 <= oy;
      ix                                 <= ix;
      ix_in_2pow                         <= ix_in_2pow;
      iy                                 <= iy;
      nif                                <= nif;
      nif_in_2pow                        <= nif_in_2pow;
      nif_mult_k_mult_k                  <= nif_mult_k_mult_k;
      N_chunks                           <= N_chunks;
      E_layer_base_buf_adr_rd            <= E_layer_base_buf_adr_rd;
      bias_layer_base_buf_adr_rd         <= bias_layer_base_buf_adr_rd;
      scale_layer_base_buf_adr_rd        <= scale_layer_base_buf_adr_rd;
      weights_layer_base_ddr_adr_rd      <= weights_layer_base_ddr_adr_rd;
      input_ddr_layer_base_adr           <= input_ddr_layer_base_adr;
      output_ddr_layer_base_adr          <= output_ddr_layer_base_adr;
      tilex_first_ix_word_num            <= tilex_first_ix_word_num;
      tilex_last_ix_word_num             <= tilex_last_ix_word_num;
      tilex_mid_ix_word_num              <= tilex_mid_ix_word_num;
      tiley_first_iy_row_num             <= tiley_first_iy_row_num;
      tiley_last_iy_row_num              <= tiley_last_iy_row_num;
      tiley_mid_iy_row_num               <= tiley_mid_iy_row_num;
      ix_index_num                       <= ix_index_num;
      iy_index_num                       <= iy_index_num;
      of_div_row_num_ceil                <= of_div_row_num_ceil;
      tiley_first_tilex_first_split_size <= tiley_first_tilex_first_split_size;
      tiley_first_tilex_last_split_size  <= tiley_first_tilex_last_split_size;
      tiley_first_tilex_mid_split_size   <= tiley_first_tilex_mid_split_size;
      tiley_last_tilex_first_split_size  <= tiley_last_tilex_first_split_size;
      tiley_last_tilex_last_split_size   <= tiley_last_tilex_last_split_size;
      tiley_last_tilex_mid_split_size    <= tiley_last_tilex_mid_split_size;
      tiley_mid_tilex_first_split_size   <= tiley_mid_tilex_first_split_size;
      tiley_mid_tilex_last_split_size    <= tiley_mid_tilex_last_split_size;
      tiley_mid_tilex_mid_split_size     <= tiley_mid_tilex_mid_split_size;
    end
  end

  //initial code in simulation
  // reg     [31:0] mode_reg;
  // reg     [31:0] k_reg;
  // reg     [31:0] s_reg;
  // reg     [31:0] p_reg;
  // reg     [31:0] of_reg;
  // reg     [31:0] ox_reg;
  // reg     [31:0] oy_reg;
  // reg     [31:0] ix_reg;
  // reg     [31:0] iy_reg;
  // reg     [31:0] nif_reg;
  // reg     [31:0] nif_in_2pow_reg;
  // reg     [31:0] ix_in_2pow_reg;
  // reg     [31:0] nif_mult_k_mult_k_reg;
  // reg     [31:0] N_chunks_reg;
  // reg     [31:0] E_layer_base_buf_adr_rd_reg;
  // reg     [31:0] bias_layer_base_buf_adr_rd_reg;
  // reg     [31:0] scale_layer_base_buf_adr_rd_reg;
  // reg     [31:0] weights_layer_base_ddr_adr_rd_reg;
  // reg     [31:0] input_ddr_layer_base_adr_reg;
  // reg     [31:0] output_ddr_layer_base_adr_reg;
  // reg     [31:0] row_num_reg;
  // reg     [31:0] pixels_in_row_reg;
  // reg     [31:0] buffers_num_reg;
  // reg     [31:0] tilex_first_ix_word_num_reg;
  // reg     [31:0] tilex_last_ix_word_num_reg;
  // reg     [31:0] tilex_mid_ix_word_num_reg;
  // reg     [31:0] tiley_first_iy_row_num_reg;
  // reg     [31:0] tiley_last_iy_row_num_reg;
  // reg     [31:0] tiley_mid_iy_row_num_reg;
  // reg     [31:0] ix_index_num_reg;
  // reg     [31:0] iy_index_num_reg;
  // reg     [31:0] of_div_row_num_ceil_reg;
  // reg     [31:0] tiley_first_tilex_first_split_size_reg;
  // reg     [31:0] tiley_first_tilex_last_split_size_reg;
  // reg     [31:0] tiley_first_tilex_mid_split_size_reg;
  // reg     [31:0] tiley_last_tilex_first_split_size_reg;
  // reg     [31:0] tiley_last_tilex_last_split_size_reg;
  // reg     [31:0] tiley_last_tilex_mid_split_size_reg;
  // reg     [31:0] tiley_mid_tilex_first_split_size_reg;
  // reg     [31:0] tiley_mid_tilex_last_split_size_reg;
  // reg     [31:0] tiley_mid_tilex_mid_split_size_reg;

  // reg     [31:0] instr_args_init                        [conv_instr_args_num-1:0];  //38
  // integer        i;

  // initial begin
  //   // 从 instr_args_init.txt 文件中读取数据
  //   $readmemh("D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\instr_args_init.txt", instr_args_init);

  //   // 可选：打印读取的数据以验证
  //   for (i = 0; i < conv_instr_args_num; i = i + 1) begin
  //     $display("instr_args_init[%d] = %d", i, instr_args_init[i]);
  //   end
  //   mode_reg                               = instr_args_init[0];
  //   k_reg                                  = instr_args_init[1];
  //   s_reg                                  = instr_args_init[2];
  //   p_reg                                  = instr_args_init[3];
  //   of_reg                                 = instr_args_init[4];
  //   ox_reg                                 = instr_args_init[5];
  //   oy_reg                                 = instr_args_init[6];
  //   ix_reg                                 = instr_args_init[7];
  //   ix_in_2pow_reg                         = instr_args_init[8];
  //   iy_reg                                 = instr_args_init[9];
  //   nif_reg                                = instr_args_init[10];
  //   nif_in_2pow_reg                        = instr_args_init[11];
  //   nif_mult_k_mult_k_reg                  = instr_args_init[12];
  //   N_chunks_reg                           = instr_args_init[13];
  //   E_layer_base_buf_adr_rd_reg            = instr_args_init[14];
  //   bias_layer_base_buf_adr_rd_reg         = instr_args_init[15];
  //   scale_layer_base_buf_adr_rd_reg        = instr_args_init[16];
  //   weights_layer_base_ddr_adr_rd_reg      = instr_args_init[17];
  //   input_ddr_layer_base_adr_reg           = instr_args_init[18];
  //   output_ddr_layer_base_adr_reg          = instr_args_init[19];
  //   tilex_first_ix_word_num_reg            = instr_args_init[20];
  //   tilex_last_ix_word_num_reg             = instr_args_init[21];
  //   tilex_mid_ix_word_num_reg              = instr_args_init[22];
  //   tiley_first_iy_row_num_reg             = instr_args_init[23];
  //   tiley_last_iy_row_num_reg              = instr_args_init[24];
  //   tiley_mid_iy_row_num_reg               = instr_args_init[25];
  //   ix_index_num_reg                       = instr_args_init[26];
  //   iy_index_num_reg                       = instr_args_init[27];
  //   of_div_row_num_ceil_reg                = instr_args_init[28];
  //   tiley_first_tilex_first_split_size_reg = instr_args_init[29];
  //   tiley_first_tilex_last_split_size_reg  = instr_args_init[30];
  //   tiley_first_tilex_mid_split_size_reg   = instr_args_init[31];
  //   tiley_last_tilex_first_split_size_reg  = instr_args_init[32];
  //   tiley_last_tilex_last_split_size_reg   = instr_args_init[33];
  //   tiley_last_tilex_mid_split_size_reg    = instr_args_init[34];
  //   tiley_mid_tilex_first_split_size_reg   = instr_args_init[35];
  //   tiley_mid_tilex_last_split_size_reg    = instr_args_init[36];
  //   tiley_mid_tilex_mid_split_size_reg     = instr_args_init[37];
  // end

  // always @(posedge clk) begin
  //   if (reset == 1'b1) begin
  //     mode                               <= 0;
  //     k                                  <= 0;
  //     s                                  <= 0;
  //     p                                  <= 0;
  //     of                                 <= 0;
  //     ox                                 <= 0;
  //     oy                                 <= 0;
  //     ix                                 <= 0;
  //     iy                                 <= 0;
  //     ix_in_2pow                         <= 0;
  //     nif                                <= 0;
  //     nif_in_2pow                        <= 0;
  //     nif_mult_k_mult_k                  <= 0;
  //     N_chunks                           <= 0;
  //     E_layer_base_buf_adr_rd            <= 0;
  //     bias_layer_base_buf_adr_rd         <= 0;
  //     scale_layer_base_buf_adr_rd        <= 0;
  //     weights_layer_base_ddr_adr_rd      <= 0;
  //     input_ddr_layer_base_adr           <= 0;
  //     output_ddr_layer_base_adr          <= 0;
  //     tilex_first_ix_word_num            <= 0;
  //     tilex_last_ix_word_num             <= 0;
  //     tilex_mid_ix_word_num              <= 0;
  //     tiley_first_iy_row_num             <= 0;
  //     tiley_last_iy_row_num              <= 0;
  //     tiley_mid_iy_row_num               <= 0;
  //     ix_index_num                       <= 0;
  //     iy_index_num                       <= 0;
  //     of_div_row_num_ceil                <= 0;
  //     tiley_first_tilex_first_split_size <= 0;
  //     tiley_first_tilex_last_split_size  <= 0;
  //     tiley_first_tilex_mid_split_size   <= 0;
  //     tiley_last_tilex_first_split_size  <= 0;
  //     tiley_last_tilex_last_split_size   <= 0;
  //     tiley_last_tilex_mid_split_size    <= 0;
  //     tiley_mid_tilex_first_split_size   <= 0;
  //     tiley_mid_tilex_last_split_size    <= 0;
  //     tiley_mid_tilex_mid_split_size     <= 0;
  //   end else if (conv_decode == 1'b1) begin
  //     mode                               <= mode_reg;
  //     k                                  <= k_reg;
  //     s                                  <= s_reg;
  //     p                                  <= p_reg;
  //     of                                 <= of_reg;
  //     ox                                 <= ox_reg;
  //     oy                                 <= oy_reg;
  //     ix                                 <= ix_reg;
  //     iy                                 <= iy_reg;
  //     ix_in_2pow                         <= ix_in_2pow_reg;
  //     nif                                <= nif_reg;
  //     nif_in_2pow                        <= nif_in_2pow_reg;
  //     nif_mult_k_mult_k                  <= nif_mult_k_mult_k_reg;
  //     N_chunks                           <= N_chunks_reg;
  //     E_layer_base_buf_adr_rd            <= E_layer_base_buf_adr_rd_reg;
  //     bias_layer_base_buf_adr_rd         <= bias_layer_base_buf_adr_rd_reg;
  //     scale_layer_base_buf_adr_rd        <= scale_layer_base_buf_adr_rd_reg;
  //     weights_layer_base_ddr_adr_rd      <= weights_layer_base_ddr_adr_rd_reg;
  //     input_ddr_layer_base_adr           <= input_ddr_layer_base_adr_reg;
  //     output_ddr_layer_base_adr          <= output_ddr_layer_base_adr_reg;
  //     tilex_first_ix_word_num            <= tilex_first_ix_word_num_reg;
  //     tilex_last_ix_word_num             <= tilex_last_ix_word_num_reg;
  //     tilex_mid_ix_word_num              <= tilex_mid_ix_word_num_reg;
  //     tiley_first_iy_row_num             <= tiley_first_iy_row_num_reg;
  //     tiley_last_iy_row_num              <= tiley_last_iy_row_num_reg;
  //     tiley_mid_iy_row_num               <= tiley_mid_iy_row_num_reg;
  //     ix_index_num                       <= ix_index_num_reg;
  //     iy_index_num                       <= iy_index_num_reg;
  //     of_div_row_num_ceil                <= of_div_row_num_ceil_reg;
  //     tiley_first_tilex_first_split_size <= tiley_first_tilex_first_split_size_reg;
  //     tiley_first_tilex_last_split_size  <= tiley_first_tilex_last_split_size_reg;
  //     tiley_first_tilex_mid_split_size   <= tiley_first_tilex_mid_split_size_reg;
  //     tiley_last_tilex_first_split_size  <= tiley_last_tilex_first_split_size_reg;
  //     tiley_last_tilex_last_split_size   <= tiley_last_tilex_last_split_size_reg;
  //     tiley_last_tilex_mid_split_size    <= tiley_last_tilex_mid_split_size_reg;
  //     tiley_mid_tilex_first_split_size   <= tiley_mid_tilex_first_split_size_reg;
  //     tiley_mid_tilex_last_split_size    <= tiley_mid_tilex_last_split_size_reg;
  //     tiley_mid_tilex_mid_split_size     <= tiley_mid_tilex_mid_split_size_reg;
  //   end else begin
  //     mode                               <= mode;
  //     k                                  <= k;
  //     s                                  <= s;
  //     p                                  <= p;
  //     of                                 <= of;
  //     ox                                 <= ox;
  //     oy                                 <= oy;
  //     ix                                 <= ix;
  //     iy                                 <= iy;
  //     ix_in_2pow                         <= ix_in_2pow;
  //     nif                                <= nif;
  //     nif_in_2pow                        <= nif_in_2pow;
  //     nif_mult_k_mult_k                  <= nif_mult_k_mult_k;
  //     N_chunks                           <= N_chunks;
  //     E_layer_base_buf_adr_rd            <= E_layer_base_buf_adr_rd;
  //     bias_layer_base_buf_adr_rd         <= bias_layer_base_buf_adr_rd;
  //     scale_layer_base_buf_adr_rd        <= scale_layer_base_buf_adr_rd;
  //     weights_layer_base_ddr_adr_rd      <= weights_layer_base_ddr_adr_rd;
  //     input_ddr_layer_base_adr           <= input_ddr_layer_base_adr;
  //     output_ddr_layer_base_adr          <= output_ddr_layer_base_adr;
  //     tilex_first_ix_word_num            <= tilex_first_ix_word_num;
  //     tilex_last_ix_word_num             <= tilex_last_ix_word_num;
  //     tilex_mid_ix_word_num              <= tilex_mid_ix_word_num;
  //     tiley_first_iy_row_num             <= tiley_first_iy_row_num;
  //     tiley_last_iy_row_num              <= tiley_last_iy_row_num;
  //     tiley_mid_iy_row_num               <= tiley_mid_iy_row_num;
  //     ix_index_num                       <= ix_index_num;
  //     iy_index_num                       <= iy_index_num;
  //     of_div_row_num_ceil                <= of_div_row_num_ceil;
  //     tiley_first_tilex_first_split_size <= tiley_first_tilex_first_split_size;
  //     tiley_first_tilex_last_split_size  <= tiley_first_tilex_last_split_size;
  //     tiley_first_tilex_mid_split_size   <= tiley_first_tilex_mid_split_size;
  //     tiley_last_tilex_first_split_size  <= tiley_last_tilex_first_split_size;
  //     tiley_last_tilex_last_split_size   <= tiley_last_tilex_last_split_size;
  //     tiley_last_tilex_mid_split_size    <= tiley_last_tilex_mid_split_size;
  //     tiley_mid_tilex_first_split_size   <= tiley_mid_tilex_first_split_size;
  //     tiley_mid_tilex_last_split_size    <= tiley_mid_tilex_last_split_size;
  //     tiley_mid_tilex_mid_split_size     <= tiley_mid_tilex_mid_split_size;
  //   end
  // end
endmodule
