`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/14 23:41:21
// Design Name: 
// Module Name: conv_rows
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


module conv_rows(
iy_start, iy,

//irow_y_size,

k, s, p,
clk, reset, en,

row_y,

idx_in_k,

conv_pixels_add_end,

conv_rows_add_end
    );
    
   parameter pixels_in_row = 32;
   parameter buffers_num = 3;
    
//    input [15:0] iy_start, iy, irow_y_size;
    input [15:0] iy_start, iy;
    input clk, reset, en;
    input [3:0]  k, s, p;
    
    output [15:0] row_y;
    
    output [15:0] idx_in_k;
    
    input conv_pixels_add_end;
    
    output conv_rows_add_end;
    
//    wire [15:0] iy_start;
    
//    wire[15:0] s_mult_buffers_num;
    
//    reg [15:0] irow_y;
    reg [15:0] ky;

//    wire loop_irow_y_add_begin, loop_irow_y_add_end;
    wire loop_ky_add_begin, loop_ky_add_end;
     
    wire [15:0] p_plus_1, p_plus_iy;
    
    wire [15:0] ky_plus_irow_y;

//    assign s_mult_buffers_num = (s == 4'd1)? buffers_num:
//                        (s == 4'd2)? (buffers_num << 1):
//                        0;                
    
    assign p_plus_1 = {{12'b0},p} + 16'd1;
    assign p_plus_iy = {{12'b0},p} + iy;
                   
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            ky <= 0;
            
        end
        else if (loop_ky_add_begin == 1'b1) begin
            if (loop_ky_add_end == 1'b1) begin //the last ky1
                ky <= 0;
            end
            else begin
                ky <= ky + 1;
            end
        end
        else begin
            ky <= ky;
        end
    end  
    
    assign loop_ky_add_begin = (conv_pixels_add_end == 1'b1);
    assign loop_ky_add_end = loop_ky_add_begin && ((ky + 1) == (k));
    
//    always@(posedge clk) begin
//        if (reset == 1'b1) begin
//            irow_y <= 0;
            
//        end
//        else if (loop_irow_y_add_begin == 1'b1) begin
//            if (loop_irow_y_add_end == 1'b1) begin
//                irow_y <= 0;
//            end
//            else begin
//                irow_y <= irow_y + s_mult_buffers_num;
//            end
//        end
//        else begin
//            irow_y <= irow_y;
//        end
//    end
    
//    assign loop_irow_y_add_begin = loop_ky_add_end;
//    assign loop_irow_y_add_end = loop_irow_y_add_begin && ((irow_y + s_mult_buffers_num) > irow_y_size);
    
//    assign ky_plus_irow_y = ky + irow_y + iy_start; 
    assign ky_plus_irow_y = ky + iy_start;                         
  
    assign row_y = ((ky_plus_irow_y < p_plus_1) || (ky_plus_irow_y > p_plus_iy))? 16'hffff: (ky_plus_irow_y - {{12'b0},p});
    
//    assign conv_rows_add_end = loop_irow_y_add_end;
    assign conv_rows_add_end = loop_ky_add_end;
    
    assign idx_in_k  =ky;
    
endmodule
