`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/19 15:48:40
// Design Name: 
// Module Name: core_cell_v7
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


module core_cell_v7 (
    clk,
    mode,

    reset_pre,
    en_pre,
    cell_out_en_pre,

    reset_out,
    en_out,
    cell_out_en_out,

    left,
    up,
    south_cell_out,
    east_cell_out,

    south_cell_out_revise,
    east_cell_out_revise,

    right,
    bottom,

    out,
    out_revise
);

  parameter headroom = 8;

  parameter pixel_width_88 = 16 + headroom;
  //parameter pixel_width_18 = 10 + headroom;
  parameter pixel_width_18 = 8 + headroom;

  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;

  parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18;

  parameter pixel_width = pixel_width_88;
  parameter pe_out_revise_width = (pixel_width_18) * (pe_parallel_pixel_18 * pe_parallel_weight_18 - 1);

  input clk, reset_pre, en_pre, cell_out_en_pre;
  output reg reset_out, en_out, cell_out_en_out;
  always @(posedge clk) begin
    reset_out       <= reset_pre;
    en_out          <= en_pre;
    cell_out_en_out <= cell_out_en_pre;

  end
  input mode;

  input [24:0] up;
  input [17:0] left;
  input [pe_out_width - 1 : 0] south_cell_out;
  input [pe_out_width - 1 : 0] east_cell_out;  //
  input [pe_out_revise_width - 1 : 0] south_cell_out_revise;
  input [pe_out_revise_width - 1 : 0] east_cell_out_revise;  //

  output reg [24:0] bottom;
  output reg [17:0] right;

  output reg [pe_out_width - 1 : 0] out;
  output [pe_out_revise_width - 1 : 0] out_revise;
  reg  [pe_out_revise_width - 1 : 0] other_out_revise;

  wire [                       42:0] mult_O;

  wire [47:0] sign_48, accum_sign_48;

  wire [pixel_width_88 - 1 : 0] adder_88_18_1;  //24 bit
  wire [pixel_width_88 - 1 : 0] adder_88_18_2;
  // wire                          adder_88_18_2_sign;
  wire [pixel_width_18 - 1 : 0] adder_18_3;  //16bit
  wire [pixel_width_18 - 1 : 0] adder_18_4;  //16bit

  wire [pixel_width_88 - 1 : 0] res_88_18_1;  //24 bit
  wire [pixel_width_88 - 1 : 0] res_88_18_2;
  wire [pixel_width_18 - 1 : 0] res_18_3;  //16 bit

  wire [pixel_width_18 - 1 : 0] res_18_4;

  always @(posedge clk) begin
    if (reset_out) begin
      right  <= 0;
      bottom <= 0;
    end else begin
      right  <= left;
      bottom <= up;
    end
  end

  accum_dsp_48 accum_sign (
      .B   (sign_48),       // input wire [47 : 0] B
      .CLK (clk),           // input wire CLK
      .SCLR(reset_out),     // input wire SCLR
      .Q   (accum_sign_48)  // output wire [47 : 0] Q
  );

  assign sign_48       = (mode == 0) ? {47'b0, mult_O[15]} : {15'b0, mult_O[26], 15'b0, mult_O[17], 15'b0, mult_O[8]};

  assign adder_88_18_1 = (mode == 0) ?  // mode 0
{{(pixel_width_88 - 16) {mult_O[15]}}, mult_O[15:0]} :  // mode 1
{{(pixel_width_88 - 9) {mult_O[8]}}, mult_O[8:0]};

  assign adder_88_18_2 = (mode == 0) ?  // mode 0
{{(pixel_width_88 - 16) {mult_O[31]}}, mult_O[31:16]} :  // mode 1
{{(pixel_width_88 - 9) {mult_O[17]}}, mult_O[17:9]};

  // assign adder_88_18_2_sign = (mode == 0) ? mult_O[15] : mult_O[8];
  assign res_88_18_1   = ((mode == 0) ?  // mode 0
 out[pixel_width_88-1 : 0] : (mode == 1) ?  // mode 1
 ({{((pixel_width_88 - 16)) {out[pixel_width_18-1]}}, out[0+:(pixel_width_18)]})  //else
 : 0) + adder_88_18_1;

  //   assign res_88_18_2        = ((mode == 0) ?  // mode 0
  //  out[2*pixel_width_88-1 : pixel_width_88] : (mode == 1) ?  // mode 1
  //  ({{((pixel_width_88 - 16)) {out[2*pixel_width_18-1]}}, out[(pixel_width_18)+:(pixel_width_18)]})  //else
  //  : 0) + adder_88_18_2 + adder_88_18_2_sign;
  assign res_88_18_2   = ((mode == 0) ?  // mode 0
 out[2*pixel_width_88-1 : pixel_width_88] : (mode == 1) ?  // mode 1
 ({{((pixel_width_88 - 16)) {out[2*pixel_width_18-1]}}, out[(pixel_width_18)+:(pixel_width_18)]})  //else
 : 0) + adder_88_18_2;

  // assign res_18_3           = out[(2*pixel_width_18)+:(pixel_width_18)] + {{(pixel_width_18 - 9) {mult_O[26]}}, mult_O[26-:9]} + mult_O[17];
  assign res_18_3      = out[(2*pixel_width_18)+:(pixel_width_18)] + {{(pixel_width_18 - 9) {mult_O[26]}}, mult_O[26-:9]};

  // assign res_18_4           = out[(3*pixel_width_18)+:(pixel_width_18)] + {{(pixel_width_18 - 9) {mult_O[35]}}, mult_O[35-:9]} + mult_O[26];
  assign res_18_4      = out[(3*pixel_width_18)+:(pixel_width_18)] + {{(pixel_width_18 - 9) {mult_O[35]}}, mult_O[35-:9]};

  // s25 * s18
  mult_dsp_s25_s18 mult_s25_s18 (
      .CLK(clk),    // input wire CLK
      .A  (up),     // input wire [24 : 0] A
      .B  (left),   // input wire [17 : 0] B
      .P  (mult_O)  // output wire [42 : 0] P
  );

  //mac base
  always @(posedge clk) begin
    if (reset_out) begin
      out <= 0;
    end else if (en_out) begin
      if (mode == 0) begin  //8bit * 8bit
        out[pixel_width_88-1 : 0]                <= res_88_18_1[pixel_width_88-1 : 0];
        out[2*pixel_width_88-1 : pixel_width_88] <= res_88_18_2[pixel_width_88-1 : 0];
      end else if (mode == 1) begin
        out[0+:(pixel_width_18)]                  <= res_88_18_1[pixel_width_18-1 : 0];
        out[(pixel_width_18)+:(pixel_width_18)]   <= res_88_18_2[pixel_width_18-1 : 0];
        out[(2*pixel_width_18)+:(pixel_width_18)] <= res_18_3;
        out[(3*pixel_width_18)+:(pixel_width_18)] <= res_18_4;
      end else begin
        out <= out;
      end
    end else if (cell_out_en_out) begin
      out <= (mode == 0) ? south_cell_out : east_cell_out;
    end
  end

  //mac revise
  always @(posedge clk) begin
    if (reset_out) begin
      other_out_revise <= 0;
    end else if (cell_out_en_out) begin
      other_out_revise <= (mode == 0) ? south_cell_out_revise : east_cell_out_revise;
    end
  end

  reg accum_sign_48_valid;
  always @(posedge clk) begin
    accum_sign_48_valid <= en_out;
  end

  assign out_revise = (accum_sign_48_valid == 1) ? accum_sign_48 : other_out_revise;

endmodule
