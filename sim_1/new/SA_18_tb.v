`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2024 07:28:47 PM
// Design Name: 
// Module Name: SA_18_tb
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


module SA_18_tb(

    );
    
    reg clk, reset, en,channel_out_reset,channel_out_en;
parameter actual_row_num = 2; // 1 / 2
parameter actual_column_num = 2;
parameter row_num = 32;
parameter column_num = 32;  

parameter headroom = 4;

parameter pixel_width_88 = 16 + headroom;
parameter pixel_width_18 = 10 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18;

parameter pixel_width = pixel_width_88;

wire [8 * row_num - 1:0] row_in;
wire [16 * column_num - 1:0] column_in;
wire [8 * actual_row_num - 1:0] actual_row_in;
wire [16 * actual_column_num - 1:0] actual_column_in;

wire [pixel_width * 2 * column_num - 1: 0] out; 

wire [pixel_width * 2 - 1 : 0] out1_1;
wire [pixel_width * 2 - 1 : 0] out1_2;

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
                                           {ox_18_flows1[(counter) * 16 +: 16], ox_18_flows0[(counter) * 16 +: 16]};
                                            
assign actual_row_in[8 * actual_row_num - 1:0] = (counter == 6'b111111)? 0:
                                            {of_18_flows1[(counter) * 8 +: 8], of_18_flows0[(counter) * 8 +: 8]};

assign column_in = {{(column_num-actual_column_num){16'b0}}, actual_column_in};
assign row_in = {{(row_num-actual_row_num){8'b0}}, actual_row_in};

assign out1_1 = out[pixel_width * 2 - 1 : 0];
assign out1_2 = out[pixel_width * 4 - 1 : pixel_width * 2];

always #5 clk = ~clk;

SA_18 sa_18(
    .clk(clk),
    .reset(reset),
    .en(en),
    .channel_out_reset(channel_out_reset),
    .channel_out_en(channel_out_en),
    .row_in(row_in),
    .column_in(column_in),
    
    .out(out)
);

initial begin
    clk = 0;
    
    //mode = 1
    reset = 1; en=0; cnt_rst = 1; cnt_en = 0; channel_out_reset=1;channel_out_en=0;
  
    #10; // A B  reset
    
    reset = 1; en=0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10;//mac reset
    
    reset = 0; en=1;cnt_rst = 0; cnt_en = 1; channel_out_reset=0;channel_out_en=0; 
   
    #10; // A B has valid value(1,1) 
    
    reset = 0; en=1;cnt_rst = 0; cnt_en = 1; channel_out_reset=0;channel_out_en=0;
    
    #10;  //A B has valid value(1,2)
    
     reset = 0; en=1; cnt_rst = 1; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10; //  row 1 col 1  mac res
    
    reset = 0; en=1;cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
    
    #10; // row 1 col 2 mac res
    
    reset = 0; en=0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=1;
    
   #10; // channel 1 output
   
   reset = 0; en=0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=1;
    
   #10; // channel 2 output
    
    reset = 0; en=0; cnt_rst = 0; cnt_en = 0; channel_out_reset=1;channel_out_en=0;
    
     #10; // 
    
    reset = 0; en=0; cnt_rst = 0; cnt_en = 0; channel_out_reset=0;channel_out_en=0;
   
end
endmodule
