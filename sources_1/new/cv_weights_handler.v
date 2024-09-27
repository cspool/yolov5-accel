`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 19:30:22
// Design Name: 
// Module Name: cv_weights_handler
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


module cv_weights_handler(
mode,
clk, reset,

re_fm_en,
re_fm_end,

weights_vector
    );
    
    
   parameter weights_in_row_mode0 = 64; // 8bit
   parameter weights_in_row_mode1 = 128; // 1bit
    parameter weight_row_length = weights_in_row_mode0 * 8; // a mode0_weight row or 4 mode1_weight_row
    input mode;
    
    input reset,clk;
    
    input re_fm_en, re_fm_end;
    
    reg [15:0] adr;
    
    reg [1:0] part_select; //0, 1, 2 ,3
    
    wire [weight_row_length-1 : 0] weights_dout;
    
    wire [weight_row_length-1 : 0] weights_vector_mode0;
    
    wire [weights_in_row_mode1 * 1 -1 :0] weights_vector_mode1;
    
    wire [weight_row_length-1 :0] weights_vector_mode1_fin;
    
    output [weight_row_length-1 : 0] weights_vector;
    
    wire weight_en;
    
    reg valid_weight;
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            part_select <= 0;   //first adr
        end
        else if (re_fm_en == 1'b1) begin
            if (re_fm_end == 1'b1) begin
                part_select <= 0; 
            end
            else begin
                part_select <= part_select + 2'd1;
            end
        end
        else begin
            part_select <= part_select;
        end
    end
    
    //re_pixels from re_fm_en to re_fm_end consist of nif channels of a input tile that its computing needed 
    // the adr need more completely logic
    //and adr mapping in different mode
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            adr <= 0;   //first adr
        end
        else if (re_fm_en == 1'b1) begin
            if (re_fm_end == 1'b1) begin
                adr <= 0; //need revise
            end
            else begin
                adr <= (mode == 1'b0) ? (adr + 1) :
                       ((mode == 1'b1) && (part_select == 2'd3)) ? (adr + 1) :
                       adr;
            end
        end
        else begin
            adr <= adr;
        end
    end
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            valid_weight <= 0;
        end
        else if (re_fm_en == 1'b1) begin
            if (re_fm_end == 1'b1) begin
                valid_weight <= 0; 
            end
            else begin
                valid_weight <= 1;
            end
        end
        else begin
            valid_weight <= valid_weight;
        end
    end
    
    assign weight_en = ((re_fm_en == 1'b1) && (re_fm_end == 1'b0))? 1 : 0;
    
    weights_buffer weights_buffer (
      .clka(clk),    // input wire clka
      .ena(weight_en),      // input wire ena
      .addra(adr[10:0]),  // input wire [10 : 0] addra
      .douta(weights_dout)  // output wire [511 : 0] douta
    );
    
    assign weights_vector_mode0 = weights_dout;
    
    assign weights_vector_mode1 = 
    (part_select == 2'd0)? weights_dout[0 +: weights_in_row_mode1 * 1]:
    (part_select == 2'd1)? weights_dout[weights_in_row_mode1 * 1 +: weights_in_row_mode1 * 1]:
    (part_select == 2'd2)? weights_dout[weights_in_row_mode1 * 2 +: weights_in_row_mode1 * 1]:
    weights_dout[weights_in_row_mode1 * 3 +: weights_in_row_mode1 * 1];
    
    genvar i;
    
    generate
        for (i = 0; i < (weights_in_row_mode1 / 2); i = i + 1) begin
            assign weights_vector_mode1_fin[i*8 +: 8] =
            {6'b0,weights_vector_mode1[2*i+1], weights_vector_mode1[2*i]};
        end
    endgenerate
    
    assign weights_vector = 
    (mode == 1'b0) ? ((valid_weight == 1'b1)? weights_vector_mode0 : 0) :
    (mode == 1'b1) ? ((valid_weight == 1'b1)? weights_vector_mode1_fin : 0) :
    0;
    
endmodule
