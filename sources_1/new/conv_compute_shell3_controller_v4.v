`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/14 12:55:44
// Design Name: 
// Module Name: conv_compute_shell3_controller_v4
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


module conv_compute_shell3_controller_v4 #(
    parameter sa_column_num = 2,  //how many columns in conv core
    parameter pixels_in_row = 32,
    parameter pixels_in_row_mult_2 = pixels_in_row * 2,
    parameter pixels_in_row_mult_2_minus_1 = pixels_in_row_mult_2 - 1,
    parameter pixels_in_row_mult_2_minus_2 = pixels_in_row_mult_2 - 2,
    parameter pixels_in_row_mult_2_minus_3 = pixels_in_row_mult_2 - 3,
    parameter pixels_in_row_mult_2_minus_4 = pixels_in_row_mult_2 - 4,
    parameter pixels_in_row_in_2pow = 5,
    parameter buffers_num = 3,
    parameter pixels_in_row_minus_1 = pixels_in_row - 1,
    parameter pixels_in_row_minus_2 = pixels_in_row - 2,
    parameter pixels_in_row_minus_3 = pixels_in_row - 3,
    parameter buffers_num_minus_1 = buffers_num - 1,
    parameter row_num_in_mode0 = 64,  // 64 in 8 bit, 128 in 1 bit
    parameter row_num_in_mode1 = 128,  // 64 in 8 bit, 128 in 1 bit
    parameter ifs_in_row_2pow = 1,
    parameter input_buffer_size_2pow = 12,  //4096
    parameter slab_buffer_size_2pow = 13  //8192
) (
    input        clk,
    reset,
    input [ 3:0] s_init,
    p_init,
    input [15:0] iy_init,
    input [ 3:0] nif_in_2pow_init,
    ix_in_2pow_init,
    input [15:0] poy,
    input        valid_adr,
    input [15:0] iy_start,
    input [15:0] ky,
    input [15:0] row_base_in_3s,
    input [15:0] row_start_idx,
    input [15:0] if_start,
    input [ 3:0] slab_num,
    input [15:0] row_slab_start_idx,

    output reg [15:0] row3_idx,
    output reg [15:0] row3_buf_adr,
    output reg [ 1:0] row3_buf_idx,
    output reg        row3_buf_word_select,
    output reg [15:0] row3_slab_adr,
    output reg [ 1:0] row3_slab_idx,
    output reg [15:0] row3_slab_adr_to_wr,
    output reg [ 1:0] row3_slab_idx_to_wr,
    //valid is the buf/slab rd en signal, which equals slab_to_wr signal
    output reg        valid_row3_adr
);
  reg [ 3:0] s;
  reg [ 3:0] s_mult_3;
  reg [ 3:0] p;
  reg [15:0] iy;
  reg [ 3:0] nif_in_2pow;
  reg [ 3:0] ix_in_2pow;

  //adr mod mapping
  reg [ 3:0] row_num_limit_input_buffer_2pow;
  reg [ 3:0] row_num_limit_slab_buffer_2pow;
  reg [15:0] row_num_limit_mask_input_buffer;
  reg [15:0] row_num_limit_mask_slab_buffer;

  always @(posedge clk) begin
    if (reset) begin
      s                               <= s_init;
      s_mult_3                        <= (s_init << 1) + s_init;
      p                               <= p_init;
      iy                              <= iy_init;
      nif_in_2pow                     <= nif_in_2pow_init;
      ix_in_2pow                      <= ix_in_2pow_init;
      row_num_limit_input_buffer_2pow <= input_buffer_size_2pow - (  //
 nif_in_2pow_init - ifs_in_row_2pow + ix_in_2pow_init - pixels_in_row_in_2pow);
      row_num_limit_slab_buffer_2pow  <= slab_buffer_size_2pow - (  //
 nif_in_2pow_init + ix_in_2pow_init - pixels_in_row_in_2pow);
      row_num_limit_mask_input_buffer <= 16'hffff >> (16 - (input_buffer_size_2pow - (  //
 nif_in_2pow_init - ifs_in_row_2pow + ix_in_2pow_init - pixels_in_row_in_2pow)));
      row_num_limit_mask_slab_buffer  <= 16'hffff >> (16 - (slab_buffer_size_2pow - (  //
 nif_in_2pow_init + ix_in_2pow_init - pixels_in_row_in_2pow)));
    end else begin
      s                               <= s;
      s_mult_3                        <= s_mult_3;
      p                               <= p;
      iy                              <= iy;
      nif_in_2pow                     <= nif_in_2pow;
      ix_in_2pow                      <= ix_in_2pow;
      row_num_limit_input_buffer_2pow <= row_num_limit_input_buffer_2pow;
      row_num_limit_slab_buffer_2pow  <= row_num_limit_slab_buffer_2pow;
      row_num_limit_mask_input_buffer <= row_num_limit_mask_input_buffer;
      row_num_limit_mask_slab_buffer  <= row_num_limit_mask_slab_buffer;
    end
  end

  reg [15:0] row_start_idx_stage_1, row_start_idx_stage_2;
  always @(posedge clk) begin
    row_start_idx_stage_1 <= row_start_idx;
    row_start_idx_stage_2 <= row_start_idx_stage_1;
  end
  reg [15:0] if_start_stage_1, if_start_stage_2;
  always @(posedge clk) begin
    if_start_stage_1 <= if_start;
    if_start_stage_2 <= if_start_stage_1;
  end
  reg [3:0] slab_num_stage_1, slab_num_stage_2;
  always @(posedge clk) begin
    slab_num_stage_1 <= slab_num;
    slab_num_stage_2 <= slab_num_stage_1;
  end
  reg [15:0] row_slab_start_idx_stage_1, row_slab_start_idx_stage_2;
  always @(posedge clk) begin
    row_slab_start_idx_stage_1 <= row_slab_start_idx;
    row_slab_start_idx_stage_2 <= row_slab_start_idx_stage_1;
  end

  //stage 1
  reg [15:0] row3_idx_stage_1, row3_idx_stage_2;
  // assign row3_idx = 
  //   ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < ({{12'b0}, p} + 16'd1)) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > ({{12'b0}, p} + iy)))? 16'hffff: //
  //   ((ky + iy_start + {{11'b0}, s, {1'b0}}) - {{12'b0},p});//
  always @(posedge clk) begin
    row3_idx_stage_1 <= ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < ({{12'b0}, p} + 16'd1)) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > ({{12'b0}, p} + iy))) ? 16'hffff :  //
 ((ky + iy_start + {{11'b0}, s, {1'b0}}) - {{12'b0}, p});  //
    row3_idx_stage_2 <= row3_idx_stage_1;
    row3_idx         <= row3_idx_stage_2;
  end

  reg valid_row3_adr_stage_1, valid_row3_adr_stage_2;
  // assign valid_row3_adr = (poy < 3) ? 0 : valid_adr;
  always @(posedge clk) begin
    valid_row3_adr_stage_1 <= (poy < 3) ? 0 : valid_adr;
    valid_row3_adr_stage_2 <= valid_row3_adr_stage_1;
    valid_row3_adr         <= valid_row3_adr_stage_2;
  end

  //address translation
  // consider the rows whose row_idx is in [p+1, p+iy], the rest of rows dont need address translation
  wire [15:0] row3_bias0;
  assign row3_bias0 = ky + iy_start + {{11'b0}, s, {1'b0}} - {{12'b0}, p} - row_base_in_3s - (row_base_in_3s << 1);

  reg [15:0] row3_base_in_3s_stage_1;
  // assign row3_base_in_3s =  //
  //     ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0)) ?  //
  //     (row_base_in_3s - 1) : row_base_in_3s;
  always @(posedge clk) begin
    row3_base_in_3s_stage_1 <= ((ky + iy_start + {{11'b0}, s, {1'b0}}) <= ({{12'b0}, p} + row_base_in_3s + (row_base_in_3s << 1))) ?  //
      (row_base_in_3s - 1) : row_base_in_3s;
  end

  reg [15:0] row3_base_in_3_stage_1;
  // assign row3_base_in_3 =  //
  //     (s == 4'd1) ?  //
  //     (((row3_bias0[15] == 1'b1) || (row3_bias0 == 0)) ?  //
  //     (row_base_in_3s - 1) : row_base_in_3s) :  //
  //     (s == 4'd2) ?  //
  //     (((row3_bias0[15] == 1'b1) || (row3_bias0 == 0)) ?  //
  //     ((row_base_in_3s - 1) << 1) : (row_base_in_3s << 1)) : 0;
  always @(posedge clk) begin
    row3_base_in_3_stage_1 <=  //
    (s == 4'd1) ?  //
    (((ky + iy_start + {{11'b0}, s, {1'b0}}) <= ({{12'b0}, p} + row_base_in_3s + (row_base_in_3s << 1))) ?  //
    (row_base_in_3s - 1) : row_base_in_3s) :  //
    (s == 4'd2) ?  //
    (((ky + iy_start + {{11'b0}, s, {1'b0}}) <= ({{12'b0}, p} + row_base_in_3s + (row_base_in_3s << 1))) ?  //
    ((row_base_in_3s - 1) << 1) : (row_base_in_3s << 1)) : 0;
  end

  reg [15:0] row3_bias_stage_1;
  // assign row3_bias =  //
  //     ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0)) ?  //
  //     (row3_bias0 + {12'b0, {s_mult_3}}) : row3_bias0;
  always @(posedge clk) begin
    row3_bias_stage_1 <=  //
    ((ky + iy_start + {{11'b0}, s, {1'b0}}) <= ({{12'b0}, p} + row_base_in_3s + (row_base_in_3s << 1))) ?  //
    (row3_bias0 + {12'b0, {s_mult_3}}) : row3_bias0;
  end

  //stage 2
  reg [15:0] row3_buf_idx_s1_stage_2;
  // assign row3_buf_idx_s1 =  //
  //     (row3_bias <= 6) ?  //
  //     ((row3_bias <= 3) ? //
  //     row3_bias :  //
  //     (row3_bias - 3)) :  //
  //     ((row3_bias <= 9) ?  //
  //     (row3_bias - 6) :  //
  //     (row3_bias - 9));
  always @(posedge clk) begin
    row3_buf_idx_s1_stage_2 <=  //
    (row3_bias_stage_1 <= 6) ?  //
    ((row3_bias_stage_1 <= 3) ?  //
    row3_bias_stage_1 :  //
    (row3_bias_stage_1 - 3)) :  //
    ((row3_bias_stage_1 <= 9) ?  //
    (row3_bias_stage_1 - 6) :  //
    (row3_bias_stage_1 - 9));
  end

  reg [15:0] row3_offset_s1_stage_2;
  // assign row3_offset_s1 =  //
  //     (row3_bias <= 6) ?  //
  //     ((row3_bias <= 3) ? 0 : 1) :  //
  //     ((row3_bias <= 9) ? 2 : 3);
  always @(posedge clk) begin
    row3_offset_s1_stage_2 <=  //
    (row3_bias_stage_1 <= 6) ?  //
    ((row3_bias_stage_1 <= 3) ? 0 : 1) :  //
    ((row3_bias_stage_1 <= 9) ? 2 : 3);
  end

  reg [1:0] row3_buf_idx_stage_2;
  // assign row3_buf_idx = (row3_idx == 16'hffff) ? 0 : (row3_buf_idx_s1);
  always @(posedge clk) begin
    row3_buf_idx_stage_2 <=  //
    (row3_idx_stage_1 == 16'hffff) ? 0 :  //
    (row3_bias_stage_1 <= 6) ?  //
    ((row3_bias_stage_1 <= 3) ?  //
    row3_bias_stage_1 :  //
    (row3_bias_stage_1 - 3)) :  //
    ((row3_bias_stage_1 <= 9) ?  //
    (row3_bias_stage_1 - 6) :  //
    (row3_bias_stage_1 - 9));
  end

  //slab
  reg [1:0] row3_slab_idx_stage_2;
  // assign row3_slab_idx = (slab_num > 0) ? row3_buf_idx : 0;
  always @(posedge clk) begin
    row3_slab_idx_stage_2 <=  //
    (slab_num_stage_1 == 0) ? 0 :  //
    (row3_idx_stage_1 == 16'hffff) ? 0 :  //
    (row3_bias_stage_1 <= 6) ?  //
    ((row3_bias_stage_1 <= 3) ?  //
    row3_bias_stage_1 :  //
    (row3_bias_stage_1 - 3)) :  //
    ((row3_bias_stage_1 <= 9) ?  //
    (row3_bias_stage_1 - 6) :  //
    (row3_bias_stage_1 - 9));
  end

  reg [15:0] row3_buf_adr_in_row_stage_2;
  // assign row3_buf_adr_in_row = (row3_idx == 16'hffff) ? 0 : (row3_base_in_3 + row3_offset_s1);
  always @(posedge clk) begin
    row3_buf_adr_in_row_stage_2 <=  //
    (row3_idx_stage_1 == 16'hffff) ? 0 : (row3_bias_stage_1 <= 6) ?  //
    ((row3_bias_stage_1 <= 3) ? row3_base_in_3_stage_1 + 0 : row3_base_in_3_stage_1 + 1) :  //
    ((row3_bias_stage_1 <= 9) ? row3_base_in_3_stage_1 + 2 : row3_base_in_3_stage_1 + 3);
  end

  reg [1:0] row3_slab_idx_to_wr_stage_2;
  // assign row3_slab_idx_to_wr = (row3_idx == 16'hffff) ? 0 : (row3_buf_idx_s1);
  always @(posedge clk) begin
    row3_slab_idx_to_wr_stage_2 <=  //
    (row3_idx_stage_1 == 16'hffff) ? 0 :  //
    (row3_bias_stage_1 <= 6) ?  //
    ((row3_bias_stage_1 <= 3) ?  //
    row3_bias_stage_1 :  //
    (row3_bias_stage_1 - 3)) :  //
    ((row3_bias_stage_1 <= 9) ?  //
    (row3_bias_stage_1 - 6) :  //
    (row3_bias_stage_1 - 9));
  end

  //stage 3
  // assign row3_buf_adr = //
  // (row3_idx == 16'hffff) ? 16'hffff :
  // (((row3_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
  // + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
  // + ((if_start - 1) >> ifs_in_row_2pow);
  always @(posedge clk) begin
    row3_buf_adr <= //
  (row3_idx_stage_2 == 16'hffff) ? 16'hffff :
  (((row3_buf_adr_in_row_stage_2 & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
  + ((row_start_idx_stage_2 << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
  + ((if_start_stage_2 - 1) >> ifs_in_row_2pow);
  end

  // assign row3_buf_word_select = (if_start - 1) & 16'h0001;
  always @(posedge clk) begin
    row3_buf_word_select <= (if_start_stage_2 - 1) & 16'h0001;
  end

  //   assign row3_slab_adr       =  //
  //  (slab_num > 0) ?  //
  //  (((row3_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))  //
  //  + ((row_slab_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))  //
  //  + (if_start - 1) :  //
  //  16'hffff;
  always @(posedge clk) begin
    row3_slab_adr <=  //
    (slab_num_stage_2 > 0) ?  //
    (((row3_buf_adr_in_row_stage_2 & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))  //
    + ((row_slab_start_idx_stage_2 << nif_in_2pow) >> pixels_in_row_in_2pow))  //
    + (if_start_stage_2 - 1) :  //
    16'hffff;
  end

  // assign row3_slab_adr_to_wr =  //
  //     (row3_idx == 16'hffff) ? 16'hffff :  //
  //     (((row3_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))  //
  //     + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))  //
  //     + (if_start - 1);  //
  always @(posedge clk) begin
    row3_slab_adr_to_wr <=  //
    (row3_idx_stage_2 == 16'hffff) ? 16'hffff :  //
    (((row3_buf_adr_in_row_stage_2 & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))  //
    + ((row_start_idx_stage_2 << nif_in_2pow) >> pixels_in_row_in_2pow))  //
    + (if_start_stage_2 - 1);  //
  end

  always @(posedge clk) begin
    if (reset) begin
      row3_buf_idx        <= 0;
      row3_slab_idx       <= 0;
      row3_slab_idx_to_wr <= 0;
    end else begin
      row3_buf_idx        <= row3_buf_idx_stage_2;
      row3_slab_idx       <= row3_slab_idx_stage_2;
      row3_slab_idx_to_wr <= row3_slab_idx_to_wr_stage_2;
    end
  end

endmodule


