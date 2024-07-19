module SA_12_unsigned(
clk, reset, en, channel_out_reset,channel_out_en, row_in, column_in, out
    );
    
    parameter row_num = 32;
parameter column_num = 32; 
//row_num = column_num

     parameter headroom = 6;

parameter pixel_width_12 = 2 + headroom;

parameter pe_parallel_pixel_12 = 4;
parameter pe_parallel_weight_12 = 4;

parameter pe_out_width =  (pixel_width_12) * pe_parallel_pixel_12 *  pe_parallel_weight_12;

parameter pixel_width = pixel_width_12;


parameter row_counter_width = ($clog2(row_num+1));

input clk, reset, en, channel_out_reset,channel_out_en;

input [1 * pe_parallel_weight_12 * row_num - 1:0] row_in; //weight
input [2 * pe_parallel_pixel_12 * column_num - 1:0] column_in;  //feature map

//output [pixel_width * pe_parallel_pixel_12 * column_num - 1: 0] out; // pox res per channel

//wire [pe_out_width-1 : 0] all_out [row_num - 1: 0][column_num - 1 : 0]; // all results

output [pe_out_width*column_num*row_num -1 : 0] out; // all results

//wire [pe_out_width * column_num - 1 : 0] row_output;//row results
//wire [pixel_width * pe_parallel_pixel_12 * column_num - 1 : 0] row_output_88;//row results

genvar i, j;

wire [20:0] up[row_num - 1 : 0][column_num - 1 : 0];
wire [20:0] bottom[row_num - 1 : 0][column_num - 1 : 0];
wire [11:0] left[row_num - 1 : 0][column_num - 1 : 0];
wire [11:0] right[row_num - 1 : 0][column_num - 1 : 0];

reg [row_counter_width-1 : 0] row_counter; 

wire [20:0] I_Bs[row_num - 1 : 0];  // weights

wire [11:0] I_As[column_num - 1 : 0]; // activations

//column_num = row_num

generate
    for (i = 0; i < column_num; i = i + 1) begin
        assign I_As[i] = ({column_in[(i * 8 + 6) +: 2], 10'b0} 
                               + {2'b0, column_in[(i * 8 + 4) +: 2], 8'b0}
                               + {8'b0, column_in[(i * 8 + 2) +: 2], 2'b0}
                               + {10'b0, column_in[(i * 8) +: 2]});                      
    end
endgenerate

generate
    for (i = 0; i < row_num; i = i + 1) begin
        assign I_Bs[i] = ({row_in[(i * 4 + 3)], 20'b0} 
                               + {4'b0,{row_in[(i * 4 + 2)]}, 16'b0}
                               + {16'b0,{row_in[(i * 4 + 1)]},  4'b0}
                               + {20'b0,{row_in[(i * 4)]}});       
    end
endgenerate

generate
    for (i = 0; i < row_num; i = i + 1) begin: row
        for (j = 0; j < column_num; j = j + 1) begin: column        
            PE_12_unsigned pe_12_unsigned (
                .clk(clk),
                .reset(reset),
                .left(left[i][j]),
                .up(up[i][j]),
                .en(en),
                .bottom(bottom[i][j]),
                .right(right[i][j]),
                .out(out[i * column_num * pe_out_width + j * pe_out_width +: pe_out_width]) // output is based on row                
            );
           
           assign up[i][j] = (i == 0) ? I_As[j] : bottom[i - 1][j];
           assign left[i][j] = (j == 0) ? I_Bs[i] : right[i][j - 1];
        end
    end
endgenerate

//reg low_or_high;

//always@(posedge clk) begin
//    if (channel_out_reset) begin
//        row_counter <= -1;
//        low_or_high <= 1;
    
//    end
//    else if (channel_out_en) begin 
//        row_counter <= ((((row_counter+1) & ({(row_counter_width){1'b1}}))>>2);
        
//        low_or_high <= ~low_or_high;
       
//    end
//    else begin
//        row_counter <= row_counter;
//        low_or_high <= low_or_high;
        
//    end
//end

//assign row_output = (row_counter == {(row_counter_width){1'b1}})? 0: all_out[row_counter];

// row_num = column_num
//row_counter = column_counter
//generate
//    for (j = 0; j < column_num; j = j + 1) begin
//        assign row_output[j * pe_out_width +:pe_out_width] = (row_counter == {(row_counter_width){1'b1}})? 0: all_out[row_counter][j];
//    end
//endgenerate

//generate
//    for (i = 0; i < row_num; i = i + 1) begin
//        assign column_output[i * pe_out_width +:pe_out_width] = (row_counter == {(row_counter_width){1'b1}})? 0: all_out[i][row_counter];
//    end
//endgenerate

//assign  out = (row_counter == {(row_counter_width){1'b1}})? 0: 
//                    (mode == 0)? row_output_88 :
//                    (mode == 1)? column_output_18[low_or_high]:
//                    0;

// a row is a channel, mode = 0
//generate
//    for (j = 0; j < column_num; j = j+1) begin
            
//        assign row_output_88[((2 * j) * pixel_width) +: (2 * pixel_width)]
//        = {{{(pixel_width-pixel_width_88){1'b0}},all_out[row_counter][j][(0+pixel_width_88)+: (pixel_width_88)]},
//        {{(pixel_width-pixel_width_88){1'b0}},all_out[row_counter][j][(0)+: (pixel_width_88)]}};

//    end

//endgenerate

// a column is a channel, mode = 1
//generate
//    for (i = 0; i < row_num; i = i+1) begin

//        assign column_output_18[0][((2 * i) * pixel_width)+: (2*pixel_width)]
//        = {{{(pixel_width-pixel_width_18){1'b0}},all_out[i][row_counter][(0+(pixel_width_18)) +: (pixel_width_18)]},
//        {{(pixel_width-pixel_width_18){1'b0}}, all_out[i][row_counter][(0) +: (pixel_width_18)]}};
       
        
//        assign column_output_18[1][((2 * i) * pixel_width)+: (2* pixel_width)]
//        ={{{(pixel_width-pixel_width_18){1'b0}},all_out[i][row_counter][(0+(3*pixel_width_18)) +: (pixel_width_18)]},
//        {{(pixel_width-pixel_width_18){1'b0}},all_out[i][row_counter][(0+(2*pixel_width_18))+: (pixel_width_18)]}};
        
//    end

//endgenerate

endmodule
