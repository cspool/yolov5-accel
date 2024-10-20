`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 06:40:01 PM
// Design Name: 
// Module Name: conv_args_controller
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


module conv_args_controller(
    mode, clk, reset,
    
    args_refresh,
   
    of_init,
    
    pof, //pof args sets to wr to regs in a cycle
    
    args_tile_fin,
   
    bias_buf_adr,
    
    e_scale_tail_buf_adr,
    
    e_scale_rank_buf_adr,
    
    bias_buf_rd,
    e_scale_tail_buf_rd,
    e_scale_rank_buf_rd
);
    
    parameter args_sets_num = 64; 
    
    input mode, clk, reset;
    
    input args_refresh;
   
    input [15:0] of_init;
    
    input [15:0] pof; //pof args sets to wr to regs in a cycle
    
    output args_tile_fin;
    
    //args  buf rd adr
    output [15:0] bias_buf_adr;
    output [15:0] e_scale_tail_buf_adr;
    output [15:0] e_scale_rank_buf_adr;
    
    output bias_buf_rd;
    output e_scale_tail_buf_rd;
    output e_scale_rank_buf_rd;
    
    reg [15:0] of;
    
    wire [15:0] pof_row_num, of_row_num;
    
    //loop args_tof
    reg signal_add;
    reg [15:0] args_tof;
    wire loop_args_tof_add_begin, loop_args_tof_pof_end, loop_args_tof_of_end;
    
    assign pof_row_num = (mode == 1'b0)? pof : 
                         (mode == 1'b1)? (pof >> 1) :
                         0;
    assign of_row_num = (mode == 1'b0)? of :
                        (mode == 1'b1)? (of >> 1) :
                        0;
   
    always@(posedge clk) begin
        if (reset == 1'b1) begin //set
            of <= of_init; 
        end
        else begin
            of <= of; 
        end
    end
   
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            signal_add <= 0;
        end
        else if (args_refresh == 1'b1) begin
            signal_add <= 1;
        end
        else if (loop_args_tof_pof_end == 1'b1) begin
            signal_add <= 0;
        end
        else begin
            signal_add <= signal_add;
        end
    end

    always@(posedge clk) begin
        if (reset == 1'b1) begin
            args_tof <= 1;
        end
        else if (loop_args_tof_add_begin == 1'b1) begin
            args_tof <= args_tof + 1;
        end
        else if (loop_args_tof_of_end == 1'b1) begin
            args_tof <= 1;
        end
        else begin
            args_tof <= args_tof;
        end
    end
    
    assign loop_args_tof_add_begin = signal_add;
    assign loop_args_tof_pof_end = (loop_args_tof_add_begin == 1'b1) && (args_tof == pof_row_num);
    
    assign loop_args_tof_of_end = (loop_args_tof_add_begin == 1'b1) && (args_tof == of_row_num);
    
    assign bias_buf_adr = args_tof - 1;
    assign e_scale_tail_buf_adr = args_tof - 1;
    assign e_scale_rank_buf_adr = args_tof - 1;
    
    assign bias_buf_rd = loop_args_tof_add_begin;
    assign e_scale_tail_buf_rd = loop_args_tof_add_begin;
    assign e_scale_rank_buf_rd = loop_args_tof_add_begin;
    
    
endmodule
