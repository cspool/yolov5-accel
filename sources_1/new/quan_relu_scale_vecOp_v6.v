`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/09 11:00:37
// Design Name: 
// Module Name: quan_relu_scale_vecOp_v6
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


module quan_relu_scale_vecOp_v6 #(
    parameter column_num_in_sa = 16,  // how many columns in a sa
    parameter headroom = 8,
    parameter pixel_width_88 = 16 + headroom,
    parameter pixel_width_18 = 8 + headroom,
    parameter pe_parallel_pixel_88 = 2,
    parameter pe_parallel_weight_88 = 1,
    parameter pe_parallel_pixel_18 = 2,
    parameter pe_parallel_weight_18 = 2,

    parameter scale_width = 8,  //8 bit scale
    parameter scale_set_width = scale_width * pe_parallel_weight_18,  //16 bit

    parameter add_bias_width = pixel_width_88 + 8,  //actual E width is 8
    parameter product_add_bias_vector_width = add_bias_width * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa,

    parameter quantize_pixel_width  = 8,
    parameter quantize_vector_width = (quantize_pixel_width) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa
    //8 bit * 32 pixels * 2 channel
) (


    input                                            clk,
    core_relu_scale_en_pre,
    output reg                                       core_relu_scale_en_out,
    input      [              scale_set_width-1 : 0] next_scale_set,
    output reg [              scale_set_width-1 : 0] scale_set,
    input      [product_add_bias_vector_width - 1:0] product_add_bias_vector,
    //40 bit * 32 pixels * 2 channel

    output reg [quantize_vector_width-1 : 0] quantize_vector
);


  //8 bit * 2 channel
  // wire [scale_width-1 : 0] scale_88;
  reg  [          scale_width-1 : 0] scale_88_vector     [pe_parallel_pixel_18 * column_num_in_sa-1:0];
  // wire [scale_width-1 : 0] scale_18_1, scale_18_2;
  // reg  [          scale_width-1 : 0] scale_18_1_vector   [pe_parallel_pixel_18 * column_num_in_sa-1:0];
  reg  [          scale_width-1 : 0] scale_18_2_vector   [pe_parallel_pixel_18 * column_num_in_sa-1:0];

  wire [quantize_vector_width-1 : 0] quantize_vector_val;
  //8 bit * 32 pixels * 2 channel

  always @(posedge clk) begin

    scale_set              <= next_scale_set;
    core_relu_scale_en_out <= core_relu_scale_en_pre;
  end

  // assign scale_88   = scale_set[scale_width-1 : 0];
  // assign scale_18_1 = scale_88;
  // assign scale_18_2 = scale_set[scale_set_width-1 : scale_width];

  genvar i;
  generate
    for (i = 0; i < pe_parallel_pixel_18 * column_num_in_sa; i = i + 1) begin
      always @(posedge clk) begin
        scale_88_vector[i] <= next_scale_set[scale_width-1 : 0];
      end
      // always @(posedge clk) begin
      //   scale_18_1_vector[i] <= next_scale_set[scale_width-1 : 0];
      // end
      //relu && right shift and bound in 8 bit
      // assign quantize_vector_val[i*(quantize_pixel_width)+:(quantize_pixel_width)] =
      //     //mode 0
      //     (mode == 0) ? (
      //     // >=0
      //     (product_add_bias_vector[i*add_bias_width+add_bias_width-1] == 1'b0) ? (  //overflow
      //     ((product_add_bias_vector[i*add_bias_width+:add_bias_width]) >> (scale_88_vector[i])) > 255 ? 255 :
      //     //0-255
      //     ((product_add_bias_vector[i*add_bias_width+:add_bias_width]) >> (scale_88_vector[i]))) :
      //     // < 0
      //     0) :
      //     //mode 1
      //     (mode == 1) ? (
      //     // >= 0
      //     (product_add_bias_vector[i*add_bias_width+add_bias_width-1] == 1'b0) ? (  //overflow
      //     ((product_add_bias_vector[i*add_bias_width+:add_bias_width]) >> (scale_18_1_vector[i])) > 255 ? 255 :
      //     //0-255
      //     ((product_add_bias_vector[i*add_bias_width+:add_bias_width]) >> (scale_18_1_vector[i]))) :
      //     // < 0
      //     0) : 0;
      assign quantize_vector_val[i*(quantize_pixel_width)+:(quantize_pixel_width)] =
          //mode 0
          // >=0
          (product_add_bias_vector[i*add_bias_width+add_bias_width-1] == 1'b0) ? (  //overflow
          ((product_add_bias_vector[i*add_bias_width+:add_bias_width]) >> (scale_88_vector[i])) > 255 ? 255 :
          //0-255
          ((product_add_bias_vector[i*add_bias_width+:add_bias_width]) >> (scale_88_vector[i]))) :
          // < 0
          0;
    end
    for (i = 0; i < pe_parallel_pixel_18 * column_num_in_sa; i = i + 1) begin
      always @(posedge clk) begin

        scale_18_2_vector[i] <= next_scale_set[scale_set_width-1 : scale_width];

      end
      assign quantize_vector_val[(pe_parallel_pixel_18*column_num_in_sa+i)*(quantize_pixel_width)+:(quantize_pixel_width)] =
          // mode 1
          // >= 0
          (product_add_bias_vector[(pe_parallel_pixel_18*column_num_in_sa+i)*add_bias_width+add_bias_width-1] == 1'b0) ? (  //overflow
          ((product_add_bias_vector[(pe_parallel_pixel_18*column_num_in_sa+i)*add_bias_width+:add_bias_width]) >> (scale_18_2_vector[i])) > 255 ? 255 :
          //0-255
          ((product_add_bias_vector[(pe_parallel_pixel_18*column_num_in_sa+i)*add_bias_width+:add_bias_width]) >> (scale_18_2_vector[i]))) :
          // < 0
          0;
    end

  endgenerate

  always @(posedge clk) begin
    if (core_relu_scale_en_out == 1'b1) begin
      quantize_vector <= quantize_vector_val;
    end else begin
      quantize_vector <= quantize_vector;
    end
  end

endmodule

