`timescale 1ns / 1ps

module tb_E_scale();

  parameter MAIN_FRE             = 50;   //unit MHz
  parameter DSP_NUM              = 192;

  reg sys_clk                     = 0;
  reg sys_rst_n                   = 0;
  reg [ 8*DSP_NUM-1:0] A          = 0;
  reg [16*DSP_NUM-1:0] B          = 0;
  reg [6-1:0]          scale_rank = -2;

  always
    begin
      #(500/MAIN_FRE) sys_clk = ~sys_clk;
    end

  initial
    begin
      #100 sys_rst_n = 1;
    end

  //Instance
  // outports wire
  wire [10*DSP_NUM-1:0]  P;

  E_scale
    #(
      .DSP_NUM  ( DSP_NUM  ))
    u_E_scale(
      .CLK                               (sys_clk                   ),
      .RST_N                             (sys_rst_n                 ),
      .A                                 (A                         ),
      .E_scale_tail                      (B                         ),
      .scale_rank                        (scale_rank                ),
      .P_temp                            (P                         )
    );

  initial
    begin
      #100;
      for (integer i = 0; i < DSP_NUM; i = i + 1)
        begin
          A[ 8*(i+1)-1 -:  8] = {$random()} % 100;
          B[16*(i+1)-1 -: 16] = {$random()} % 100;
          $display("i = %d", i);
          $display("A = %d", A[ 8*(i+1)-1 -:  8]);
          $display("B = %d", B[16*(i+1)-1 -: 16]);
          $display("scale_rank = -%d", -scale_rank);
        end
      #50000;
    end

endmodule  //TOP
