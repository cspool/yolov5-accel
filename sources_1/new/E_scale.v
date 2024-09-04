module E_scale
  #(
     parameter DSP_NUM = 192, // Number of DSP slices
     parameter LATENCY = 2   // Desired clock cycle latency, 0-4
   )
   (
     input  wire                         CLK                        ,// Clock
     input  wire                         RST_N                      ,
     input  wire        [ 8*DSP_NUM-1:0] A                          ,// 8-bit input A
     input  wire        [16*DSP_NUM-1:0] E_scale_tail               ,// 16-bit input B
     input  wire        [6-1:0]          scale_rank                 ,// [-63, 0] 6-bit input scale_rank
     output reg         [10*DSP_NUM-1:0] P_temp                      // 10-bit output P
   );
  // Wire to hold the intermediate product
  reg [2:0] cnt = 0;
  wire [24*DSP_NUM-1:0] P;

  genvar i;
  generate
    for (i = 0; i < DSP_NUM; i = i + 1)
      begin: gen_products
        MULT_MACRO #(
                     .DEVICE  ("7SERIES"),   // Target Device: "7SERIES"
                     .LATENCY(LATENCY),      // Desired clock cycle latency, 0-4
                     .WIDTH_A(8),            // Multiplier A-input bus width, 1-25
                     .WIDTH_B(16)            // Multiplier B-input bus width, 1-18
                   ) multipler (
                     .P   (P[24*(i+1)-1 -:24]),              // Multiplier output bus, width determined by WIDTH_P parameter
                     .A   (A[ 8*(i+1)-1 -: 8]),              // Multiplier input A bus, width determined by WIDTH_A parameter
                     .B   (E_scale_tail[16*(i+1)-1 -:16]),   // Multiplier input B bus, width determined by WIDTH_B parameter
                     .CE  (1'b1),                            // 1-bit active high input clock enable
                     .CLK(CLK),                              // 1-bit positive edge clock input
                     .RST(~RST_N)                            // 1-bit input active high reset
                   );
      end
  endgenerate

  always @(posedge CLK or negedge RST_N)
    begin
      if (~RST_N)
        begin
          cnt <= 0;
          P_temp <= 0;
        end
      else
        begin
          // Wait for the latency to pass before outputting the result
          if (cnt <= LATENCY)
            cnt <= cnt + 1;
          else
            for (integer i = 0; i < DSP_NUM; i = i + 1)
              begin
                P_temp[10*(i+1)-1 -:10] <= clamp(P[24*(i+1)-1 -:24] >>> -scale_rank);
              end
        end
    end

  function [23:0] clamp(input signed [23:0] value);
    if (value < -256)
      begin
        clamp = -256;
      end
    else if (value > 255)
      begin
        clamp = 255;
      end
    else
      begin
        clamp = value;
      end
  endfunction

endmodule
