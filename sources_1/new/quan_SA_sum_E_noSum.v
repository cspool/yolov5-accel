`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/19 16:24:06
// Design Name: 
// Module Name: quan_SA_sum_E_noSum
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


module quan_SA_sum_E_noSum(
clk, reset, en, next_en,
mode_init, 
row_in, column_in,

next_out_sa_row_idx,
channel_out_reset,channel_out_en, 

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
parameter sa_column_in_width = pixels_column_in_width; // 24 * column_num_in_sa 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18; // width of 18 is bigger than 88

parameter row_counter_width = ($clog2(row_num_in_sa+1));

parameter sa_out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
parameter sa_out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
parameter sa_out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;

parameter mult_A_width = 24;
parameter mult_B_width = 16;
parameter mult_P_width = 40;
parameter mult_array_length = 576;
parameter mult_dsp_array_length = 528;
parameter mult_lut_array_length = mult_array_length - mult_dsp_array_length;

input clk, reset, en, next_en;

input [3:0] mode_init;
reg [3:0] mode;
input channel_out_reset,channel_out_en;

input [sa_row_in_width - 1:0] row_in; //weight
input [sa_column_in_width - 1:0] column_in;  //feature map


input [5:0] next_out_sa_row_idx; //output sa row idx [1,16]
reg [5:0] out_sa_row_idx;

output [sa_out_width - 1: 0] out; // pox res per channel
//pe_parallel_pixel_88 = pe_parallel_pixel_18

// reg [3:0] mode;

wire [pe_out_width-1 : 0] all_out [row_num_in_sa - 1: 0][column_num_in_sa - 1 : 0]; // all results

wire [42 : 0] row0_mult_out [column_num_in_sa - 1 : 0];

wire [pe_out_width * column_num_in_sa - 1 : 0] row_output;//row results
wire [sa_out_width_88 - 1 : 0] row_output_88;//row results
wire [sa_out_width_18 - 1 : 0] row_output_18;//column results


genvar i, j;

wire [24:0] up[row_num_in_sa - 1 : 0][column_num_in_sa - 1 : 0];
wire [24:0] bottom[row_num_in_sa - 1 : 0][column_num_in_sa - 1 : 0];
wire [24:0] left[row_num_in_sa - 1 : 0][column_num_in_sa - 1 : 0];
wire [24:0] right[row_num_in_sa - 1 : 0][column_num_in_sa - 1 : 0];

reg [row_counter_width-1 : 0] row_counter; 

wire [24:0] I_As[column_num_in_sa - 1 : 0];
wire [24:0] I_Bs[row_num_in_sa - 1 : 0];

wire loop_row_counter_add_begin, loop_row_counter_add_end;

wire [row_num_in_sa-1 :0] row_en, next_row_en;
reg row_en_i0[column_num_in_sa-1 : 0];
reg row_en_array[row_num_in_sa-1-1:0][column_num_in_sa-1 : 0];

always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin //set
      mode <= mode_init;
    end
    else
    begin
      mode <= mode;
    end
  end

always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin //set
      out_sa_row_idx <= 0;
    end
    else
    begin
      out_sa_row_idx <= next_out_sa_row_idx;
    end
  end

assign row_en = {(row_num_in_sa){en}} << (out_sa_row_idx);
assign next_row_en = {(row_num_in_sa){next_en}} << (next_out_sa_row_idx);

generate
    for (i = 0; i < column_num_in_sa; i = i + 1) begin
        //uint8 input * int8 weight, unsigned input int8
        assign I_As[i] = (mode == 0)?   
                                   //unsigned input --> I_A. s25 port
        ({1'b0,column_in[(i * 16 + 8) +: 8], 16'b0} + {{17'b0}, column_in[(i * 16) +: 8]}) :
                                   //unsigned input --> I_B, s18 port
                                   (mode == 1)? 
                                   {{8'b0}, column_in[(i * 16 + 8) +: 8], 9'b0} + {{17'b0}, column_in[(i * 16) +: 8]}:
                                   25'b0;
    end
endgenerate

generate
    for (i = 0; i < row_num_in_sa; i = i + 1) begin
        assign I_Bs[i] = (mode == 0)?  
                                  //signed weights --> I_B, s18 port
        ({{17{row_in[i * 8 + 7]}}, row_in[(i * 8) +: 8]}) :
                                  //signed weights --> I_A, s25 port
                                  (mode == 1)? 
                                  ({{6{row_in[i*8+1]}},1'b1, 18'b0} + {{24{row_in[i*8]}},1'b1}):
                                  25'b0;
    end
endgenerate

generate
    for (j = 0; j < column_num_in_sa; j = j + 1) begin: row_0_column      
            always@(posedge clk)
            begin
              if (reset == 1'b1)
              begin //set
                row_en_i0[j] <= 0;
              end
              else
              begin
                row_en_i0[j] <= next_row_en[0] & next_row_en[j];
              end
            end  
            PE_sum_E pe_sum_E (
                .clk(clk),
                .reset(reset),
                .mode(mode),
                .left(left[0][j]),
                .up(up[0][j]),
                .en((row_en_i0[j])),
                .bottom(bottom[0][j]),
                .right(right[0][j]),
                .out(all_out[0][j]) // output is based on row                
            );
           
       assign up[0][j] = 
       I_As[j];
       assign left[0][j] = 
                           ((j == 0) ? I_Bs[0] : right[0][j - 1]);
    end
    for (i = 1; i < row_num_in_sa; i = i + 1) begin: row
        for (j = 0; j < column_num_in_sa; j = j + 1) begin: column   
            always@(posedge clk)
            begin
              if (reset == 1'b1)
              begin //set
                row_en_array[i-1][j] <= 0; //[i][j]
              end
              else
              begin
                row_en_array[i-1][j] <= next_row_en[i] & next_row_en[j];
              end
            end       
            PE_sum_E pe_sum_E (
                .clk(clk),
                .reset(reset),
                .mode(mode),
                .left(left[i][j]),
                .up(up[i][j]),
                .en((row_en_array[i-1][j])),
                .bottom(bottom[i][j]),
                .right(right[i][j]),
                .out(all_out[i][j]) // output is based on row                
            );
           
           assign up[i][j] = (i == 0) ? I_As[j] : bottom[i - 1][j];
           assign left[i][j] = (j == 0) ? I_Bs[i] : right[i][j - 1];
        end
    end
endgenerate

always@(posedge clk) begin
    if (channel_out_reset) begin
        row_counter <= 0;
    
    end
    else if (loop_row_counter_add_begin) begin 
        if (loop_row_counter_add_end == 1'b1) begin
            row_counter <= 0;
        end
        else begin
            row_counter <= (row_counter + 1);
        end
    end
    else begin
        row_counter <= row_counter;
    end
end

assign loop_row_counter_add_begin = channel_out_en;
assign loop_row_counter_add_end = loop_row_counter_add_begin && (row_counter == 6'd15);

generate
    for (j = 0; j < column_num_in_sa; j = j + 1) begin
        assign row_output[j * pe_out_width +:pe_out_width] = 
        //
        (loop_row_counter_add_begin == 1'b0)? 0: all_out[row_counter][j];
    end
endgenerate


assign  out = (loop_row_counter_add_begin == 1'b0)? 0: 
                    //mode 0
                     (mode == 0)? {{(sa_out_width - sa_out_width_88){1'b0}},row_output_88} :
                     // mode 1
                    (mode == 1)? {{(sa_out_width - sa_out_width_18){1'b0}},row_output_18}:
                    0;

generate
    for (j = 0; j < column_num_in_sa; j = j+1) begin
        assign row_output_88[((2 * j) * pixel_width_88) +: (2 * pixel_width_88)] = 
        //
        {{all_out[row_counter][j][(0+pixel_width_88)+: (pixel_width_88)]},
        //
        {all_out[row_counter][j][(0)+: (pixel_width_88)]}};
        
        assign row_output_18[0 + ((2 * j) * pixel_width_18)+: (2*pixel_width_18)] = 
        //
        {{all_out[row_counter][j][(0+(pixel_width_18)) +: (pixel_width_18)]},
        //
        {all_out[row_counter][j][(0) +: (pixel_width_18)]}};
       
        
        assign row_output_18[pixel_width_18 * pe_parallel_pixel_18 * column_num_in_sa + ((2 * j) * pixel_width_18)+: (2* pixel_width_18)]
        //
        ={{all_out[row_counter][j][(0+(3*pixel_width_18)) +: (pixel_width_18)]},
        //
        {all_out[row_counter][j][(0+(2*pixel_width_18))+: (pixel_width_18)]}};
        
    end

endgenerate

endmodule
