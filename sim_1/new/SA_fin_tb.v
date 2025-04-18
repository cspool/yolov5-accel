`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2024 08:05:06 PM
// Design Name: 
// Module Name: SA_fin_tb
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


module SA_fin_tb(

    );
    
     reg clk, reset, en, mode,channel_out_reset,channel_out_en;
parameter actual_row_num = 2; // 1 / 2
parameter actual_column_num = 2;

parameter row_num = 16;
parameter column_num = 16;  

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


wire [8 * row_num - 1:0] row_in;
wire [16 * column_num - 1:0] column_in;
wire [8 * actual_row_num - 1:0] actual_row_in;
wire [16 * actual_column_num - 1:0] actual_column_in;

wire [out_width  - 1: 0] out; 

wire [out_width_88 -1 : 0] out_88;
wire [out_width_18 -1 : 0] out_18;

wire [pixel_width_88 * 2 - 1 : 0] out_88_1_1;
wire [pixel_width_88 * 2 - 1 : 0] out_88_1_2;

wire [pixel_width_18 * 2 - 1 : 0] out_18_1_1_f0;
wire [pixel_width_18 * 2 - 1 : 0] out_18_1_2_f0;

wire [pixel_width_18 * 2 - 1 : 0] out_18_1_1_f1;
wire [pixel_width_18 * 2 - 1 : 0] out_18_1_2_f1;

///////////////////xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
reg[0:16 * 2 - 1] ox_88_flows0 = {16'h7c68, 16'h0};
reg[0:16 * 2 - 1] ox_88_flows1 = {16'h0, 16'h7d12};

reg[0:8*2 - 1] of_88_flows0 = {8'hc2, 8'h0};
reg[0:8*2 - 1] of_88_flows1 = {8'h0, 8'hc4};

reg[0:16 * 2 - 1] ox_18_flows0 = {16'hed40, 16'h0};
reg[0:16 * 2 - 1] ox_18_flows1 = {16'h0, 16'hc910};

reg[0:8*2 - 1] of_18_flows0 = {8'h01, 8'h0};
reg[0:8*2 - 1] of_18_flows1 = {8'h0, 8'h0};

reg [5:0] counter = 0;
reg cnt_rst = 0;
reg cnt_en =0;

always @(posedge clk) begin
    if (cnt_rst) begin
        counter <= -1;
    end
    else if(cnt_en) begin
        counter <= counter + 1;
    end
    else begin
        counter <= counter;
    end
end


assign actual_column_in[16 * actual_column_num - 1:0] = (counter == 6'b111111)? 0:
                                            (mode == 1'b0)? {ox_88_flows1[(counter) * 16 +: 16], ox_88_flows0[(counter) * 16 +: 16]}:
                                            (mode == 1'b1)? {ox_18_flows1[(counter) * 16 +: 16], ox_18_flows0[(counter) * 16 +: 16]}:
                                            0;
                                            
assign actual_row_in[8 * actual_row_num - 1:0] = (counter == 6'b111111)? 0:
                                            (mode == 1'b0)? {of_88_flows1[(counter) * 8 +: 8], of_88_flows0[(counter) * 8 +: 8]}:
                                            (mode == 1'b1)? {of_18_flows1[(counter) * 8 +: 8], of_18_flows0[(counter) * 8 +: 8]}:
                                            0;

assign column_in = {{(column_num-actual_column_num){16'b0}}, actual_column_in};
assign row_in = {{(row_num-actual_row_num){8'b0}}, actual_row_in};

assign out_88 = out[out_width_88 - 1 : 0];
assign out_18 = out[out_width_18 - 1: 0];

assign out_88_1_1 = out_88[pixel_width_88 * 2 - 1 : 0];
assign out_88_1_2 = out_88[pixel_width_88 * 4 - 1 : pixel_width_88 * 2];

assign out_18_1_1_f0 = out_18[0 +: pixel_width_18 * 2];
assign out_18_1_2_f0 = out_18[pixel_width_18 * 2 +: pixel_width_18 * 2];

assign out_18_1_1_f1 = out_18[pixel_width_18 * pe_parallel_pixel_18 * column_num +: pixel_width_18 * 2];
assign out_18_1_2_f1 = out_18[pixel_width_18 * pe_parallel_pixel_18 * column_num + pixel_width_18 * 2 +: pixel_width_18 * 2];

always #5 clk = ~clk;

SA_fin sa_fin(
    .clk(clk),
    .reset(reset),
    .en(en),
    .mode(mode),
    .channel_out_reset(channel_out_reset),
    .channel_out_en(channel_out_en),
    .row_in(row_in),
    .column_in(column_in),
    
    .out(out)
);

initial begin
    // mode =0
    clk = 0; 
    reset = 1; en=0;mode = 0; cnt_rst = 1; cnt_en = 0; channel_out_reset=1;channel_out_en=0;
  
    #10; // A B  reset
    
    reset = 1; en=0;mode = 0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10;//mac reset, beacause xx(inititial of a) * xx(initial of b) has entered mac before
    
    reset = 0; en=1;mode = 0; cnt_rst = 0; cnt_en = 1; channel_out_reset=0;channel_out_en=0; 
   
    #10; // A B has valid value(1,1) , data begin entering
    
    reset = 0; en=1;mode = 0; cnt_rst = 0; cnt_en = 1; channel_out_reset=0;channel_out_en=0;
    
    #10;  //A B has valid value(1,2)(2,1)
    
     reset = 0; en=1; mode = 0; cnt_rst = 1; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10; //  row 1 col 1  mac res , A B has valid value(2,2), data finish entering
    
    reset = 0; en=1; mode = 0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10; // row 1 col 2 mac res, row 2 col 1 mac res, 
    
    reset = 0; en=1; mode = 0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=1;
    
    #10; // row 2 col 2 mac res, row  // channel 1 output
    
    reset = 0; en=0; mode = 0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
   #10; // stay a cycle
   
   reset = 0; en=0; mode = 0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=1;
    
     #10; // channel 2 output 
    
    reset = 0; en=0; mode = 0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10; // stay a cycle
    
    reset = 0; en=0; mode = 0; cnt_rst = 0; cnt_en = 0; channel_out_reset=1;channel_out_en=0;
    
     #10; 
    
    reset = 0; en=0; mode = 0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
     #10;
    
    //mode = 1
    reset = 1; en=0;mode = 1; cnt_rst = 1; cnt_en = 0; channel_out_reset=1;channel_out_en=0;
  
    #10; // A B  reset
    
    reset = 1; en=0;mode = 1; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10;//mac reset
    
    reset = 0; en=1;mode = 1; cnt_rst = 0; cnt_en = 1; channel_out_reset=0;channel_out_en=0; 
   
    #10; // A B has valid value(1,1) 
    
    reset = 0; en=1;mode = 1; cnt_rst = 0; cnt_en = 1; channel_out_reset=0;channel_out_en=0;
    
    #10;  //A B has valid value(1,2)
    
     reset = 0; en=1; mode = 1; cnt_rst = 1; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10; //  row 1 col 1  mac res
    
    reset = 0; en=1; mode = 1; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10; // row 1 col 2 mac res
    
    reset = 0; en=0; mode = 1; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=1;
    
   #10; // channel 1 2 output
   
//   reset = 0; en=0; mode = 1; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=1;
    
//   #10; // channel 2 output
    
    reset = 0; en=0; mode = 1; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
     #10; // stay a cycle
    
    reset = 0; en=0; mode = 1; cnt_rst = 0; cnt_en = 0; channel_out_reset=1;channel_out_en=0;
   
end
endmodule
