`timescale 1ns / 1ps

module controller # (
    parameter integer inst_width = 512,
    parameter integer ddr_addr_width = 32,
    parameter integer buffer_addr_width = 16,
    parameter integer channel_size_width = 16,
    parameter integer feature_size_width = 16,
    parameter integer channel_size_log_width = 4,
    parameter integer feature_size_log_width = 4,
    parameter integer step_width = 4,
    parameter integer padding_width = 4,
    parameter integer kernel_size_width = 4,
    parameter integer ddr_data_width = 512,

    parameter integer conv_mode_width = 4,
    parameter integer mac_width = 32,
    parameter integer chunk_count_width = 32,
    parameter integer out_chunk_count_width = 8,
    parameter integer preload_width = 8,
    parameter integer index_num_width = 16,

    parameter integer ddr_block_size_width = 8,
    parameter integer ddr_length_width = 8,

    parameter integer op_width = 3,
    parameter integer state_width = 3,
    parameter integer buffer_id_width = 3,
    parameter integer buffer_count = 4
) (
    input wire clk,
    input wire n_reset,
    input wire start,

    input wire [inst_width-1:0] inst,
    input wire inst_valid,

    input wire inst_done,

    output wire inst_next,
    output wire done,

    // 通用
    output reg [ddr_addr_width-1:0] base_addr_in_1,
    output reg [ddr_addr_width-1:0] base_addr_in_2,
    output reg [buffer_addr_width-1:0] base_addr_tail_1,
    output reg [buffer_addr_width-1:0] base_addr_tail_2,
    output reg [buffer_addr_width-1:0] base_addr_rank_1,
    output reg [buffer_addr_width-1:0] base_addr_rank_2,
    output reg [ddr_addr_width-1:0] base_addr_weight,
    output reg [buffer_addr_width-1:0] base_addr_bias,
    output reg [buffer_addr_width-1:0] base_addr_out,
    output reg [channel_size_width-1:0] channel_size_1,
    output reg [channel_size_width-1:0] channel_size_2,
    output reg [feature_size_width-1:0] feature_size_1,
    output reg [feature_size_width-1:0] feature_size_2,
    output reg [feature_size_width-1:0] feature_size_3,
    output reg [feature_size_width-1:0] feature_size_4,
    output reg [kernel_size_width-1:0] kernel_size,
    output reg [step_width-1:0] step,
    output reg [padding_width-1:0] padding,

    // 卷积
    output reg [conv_mode_width-1:0] conv_mode,
    output reg [channel_size_log_width-1:0] channel_size_log_1,
    output reg [channel_size_log_width-1:0] channel_size_log_2,
    output reg [feature_size_log_width-1:0] feature_size_log_1,
    output reg [feature_size_log_width-1:0] feature_size_log_2,
    output reg [mac_width-1:0] mac_per_pos,
    output reg [chunk_count_width-1:0] chunk_count,
    output reg [out_chunk_count_width-1:0] out_chunk_count,

    output reg [preload_width-1:0] tiley_first_tilex_first_split_size,
    output reg [preload_width-1:0] tiley_first_tilex_last_split_size,
    output reg [preload_width-1:0] tiley_first_tilex_mid_split_size,
    output reg [preload_width-1:0] tiley_last_tilex_first_split_size,
    output reg [preload_width-1:0] tiley_last_tilex_last_split_size,
    output reg [preload_width-1:0] tiley_last_tilex_mid_split_size,
    output reg [preload_width-1:0] tiley_mid_tilex_first_split_size,
    output reg [preload_width-1:0] tiley_mid_tilex_last_split_size,
    output reg [preload_width-1:0] tiley_mid_tilex_mid_split_size,
    output reg [preload_width-1:0] tilex_first_ix_word_num,
    output reg [preload_width-1:0] tilex_last_ix_word_num,
    output reg [preload_width-1:0] tilex_mid_ix_word_num,
    output reg [preload_width-1:0] tiley_first_iy_row_num,
    output reg [preload_width-1:0] tiley_last_iy_row_num,
    output reg [preload_width-1:0] tiley_mid_iy_row_num,
    output reg [index_num_width-1:0] ix_index_num,
    output reg [index_num_width-1:0] iy_index_num,

    // 预载
    output wire [ddr_addr_width-1:0] ddr_addr,
    output wire ddr_read_en,
    output wire [ddr_length_width-1:0] ddr_length,
    input wire [ddr_data_width-1:0] ddr_data,
    input wire ddr_valid,

    output wire [buffer_addr_width-1:0] buffer_addr,
    output wire buffer_inst_en,
    output wire buffer_bias_en,
    output wire buffer_tail_en,
    output wire buffer_rank_en,
    output wire [ddr_data_width-1:0] buffer_data,

    // 启动信号
    output reg conv_start,
    output reg pooling_start,
    output reg cancat_start,
    output reg upsample_start,

    // 完成信号
    input wire conv_done,
    input wire pooling_done,
    input wire cancat_done,
    input wire upsample_done,

    // 重置信号
    output reg conv_reset,
    output reg pooling_reset,
    output reg cancat_reset,
    output reg upsample_reset
);
    localparam _BUFFER_ID_INST = 3'b000;
    localparam _BUFFER_ID_BIAS = 3'b001;
    localparam _BUFFER_ID_TAIL = 3'b010;
    localparam _BUFFER_ID_RANK = 3'b011;

    // =============指令定义=============   
    localparam OP_HEAD = op_width - 1;                                          
    localparam OP_TAIL = 0;                                                    
    localparam ADDR_IN_1_HEAD = ADDR_WEIGHT_HEAD + ddr_addr_width;                       
    localparam ADDR_IN_1_TAIL = ADDR_WEIGHT_HEAD + 1;                                    
    localparam ADDR_IN_2_HEAD = ADDR_IN_1_HEAD + ddr_addr_width;                
    localparam ADDR_IN_2_TAIL = ADDR_IN_1_HEAD + 1;                             
    localparam ADDR_OUT_HEAD = ADDR_IN_1_HEAD + ddr_addr_width;                 
    localparam ADDR_OUT_TAIL = ADDR_IN_1_HEAD + 1;                              
    localparam ADDR_TAIL_1_HEAD = ADDR_BIAS_HEAD + buffer_addr_width;            
    localparam ADDR_TAIL_1_TAIL = ADDR_BIAS_HEAD + 1;                            
    localparam ADDR_TAIL_2_HEAD = ADDR_TAIL_1_HEAD + buffer_addr_width;         
    localparam ADDR_TAIL_2_TAIL = ADDR_TAIL_1_HEAD + 1;                         
    localparam ADDR_RANK_1_HEAD = CHUNK_COUNT_HEAD + buffer_addr_width;         
    localparam ADDR_RANK_1_TAIL = CHUNK_COUNT_HEAD + 1;                         
    localparam ADDR_RANK_2_HEAD = ADDR_RANK_1_HEAD + buffer_addr_width;         
    localparam ADDR_RANK_2_TAIL = ADDR_RANK_1_HEAD + 1;                         
    localparam ADDR_WEIGHT_HEAD = ADDR_TAIL_1_HEAD + ddr_addr_width;            
    localparam ADDR_WEIGHT_TAIL = ADDR_TAIL_1_HEAD + 1;                         
    localparam ADDR_BIAS_HEAD = ADDR_RANK_1_HEAD + buffer_addr_width;           
    localparam ADDR_BIAS_TAIL = ADDR_RANK_1_HEAD + 1;                           
    localparam CHANNEL_SIZE_1_HEAD = FEATURE_SIZE_2_HEAD + channel_size_width;       
    localparam CHANNEL_SIZE_1_TAIL = FEATURE_SIZE_2_HEAD + 1;                        
    localparam CHANNEL_SIZE_2_HEAD = PADDING_HEAD + channel_size_width;
    localparam CHANNEL_SIZE_2_TAIL = PADDING_HEAD + 1;
    localparam FEATURE_SIZE_1_HEAD = FEATURE_SIZE_4_HEAD + feature_size_width;  
    localparam FEATURE_SIZE_1_TAIL = FEATURE_SIZE_4_HEAD + 1;
    localparam FEATURE_SIZE_2_HEAD = FEATURE_SIZE_LOG_1_HEAD + feature_size_width;  
    localparam FEATURE_SIZE_2_TAIL = FEATURE_SIZE_LOG_1_HEAD + 1;                   
    localparam FEATURE_SIZE_3_HEAD = CHANNEL_SIZE_LOG_2_HEAD + feature_size_width;  
    localparam FEATURE_SIZE_3_TAIL = CHANNEL_SIZE_LOG_2_HEAD + 1;                   
    localparam FEATURE_SIZE_4_HEAD = FEATURE_SIZE_LOG_2_HEAD + feature_size_width;  
    localparam FEATURE_SIZE_4_TAIL = FEATURE_SIZE_LOG_2_HEAD + 1;                   
    localparam KERNEL_SIZE_HEAD = CONV_MODE_HEAD + kernel_size_width;
    localparam KERNEL_SIZE_TAIL = CONV_MODE_HEAD + 1;
    localparam STEP_HEAD = KERNEL_SIZE_HEAD + step_width;
    localparam STEP_TAIL = KERNEL_SIZE_HEAD + 1;
    localparam PADDING_HEAD = STEP_HEAD + padding_width;
    localparam PADDING_TAIL = STEP_HEAD + 1;

    localparam CONV_MODE_HEAD = OP_HEAD + conv_mode_width;
    localparam CONV_MODE_TAIL = OP_HEAD + 1;
    localparam CHANNEL_SIZE_LOG_1_HEAD = CHANNEL_SIZE_1_HEAD + channel_size_log_width;
    localparam CHANNEL_SIZE_LOG_1_TAIL = CHANNEL_SIZE_1_HEAD + 1;
    localparam CHANNEL_SIZE_LOG_2_HEAD = CHANNEL_SIZE_2_HEAD + channel_size_log_width;
    localparam CHANNEL_SIZE_LOG_2_TAIL = CHANNEL_SIZE_2_HEAD + 1;
    localparam FEATURE_SIZE_LOG_1_HEAD = FEATURE_SIZE_1_HEAD + feature_size_log_width;
    localparam FEATURE_SIZE_LOG_1_TAIL = FEATURE_SIZE_1_HEAD + 1;
    localparam FEATURE_SIZE_LOG_2_HEAD = FEATURE_SIZE_3_HEAD + feature_size_log_width;
    localparam FEATURE_SIZE_LOG_2_TAIL = FEATURE_SIZE_3_HEAD + 1;
    localparam MAC_PER_POS_HEAD = CHANNEL_SIZE_LOG_1_HEAD + mac_width;
    localparam MAC_PER_POS_TAIL = CHANNEL_SIZE_LOG_1_HEAD + 1;
    localparam CHUNK_COUNT_HEAD = MAC_PER_POS_HEAD + chunk_count_width;
    localparam CHUNK_COUNT_TAIL = MAC_PER_POS_HEAD + 1;
    localparam OUT_CHUNK_COUNT_HEAD = IY_INDEX_NUM_HEAD + out_chunk_count_width;
    localparam OUT_CHUNK_COUNT_TAIL = IY_INDEX_NUM_HEAD + 1;

    localparam TILEY_FIRST_TILEX_FIRST_SPLIT_SIZE_HEAD = OUT_CHUNK_COUNT_HEAD + preload_width;
    localparam TILEY_FIRST_TILEX_FIRST_SPLIT_SIZE_TAIL = OUT_CHUNK_COUNT_HEAD + 1;
    localparam TILEY_FIRST_TILEX_LAST_SPLIT_SIZE_HEAD = TILEY_FIRST_TILEX_FIRST_SPLIT_SIZE_HEAD + preload_width;
    localparam TILEY_FIRST_TILEX_LAST_SPLIT_SIZE_TAIL = TILEY_FIRST_TILEX_FIRST_SPLIT_SIZE_HEAD + 1;
    localparam TILEY_FIRST_TILEX_MID_SPLIT_SIZE_HEAD = TILEY_FIRST_TILEX_LAST_SPLIT_SIZE_HEAD + preload_width;
    localparam TILEY_FIRST_TILEX_MID_SPLIT_SIZE_TAIL = TILEY_FIRST_TILEX_LAST_SPLIT_SIZE_HEAD + 1;
    localparam TILEY_LAST_TILEX_FIRST_SPLIT_SIZE_HEAD = TILEY_FIRST_TILEX_MID_SPLIT_SIZE_HEAD + preload_width;
    localparam TILEY_LAST_TILEX_FIRST_SPLIT_SIZE_TAIL = TILEY_FIRST_TILEX_MID_SPLIT_SIZE_HEAD + 1;
    localparam TILEY_LAST_TILEX_LAST_SPLIT_SIZE_HEAD = TILEY_LAST_TILEX_FIRST_SPLIT_SIZE_HEAD + preload_width;
    localparam TILEY_LAST_TILEX_LAST_SPLIT_SIZE_TAIL = TILEY_LAST_TILEX_FIRST_SPLIT_SIZE_HEAD + 1;
    localparam TILEY_LAST_TILEX_MID_SPLIT_SIZE_HEAD = TILEY_LAST_TILEX_LAST_SPLIT_SIZE_HEAD + preload_width;
    localparam TILEY_LAST_TILEX_MID_SPLIT_SIZE_TAIL = TILEY_LAST_TILEX_LAST_SPLIT_SIZE_HEAD + 1;
    localparam TILEY_MID_TILEX_FIRST_SPLIT_SIZE_HEAD = TILEY_LAST_TILEX_MID_SPLIT_SIZE_HEAD + preload_width;
    localparam TILEY_MID_TILEX_FIRST_SPLIT_SIZE_TAIL = TILEY_LAST_TILEX_MID_SPLIT_SIZE_HEAD + 1;
    localparam TILEY_MID_TILEX_LAST_SPLIT_SIZE_HEAD = TILEY_MID_TILEX_FIRST_SPLIT_SIZE_HEAD + preload_width;
    localparam TILEY_MID_TILEX_LAST_SPLIT_SIZE_TAIL = TILEY_MID_TILEX_FIRST_SPLIT_SIZE_HEAD + 1;
    localparam TILEY_MID_TILEX_MID_SPLIT_SIZE_HEAD = TILEY_MID_TILEX_LAST_SPLIT_SIZE_HEAD + preload_width;
    localparam TILEY_MID_TILEX_MID_SPLIT_SIZE_TAIL = TILEY_MID_TILEX_LAST_SPLIT_SIZE_HEAD + 1;
    localparam TILEX_FIRST_IX_WORD_NUM_HEAD = ADDR_IN_2_HEAD + preload_width;
    localparam TILEX_FIRST_IX_WORD_NUM_TAIL = ADDR_IN_2_HEAD + 1;
    localparam TILEX_LAST_IX_WORD_NUM_HEAD = TILEX_FIRST_IX_WORD_NUM_HEAD + preload_width;
    localparam TILEX_LAST_IX_WORD_NUM_TAIL = TILEX_FIRST_IX_WORD_NUM_HEAD + 1;
    localparam TILEX_MID_IX_WORD_NUM_HEAD = TILEX_LAST_IX_WORD_NUM_HEAD + preload_width;
    localparam TILEX_MID_IX_WORD_NUM_TAIL = TILEX_LAST_IX_WORD_NUM_HEAD + 1;
    localparam TILEY_FIRST_IY_ROW_NUM_HEAD = TILEX_MID_IX_WORD_NUM_HEAD + preload_width;
    localparam TILEY_FIRST_IY_ROW_NUM_TAIL = TILEX_MID_IX_WORD_NUM_HEAD + 1;
    localparam TILEY_LAST_IY_ROW_NUM_HEAD = TILEY_FIRST_IY_ROW_NUM_HEAD + preload_width;
    localparam TILEY_LAST_IY_ROW_NUM_TAIL = TILEY_FIRST_IY_ROW_NUM_HEAD + 1;
    localparam TILEY_MID_IY_ROW_NUM_HEAD = TILEY_LAST_IY_ROW_NUM_HEAD + preload_width;
    localparam TILEY_MID_IY_ROW_NUM_TAIL = TILEY_LAST_IY_ROW_NUM_HEAD + 1;
    localparam IX_INDEX_NUM_HEAD = TILEY_MID_IY_ROW_NUM_HEAD + index_num_width;
    localparam IX_INDEX_NUM_TAIL = TILEY_MID_IY_ROW_NUM_HEAD + 1;
    localparam IY_INDEX_NUM_HEAD = IX_INDEX_NUM_HEAD + index_num_width;
    localparam IY_INDEX_NUM_TAIL = IX_INDEX_NUM_HEAD + 1;

    localparam BUFFER_ID_HEAD = OP_HEAD + buffer_id_width;                            // 2+3=5
    localparam BUFFER_ID_TAIL = OP_HEAD + 1;                                          // 2+1=3
    localparam DDR_BASE_ADDR_HEAD = BUFFER_ID_HEAD + ddr_addr_width;                  // 5+32=37
    localparam DDR_BASE_ADDR_TAIL = BUFFER_ID_HEAD + 1;                               // 5+1=6
    localparam DDR_BLOCK_SIZE_HEAD = DDR_BASE_ADDR_HEAD + ddr_block_size_width;       // 37+16=53
    localparam DDR_BLOCK_SIZE_TAIL = DDR_BASE_ADDR_HEAD + 1;                          // 37+1=38
    
    // =============状态机=============
    localparam IDLE = 3'b000;
    localparam LOAD = 3'b001;
    localparam RUN = 3'b010;
    localparam DONE = 3'b011;
    localparam INIT = 3'b100;

    reg [state_width-1:0] state;
    reg [4:0] init_counter;

    wire task_done;
    assign task_done = conv_done || pooling_done || cancat_done || upsample_done || load_done;  // TODO

    always @(posedge clk) begin
        if (!n_reset) begin
            state <= IDLE;
            init_counter <= 0;
        end else if (state == IDLE) begin
            state <= start ? INIT : IDLE;
            init_counter <= 0;
        end else if (state == INIT) begin
            state <= init_counter > 5 ? LOAD : INIT;
            init_counter <= init_counter + 1;
        end else if (state == LOAD) begin
            state <= (inst_valid || init_reg) ? (inst_done ? DONE : RUN) : LOAD;
        end else if (state == RUN) begin
            state <= task_done ? LOAD : RUN;
        end
    end

    // =============指令寄存=============
    reg [inst_width-1:0] inst_reg;

    always @(posedge clk) begin
        if (!n_reset || start) begin
            inst_reg <= 0;
        end else if (state == LOAD) begin
            inst_reg <= inst_valid ? inst : inst_reg;
        end
    end

    // =============指令读取=============
    assign inst_next = state == RUN && task_done;
    assign done = state == DONE;

    // =============模块初始化=============
    always @(posedge clk) begin
        conv_reset <= state == INIT && init_counter == 0;
        pooling_reset <= state == INIT && init_counter == 0;;
        cancat_reset <= state == INIT && init_counter == 0;
        upsample_reset <= state == INIT && init_counter == 0;
        load_reset <= state == INIT && init_counter == 0;
    end

    // =============指令初始化=============
    localparam DDR_BASE_ADDR_INIT = 0;
    localparam DDR_BLOCK_SIZE_INIT = 1;

    reg [inst_width-1:0] init_inst;
    reg init_reg;

    always @(posedge clk) begin
        if (!n_reset || start) begin
            init_inst <= 0;
            init_reg <= 1;
        end else if (state == INIT) begin
            init_inst[OP_HEAD:OP_TAIL] <= INST_LOAD;
            init_inst[BUFFER_ID_HEAD:BUFFER_ID_TAIL] <= _BUFFER_ID_INST;
            init_inst[DDR_BASE_ADDR_HEAD:DDR_BASE_ADDR_TAIL] <= DDR_BASE_ADDR_INIT;
            init_inst[DDR_BLOCK_SIZE_HEAD:DDR_BLOCK_SIZE_TAIL] <= DDR_BLOCK_SIZE_INIT;
            init_reg <= 1;
        end else if (state == RUN) begin
            init_reg <= 0;
        end
    end

    // =============指令类型与译码=============
    localparam INST_CONV = 3'b000;
    localparam INST_POOL = 3'b001;
    localparam INST_CONCAT = 3'b010;
    localparam INST_UPSAMPLE = 3'b011;
    localparam INST_DONE = 3'b100;
    localparam INST_LOAD = 3'b101;

    wire [inst_width-1:0] inst_selected;
    assign inst_selected = init_reg ? init_inst : inst;

    always @(posedge clk) begin
        if (!n_reset || start) begin
            conv_start <= 0;
            pooling_start <= 0;
            cancat_start <= 0;
            upsample_start <= 0;
            load_start <= 0;
        end else if (state == LOAD && (inst_valid || init_reg)) begin
            case (inst_selected[OP_HEAD:OP_TAIL])
                INST_CONV: begin
                    conv_start <= 1;
                    base_addr_in_1 <= inst_selected[ADDR_IN_1_HEAD:ADDR_IN_1_TAIL];
                    base_addr_tail_1 <= inst_selected[ADDR_TAIL_1_HEAD:ADDR_TAIL_1_TAIL];
                    base_addr_rank_1 <= inst_selected[ADDR_RANK_1_HEAD:ADDR_RANK_1_TAIL];
                    base_addr_weight <= inst_selected[ADDR_WEIGHT_HEAD:ADDR_WEIGHT_TAIL];
                    base_addr_bias <= inst_selected[ADDR_BIAS_HEAD:ADDR_BIAS_TAIL];
                    base_addr_out <= inst_selected[ADDR_OUT_HEAD:ADDR_OUT_TAIL];
                    channel_size_1 <= inst_selected[CHANNEL_SIZE_1_HEAD:CHANNEL_SIZE_1_TAIL];
                    channel_size_2 <= inst_selected[CHANNEL_SIZE_2_HEAD:CHANNEL_SIZE_2_TAIL];
                    feature_size_1 <= inst_selected[FEATURE_SIZE_1_HEAD:FEATURE_SIZE_1_TAIL];
                    feature_size_2 <= inst_selected[FEATURE_SIZE_2_HEAD:FEATURE_SIZE_2_TAIL];
                    feature_size_3 <= inst_selected[FEATURE_SIZE_3_HEAD:FEATURE_SIZE_3_TAIL];
                    feature_size_4 <= inst_selected[FEATURE_SIZE_4_HEAD:FEATURE_SIZE_4_TAIL];
                    kernel_size <= inst_selected[KERNEL_SIZE_HEAD:KERNEL_SIZE_TAIL];
                    step <= inst_selected[STEP_HEAD:STEP_TAIL];
                    padding <= inst_selected[PADDING_HEAD:PADDING_TAIL];

                    conv_mode <= inst_selected[CONV_MODE_HEAD:CONV_MODE_TAIL];
                    channel_size_log_1 <= inst_selected[CHANNEL_SIZE_LOG_1_HEAD:CHANNEL_SIZE_LOG_1_TAIL];
                    channel_size_log_2 <= inst_selected[CHANNEL_SIZE_LOG_2_HEAD:CHANNEL_SIZE_LOG_2_TAIL];
                    feature_size_log_1 <= inst_selected[FEATURE_SIZE_LOG_1_HEAD:FEATURE_SIZE_LOG_1_TAIL];
                    feature_size_log_2 <= inst_selected[FEATURE_SIZE_LOG_2_HEAD:FEATURE_SIZE_LOG_2_TAIL];
                    mac_per_pos <= inst_selected[MAC_PER_POS_HEAD:MAC_PER_POS_TAIL];
                    chunk_count <= inst_selected[CHUNK_COUNT_HEAD:CHUNK_COUNT_TAIL];
                    out_chunk_count <= inst_selected[OUT_CHUNK_COUNT_HEAD:OUT_CHUNK_COUNT_TAIL];

                    tiley_first_tilex_first_split_size <= inst_selected[TILEY_FIRST_TILEX_FIRST_SPLIT_SIZE_HEAD:TILEY_FIRST_TILEX_FIRST_SPLIT_SIZE_TAIL];
                    tiley_first_tilex_last_split_size <= inst_selected[TILEY_FIRST_TILEX_LAST_SPLIT_SIZE_HEAD:TILEY_FIRST_TILEX_LAST_SPLIT_SIZE_TAIL];
                    tiley_first_tilex_mid_split_size <= inst_selected[TILEY_FIRST_TILEX_MID_SPLIT_SIZE_HEAD:TILEY_FIRST_TILEX_MID_SPLIT_SIZE_TAIL];
                    tiley_last_tilex_first_split_size <= inst_selected[TILEY_LAST_TILEX_FIRST_SPLIT_SIZE_HEAD:TILEY_LAST_TILEX_FIRST_SPLIT_SIZE_TAIL];
                    tiley_last_tilex_last_split_size <= inst_selected[TILEY_LAST_TILEX_LAST_SPLIT_SIZE_HEAD:TILEY_LAST_TILEX_LAST_SPLIT_SIZE_TAIL];
                    tiley_last_tilex_mid_split_size <= inst_selected[TILEY_LAST_TILEX_MID_SPLIT_SIZE_HEAD:TILEY_LAST_TILEX_MID_SPLIT_SIZE_TAIL];
                    tiley_mid_tilex_first_split_size <= inst_selected[TILEY_MID_TILEX_FIRST_SPLIT_SIZE_HEAD:TILEY_MID_TILEX_FIRST_SPLIT_SIZE_TAIL];
                    tiley_mid_tilex_last_split_size <= inst_selected[TILEY_MID_TILEX_LAST_SPLIT_SIZE_HEAD:TILEY_MID_TILEX_LAST_SPLIT_SIZE_TAIL];
                    tiley_mid_tilex_mid_split_size <= inst_selected[TILEY_MID_TILEX_MID_SPLIT_SIZE_HEAD:TILEY_MID_TILEX_MID_SPLIT_SIZE_TAIL];
                    tilex_first_ix_word_num <= inst_selected[TILEX_FIRST_IX_WORD_NUM_HEAD:TILEX_FIRST_IX_WORD_NUM_TAIL];
                    tilex_last_ix_word_num <= inst_selected[TILEX_LAST_IX_WORD_NUM_HEAD:TILEX_LAST_IX_WORD_NUM_TAIL];
                    tilex_mid_ix_word_num <= inst_selected[TILEX_MID_IX_WORD_NUM_HEAD:TILEX_MID_IX_WORD_NUM_TAIL];
                    tiley_first_iy_row_num <= inst_selected[TILEY_FIRST_IY_ROW_NUM_HEAD:TILEY_FIRST_IY_ROW_NUM_TAIL];
                    tiley_last_iy_row_num <= inst_selected[TILEY_LAST_IY_ROW_NUM_HEAD:TILEY_LAST_IY_ROW_NUM_TAIL];
                    tiley_mid_iy_row_num <= inst_selected[TILEY_MID_IY_ROW_NUM_HEAD:TILEY_MID_IY_ROW_NUM_TAIL];
                    ix_index_num <= inst_selected[IX_INDEX_NUM_HEAD:IX_INDEX_NUM_TAIL];
                    iy_index_num <= inst_selected[IY_INDEX_NUM_HEAD:IY_INDEX_NUM_TAIL];
                end
                INST_POOL: begin
                    pooling_start <= 1;
                    base_addr_in_1 <= inst_selected[ADDR_IN_1_HEAD:ADDR_IN_1_TAIL];
                    base_addr_out <= inst_selected[ADDR_OUT_HEAD:ADDR_OUT_TAIL];
                    channel_size_1 <= inst_selected[CHANNEL_SIZE_1_HEAD:CHANNEL_SIZE_1_TAIL];
                end
                INST_CONCAT: begin
                    cancat_start <= 1;
                    base_addr_in_1 <= inst_selected[ADDR_IN_1_HEAD:ADDR_IN_1_TAIL];
                    base_addr_in_2 <= inst_selected[ADDR_IN_2_HEAD:ADDR_IN_2_TAIL];
                    base_addr_tail_1 <= inst_selected[ADDR_TAIL_1_HEAD:ADDR_TAIL_1_TAIL];
                    base_addr_tail_2 <= inst_selected[ADDR_TAIL_2_HEAD:ADDR_TAIL_2_TAIL];
                    base_addr_rank_1 <= inst_selected[ADDR_RANK_1_HEAD:ADDR_RANK_1_TAIL];
                    base_addr_rank_2 <= inst_selected[ADDR_RANK_2_HEAD:ADDR_RANK_2_TAIL];
                    base_addr_out <= inst_selected[ADDR_OUT_HEAD:ADDR_OUT_TAIL];
                    channel_size_1 <= inst_selected[CHANNEL_SIZE_1_HEAD:CHANNEL_SIZE_1_TAIL];
                    feature_size_1 <= inst_selected[FEATURE_SIZE_1_HEAD:FEATURE_SIZE_1_TAIL];
                end
                INST_UPSAMPLE: begin
                    upsample_start <= 1;
                    base_addr_in_1 <= inst_selected[ADDR_IN_1_HEAD:ADDR_IN_1_TAIL];
                    base_addr_out <= inst_selected[ADDR_OUT_HEAD:ADDR_OUT_TAIL];
                    channel_size_1 <= inst_selected[CHANNEL_SIZE_1_HEAD:CHANNEL_SIZE_1_TAIL];
                    feature_size_1 <= inst_selected[FEATURE_SIZE_1_HEAD:FEATURE_SIZE_1_TAIL];
                end
                INST_LOAD: begin
                    load_start <= 1;
                    buffer_id <= inst_selected[BUFFER_ID_HEAD:BUFFER_ID_TAIL];
                    ddr_base_addr <= inst_selected[DDR_BASE_ADDR_HEAD:DDR_BASE_ADDR_TAIL];
                    ddr_block_size <= inst_selected[DDR_BLOCK_SIZE_HEAD:DDR_BLOCK_SIZE_TAIL];
                end
            endcase
        end else begin
            conv_start <= 0;
            pooling_start <= 0;
            cancat_start <= 0;
            upsample_start <= 0;
            load_start <= 0;
        end
    end

    // =============初始化模块=============
    reg load_start;
    wire load_done;
    reg load_reset;

    reg [buffer_id_width-1:0] buffer_id;
    reg [ddr_addr_width-1:0] ddr_base_addr;
    reg [ddr_block_size_width-1:0] ddr_block_size;

    controller_init # (
        .ddr_addr_width(ddr_addr_width),
        .buffer_addr_width(buffer_addr_width),
        .ddr_data_width(ddr_data_width),
        .ddr_block_size_width(ddr_block_size_width),
        .buffer_id_width(buffer_id_width),
        .buffer_count(buffer_count),
        .state_width(state_width)
    ) ci (
        .clk(clk),
        .n_reset(~load_reset),
        .start(load_start),
        .done(load_done),

        .buffer_id(buffer_id),
        .ddr_base_addr(ddr_base_addr),
        .ddr_block_size(ddr_block_size),

        .ddr_addr(ddr_addr),
        .ddr_read_en(ddr_read_en),
        .ddr_length(ddr_length),
        .ddr_data(ddr_data),
        .ddr_valid(ddr_valid),

        .buffer_addr(buffer_addr),
        .buffer_inst_en(buffer_inst_en),
        .buffer_bias_en(buffer_bias_en),
        .buffer_tail_en(buffer_tail_en),
        .buffer_rank_en(buffer_rank_en),
        .buffer_data(buffer_data)
    );
    
endmodule