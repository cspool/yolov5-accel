`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/09 11:15:37
// Design Name: 
// Module Name: quan_SA_sum_E_v11
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


module quan_SA_sum_E_v11 (
    clk,
    reset,
    // core_cell_reset_pre,
    core_cell_en_pre,
    core_cell_output_en_pre,

    core_reset_out,
    core_en_out,
    core_output_en_out,

    mode,
    row_in,
    row_in_out,
    column_in,
    column_in_out,

    // sa_E_in,
    // sa_sum_in,
    // mult_array_mode_pre,
    // mult_array_mode_out,
    // row0_out,

    out
);

  parameter row_num_in_sa = 16;
  parameter column_num_in_sa = 16;

  parameter headroom = 8;

  parameter pixel_width_88 = 16 + headroom;
  //parameter pixel_width_18 = 10 + headroom;
  parameter pixel_width_18 = 8 + headroom;

  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;

  parameter weights_row_in_width = 8 * row_num_in_sa;
  parameter sa_row_in_width = weights_row_in_width;

  parameter pixels_column_in_width = 16 * column_num_in_sa;
  parameter sa_column_in_width = pixels_column_in_width;  // 24 * column_num_in_sa 

  parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18;
  parameter row_counter_width = ($clog2(row_num_in_sa + 1));

  parameter sa_out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  parameter sa_out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  parameter sa_out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;

  parameter mult_A_width = 24;
  parameter mult_B_width = 16;
  parameter mult_P_width = 40;
  parameter mult_array_length = 576;
  parameter mult_dsp_array_length = 528;
  parameter mult_lut_array_length = mult_array_length - mult_dsp_array_length;

  input clk, reset;
  // input core_cell_reset_pre;
  input core_cell_en_pre, core_cell_output_en_pre;

  input [3:0] mode;

  // input mult_array_mode_pre;
  // output reg mult_array_mode_out;

  input [sa_row_in_width - 1:0] row_in;  //weight
  output reg [sa_row_in_width - 1:0] row_in_out;
  input [sa_column_in_width - 1:0] column_in;  //feature map
  output reg [sa_column_in_width - 1:0] column_in_out;

  always @(posedge clk) begin
    row_in_out    <= row_in;
    column_in_out <= column_in;
  end

  // input [row_num_in_sa * mult_B_width -1:0] sa_E_in;  //the first row of SAs is used to mult, multer B
  // input [column_num_in_sa * mult_A_width - 1:0] sa_sum_in;

  wire cell_output_en_array[row_num_in_sa-1:0][column_num_in_sa-1 : 0];
  wire cell_en_array       [row_num_in_sa-1:0][column_num_in_sa-1 : 0];
  wire cell_reset_array    [row_num_in_sa-1:0][column_num_in_sa-1 : 0];

  // output [column_num_in_sa * mult_P_width -1:0] row0_out;

  output [sa_out_width - 1:0] out;  // pox res per channel
  //pe_parallel_pixel_88 = pe_parallel_pixel_18

  output reg core_reset_out, core_en_out, core_output_en_out;
  always @(posedge clk) begin
    core_reset_out     <= reset;
    core_en_out        <= core_cell_en_pre;
    core_output_en_out <= core_cell_output_en_pre;
    // mult_array_mode_out <= mult_array_mode_pre;
  end

  // reg [3:0] mode;

  wire [                     pe_out_width-1 : 0] all_out                         [row_num_in_sa - 1:0][column_num_in_sa - 1 : 0];  // all results
  // wire [                                 42 : 0] row0_mult_out                   [column_num_in_sa - 1 : 0];

  reg  [pe_out_width * column_num_in_sa - 1 : 0] sum_row;  //row results
  reg  [   pe_out_width * row_num_in_sa - 1 : 0] sum_column;  //row results
  wire [pe_out_width * column_num_in_sa - 1 : 0] row_output;  //row results
  wire [pe_out_width * column_num_in_sa - 1 : 0] delay_sum_row;
  wire [   pe_out_width * row_num_in_sa - 1 : 0] delay_sum_column;
  reg  [                sa_out_width_88 - 1 : 0] row_output_88;  //row results
  reg  [                sa_out_width_18 - 1 : 0] row_output_18;  //column results


  genvar i, j;

  wire [24:0] up    [   row_num_in_sa - 1 : 0] [column_num_in_sa - 1 : 0];
  wire [24:0] bottom[   row_num_in_sa - 1 : 0] [column_num_in_sa - 1 : 0];
  wire [17:0] left  [   row_num_in_sa - 1 : 0] [column_num_in_sa - 1 : 0];
  wire [17:0] right [   row_num_in_sa - 1 : 0] [column_num_in_sa - 1 : 0];

  wire [24:0] I_As  [column_num_in_sa - 1 : 0];
  wire [17:0] I_Bs  [   row_num_in_sa - 1 : 0];

  // always @(posedge clk) begin
  //   if (reset == 1'b1) begin  //set
  //     mode <= mode_init;
  //   end else begin
  //     mode <= mode;
  //   end
  // end

  generate
    for (i = 0; i < column_num_in_sa; i = i + 1) begin
      //uint8 input * int8 weight, unsigned input int8
      assign I_As[i] = (mode == 0) ?
          //unsigned input --> I_A. s25 port
          ({1'b0, column_in_out[(i*16+8)+:8], 16'b0} + {{17'b0}, column_in_out[(i*16)+:8]}) :
          //signed weights --> I_A, s25 port
          (mode == 1) ? ({{6{row_in_out[i*8+1]}}, 1'b1, 18'b0} + {{24{row_in_out[i*8]}}, 1'b1}) : 25'b0;

      // always @(posedge clk) begin
      //   if (reset == 1'b1) begin  //set
      //     I_As[i] <= 0;
      //   end else begin
      //     I_As[i] <= (mode == 0) ?
      //     //unsigned input --> I_A. s25 port
      //     ({1'b0, column_in_out[(i*16+8)+:8], 16'b0} + {{17'b0}, column_in_out[(i*16)+:8]}) :
      //     //unsigned input --> I_B, s18 port
      //     (mode == 1) ? {{8'b0}, column_in_out[(i*16+8)+:8], 9'b0} + {{17'b0}, column_in_out[(i*16)+:8]} : 25'b0;
      //   end
      // end
    end
  endgenerate

  generate
    for (i = 0; i < row_num_in_sa; i = i + 1) begin
      assign I_Bs[i] = (mode == 0) ?
          //signed weights --> I_B, s18 port
          ({{17{row_in_out[i*8+7]}}, row_in_out[(i*8)+:8]}) :
          //unsigned input --> I_B, s18 port
          (mode == 1) ?  //
          {{1'b0}, column_in_out[(i*16+8)+:8], 9'b0} + {{10'b0}, column_in_out[(i*16)+:8]} :  //
          25'b0;
    end
  endgenerate

  quan_Delay_Regs_Sum_Row quan_delay_regs_sum_row (
      .clk          (clk),
      .sum_row      (sum_row),
      .delay_sum_row(delay_sum_row)
  );
  quan_Delay_Regs_Sum_Row quan_delay_regs_sum_column (
      .clk          (clk),
      .sum_row      (sum_column),
      .delay_sum_row(delay_sum_column)
  );
  assign row_output = (mode == 0) ? delay_sum_row : delay_sum_column;

  generate
    for (j = 0; j < column_num_in_sa; j = j + 1) begin
      // assign sum_row[j*pe_out_width+:pe_out_width] = all_north_out[0][j];
      always @(posedge clk) begin
        sum_row[j*pe_out_width+:pe_out_width] <= all_out[0][j];
      end
    end

    for (i = 0; i < row_num_in_sa; i = i + 1) begin
      // assign sum_column[i*pe_out_width+:pe_out_width] = all_north_out[i][0];
      always @(posedge clk) begin
        sum_column[i*pe_out_width+:pe_out_width] <= all_out[i][0];
      end
    end

    for (j = 0; j < column_num_in_sa; j = j + 1) begin : row_0_column
      core_cell_v5 core_cell (  //i == 0
          .clk            (clk),
          .reset_pre      ((j == 0) ? reset : cell_reset_array[0][j-1]),
          .en_pre         ((j == 0) ? core_cell_en_pre : cell_en_array[0][j-1]),
          .cell_out_en_pre((j == 0) ? core_cell_output_en_pre : cell_output_en_array[0][j-1]),
          .reset_out      (cell_reset_array[0][j]),
          .en_out         (cell_en_array[0][j]),
          .cell_out_en_out(cell_output_en_array[0][j]),

          .mode          (mode[0]),
          .left          (left[0][j]),
          .up            (up[0][j]),
          .south_cell_out(all_out[0+1][j]),
          .east_cell_out ((j == column_num_in_sa - 1) ? {(pe_out_width) {1'b0}} : all_out[0][j+1]),

          .bottom(bottom[0][j]),
          .right (right[0][j]),
          .out   (all_out[0][j])  // output is based on row    
      );
      //       assign up[0][j]   = (mult_array_mode_out == 1'b1) ?  //mult sum
      // {{(25 - mult_A_width) {sa_sum_in[j*mult_A_width+mult_A_width-1]}}, sa_sum_in[j*mult_A_width+:mult_A_width]} :  //x
      //  I_As[j];
      //       assign left[0][j] = (mult_array_mode_out == 1'b1) ?  //mult E
      // {{(25 - mult_B_width) {sa_E_in[j*mult_B_width+mult_B_width-1]}}, sa_E_in[j*mult_B_width+:mult_B_width]} :  //w
      //  ((j == 0) ? I_Bs[0] : right[0][j-1]);

      assign up[0][j]   = I_As[j];
      assign left[0][j] = ((j == 0) ? I_Bs[0] : right[0][j-1]);

    end
    for (i = 1; i < row_num_in_sa - 1; i = i + 1) begin : row
      for (j = 0; j < column_num_in_sa; j = j + 1) begin : column
        core_cell_v5 core_cell (  // i > 0
            .clk            (clk),
            .reset_pre      ((j == 0) ? cell_reset_array[i-1][j] : (cell_reset_array[i][j-1] | cell_reset_array[i-1][j])),
            .en_pre         ((j == 0) ? cell_en_array[i-1][j] : (cell_en_array[i][j-1] | cell_en_array[i-1][j])),
            .cell_out_en_pre((j == 0) ? cell_output_en_array[i-1][j] : (cell_output_en_array[i][j-1] | cell_output_en_array[i-1][j])),
            .reset_out      (cell_reset_array[i][j]),
            .en_out         (cell_en_array[i][j]),
            .cell_out_en_out(cell_output_en_array[i][j]),

            .mode          (mode[0]),
            .left          (left[i][j]),
            .up            (up[i][j]),
            .south_cell_out(all_out[i+1][j]),
            .east_cell_out ((j == column_num_in_sa - 1) ? {(pe_out_width) {1'b0}} : all_out[i][j+1]),

            .bottom(bottom[i][j]),
            .right (right[i][j]),
            .out   (all_out[i][j])  // output is based on row    
        );

        assign up[i][j]   = (i == 0) ? I_As[j] : bottom[i-1][j];
        assign left[i][j] = (j == 0) ? I_Bs[i] : right[i][j-1];

      end
    end
    for (j = 0; j < column_num_in_sa; j = j + 1) begin : row_last_column
      // cell_reset_array[i][j] <= ((i == 0) && (j == 0)) ? reset :  //
      //     ((i == 0) && (j > 0)) ? cell_reset_array[i][j-1] :  // 
      //     ((i > 0) && (j == 0)) ? cell_reset_array[i-1][j] :  //
      //     (cell_reset_array[i][j-1] | cell_reset_array[i-1][j]);  //

      // cell_en_array[i][j] <= ((i == 0) && (j == 0)) ? core_cell_en_pre :  //
      //     ((i == 0) && (j > 0)) ? cell_en_array[i][j-1] :  // 
      //     ((i > 0) && (j == 0)) ? cell_en_array[i-1][j] :  //
      //     (cell_en_array[i][j-1] | cell_en_array[i-1][j]);  //

      // cell_output_en_array[i][j] <= ((i == 0) && (j == 0)) ? core_cell_output_en_pre :  //
      //     ((i == 0) && (j > 0)) ? cell_output_en_array[i][j-1] :  // 
      //     ((i > 0) && (j == 0)) ? cell_output_en_array[i-1][j] :  //
      //     (cell_output_en_array[i][j-1] | cell_output_en_array[i-1][j]);  //

      core_cell_v5 core_cell (  // i>0
          .clk            (clk),
          .reset_pre      ((j == 0) ? cell_reset_array[row_num_in_sa-1-1][j] : (cell_reset_array[row_num_in_sa-1][j-1] | cell_reset_array[row_num_in_sa-1-1][j])),
          .en_pre         ((j == 0) ? cell_en_array[row_num_in_sa-1-1][j] : (cell_en_array[row_num_in_sa-1][j-1] | cell_en_array[row_num_in_sa-1-1][j])),
          .cell_out_en_pre((j == 0) ? cell_output_en_array[row_num_in_sa-1-1][j] : (cell_output_en_array[row_num_in_sa-1][j-1] | cell_output_en_array[row_num_in_sa-1-1][j])),
          .reset_out      (cell_reset_array[row_num_in_sa-1][j]),
          .en_out         (cell_en_array[row_num_in_sa-1][j]),
          .cell_out_en_out(cell_output_en_array[row_num_in_sa-1][j]),

          .mode          (mode[0]),
          .left          (left[row_num_in_sa-1][j]),
          .up            (up[row_num_in_sa-1][j]),
          .south_cell_out({(pe_out_width) {1'b0}}),
          .east_cell_out ((j == column_num_in_sa - 1) ? {(pe_out_width) {1'b0}} : all_out[row_num_in_sa-1][j+1]),
          .bottom        (bottom[row_num_in_sa-1][j]),
          .right         (right[row_num_in_sa-1][j]),
          .out           (all_out[row_num_in_sa-1][j])                                                             // output is based on column   
      );
      assign up[row_num_in_sa-1][j]   = bottom[row_num_in_sa-1-1][j];
      assign left[row_num_in_sa-1][j] = (j == 0) ? I_Bs[row_num_in_sa-1] : right[row_num_in_sa-1][j-1];
    end
  endgenerate

  //row0_vector ---> delay_regs_sum_out

  assign out =  //mode 0
      (mode == 0) ? {{(sa_out_width - sa_out_width_88) {1'b0}}, row_output_88} :
      // mode 1
      (mode == 1) ? {{(sa_out_width - sa_out_width_18) {1'b0}}, row_output_18} : 0;

  generate
    for (j = 0; j < column_num_in_sa; j = j + 1) begin

      always @(posedge clk) begin
        row_output_88[((2*j)*pixel_width_88)+:(2*pixel_width_88)] <=
        //
        {
          {row_output[(j*pe_out_width+pixel_width_88)+:(pixel_width_88)]},
          //
          {
            row_output[(j*pe_out_width)+:(pixel_width_88)]
          }
        };
      end

      always @(posedge clk) begin
        row_output_18[0+((2*j)*pixel_width_18)+:(2*pixel_width_18)] <=
        //
        {
          {row_output[(j*pe_out_width+(pixel_width_18))+:(pixel_width_18)]},
          //
          {
            row_output[(j*pe_out_width)+:(pixel_width_18)]
          }
        };
      end

      always @(posedge clk) begin
        row_output_18[pixel_width_18*pe_parallel_pixel_18*column_num_in_sa+((2*j)*pixel_width_18)+:(2*pixel_width_18)] <=
        //
        {
          {row_output[(j*pe_out_width+(3*pixel_width_18))+:(pixel_width_18)]},
          //
          {
            row_output[(j*pe_out_width+(2*pixel_width_18))+:(pixel_width_18)]
          }
        };
      end

      // assign row0_out[j*mult_P_width+:mult_P_width] = row0_mult_out[j][mult_P_width-1 : 0];

    end

  endgenerate

endmodule


