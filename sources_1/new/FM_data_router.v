`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2024 07:52:22 PM
// Design Name: 
// Module Name: FM_data_router
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


module FM_data_router(
    clk,
    set,
    en,
    cfg_set,
    k_set,
    stride_set,
    pad_set,
    ox_set,
    oy_set,
    ix_set,
    iy_set,
    re_data
    );
    
    parameter pox = 32;
    parameter poy = 3;
    
 input  clk,set,en;
 
 input cfg_set;
 input  [7:0] k_set,stride_set,pad_set;
 input [7:0] ox_set; //[0,255]
 input [7:0] oy_set;//[0,255]
  input [7:0] ix_set; //[0,255]
 input [7:0] iy_set;//[0,255]
 
output wire[pox * 8 -1 :0] re_data;
 
reg cfg;
reg [7:0] k,stride,pad;
reg[7:0] ox; //[0,255]
reg[7:0] oy;//[0,255]
reg [7:0] ix; //[0,255]
reg [7:0] iy;//[0,255]

reg [7:0] tile_x_start; 
reg [7:0] tile_y_start;


always@(posedge clk) begin
    if(set) begin
        cfg <= cfg_set;
        k <= k_set;
        stride <= stride_set;
        pad <= pad_set;
        ox <= ox_set;
        oy <= oy_set;
        ix <= ix_set;
        iy <= iy_set;
      
      end
      else if(en) begin

      
      
      end
      else begin
        cfg <= cfg;
        k <= k;
        stride <= stride;
        pad <= pad;
        ox <= ox;
        oy <= oy;
        ix <= ix;
        iy <= iy;
      
      end

end



    
    
endmodule
