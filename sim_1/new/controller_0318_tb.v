`timescale 1ns / 1ps

module controller_0307_tb ();
    localparam integer inst_width = 512;
    localparam integer ddr_addr_width = 32;
    localparam integer buffer_addr_width = 16;
    localparam integer channel_size_width = 16;
    localparam integer feature_size_width = 16;
    localparam integer channel_size_log_width = 4;
    localparam integer feature_size_log_width = 4;
    localparam integer step_width = 4;
    localparam integer padding_width = 4;
    localparam integer kernel_size_width = 4;
    localparam integer ddr_data_width = 512;

    localparam integer conv_mode_width = 4;
    localparam integer mac_width = 32;
    localparam integer chunk_count_width = 32;
    localparam integer out_chunk_count_width = 8;
    localparam integer preload_width = 8;
    localparam integer index_num_width = 16;

    localparam integer ddr_block_size_width = 8;
    localparam integer ddr_length_width = 8;

    localparam integer op_width = 3;
    localparam integer state_width = 3;
    localparam integer buffer_id_width = 3;

    localparam integer ram_size = 1024;
    localparam integer ddr_size = 1024;

    reg clk;
    reg n_reset;
    reg start;

    reg [inst_width-1:0] inst;
    reg inst_valid;

    reg inst_done;

    wire inst_next;
    wire done;

    // ͨ��
    wire [ddr_addr_width-1:0] base_addr_in_1;                      // input_ddr_layer_base_adr
    wire [ddr_addr_width-1:0] base_addr_in_2;
    wire [buffer_addr_width-1:0] base_addr_tail_1;                 // scale_layer_base_buf_adr_rd
    wire [buffer_addr_width-1:0] base_addr_tail_2;
    wire [buffer_addr_width-1:0] base_addr_rank_1;                 // E_layer_base_buf_adr_rd
    wire [buffer_addr_width-1:0] base_addr_rank_2;
    wire [ddr_addr_width-1:0] base_addr_weight;                    // weights_layer_base_ddr_adr_rd
    wire [buffer_addr_width-1:0] base_addr_bias;                   // bias_layer_base_buf_adr_rd
    wire [buffer_addr_width-1:0] base_addr_out;                    // output_ddr_layer_base_adr
    wire [channel_size_width-1:0] channel_size_1;                  // nif
    wire [channel_size_width-1:0] channel_size_2;                  // of
    wire [feature_size_width-1:0] feature_size_1;                  // ix
    wire [feature_size_width-1:0] feature_size_2;                  // iy
    wire [feature_size_width-1:0] feature_size_3;                  // ox
    wire [feature_size_width-1:0] feature_size_4;                  // oy
    wire [kernel_size_width-1:0] kernel_size;                      // k
    wire [step_width-1:0] step;                                    // s
    wire [padding_width-1:0] padding;                              // p

    // ���
    wire [conv_mode_width-1:0] conv_mode;                          // mode
    wire [channel_size_log_width-1:0] channel_size_log_1;          // nif_in_2pow
    wire [channel_size_log_width-1:0] channel_size_log_2;          // of_in_2pow
    wire [feature_size_log_width-1:0] feature_size_log_1;          // ix_in_2pow
    wire [feature_size_log_width-1:0] feature_size_log_2;          // ox_in_2pow
    wire [mac_width-1:0] mac_per_pos;                              // nif_mult_k_mult_k
    wire [chunk_count_width-1:0] chunk_count;                      // N_chunks
    wire [out_chunk_count_width-1:0] out_chunk_count;              // of_div_row_num_ceil

    wire [preload_width-1:0] tiley_first_tilex_first_split_size;   // tiley_first_tilex_first_split_size
    wire [preload_width-1:0] tiley_first_tilex_last_split_size;    // tiley_first_tilex_last_split_size
    wire [preload_width-1:0] tiley_first_tilex_mid_split_size;     // tiley_first_tilex_mid_split_size
    wire [preload_width-1:0] tiley_last_tilex_first_split_size;    // tiley_last_tilex_first_split_size
    wire [preload_width-1:0] tiley_last_tilex_last_split_size;     // tiley_last_tilex_last_split_size
    wire [preload_width-1:0] tiley_last_tilex_mid_split_size;      // tiley_last_tilex_mid_split_size
    wire [preload_width-1:0] tiley_mid_tilex_first_split_size;     // tiley_mid_tilex_first_split_size
    wire [preload_width-1:0] tiley_mid_tilex_last_split_size;      // tiley_mid_tilex_last_split_size
    wire [preload_width-1:0] tiley_mid_tilex_mid_split_size;       // tiley_mid_tilex_mid_split_size
    wire [preload_width-1:0] tilex_first_ix_word_num;              // tilex_first_ix_word_num
    wire [preload_width-1:0] tilex_last_ix_word_num;               // tilex_last_ix_word_num
    wire [preload_width-1:0] tilex_mid_ix_word_num;                // tilex_mid_ix_word_num
    wire [preload_width-1:0] tiley_first_iy_row_num;               // tiley_first_iy_row_num
    wire [preload_width-1:0] tiley_last_iy_row_num;                // tiley_last_iy_row_num
    wire [preload_width-1:0] tiley_mid_iy_row_num;                 // tiley_mid_iy_row_num
    wire [index_num_width-1:0] ix_index_num;                       // ix_index_num
    wire [index_num_width-1:0] iy_index_num;                       // iy_index_num

    // Ԥ��
    wire [ddr_addr_width-1:0] ddr_addr;
    wire ddr_read_en;
    wire [ddr_length_width-1:0] ddr_length;
    reg [ddr_data_width-1:0] ddr_data;
    reg ddr_valid;

    wire [buffer_addr_width-1:0] buffer_addr;
    wire buffer_inst_en;
    wire buffer_bias_en;
    wire buffer_tail_en;
    wire buffer_rank_en;
    wire [ddr_data_width-1:0] buffer_data;

    // �����ź�
    wire conv_start;                                               // ���ģ�������źţ����źż����ͬһ���ڲ�����Ч
    wire pooling_start;
    wire cancat_start;
    wire upsample_start;
    wire load_start;

    // ����ź�
    reg conv_done;                                                 // ���ģ������źţ�ָ��ִ����ɺ����ø�һ����
    reg pooling_done;
    reg cancat_done;
    reg upsample_done;
    reg load_done;

    // �����ź�
    wire conv_reset;                                               // ���ģ�������źţ���λ��Ч
    wire pooling_reset;
    wire cancat_reset;
    wire upsample_reset;
    wire load_reset;

    controller ctrl(
        .clk(clk),
        .n_reset(n_reset),
        .start(start),
        .inst(inst),
        .inst_valid(inst_valid),
        .inst_done(inst_done),
        .inst_next(inst_next),
        .done(done),
        
        // ͨ��
        .base_addr_in_1(base_addr_in_1),
        .base_addr_in_2(base_addr_in_2),
        .base_addr_tail_1(base_addr_tail_1),
        .base_addr_tail_2(base_addr_tail_2),
        .base_addr_rank_1(base_addr_rank_1),
        .base_addr_rank_2(base_addr_rank_2),
        .base_addr_weight(base_addr_weight),
        .base_addr_bias(base_addr_bias),
        .base_addr_out(base_addr_out),
        .channel_size_1(channel_size_1),
        .channel_size_2(channel_size_2),
        .feature_size_1(feature_size_1),
        .feature_size_2(feature_size_2),
        .feature_size_3(feature_size_3),
        .feature_size_4(feature_size_4),
        .kernel_size(kernel_size),
        .step(step),
        .padding(padding),
        
        // ���
        .conv_mode(conv_mode),
        .channel_size_log_1(channel_size_log_1),
        .channel_size_log_2(channel_size_log_2),
        .feature_size_log_1(feature_size_log_1),
        .feature_size_log_2(feature_size_log_2),
        .mac_per_pos(mac_per_pos),
        .chunk_count(chunk_count),
        .out_chunk_count(out_chunk_count),
        
        .tiley_first_tilex_first_split_size(tiley_first_tilex_first_split_size),
        .tiley_first_tilex_last_split_size(tiley_first_tilex_last_split_size),
        .tiley_first_tilex_mid_split_size(tiley_first_tilex_mid_split_size),
        .tiley_last_tilex_first_split_size(tiley_last_tilex_first_split_size),
        .tiley_last_tilex_last_split_size(tiley_last_tilex_last_split_size),
        .tiley_last_tilex_mid_split_size(tiley_last_tilex_mid_split_size),
        .tiley_mid_tilex_first_split_size(tiley_mid_tilex_first_split_size),
        .tiley_mid_tilex_last_split_size(tiley_mid_tilex_last_split_size),
        .tiley_mid_tilex_mid_split_size(tiley_mid_tilex_mid_split_size),
        .tilex_first_ix_word_num(tilex_first_ix_word_num),
        .tilex_last_ix_word_num(tilex_last_ix_word_num),
        .tilex_mid_ix_word_num(tilex_mid_ix_word_num),
        .tiley_first_iy_row_num(tiley_first_iy_row_num),
        .tiley_last_iy_row_num(tiley_last_iy_row_num),
        .tiley_mid_iy_row_num(tiley_mid_iy_row_num),
        .ix_index_num(ix_index_num),
        .iy_index_num(iy_index_num),
        
        // Ԥ��
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
        .buffer_data(buffer_data),
        
        // �����ź�
        .conv_start(conv_start),
        .pooling_start(pooling_start),
        .cancat_start(cancat_start),
        .upsample_start(upsample_start),
        
        // ����ź�
        .conv_done(conv_done),
        .pooling_done(pooling_done),
        .cancat_done(cancat_done),
        .upsample_done(upsample_done),
        
        // �����ź�
        .conv_reset(conv_reset),
        .pooling_reset(pooling_reset),
        .cancat_reset(cancat_reset),
        .upsample_reset(upsample_reset)
    );

    // =============ָ��BRAM=============
    reg [ddr_data_width-1:0] inst_ram [0:ram_size-1];
    reg inst_ram_en;
    reg [buffer_addr_width-1:0] inst_ram_addr_rd;

    always @(posedge clk) begin
        if (inst_next) begin
            inst_ram_en <= 1;
        end else begin
            inst_ram_en <= 0;
        end
        inst_ram_addr_rd <= inst_ram_en ? inst_ram_addr_rd + 1 : inst_ram_addr_rd;
        inst <= inst_ram[inst_ram_addr_rd];
        inst_valid <= inst_ram_en;
        if (buffer_inst_en) begin
            inst_ram[buffer_addr] <= buffer_data;
        end
    end

    // =============ƫ��BRAM=============
    reg [ddr_data_width-1:0] bias_ram [0:ram_size-1];

    always @(posedge clk) begin
        if (buffer_bias_en) begin
            bias_ram[buffer_addr] <= buffer_data;
        end
    end

    // =============����(tail)BRAM=============
    reg [ddr_data_width-1:0] tail_ram [0:ram_size-1];

    always @(posedge clk) begin
        if (buffer_tail_en) begin
            tail_ram[buffer_addr] <= buffer_data;
        end
    end

    // =============����(rank)BRAM=============
    reg [ddr_data_width-1:0] rank_ram [0:ram_size-1];

    always @(posedge clk) begin
        if (buffer_rank_en) begin
            rank_ram[buffer_addr] <= buffer_data;
        end
    end

    // =============DDR����ģ��=============
    reg [ddr_data_width-1:0] ddr [0:ddr_size-1];
    reg [31:0] ddr_counter;
    reg [ddr_addr_width-1:0] ddr_addr_reg;

    always @(posedge clk) begin
        if (ddr_read_en) begin
            ddr_counter <= ddr_length;
            ddr_addr_reg <= ddr_addr;
        end else begin
            ddr_counter <= (ddr_counter > 0) ? ddr_counter - 1 : 0;
            ddr_addr_reg <= (ddr_counter > 0) ? ddr_addr_reg + 1 : ddr_addr_reg;
        end
        ddr_valid <= ddr_counter > 0;
        ddr_data <= ddr[ddr_addr_reg];
    end


    always #5 clk = ~clk;

    initial begin
        clk = 0;
        n_reset = 0;
        start = 0;
        
        inst = 0;          
        inst_valid = 0;
        inst_done = 0;       // Ŀǰ��Ҫ������ָ��ִ�����ʱ�ֶ��ø�����ź�ֱ����������ɹ���
        
        ddr_data = 0;
        ddr_valid = 0;
        
        conv_done = 0;
        pooling_done = 0;
        cancat_done = 0;
        upsample_done = 0;   // ����demo���߼�����һ������ź��ø߿���������Ϊ������ɣ�������Ҫ��֤ƽʱ������ź����ͣ����ʱֻ����һ����

        inst_ram_en = 0;
        inst_ram_addr_rd = 0;
        ddr_counter = 0;
        ddr_addr_reg = 0;

        // ������Ҫ��ddr��������266�У�����ʼ�������ļ���Ҳ��ֱ��дҲ�ã�������׼������Ҫ������
        // �������ĵ�һ��ָ����controller��282-283���޸Ĵ�DDR��ȡ�Ļ�ַ��������������һ�������ݽ������ָ��BRAM��Ȼ���������ָ��BRAM�����ȡָ��ִ��
        // ���ָ���Ų�Ŀǰ����conv_quantize_relu_decoder�Ļ������ڵ�3λ���op�����opΪ000������ʼ����Ԥ�أ�ָ�opΪ101���Ų��μ�controller��216-221�У��Ŀ�BRAM��ָ���еı�Ųμ�controller��123-126��

        #10;

        n_reset = 1;
        start = 1;

        #10;

        start = 0;

        #500;

        $finish;
        
    end

endmodule