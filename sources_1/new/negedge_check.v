module negedge_check (
    input  clk,
    input  rst,
    input  signal_in,
    output negedge_flag
);

  reg signal_prev;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      signal_prev <= 1'b0;
    end
    else begin
      signal_prev <= signal_in;
    end
  end

  // 下降沿检测：前一状态为1，当前状态为0
  assign negedge_flag = (signal_in == 1'b0 && signal_prev == 1'b1) ? 1'b1 : 1'b0;

endmodule
