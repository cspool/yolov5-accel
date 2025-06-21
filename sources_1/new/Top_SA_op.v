// `timescale 1ns / 1ps
// //////////////////////////////////////////////////////////////////////////////////
// // Company: 
// // Engineer: 
// // 
// // Create Date: 2025/05/19 16:49:57
// // Design Name: 
// // Module Name: Top_SA_op
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


// module Top_SA_op #(
//     parameter DDR_WIDTH  = 64,
//     parameter UI_WIDTH   = DDR_WIDTH * 8,
//     parameter ADDR_WIDTH = 29,
//     parameter RST_CNT    = 2000,
//     parameter row_num = 16,
//     parameter column_num = 16,
//     parameter headroom = 8,
//     parameter pixel_width_88 = 16 + headroom,
//     //parameter pixel_width_18 = 10 + headroom;
//     parameter pixel_width_18 = 8 + headroom,

//     parameter pe_parallel_pixel_88  = 2,
//     parameter pe_parallel_weight_88 = 1,
//     parameter pe_parallel_pixel_18  = 2,
//     parameter pe_parallel_weight_18 = 2,

//     parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18,  // width of 18 is bigger than 88

//     parameter row_counter_width = ($clog2(row_num + 1)),

//     parameter out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num,
//     parameter out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num,
//     parameter out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num
// ) (
//     input              F1_GCLK_40M,
//     output [256 - 1:0] out           // pox res per channel
// );

//   // Internal signals
//   reg         rst_n;
//   wire        clk_40M;
//   wire        clk_40MHz_locked;
//   wire        clk_150M;
//   wire        clk_200M;
//   reg  [15:0] rst_cnt;

//   wire        ui_clk;
//   wire        ui_rst;

//   // Clk wiz
//   clk_wiz_40M clk_wiz_40M_inst (
//       .clk_out3(clk_200M),
//       .clk_out2(clk_150M),
//       .clk_out1(clk_40M),
//       .locked  (clk_40MHz_locked),
//       .clk_in1 (F1_GCLK_40M)
//   );

//   // Top driver
//   always @(posedge clk_40M or negedge clk_40MHz_locked) begin
//     if (!clk_40MHz_locked) begin
//       rst_cnt <= 16'd0;
//     end else if (rst_cnt < RST_CNT) begin
//       rst_cnt <= rst_cnt + 1'b1;
//     end
//   end

//   always @(posedge clk_40M or negedge clk_40MHz_locked) begin
//     if (!clk_40MHz_locked) begin
//       rst_n <= 1'b0;
//     end else if (rst_cnt > RST_CNT - 100) begin
//       rst_n <= 1'b1;
//     end else begin
//       rst_n <= 1'b0;
//     end
//   end

//   wire reset;

//   // vio
//   vio_sa_top vio_sa_top (
//       .clk       (ui_clk),
//       .probe_out0(reset),
//       .probe_out1(start)
//       // .probe_out2(channel_out_en)
//   );

//   conv_datapath conv_datapath (
//       .clk     (ui_clk),
//       .start   (start),
//       .reset   (reset),
//       .out_data(out_data)

//   );
// endmodule
