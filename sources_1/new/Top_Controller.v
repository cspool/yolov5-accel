`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2024 02:37:04 PM
// Design Name: 
// Module Name: Top_Controller
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


module Top_Controller(
clk, reset, start,
    
instr,
    
conv_fin, pool_fin, concate_fin, shortcut_fin, upsample_fin,
    
instr_rd,

instr_adr,
    
state,

conv_start

    );
    input clk, reset, start;
    
    input [15:0] instr;
    
    input conv_fin, pool_fin, concate_fin, shortcut_fin, upsample_fin;
    
    output instr_rd;
    
    output reg [9 : 0] instr_adr;
    
    output reg [3:0] state;
    
    output conv_start;
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            state <= 4'b0000; //idle
            instr_adr <= 0;
        end
        else begin
            case (state)
                4'b0000: begin //idle
                    if (start == 1'b1) begin
                        state <= 4'b1111; //fetch
                        instr_adr <= instr_adr + 1;
                    end
                    else begin
                        state <= state;
                        instr_adr <= instr_adr;
                    end
                end
                4'b1111: begin //fetch
                    case (instr[3:0])
                        4'b0001: state <= 4'b0001; //conv
                        4'b0010: state <= 4'b0010; //pool
                        4'b0011: state <= 4'b0011; //concate
                        4'b0100: state <= 4'b0100; //shortcut
                        4'b0101: state <= 4'b0101; //upsample
                        4'b1111: state <= 4'b0000; //end
                        default: state <= 4'b0000; //idle
                    endcase
                end
                4'b0001: begin //conv 
                    if (conv_fin == 1'b1) begin
                        state <= 4'b1111; //fetch
                        instr_adr <= instr_adr + 1;
                    end
                    else begin
                        state <= state;
                        instr_adr <= instr_adr;
                    end
                end
                4'b0010: begin //pool 
                    if (pool_fin == 1'b1) begin
                        state <= 4'b1111; //fetch
                        instr_adr <= instr_adr + 1;
                    end
                    else begin
                        state <= state;
                        instr_adr <= instr_adr;
                    end
                end 
                4'b0011: begin //concate
                    if (concate_fin == 1'b1) begin
                        state <= 4'b1111; //fetch
                        instr_adr <= instr_adr + 1;
                    end
                    else begin
                        state <= state;
                        instr_adr <= instr_adr;
                    end
                end
                4'b0100: begin //shortcut
                    if (shortcut_fin == 1'b1) begin
                        state <= 4'b1111; //fetch
                        instr_adr <= instr_adr + 1;
                    end
                    else begin
                        state <= state;
                        instr_adr <= instr_adr;
                    end
                end
                4'b0101: begin //upsample
                    if (upsample_fin == 1'b1) begin
                        state <= 4'b1111; //fetch
                        instr_adr <= instr_adr + 1;
                    end
                    else begin
                        state <= state;
                        instr_adr <= instr_adr;
                    end
                end
                default: begin
                    state <= 4'b0000; //idle
                    instr_adr <= 0;
                end
            endcase
        end
    end
    
    assign instr_rd = (((start == 1'b1) 
    || (conv_fin == 1'b1)
    || (pool_fin == 1'b1)
    || (concate_fin == 1'b1)
    || (shortcut_fin == 1'b1)
    || (upsample_fin == 1'b1)) == 1'b1) ? 1'b1 : 1'b0;
    
    assign conv_start = (((state == 4'b1111) && (instr[3:0] == 4'b0001)) == 1'b1) ? 1'b1 : 1'b0;
    
    
endmodule
