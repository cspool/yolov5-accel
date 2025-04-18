`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/28 16:35:02
// Design Name: 
// Module Name: conv_compute_shell3_controller_v3
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


module conv_compute_shell3_controller_v3 #(
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
    input [ 3:0] s,
    p,
    input [15:0] iy,
    input [ 3:0] nif_in_2pow,
    ix_in_2pow,
    input [15:0] poy,
    input        valid_adr,
    input [15:0] iy_start,
    input [15:0] ky,
    input [15:0] row_base_in_3s,
    input [15:0] row_start_idx,
    input [15:0] if_start,
    input [ 3:0] slab_num,
    input [15:0] row_slab_start_idx,

    output reg [15:0] row3_idx_delay,
    output reg [15:0] row3_buf_adr_delay,
    output reg [ 1:0] row3_buf_idx_delay,
    output reg        row3_buf_word_select_delay,
    output reg [15:0] row3_slab_adr_delay,
    output reg [ 1:0] row3_slab_idx_delay,
    output reg [15:0] row3_slab_adr_to_wr_delay,
    output reg [ 1:0] row3_slab_idx_to_wr_delay,
    //valid is the buf/slab rd en signal, which equals slab_to_wr signal
    output reg        valid_row3_adr_delay
);

  wire [15:0] row3_idx;
  wire [15:0] row3_buf_adr;
  wire [ 1:0] row3_buf_idx;
  wire        row3_buf_word_select;
  wire [15:0] row3_slab_adr;
  wire [ 1:0] row3_slab_idx;
  wire [15:0] row3_slab_adr_to_wr;
  wire [ 1:0] row3_slab_idx_to_wr;
  //valid is the buf/slab rd en signal, which equals slab_to_wr signal
  wire        valid_row3_adr;

  always @(posedge clk) begin
    if (reset) begin
      row3_idx_delay             <= 0;
      row3_buf_adr_delay         <= 0;
      row3_buf_idx_delay         <= 0;
      row3_buf_word_select_delay <= 0;
      row3_slab_adr_delay        <= 0;
      row3_slab_idx_delay        <= 0;
      row3_slab_adr_to_wr_delay  <= 0;
      row3_slab_idx_to_wr_delay  <= 0;
      valid_row3_adr_delay       <= 0;
    end else begin
      row3_idx_delay             <= row3_idx;
      row3_buf_adr_delay         <= row3_buf_adr;
      row3_buf_idx_delay         <= row3_buf_idx;
      row3_buf_word_select_delay <= row3_buf_word_select;
      row3_slab_adr_delay        <= row3_slab_adr;
      row3_slab_idx_delay        <= row3_slab_idx;
      row3_slab_adr_to_wr_delay  <= row3_slab_adr_to_wr;
      row3_slab_idx_to_wr_delay  <= row3_slab_idx_to_wr;
      //valid is the buf/slab rd en signal, which equals slab_to_wr signal
      valid_row3_adr_delay       <= valid_row3_adr;
    end
  end

  wire [15:0] row3_buf_adr_in_row;

  //address translation
  wire [15:0] row3_base_in_3;
  wire [15:0] row3_base_in_3s;
  wire [15:0] row3_bias0;
  wire [15:0] row3_bias;
  wire [ 3:0] s_mult_3;
  wire leq3_3, leq6_3, leq9_3;
  wire [15:0]                                                                                                                                       row3_offset_s1;
  wire [15:0]                                                                                                                                       row3_buf_idx_s1;
  //adr mod mapping
  wire [ 3:0] row_num_limit_input_buffer_2pow = input_buffer_size_2pow - (  //
 nif_in_2pow - ifs_in_row_2pow + ix_in_2pow - pixels_in_row_in_2pow);
  wire [ 3:0] row_num_limit_slab_buffer_2pow = slab_buffer_size_2pow - (  //
 nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow);
  wire [15:0] row_num_limit_mask_input_buffer = 16'hffff >> (16 - row_num_limit_input_buffer_2pow);
  wire [15:0] row_num_limit_mask_slab_buffer = 16'hffff >> (16 - row_num_limit_slab_buffer_2pow);

  wire [15:0] p_plus_1, p_plus_iy;
  assign p_plus_1 = {{12'b0}, p} + 16'd1;
  assign p_plus_iy = {{12'b0}, p} + iy;

  assign row3_idx = 
    ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff: //
    ((ky + iy_start + {{11'b0}, s, {1'b0}}) - {{12'b0},p});//

  assign valid_row3_adr = (poy < 3) ? 0 : valid_adr;

  //address translation
  // consider the rows whose row_idx is in [p+1, p+iy], the rest of rows dont need address translation
  assign row3_bias0 = ky + iy_start + {{11'b0}, s, {1'b0}} - {{12'b0}, p} - row_base_in_3s - (row_base_in_3s << 1);

  assign row3_base_in_3s = ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0)) ? (row_base_in_3s - 1) : row_base_in_3s;

  assign row3_base_in_3 = (s == 4'd1) ? (((row3_bias0[15] == 1'b1) || (row3_bias0 == 0)) ? (row_base_in_3s - 1) : row_base_in_3s) : (s == 4'd2) ? (((row3_bias0[15] == 1'b1) || (row3_bias0 == 0)) ? ((row_base_in_3s - 1) << 1) : (row_base_in_3s << 1)) : 0;

  assign s_mult_3 = (s << 1) + s;

  assign row3_bias = ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0)) ? (row3_bias0 + {12'b0, {s_mult_3}}) : row3_bias0;

  assign leq3_3 = (row3_bias <= 3) ? 1 : 0;
  assign leq6_3 = (row3_bias <= 6) ? 1 : 0;
  assign leq9_3 = (row3_bias <= 9) ? 1 : 0;

  assign row3_buf_idx_s1 = 
  ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
  ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
  ):
  (
  (row3_bias0 <= 6)?
  ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
  ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
  );
  assign row3_offset_s1 = 
  ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
  ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? 0: 1) :
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? 2: 3)
  ):
  (
  (row3_bias0 <= 6)?
  ((row3_bias0 <= 3)? 0: 1) :
  ((row3_bias0 <= 9)? 2: 3)
  );

  assign row3_buf_idx = 
  ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 0 :
  (
  ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
  ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
  ):
  (
  (row3_bias0 <= 6)?
  ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
  ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
  )
  );

  // assign row3_buf_adr_in_row = 
  // ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff:
  // (
  // (s == 4'd1)? (
  // ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
  // ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
  // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row_base_in_3s - 1): (row_base_in_3s - 1) + 1) :
  // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? (row_base_in_3s - 1) + 2: (row_base_in_3s - 1) + 3)
  // ):
  // (
  // (row3_bias0 <= 6)?
  // ((row3_bias0 <= 3)? row_base_in_3s: row_base_in_3s + 1) :
  // ((row3_bias0 <= 9)? row_base_in_3s + 2: row_base_in_3s + 3)
  // )
  // ):
  // (s == 4'd2)? (
  // ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
  // ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
  // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? ((row_base_in_3s - 1) << 1): ((row_base_in_3s - 1) << 1) + 1) :
  // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row_base_in_3s - 1) << 1) + 2: ((row_base_in_3s - 1) << 1) + 3)
  // ):
  // (
  // (row3_bias0 <= 6)?
  // ((row3_bias0 <= 3)? (row_base_in_3s << 1): (row_base_in_3s << 1) + 1) :
  // ((row3_bias0 <= 9)? (row_base_in_3s << 1) + 2: (row_base_in_3s << 1) + 3)
  // )
  // ):
  // 0
  // );
  assign row3_buf_adr_in_row = 
  ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff:
  (
  ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
  ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row_base_in_3s - 1): (row_base_in_3s - 1) + 1) :
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? (row_base_in_3s - 1) + 2: (row_base_in_3s - 1) + 3)
  ):
  (
  (row3_bias0 <= 6)?
  ((row3_bias0 <= 3)? row_base_in_3s: row_base_in_3s + 1) :
  ((row3_bias0 <= 9)? row_base_in_3s + 2: row_base_in_3s + 3)
  )
  );

  assign row3_buf_adr = 
  ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff :
  (((row3_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
  + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
  + ((if_start - 1) >> ifs_in_row_2pow);

  assign row3_buf_word_select = (if_start - 1) & 16'h0001;

  //slab
  assign row3_slab_idx = 
  (slab_num > 0)?
  (((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 0 :
  (
  ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
  ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
  ):
  (
  (row3_bias0 <= 6)?
  ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
  ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
  )
  )):0;

  assign row3_slab_adr =  //
      (slab_num > 0) ?  //
      (((row3_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))  //
      + ((row_slab_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))  //
      + (if_start - 1) :  //
      16'hffff;

  assign row3_slab_adr_to_wr = ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy)) ? 16'hffff :  //
      (((row3_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))  //
      + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))  //
      + (if_start - 1);  //

  // assign row3_slab_idx_to_wr = row3_buf_idx;
  assign row3_slab_idx_to_wr = 
  ((poy < 3) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 0 :
  (
  ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
  ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
  (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
  ):
  (
  (row3_bias0 <= 6)?
  ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
  ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
  )
  );
endmodule

