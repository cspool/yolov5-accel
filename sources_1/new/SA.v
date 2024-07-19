`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 07:59:55 PM
// Design Name: 
// Module Name: SA
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


module SA(clk, reset, en, mode, channel_out_reset,channel_out_en, row_in, column_in, out);
    
parameter row_num = 32;
parameter column_num = 32; 
//parameter row_num = 3;
//parameter column_num = 3; 
 
parameter headroom = 8;

parameter pixel_width_88 = 16 + headroom;
//parameter pixel_width_18 = 10 + headroom;
parameter pixel_width_18 = 8 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18; // width of 18 is bigger than 88

parameter row_counter_width = ($clog2(row_num+1));

parameter out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;

input clk, reset, en, mode, channel_out_reset,channel_out_en;

input [8 * row_num - 1:0] row_in;
input [16 * column_num - 1:0] column_in;

output [out_width - 1: 0] out; // pox res per channel or 2 channel

//wire [pe_out_width-1 : 0] all_out [row_num - 1: 0][column_num - 1 : 0]; // all results

wire [pe_out_width * column_num - 1 : 0] all_out [row_num - 1: 0]; // all results

wire [pe_out_width * column_num - 1 : 0] row_output;//row results

wire [out_width_88 - 1 : 0] row_output_88;//row results
wire [out_width_18 - 1 : 0]row_output_18;//row results


genvar i, j;

wire [15:0] up[row_num - 1 : 0][column_num - 1 : 0];
wire [15:0] bottom[row_num - 1 : 0][column_num - 1 : 0];
wire [7:0] left[row_num - 1 : 0][column_num - 1 : 0];
wire [7:0] right[row_num - 1 : 0][column_num - 1 : 0];

reg [row_counter_width-1 : 0] row_counter; 

////j=0,i=0
//PE pe00 (
//        .clk(clk),
//        .reset(reset),
//        .mode(mode),
//        .left(left[0][0]),
//        .up(up[0][0]),
//        .en(en),
//        .bottom(bottom[0][0]),
//        .right(right[0][0]),
////                .out(all_out[i][j]) // output is based on row                
//        .out(all_out[0][0+: pe_out_width]) // output is based on row
//);
//assign up[0][0] =column_in[0+: 16];
//assign left[0][0] = row_in[0+: 8];

////j=0,i>0
//generate
//    for (i = 1; i < row_num; i = i + 1) begin: row0
//        PE pe (
//            .clk(clk),
//            .reset(reset),
//            .mode(mode),
//            .left(left[i][0]),
//            .up(up[i][0]),
//            .en(en),
//            .bottom(bottom[i][0]),
//            .right(right[i][0]),
////                .out(all_out[i][j]) // output is based on row                
//            .out(all_out[i][0+: pe_out_width]) // output is based on row
//        );
//       assign up[i][0] = bottom[i - 1][0];
//       assign left[i][0] = row_in[8 * i +: 8];
//    end
//endgenerate

////i=0, j>0
//generate
//    for (j = 1; j < column_num; j = j + 1) begin: column0        
//        PE pe (
//            .clk(clk),
//            .reset(reset),
//            .mode(mode),
//            .left(left[0][j]),
//            .up(up[0][j]),
//            .en(en),
//            .bottom(bottom[0][j]),
//            .right(right[0][j]),
////                .out(all_out[i][j]) // output is based on row                
//            .out(all_out[0][pe_out_width * j +: pe_out_width]) // output is based on row
//        );
//       assign up[0][j] =column_in[16 * j +: 16];
//       assign left[0][j] = right[0][j - 1];
//    end
//endgenerate

////i >0, j>0
//generate
//    for (i = 1; i < row_num; i = i + 1) begin: row
//        for (j = 1; j < column_num; j = j + 1) begin: column        
//            PE pe (
//                .clk(clk),
//                .reset(reset),
//                .mode(mode),
//                .left(left[i][j]),
//                .up(up[i][j]),
//                .en(en),
//                .bottom(bottom[i][j]),
//                .right(right[i][j]),
////                .out(all_out[i][j]) // output is based on row                
//                .out(all_out[i][pe_out_width * j +: pe_out_width]) // output is based on row
//            );
//           assign up[i][j] = bottom[i - 1][j];
//           assign left[i][j] = right[i][j - 1];
//        end
//    end
//endgenerate

generate
    for (i = 0; i < row_num; i = i + 1) begin: row
        for (j = 0; j < column_num; j = j + 1) begin: column        
            PE pe (
                .clk(clk),
                .reset(reset),
                .mode(mode),
                .left(left[i][j]),
                .up(up[i][j]),
                .en(en),
                .bottom(bottom[i][j]),
                .right(right[i][j]),
//                .out(all_out[i][j]) // output is based on row                
                .out(all_out[i][pe_out_width * j +: pe_out_width]) // output is based on row
            );
           assign up[i][j] = (i == 0) ? column_in[16 * j +: 16] : bottom[i - 1][j];
           assign left[i][j] = (j == 0) ? row_in[8 * i +: 8] : right[i][j - 1];
        end
    end
endgenerate

always@(posedge clk) begin
    if (channel_out_reset) begin
        row_counter <= -1;
    
    end
    else if (channel_out_en) begin 
        row_counter <= (row_counter + 1);
      
    end
    else begin
        row_counter <= row_counter;
    end
end

assign row_output = (row_counter == {(row_counter_width){1'b1}})? 0: all_out[row_counter];

assign  out = (row_counter == {(row_counter_width){1'b1}})? 0: 
                    (mode == 0)? {{(out_width - out_width_88){1'b0}},row_output_88} :
                    (mode == 1)? {{(out_width - out_width_18){1'b0}},row_output_18}:
                    0;

generate
    for (j = 0; j < column_num; j = j+1) begin: column

             // all_out[i][j]   
//        assign out[((2 * j) * pixel_width)+: (2*pixel_width)]
//        = (row_counter == {(row_counter_width){1'b1}})? 0: 
//        (mode == 0)?{{{(pixel_width-pixel_width_88){1'b0}},all_out[row_counter][j][(pixel_width_88)+: (pixel_width_88)]},
//        {{(pixel_width-pixel_width_88){1'b0}},all_out[row_counter][j][0+: (pixel_width_88)]}}:
//        (mode == 1)? (
//        (low_or_high == 1'b0)? 
//        {{{(pixel_width-pixel_width_18){1'b0}},all_out[row_counter][j][(pixel_width_18) +: (pixel_width_18)]},
//        {{(pixel_width-pixel_width_18){1'b0}}, all_out[row_counter][j][0 +: (pixel_width_18)]}}:
//        (low_or_high == 1'b1)?
//         {{{(pixel_width-pixel_width_18){1'b0}},all_out[row_counter][j][(3*pixel_width_18) +: (pixel_width_18)]},
//         {{(pixel_width-pixel_width_18){1'b0}}, all_out[row_counter][j][(2*pixel_width_18) +: (pixel_width_18)]}}:
//        0): 0;
    
    // all_out[i]  assign  seperately
    
//        assign row_output_88[((2 * j) * pixel_width) +: (pixel_width)]  
//        ={{(pixel_width-pixel_width_88){1'b0}},row_output[(j * pe_out_width)+: (pixel_width_88)]};
//        assign row_output_88[((2 * j+1) * pixel_width)+: (pixel_width)]  
//        = {{(pixel_width-pixel_width_88){1'b0}},row_output[(j * pe_out_width+pixel_width_88)+: (pixel_width_88)]};

//        assign row_output_18[0][((2 * j) * pixel_width)+: (pixel_width)] 
//        ={{(pixel_width-pixel_width_18){1'b0}}, row_output[(j * pe_out_width) +: (pixel_width_18)]};
//        assign row_output_18[0][((2 * j+1) * pixel_width)+: (pixel_width)] 
//        = {{(pixel_width-pixel_width_18){1'b0}},row_output[(j * pe_out_width+(pixel_width_18)) +: (pixel_width_18)]};

//        assign row_output_18[1][((2 * j) * pixel_width)+: (pixel_width)] 
//        = {{(pixel_width-pixel_width_18){1'b0}},row_output[(j * pe_out_width+(2*pixel_width_18)) +: (pixel_width_18)]};
//        assign row_output_18[1][((2 * j+1) * pixel_width)+: (pixel_width)] 
//        = {{(pixel_width-pixel_width_18){1'b0}},row_output[(j * pe_out_width+(3*pixel_width_18))+: (pixel_width_18)]};
        
        //all_out[i] assign together
        
        assign row_output_88[((2 * j) * pixel_width_88) +: (2 * pixel_width_88)]
        = {{all_out[row_counter][(j * pe_out_width+pixel_width_88)+: (pixel_width_88)]},
        {all_out[row_counter][(j * pe_out_width)+: (pixel_width_88)]}};
        
        
        assign row_output_18[0 + ((2 * j) * pixel_width_18)+: (2*pixel_width_18)]
        = {{all_out[row_counter][(j * pe_out_width+(pixel_width_18)) +: (pixel_width_18)]},
        {all_out[row_counter][(j * pe_out_width) +: (pixel_width_18)]}};
       
        
        assign row_output_18[pixel_width_18 * pe_parallel_pixel_18 * column_num + ((2 * j) * pixel_width_18)+: (2* pixel_width_18)]
        ={{all_out[row_counter][(j * pe_out_width+(3*pixel_width_18)) +: (pixel_width_18)]},
        {all_out[row_counter][(j * pe_out_width+(2*pixel_width_18))+: (pixel_width_18)]}};
        
    end

endgenerate

endmodule
