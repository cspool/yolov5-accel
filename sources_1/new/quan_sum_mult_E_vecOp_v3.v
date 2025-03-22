`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/22 16:56:36
// Design Name: 
// Module Name: quan_sum_mult_E_vecOp_v3
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


module quan_sum_mult_E_vecOp_v3 (
    clk,
    mode,
    E_set,
    sum_vector,
    sum_vector_in_mult_A_width,
    E_vector_in_mult_B_width
);

  parameter column_num_in_sa = 16;  // how many columns in a sa
  parameter headroom = 8;
  parameter pixel_width_88 = 16 + headroom;
  parameter pixel_width_18 = 8 + headroom;
  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;
  parameter sum_vector_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  parameter sum_vector_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  parameter sum_vector_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num_in_sa;
  parameter E_width = 16;  //16 bit E_scale tail
  parameter E_set_width = E_width * pe_parallel_weight_18;  //32 bit

  parameter sum_mult_E_width_88 = pixel_width_88 + E_width;  //40 bit
  parameter sum_mult_E_width_18 = pixel_width_18 + E_width;  //32 bit
  parameter sum_mult_E_vector_width_88 = sum_mult_E_width_88 * pe_parallel_weight_88 * pe_parallel_pixel_88 * column_num_in_sa;
  //40 bit * 32 pixels * 1 channel
  parameter sum_mult_E_vector_width_18_2 = sum_mult_E_width_18 * 1 * pe_parallel_pixel_18 * column_num_in_sa;
  //32 bit * 32 pixels * 1 channel
  parameter mult_A_width = 24;
  parameter mult_B_width = 16;
  parameter mult_P_width = 40;
  parameter sum_vector_in_mult_A_width_width = mult_A_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //24 bit * 32 pixels * 2 channel
  parameter E_vector_in_mult_B_width_width = mult_B_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //16 bit * 32 pixels * 2 channel
  parameter sum_mult_E_vector_in_mult_P_width_width = mult_P_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //40 bit * 32 pixels * 2 channel > 32 bit * 32 pixels * 2 channel > 40 bit * 32 pixels * 1 channel

  input clk;
  input [3:0] mode;
  //cycle 0
  input [E_set_width-1 : 0] E_set;
  //16 bit * 2 channel
  input [sum_vector_width - 1:0] sum_vector;
  //16 bit * 32 pixels * 2 channel

  output reg [sum_vector_in_mult_A_width_width-1 : 0] sum_vector_in_mult_A_width;
  //24 bit * 32 pixels * 2 channel; 
  output reg [E_vector_in_mult_B_width_width-1 : 0] E_vector_in_mult_B_width;
  //16 bit * 32 pixels * 2 channel; 

  wire [sum_vector_in_mult_A_width_width-1 : 0] sum_vector_in_mult_A_width_val;
  //24 bit * 32 pixels * 2 channel; 
  wire [  E_vector_in_mult_B_width_width-1 : 0] E_vector_in_mult_B_width_val;
  //16 bit * 32 pixels * 2 channel; 

  wire [                         E_width-1 : 0] E_88;
  wire [E_width-1 : 0] E_18_1, E_18_2;
  wire [sum_vector_width_88 - 1 : 0] sum_vector_88;
  //24 bit * 32 pixels * 1 channel
  wire [sum_vector_width_18_2 - 1 : 0] sum_vector_18_1, sum_vector_18_2;
  //16 bit * 32 pixels * 1 channel

  assign sum_vector_88   = sum_vector[sum_vector_width_88-1 : 0];
  assign sum_vector_18_1 = sum_vector[sum_vector_width_18_2-1 : 0];
  assign sum_vector_18_2 = sum_vector[sum_vector_width-1 : sum_vector_width_18_2];
  assign E_88            = E_set[E_width-1 : 0];
  assign E_18_1          = E_88;
  assign E_18_2          = E_set[E_set_width-1 : E_width];

  genvar m;
  //cycle 0
  //sum_vector * E in mult_array outside
  generate
    // sum_vector_in_24[24 * pe_parallel_pixel_88 * column_num -1 : 0]
    //24 bit * 32 pixels * 1 channel or 16 bit * 32 pixels * 2 channel
    for (m = 0; m < pe_parallel_pixel_88 * column_num_in_sa; m = m + 1) begin
      assign sum_vector_in_mult_A_width_val[m*mult_A_width+:mult_A_width] =
          // 0{sign},sum_88
          // (mode == 0) ? sum_vector_88[m*pixel_width_88+:pixel_width_88] :
          (mode == 0) ? sum_vector[m*pixel_width_88+:pixel_width_88] :
          // 8{sign},sum_18_1
          // (mode == 1) ? {{8{sum_vector_18_1[m*pixel_width_18+pixel_width_18-1]}},
          // //sum
          // sum_vector_18_1[m*pixel_width_18+:pixel_width_18]} : 0;
          (mode == 1) ? {{8{sum_vector[m*pixel_width_18+pixel_width_18-1]}},
          //sum
          sum_vector[m*pixel_width_18+:pixel_width_18]} : 0;
    end
    // sum_vector_in_24[sum_vector_in_24_width-1 : 24 * pe_parallel_pixel_18 * column_num]
    for (m = 0; m < pe_parallel_pixel_18 * column_num_in_sa; m = m + 1) begin
      assign sum_vector_in_mult_A_width_val[(pe_parallel_pixel_18*column_num_in_sa+m)*mult_A_width+:mult_A_width] =
          // 8{sign},sum_18_2
          // (mode == 1) ? {{8{sum_vector_18_2[m*pixel_width_18+pixel_width_18-1]}},
          // // sum_18_2
          // sum_vector_18_2[m*pixel_width_18+:pixel_width_18]} : 0;
          (mode == 1) ? {{8{sum_vector[sum_vector_width_18_2+m*pixel_width_18+pixel_width_18-1]}},
          // sum_18_2
          sum_vector[sum_vector_width_18_2+m*pixel_width_18+:pixel_width_18]} : 0;
    end

    // E_vector_in_16[16 * pe_parallel_pixel_18 * column_num -1 : 0]
    //16 bit * 32 pixels * 2 channel
    for (m = 0; m < pe_parallel_pixel_88 * column_num_in_sa; m = m + 1) begin
      assign E_vector_in_mult_B_width_val[m*mult_B_width+:mult_B_width] =
          //{0,E}; E_88 equals E_18_1
          {
            // {(mult_B_width - E_width) {1'b0}}, E_88
            {(mult_B_width - E_width) {1'b0}},
            E_set[E_width-1 : 0]
          };
    end
    // E_vector_in_16[E_vector_in_16_width-1 : 16 * pe_parallel_pixel_18 * column_num]
    for (m = 0; m < pe_parallel_pixel_18 * column_num_in_sa; m = m + 1) begin
      assign E_vector_in_mult_B_width_val[(pe_parallel_pixel_18*column_num_in_sa+m)*mult_B_width+:mult_B_width] =
          //{0,E}
          // (mode == 1) ? {{(mult_B_width - E_width) {1'b0}}, E_18_2} : 0;
          (mode == 1) ? {{(mult_B_width - E_width) {1'b0}}, E_set[E_set_width-1 : E_width]} : 0;
    end
  endgenerate

  always @(posedge clk) begin
    sum_vector_in_mult_A_width <= sum_vector_in_mult_A_width_val;
    E_vector_in_mult_B_width   <= E_vector_in_mult_B_width_val;
  end

endmodule
