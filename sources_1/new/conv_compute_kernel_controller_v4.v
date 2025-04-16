`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/31 17:04:19
// Design Name: 
// Module Name: conv_compute_kernel_controller_v4
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

module conv_compute_kernel_controller_v4 #(
    parameter sa_row_num                   = 4,                         //how many rows in conv core
    parameter sa_column_num                = 2,                         //how many columns in conv core
    parameter row_num_in_sa                = 16,                        // how many rows in a sa, row_num
    parameter column_num_in_sa             = 16,                        // how many columns in a sa
    parameter pixels_in_row                = 32,
    parameter pixels_in_row_mult_2         = pixels_in_row * 2,
    parameter pixels_in_row_mult_2_minus_1 = pixels_in_row_mult_2 - 1,
    parameter pixels_in_row_mult_2_minus_2 = pixels_in_row_mult_2 - 2,
    parameter pixels_in_row_mult_2_minus_3 = pixels_in_row_mult_2 - 3,
    parameter pixels_in_row_mult_2_minus_4 = pixels_in_row_mult_2 - 4,
    parameter pixels_in_row_in_2pow        = 5,
    parameter buffers_num                  = 3,
    parameter row_num_in_mode0             = 64,                        // 64 in 8 bit, 128 in 1 bit
    parameter row_num_in_mode1             = 128,                       // 64 in 8 bit, 128 in 1 bit
    parameter ifs_in_row_2pow              = 1,
    parameter input_buffer_size_2pow       = 12,                        //4096
    parameter slab_buffer_size_2pow        = 13                         //8192
) (
    // conv tiling module
    input        clk,
    reset,
    conv_compute,
    input [ 3:0] mode_init,
    input [ 3:0] k_init,
    s_init,
    p_init,
    input [15:0] of_init,
    ox_init,
    oy_init,
    ix_init,
    iy_init,
    nif_init,
    input [ 3:0] nif_in_2pow_init,
    ix_in_2pow_init,

    output reg [15:0] ox_start_delay,
    oy_start_delay,
    of_start_delay,
    pox_delay,
    poy_delay,
    pof_delay,
    if_idx_delay,
    output reg [ 3:0] west_pad_delay,
    slab_num_delay,
    east_pad_delay,
    output reg [15:0] row_start_idx_delay,
    row_end_idx_delay,
    output reg [15:0] reg_start_idx_delay,
    reg_end_idx_delay,
    output reg [15:0] row_slab_start_idx_delay,

    output reg [15:0] if_start_delay,

    output reg [15:0] row_base_in_3s_delay,
    output reg        valid_adr_delay,
    output reg [15:0] iy_start_delay,
    output reg        com_control_end_delay,
    output reg        conv_pixels_add_end_delay,
    output reg        conv_nif_add_end_delay,
    //conv rows
    output reg [15:0] ky_delay
);

  wire [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx;

  //cv pixels
  wire [3:0] west_pad, slab_num, east_pad;
  wire [15:0] row_start_idx, row_end_idx;
  wire [15:0] reg_start_idx, reg_end_idx;
  wire [15:0] row_slab_start_idx;
  wire        valid_adr;
  wire        loop_adr1_add_end;

  reg  [15:0] if_start;
  reg  [15:0] row_base_in_3s;
  wire [15:0] iy_start;
  wire        com_control_end;
  wire        conv_pixels_add_end;
  wire        conv_nif_add_end;
  //conv rows
  reg  [15:0] ky;

  always @(posedge clk) begin
    if (reset) begin
      ox_start_delay            <= 0;
      oy_start_delay            <= 0;
      of_start_delay            <= 0;
      pox_delay                 <= 0;
      poy_delay                 <= 0;
      pof_delay                 <= 0;
      if_idx_delay              <= 0;
      west_pad_delay            <= 0;
      slab_num_delay            <= 0;
      east_pad_delay            <= 0;
      row_start_idx_delay       <= 0;
      row_end_idx_delay         <= 0;
      reg_start_idx_delay       <= 0;
      reg_end_idx_delay         <= 0;
      row_slab_start_idx_delay  <= 0;
      if_start_delay            <= 0;

      row_base_in_3s_delay      <= 0;
      valid_adr_delay           <= 0;
      iy_start_delay            <= 0;
      com_control_end_delay     <= 0;
      conv_pixels_add_end_delay <= 0;
      conv_nif_add_end_delay    <= 0;
      //conv rows
      ky_delay                  <= 0;
    end else begin
      ox_start_delay            <= ox_start;
      oy_start_delay            <= oy_start;
      of_start_delay            <= of_start;
      pox_delay                 <= poy;
      poy_delay                 <= poy;
      pof_delay                 <= pof;
      if_idx_delay              <= if_idx;
      west_pad_delay            <= west_pad;
      slab_num_delay            <= slab_num;
      east_pad_delay            <= east_pad;
      row_start_idx_delay       <= row_start_idx;
      row_end_idx_delay         <= row_end_idx;
      reg_start_idx_delay       <= reg_start_idx;
      reg_end_idx_delay         <= reg_end_idx;
      row_slab_start_idx_delay  <= row_slab_start_idx;
      valid_adr_delay           <= valid_adr;

      if_start_delay            <= if_start;
      row_base_in_3s_delay      <= row_base_in_3s;
      iy_start_delay            <= iy_start;
      com_control_end_delay     <= com_control_end;
      conv_pixels_add_end_delay <= conv_pixels_add_end;
      conv_nif_add_end_delay    <= conv_nif_add_end;
      //conv rows
      ky_delay                  <= ky;
    end
  end

  reg [3:0] mode;
  reg [3:0] k, s, p;
  reg [15:0] of, ox, oy, ix, iy, nif;
  reg [3:0] nif_in_2pow, ix_in_2pow;

  //conv tile module
  wire loop_y_add_begin, loop_y_add_end;
  wire loop_x_add_begin, loop_x_add_end;
  wire loop_f_add_begin, loop_f_add_end;
  wire loop_if_add_begin, loop_if_add_end;
  reg [15:0] tile_y_start, tile_x_start, tile_f_start;  // tile_f_start is the inner loop

  reg [15:0] row_num;
  reg [15:0] row_base_mod_3s;

  wire loop_ky_add_begin, loop_ky_add_end;

  always @(posedge clk) begin
    if (reset == 1'b1) begin  //set
      mode        <= mode_init;
      k           <= k_init;
      s           <= s_init;
      p           <= p_init;
      of          <= of_init;
      ox          <= ox_init;
      oy          <= oy_init;
      ix          <= ix_init;
      iy          <= iy_init;
      nif         <= nif_init;
      nif_in_2pow <= nif_in_2pow_init;
      ix_in_2pow  <= ix_in_2pow_init;
      row_num     <= (mode_init == 0) ? row_num_in_mode0 : (mode_init == 1) ? row_num_in_mode1 : 0;
    end else begin
      mode        <= mode;
      k           <= k;
      s           <= s;
      p           <= p;
      of          <= of;
      ox          <= ox;
      oy          <= oy;
      ix          <= ix;
      iy          <= iy;
      nif         <= nif;
      nif_in_2pow <= nif_in_2pow;
      ix_in_2pow  <= ix_in_2pow;
      row_num     <= row_num;
    end
  end

  // assign row_num = (mode == 0) ? row_num_in_mode0 : (mode == 1) ? row_num_in_mode1 : 0;

  //stage 3
  //stall signal
  reg  ifx_stall;
  wire loop_if_stall_counter_add_end;

  reg conv_compute_pipe_1, conv_compute_pipe_2;
  always @(posedge clk) begin
    conv_compute_pipe_1 <= conv_compute;
    conv_compute_pipe_2 <= conv_compute_pipe_1;
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      ifx_stall <= 0;
    end else if (loop_if_add_end == 1'b1) begin
      ifx_stall <= 1;
    end else if (loop_if_stall_counter_add_end == 1'b1) begin
      ifx_stall <= 0;
    end else begin
      ifx_stall <= ifx_stall;
    end
  end

  // assign loop_if_stall_counter_add_end = (ifx_stall == 1'b1) && (conv_compute == 1'b1); 
  assign loop_if_stall_counter_add_end = (ifx_stall == 1'b1) && (conv_compute_pipe_2 == 1'b1);  //conv_compute_pipe_2

  //conv tiling module
  //loop if
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      if_start <= 1;
    end else if ((loop_if_add_begin == 1'b1)) begin
      if (loop_if_add_end == 1'b1) begin  //the last if_start
        if_start <= 1;
      end else begin
        if_start <= if_start + 1;
      end
    end else begin
      if_start <= if_start;
    end
  end

  assign loop_if_add_begin = loop_ky_add_end;
  assign loop_if_add_end   = loop_if_add_begin && ((if_start + 1) > nif);

  assign conv_nif_add_end  = loop_if_add_end;

  //loop of
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      tile_f_start <= 1;
    end else if (loop_f_add_begin == 1'b1) begin
      if (loop_f_add_end == 1'b1) begin  // the last tile_f_start
        tile_f_start <= 1;
      end else begin
        tile_f_start <= tile_f_start + row_num;
      end
    end else begin
      tile_f_start <= tile_f_start;
    end
  end

  assign loop_f_add_begin = (loop_if_add_end == 1'b1);
  assign loop_f_add_end   = loop_f_add_begin && ((tile_f_start + row_num) > of);

  //loop ox
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      tile_x_start <= 1;
    end else if (loop_x_add_begin == 1'b1) begin
      if (loop_x_add_end == 1'b1) begin  // the last tile_x_start
        tile_x_start <= 1;
      end else begin
        tile_x_start <= tile_x_start + pixels_in_row;
      end
    end else begin
      tile_x_start <= tile_x_start;
    end
  end

  assign loop_x_add_begin = (loop_f_add_end == 1'b1);
  assign loop_x_add_end   = loop_x_add_begin && ((tile_x_start + pixels_in_row) > ox);

  //loop oy
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      tile_y_start    <= 1;
      row_base_in_3s  <= 0;
      row_base_mod_3s <= 0;
    end else if (loop_y_add_begin == 1'b1) begin
      if (loop_y_add_end == 1'b1) begin  //the last tile_y_start
        tile_y_start    <= 1;
        row_base_in_3s  <= 0;
        row_base_mod_3s <= 0;
      end else begin
        tile_y_start    <= tile_y_start + sa_column_num;
        row_base_in_3s  <= ((row_base_mod_3s + sa_column_num) >= buffers_num) ?  //
 (row_base_in_3s + 1) :  //
 row_base_in_3s;  //oy_start in 3
        row_base_mod_3s <= ((row_base_mod_3s + sa_column_num) >= buffers_num) ?  //
 (row_base_mod_3s + sa_column_num - buffers_num) :  //
 (row_base_mod_3s + sa_column_num);
      end
    end else begin
      tile_y_start    <= tile_y_start;
      row_base_in_3s  <= row_base_in_3s;
      row_base_mod_3s <= row_base_mod_3s;
    end
  end

  assign loop_y_add_begin = (loop_x_add_end == 1'b1);
  assign loop_y_add_end   = loop_y_add_begin && ((tile_y_start + sa_column_num) > oy);

  //conv rows
  //conv row 1

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      ky <= 0;
    end else if (loop_ky_add_begin == 1'b1) begin
      if (loop_ky_add_end == 1'b1) begin  //the last ky
        ky <= 0;
      end else begin
        ky <= ky + 1;
      end
    end else begin
      ky <= ky;
    end
  end
  assign loop_ky_add_begin   = loop_adr1_add_end;
  assign loop_ky_add_end     = loop_ky_add_begin && ((ky + 1) == (k));

  assign conv_pixels_add_end = loop_adr1_add_end;
  assign com_control_end     = loop_y_add_end;

  assign ox_start            = tile_x_start;
  assign oy_start            = tile_y_start;
  assign of_start            = tile_f_start;
  assign pox                 = (tile_x_start + pixels_in_row - 1 > ox) ? (ox - tile_x_start + 1) : pixels_in_row;
  assign poy                 = (tile_y_start + sa_column_num - 1 > oy) ? (oy - tile_y_start + 1) : sa_column_num;
  assign pof                 = (tile_f_start + row_num - 1 > of) ? (of - tile_f_start + 1) : row_num;
  assign if_idx              = if_start;
  assign iy_start            = (s == 4'd1) ? tile_y_start : (s == 4'd2) ? (tile_y_start << 1) - 1 : 0;

  //stage 1-2
  conv_compute_pixel_controller #(
      .pixels_in_row(pixels_in_row)
  ) conv_compute_pixel_ctrl (
      .reset          (reset),
      .clk            (clk),
      .k_init         (k_init),
      .s_init         (s_init),
      .p_init         (p_init),
      .ix_init        (ix_init),
      .ix_in_2pow_init(ix_in_2pow_init),

      .tile_x_start(tile_x_start),
      .pox         (pox),

      // .conv_compute  (conv_compute),
      .conv_compute  (conv_compute_pipe_2),  //conv_compute_pipe_2
      .loop_y_add_end(loop_y_add_end),
      .ifx_stall     (ifx_stall),

      .west_pad          (west_pad),
      .slab_num          (slab_num),
      .east_pad          (east_pad),
      .row_start_idx     (row_start_idx),
      .row_end_idx       (row_end_idx),
      .reg_start_idx     (reg_start_idx),
      .reg_end_idx       (reg_end_idx),
      .row_slab_start_idx(row_slab_start_idx),
      .valid_adr         (valid_adr),
      .loop_adr1_add_end (loop_adr1_add_end)
  );

endmodule


