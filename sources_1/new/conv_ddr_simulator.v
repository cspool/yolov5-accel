`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 05:54:22 PM
// Design Name: 
// Module Name: conv_ddr_simulator
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


module conv_ddr_simulator(
        reset, 
        
        clk,
        
        ddr_rd_adr,
        
        ddr_rd,
        
        ddr_data,
        valid_ddr_data
    );
    
    input reset, clk;
    
    input [31:0] ddr_rd_adr;
    
    input ddr_rd;
    
    output reg [511:0] ddr_data;
    
    output reg valid_ddr_data;

    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            ddr_data <= 0; 
        end
        else if (ddr_rd == 1'b1) begin
            ddr_data[255:0] <= ddr_data[255:0] + 256'd1; 
            ddr_data[511:256] <= ddr_data[511:256] + 256'd1; 
            
        end
        else begin
            ddr_data <= ddr_data;
            
        end
    end
    
     always@(posedge clk) begin
        if (reset == 1'b1) begin
            valid_ddr_data <= 0;
        end
        else if (valid_ddr_data == 1'b1) begin
            if (ddr_rd == 1'b1) begin
                valid_ddr_data <= 1;
            end
            else begin
                valid_ddr_data <= 0;
            end
        end
        else begin  
            valid_ddr_data <= valid_ddr_data; 
        end
    end
    
endmodule
