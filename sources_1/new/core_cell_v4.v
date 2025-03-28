// `timescale 1ns / 1ps
// //////////////////////////////////////////////////////////////////////////////////
// // Company: 
// // Engineer: 
// // 
// // Create Date: 2025/03/28 10:10:25
// // Design Name: 
// // Module Name: core_cell_v4
// // Project Name: 
// // Target Devices: 
// // Tool Versions: 
// // Description: 
// // 
// // Dependencies: 
// // 
// // Revision:
// // Revision 0.01 - File Created
// // Additional Comments:
// // 
// //////////////////////////////////////////////////////////////////////////////////


// module core_cell_v4 (
//     clk,
//     mode,

//     reset_pre,
//     en_pre,
//     cell_out_en_pre,

//     reset_out,
//     en_out,
//     cell_out_en_out,

//     left,
//     up,
//     south_cell_out,
//     east_cell_out,

//     right,
//     bottom,

//     out
// );

//   parameter headroom = 8;

//   parameter pixel_width_88 = 16 + headroom;
//   //parameter pixel_width_18 = 10 + headroom;
//   parameter pixel_width_18 = 8 + headroom;

//   parameter pe_parallel_pixel_88 = 2;
//   parameter pe_parallel_weight_88 = 1;
//   parameter pe_parallel_pixel_18 = 2;
//   parameter pe_parallel_weight_18 = 2;

//   parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18;

//   parameter pixel_width = pixel_width_88;

//   input clk, reset_pre, en_pre, cell_out_en_pre;
//   output reg reset_out, en_out, cell_out_en_out;
//   always @(posedge clk) begin
//     reset_out       <= reset_pre;
//     en_out          <= en_pre;
//     cell_out_en_out <= cell_out_en_pre;
//   end
//   input mode;

//   input [24:0] up;
//   input [17:0] left;
//   input [pe_out_width - 1 : 0] south_cell_out;
//   input [pe_out_width - 1 : 0] east_cell_out;

//   output reg [24:0] bottom;
//   output reg [17:0] right;

//   output reg [pe_out_width - 1 : 0] out;

//   wire [                  42:0] mult_O;

//   wire [pixel_width_88 - 1 : 0] adder_88_18_1;  //24 bit
//   wire [pixel_width_88 - 1 : 0] adder_88_18_2;
//   wire                          adder_88_18_2_sign;

//   wire [pixel_width_88 - 1 : 0] res_88_18_1;  //24 bit
//   wire [pixel_width_88 - 1 : 0] res_88_18_2;
//   wire [pixel_width_18 - 1 : 0] res_18_3;  //16 bit

//   wire [pixel_width_18 - 1 : 0] res_18_4;

//   always @(posedge clk) begin
//     if (reset_out) begin
//       right  <= 0;
//       bottom <= 0;
//     end else if (en_out) begin
//       right  <= left;
//       bottom <= up;
//     end else begin
//       right  <= right;
//       bottom <= bottom;
//     end
//   end

//   assign adder_88_18_1      = (mode == 0) ?  // mode 0
// {{(pixel_width_88 - 16) {mult_O[15]}}, mult_O[15:0]} :  // mode 1
// {{(pixel_width_88 - 9) {mult_O[8]}}, mult_O[8:0]};

//   assign adder_88_18_2      = (mode == 0) ?  // mode 0
// {{(pixel_width_88 - 16) {mult_O[31]}}, mult_O[31:16]} :  // mode 1
// {{(pixel_width_88 - 9) {mult_O[17]}}, mult_O[17:9]};

//   assign adder_88_18_2_sign = (mode == 0) ? mult_O[15] : mult_O[8];

//   assign res_88_18_1        = ((mode == 0) ?  // mode 0
//  out[pixel_width_88-1 : 0] : (mode == 1) ?  // mode 1
//  ({{((pixel_width_88 - 16)) {out[pixel_width_18-1]}}, out[0+:(pixel_width_18)]})  //else
//  : 0) + adder_88_18_1;

//   assign res_88_18_2        = ((mode == 0) ?  // mode 0
//  out[2*pixel_width_88-1 : pixel_width_88] : (mode == 1) ?  // mode 1
//  ({{((pixel_width_88 - 16)) {out[2*pixel_width_18-1]}}, out[(pixel_width_18)+:(pixel_width_18)]})  //else
//  : 0) + adder_88_18_2 + adder_88_18_2_sign;

//   assign res_18_3           = out[(2*pixel_width_18)+:(pixel_width_18)] + {{(pixel_width_18 - 9) {mult_O[26]}}, mult_O[26-:9]} + mult_O[17];

//   assign res_18_4           = out[(3*pixel_width_18)+:(pixel_width_18)] + {{(pixel_width_18 - 9) {mult_O[35]}}, mult_O[35-:9]} + mult_O[26];

//   // s25 * s18
//   mult_dsp_s25_s18 mult_s25_s18 (
//       .CLK(clk),    // input wire CLK
//       .A  (up),     // input wire [24 : 0] A
//       .B  (left),   // input wire [17 : 0] B
//       .P  (mult_O)  // output wire [42 : 0] P
//   );

//   always @(posedge clk) begin
//     if (reset_out) begin
//       out <= 0;
//     end else if (en_out) begin
//       if (mode == 0) begin  //8bit * 8bit
//         out[pixel_width_88-1 : 0]                <= res_88_18_1[pixel_width_88-1 : 0];
//         out[2*pixel_width_88-1 : pixel_width_88] <= res_88_18_2[pixel_width_88-1 : 0];
//       end else if (mode == 1) begin
//         out[0+:(pixel_width_18)]                  <= res_88_18_1[pixel_width_18-1 : 0];
//         out[(pixel_width_18)+:(pixel_width_18)]   <= res_88_18_2[pixel_width_18-1 : 0];
//         out[(2*pixel_width_18)+:(pixel_width_18)] <= res_18_3;
//         out[(3*pixel_width_18)+:(pixel_width_18)] <= res_18_4;
//       end else begin
//         out <= out;
//       end
//     end else if (cell_out_en_out) begin
//       out <= (mode == 0) ? south_cell_out : east_cell_out;
//     end
//   end


//   reg [11:0] sign_sum_2;  //4096
//   wire [47:0] mult_out_accum;  //1-2
//   wire [47:0] sign_sum_accum;  //1-2
//   wire [47:0] sum_accum;  //1-2

//   reg  [11:0] sign_sum_3, sign_sum_4;  //3-4
//   wire [15:0] mult_out_3_lut, mult_out_4_lut; //3-4
//   wire [15:0] sign_sum_3_lut, sign_sum_4_lut; //3-4

//   //1-3
//   accum_dsp_48 accum_dsp_48 (
//       .B   ((en_out == 1) ? mult_out_accum : sign_sum_accum),  // input wire [47 : 0] B
//       .CLK (clk),                                              // input wire CLK
//       .CE  ((en_out == 1) || (sign_en_out == 1)),              // input wire CE
//       .SCLR(reset_out),                                        // input wire SCLR
//       .Q   (sum_accum)                                         // output wire [47 : 0] Q
//   );

//   assign mult_out_accum = (mode == 0)? {mult_O}:{{},{}};

//   always @(posedge clk) begin
//     if (reset_out) begin
//       sign_sum_2 <= 0;
//       sign_sum_3 <= 0;
//       sign_sum_4 <= 0;
//     end else if (en_out) begin
//       sign_sum_2 <= sign_sum_2 + {{(12 - 1) {1'b0}}, adder_88_18_2_sign};
//       sign_sum_3 <= sign_sum_3 + {{(12 - 1) {1'b0}}, mult_O[17]};
//       sign_sum_4 <= sign_sum_4 + {{(12 - 1) {1'b0}}, mult_O[26]};
//     end
//   end

//   assign sign_sum_accum = (mode == 0) ? {{{(pixel_width_88 - 12) {sign_sum_2[11]}}, sign_sum_2}, {(pixel_width_88){1'b0}}} :  //
// {{{(pixel_width_18 - 12) {sign_sum_3[11]}}, sign_sum_3}, {{(pixel_width_18 - 12) {sign_sum_2[11]}}, sign_sum_2}, {(pixel_width_18){1'b0}}};

//   //4
//   assign mult_out_lut   = mult_O[63:48];
//   assign sign_sum_lut = {{(pixel_width_18 - 12) {sign_sum_4[11]}}, sign_sum_4};
//   always @(posedge clk) begin
//     if (reset_out) begin
//       sum_lut <= 0;
//     end else if ((en_out == 1) || (sign_en_out == 1)) begin
//       sum_lut <= sum_lut + ((en_out == 1) ? mult_out_lut : sign_sum_lut);
//     end
//   end

// endmodule
