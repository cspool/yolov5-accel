`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2024 04:20:33 PM
// Design Name: 
// Module Name: SA_Ctrl
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


module SA_Ctrl(
reset,clk,en,

mode,

re_fm_en,
nif_mult_k_mult_k,
    
sa_en, 
sa_reset,
channel_out_reset, 
channel_out_en,

add_bias_en,
add_bias_reset,

e_tail_en, e_tail_reset,
quantify_en, quantify_reset,

mult_array_mode,

out_sa_row_idx,

channel_out_add_end,

quantify_add_end

    );
    input mode;
    input reset,clk,en;
    input re_fm_en;
    input [31:0] nif_mult_k_mult_k;
    
    reg pixels_counter_signal;
    reg [31:0] pixels_counter;
    wire loop_pixels_counter_add_begin;
    wire loop_pixels_counter_add_end; //the last word of all nif pixels in tile
    
    output reg sa_en, sa_reset;
    output reg channel_out_reset, channel_out_en;
    
    output add_bias_en;
    output reg add_bias_reset;
    
    output reg quantify_en, quantify_reset;
    output reg e_tail_en, e_tail_reset;
    
    output [5:0] out_sa_row_idx; //output channel idx
    
    output mult_array_mode;
    
    reg sa_counter_signal;
    reg [5:0] sa_counter;
    wire loop_sa_counter_add_begin;
    wire loop_sa_counter_add_end; // the last output channel of sa
    
    output channel_out_add_end; // the last output channel of sa
    
    reg add_bias_add_end, e_tail_add_end;
    output reg quantify_add_end;
 
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            pixels_counter_signal <= 0;
        end
        else if ((re_fm_en == 1'b1) && (loop_pixels_counter_add_end == 1'b0)) begin
            pixels_counter_signal <= 1;
        end
        else if (loop_pixels_counter_add_end == 1'b1) begin
            pixels_counter_signal <= 0;
        end
        else begin
            pixels_counter_signal <= pixels_counter_signal;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            pixels_counter <= 0;
        end
        else if (loop_pixels_counter_add_begin == 1'b1) begin
            if (loop_pixels_counter_add_end == 1'b1) begin //last
                pixels_counter <= 0;
            end
            else begin
                pixels_counter <= pixels_counter + 1;
            end 
        end
        else begin
            pixels_counter <= pixels_counter;
        end
    end
    
    assign loop_pixels_counter_add_begin = (re_fm_en == 1'b1) || (pixels_counter_signal == 1'b1);
    assign loop_pixels_counter_add_end = loop_pixels_counter_add_begin && (pixels_counter == nif_mult_k_mult_k);
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            sa_counter_signal <= 0;
        end
        else if (loop_pixels_counter_add_end == 1'b1) begin
            sa_counter_signal <= 1;
        end
        else if (loop_sa_counter_add_end == 1'b1) begin
            sa_counter_signal <= 0;
        end
        else begin
            sa_counter_signal <= sa_counter_signal;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            sa_counter <= 0;
        end
        else if (loop_sa_counter_add_begin == 1'b1) begin
            if (loop_sa_counter_add_end == 1'b1) begin //last
                sa_counter <= 0;
            end
            else begin
                sa_counter <= sa_counter + 1;
            end 
        end
        else begin
            sa_counter <= sa_counter;
        end
    end
    
    assign loop_sa_counter_add_begin = (sa_counter_signal == 1'b1) || (loop_pixels_counter_add_end == 1'b1);
    assign loop_sa_counter_add_end = loop_sa_counter_add_begin && (sa_counter == 6'd32);
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            channel_out_en <= 0;
        end
        else if (sa_counter == 6'd16) begin
            channel_out_en <= 1;
        end
        else if (loop_sa_counter_add_end) begin //xxx
            channel_out_en <= 0;
        end
        else begin
            channel_out_en <= channel_out_en;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            channel_out_reset <= 1;
        end
        else if (loop_pixels_counter_add_end == 1'b1) begin
            channel_out_reset <= 1;
        end
        else if (channel_out_reset == 1'b1) begin
            channel_out_reset <= 0;
        end
        else begin
            channel_out_reset <= channel_out_reset;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            sa_en <= 0;
            sa_reset <= 1;
        end
        else if (re_fm_en == 1'b1) begin
            sa_en <= 1;
            sa_reset <= 0;
        end
        else if (sa_counter == 6'd31) begin //tile compute end, sa stop
            sa_en <= 0;
            sa_reset <= 1;
        end
        else if (sa_reset == 1'b1) begin
            sa_reset <= 0;
        end
        else begin
            sa_en <= sa_en;
            sa_reset <= sa_reset;
        end
    end

    assign out_sa_row_idx = (channel_out_en == 1'b1) ? (sa_counter - 6'd16) : 0;
    
    assign mult_array_mode = (mode == 1'b1) && (e_tail_en == 1'b1);
    
    assign add_bias_en = channel_out_en;
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            add_bias_reset <= 1;
        end
        else if (loop_sa_counter_add_end == 1'b1) begin
            add_bias_reset <= 1;
        end
        else if (add_bias_reset == 1'b1) begin
            add_bias_reset <= 0;
        end
        else begin
            add_bias_reset <= add_bias_reset;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            e_tail_en <= 0;
            e_tail_reset <= 1;
        end
        else if (e_tail_reset == 1'b1) begin
            e_tail_reset <= 0;
        end
        else begin
            e_tail_en <= add_bias_en;
            e_tail_reset <= add_bias_reset;
        end
    end
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            quantify_en <= 0;
            quantify_reset <= 1;
        end
        else if (quantify_reset == 1'b1) begin
            quantify_reset <= 0;
        end
        else begin
            quantify_en <= e_tail_en;
            quantify_reset <= e_tail_reset;
        end
    end
    
    assign channel_out_add_end = loop_sa_counter_add_end;
    
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            add_bias_add_end <= 0;
            e_tail_add_end <= 0;
            quantify_add_end <= 0;
        end
        else begin
            add_bias_add_end <= channel_out_add_end;
            e_tail_add_end <= add_bias_add_end;
            quantify_add_end <= e_tail_add_end;
        end
    end

endmodule
