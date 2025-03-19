`timescale 1ns / 1ps

module controller_init # (
    parameter integer ddr_addr_width = 32,
    parameter integer buffer_addr_width = 16,
    parameter integer ddr_data_width = 512,
    parameter integer ddr_block_size_width = 8,
    parameter integer buffer_id_width = 3,
    parameter integer buffer_count = 4,
    parameter integer state_width = 3
) (
    input wire clk,
    input wire n_reset,
    input wire start,
    output reg done,

    input wire [buffer_id_width-1:0] buffer_id,
    input wire [ddr_data_width-1:0] ddr_base_addr,
    input wire [ddr_block_size_width-1:0] ddr_block_size,

    output reg [ddr_addr_width-1:0] ddr_addr,
    output reg ddr_read_en,
    output reg [ddr_block_size_width-1:0] ddr_length,
    input wire [ddr_data_width-1:0] ddr_data,
    input wire ddr_valid,

    output reg [buffer_addr_width-1:0] buffer_addr,
    output reg buffer_inst_en,
    output reg buffer_bias_en,
    output reg buffer_tail_en,
    output reg buffer_rank_en,
    output reg [ddr_data_width-1:0] buffer_data
);

    localparam BUFFER_ID_INST = 3'b000;
    localparam BUFFER_ID_BIAS = 3'b001;
    localparam BUFFER_ID_TAIL = 3'b010;
    localparam BUFFER_ID_RANK = 3'b011;

    // =============参数寄存=============
    reg [buffer_count-1:0] buffer_valid;
    reg [ddr_block_size_width-1:0] ddr_block_size_reg;

    always @(posedge clk) begin
        if (!n_reset) begin
            buffer_valid <= 0;
            ddr_block_size_reg <= 0;
        end else if (start) begin
            case (buffer_id)
                BUFFER_ID_INST: buffer_valid <= 4'b0001;
                BUFFER_ID_BIAS: buffer_valid <= 4'b0010;
                BUFFER_ID_TAIL: buffer_valid <= 4'b0100;
                BUFFER_ID_RANK: buffer_valid <= 4'b1000;
                default: buffer_valid <= 0;
            endcase
            ddr_block_size_reg <= ddr_block_size;
        end
    end

    // =============状态机=============
    localparam IDLE = 3'b000;
    localparam LOAD = 3'b001;
    // localparam STORE = 3'b010;
    localparam DONE = 3'b011;

    reg [state_width-1:0] state;
    wire load_finished;

    assign load_finished = (ddr_count == ddr_block_size_reg - 1) && ddr_valid;

    always @(posedge clk) begin
        if (!n_reset) begin
            state <= IDLE;
        end else if (start) begin
            state <= LOAD;
        end else if (state == LOAD) begin
            state <= load_finished ? DONE : LOAD;
        end else if (state == DONE) begin
            state <= IDLE;
        end
    end

    // =============DDR读取=============
    reg [ddr_block_size_width-1:0] ddr_count;
    reg buffer_step;

    always @(posedge clk) begin
        ddr_addr <= start ? ddr_base_addr : 0;
        ddr_read_en <= start ? 1 : 0;
        ddr_length <= start ? ddr_block_size : 0;
    end

    always @(posedge clk) begin
        if (!n_reset || start) begin
            ddr_count <= 0;
            buffer_step <= 0;
        end else if (state == LOAD) begin
            ddr_count <= ddr_valid ? (ddr_count + 1) : ddr_count;
            buffer_addr <= buffer_step ? (buffer_addr + 1) : buffer_addr;
            buffer_data <= ddr_valid ? ddr_data : 0;
            {buffer_rank_en, buffer_tail_en, buffer_bias_en, buffer_inst_en} <= ddr_valid ? buffer_valid : 0;
            buffer_step <= ddr_valid;
        end else begin
            ddr_count <= 0;
            buffer_addr <= 0;
            buffer_data <= 0;
            {buffer_rank_en, buffer_tail_en, buffer_bias_en, buffer_inst_en} <= 0;
            buffer_step <= 0;
        end
    end

    // =============完成信号发出=============
    always @(posedge clk) begin
        if (!n_reset) begin
            done <= 0;
        end else begin
            done <= state == DONE;
        end
    end

endmodule