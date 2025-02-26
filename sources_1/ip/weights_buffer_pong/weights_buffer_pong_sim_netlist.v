// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 26 19:38:11 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/weights_buffer_pong/weights_buffer_pong_sim_netlist.v
// Design      : weights_buffer_pong
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xq7vx690trf1761-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weights_buffer_pong,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module weights_buffer_pong
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [511:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [511:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [511:0]dina;
  wire [511:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [511:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [511:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "36" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     73.154872 mW" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "weights_buffer_pong.mem" *) 
  (* C_INIT_FILE_NAME = "weights_buffer_pong.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2560" *) 
  (* C_READ_DEPTH_B = "2560" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "512" *) 
  (* C_READ_WIDTH_B = "512" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2560" *) 
  (* C_WRITE_DEPTH_B = "2560" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "512" *) 
  (* C_WRITE_WIDTH_B = "512" *) 
  (* C_XDEVICEFAMILY = "qvirtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  weights_buffer_pong_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[511:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[511:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module weights_buffer_pong_bindec
   (ena_array,
    addra,
    ena);
  output [0:0]ena_array;
  input [2:0]addra;
  input ena;

  wire [2:0]addra;
  wire ena;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(ena),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module weights_buffer_pong_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [511:0]douta;
  input clka;
  input ena;
  input [11:0]addra;
  input [511:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [511:0]dina;
  wire [511:0]douta;
  wire ena;
  wire [4:4]ena_array;
  wire [71:0]p_115_out;
  wire [71:0]p_135_out;
  wire [70:0]p_15_out;
  wire [71:0]p_35_out;
  wire [71:0]p_55_out;
  wire [71:0]p_75_out;
  wire [71:0]p_95_out;
  wire ram_ena;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_10 ;
  wire \ramloop[10].ram.r_n_11 ;
  wire \ramloop[10].ram.r_n_12 ;
  wire \ramloop[10].ram.r_n_13 ;
  wire \ramloop[10].ram.r_n_14 ;
  wire \ramloop[10].ram.r_n_15 ;
  wire \ramloop[10].ram.r_n_16 ;
  wire \ramloop[10].ram.r_n_17 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[10].ram.r_n_9 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_10 ;
  wire \ramloop[11].ram.r_n_11 ;
  wire \ramloop[11].ram.r_n_12 ;
  wire \ramloop[11].ram.r_n_13 ;
  wire \ramloop[11].ram.r_n_14 ;
  wire \ramloop[11].ram.r_n_15 ;
  wire \ramloop[11].ram.r_n_16 ;
  wire \ramloop[11].ram.r_n_17 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_9 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_10 ;
  wire \ramloop[13].ram.r_n_11 ;
  wire \ramloop[13].ram.r_n_12 ;
  wire \ramloop[13].ram.r_n_13 ;
  wire \ramloop[13].ram.r_n_14 ;
  wire \ramloop[13].ram.r_n_15 ;
  wire \ramloop[13].ram.r_n_16 ;
  wire \ramloop[13].ram.r_n_17 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_9 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_10 ;
  wire \ramloop[14].ram.r_n_11 ;
  wire \ramloop[14].ram.r_n_12 ;
  wire \ramloop[14].ram.r_n_13 ;
  wire \ramloop[14].ram.r_n_14 ;
  wire \ramloop[14].ram.r_n_15 ;
  wire \ramloop[14].ram.r_n_16 ;
  wire \ramloop[14].ram.r_n_17 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_9 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_10 ;
  wire \ramloop[15].ram.r_n_11 ;
  wire \ramloop[15].ram.r_n_12 ;
  wire \ramloop[15].ram.r_n_13 ;
  wire \ramloop[15].ram.r_n_14 ;
  wire \ramloop[15].ram.r_n_15 ;
  wire \ramloop[15].ram.r_n_16 ;
  wire \ramloop[15].ram.r_n_17 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_8 ;
  wire \ramloop[15].ram.r_n_9 ;
  wire \ramloop[16].ram.r_n_0 ;
  wire \ramloop[16].ram.r_n_1 ;
  wire \ramloop[16].ram.r_n_10 ;
  wire \ramloop[16].ram.r_n_11 ;
  wire \ramloop[16].ram.r_n_12 ;
  wire \ramloop[16].ram.r_n_13 ;
  wire \ramloop[16].ram.r_n_14 ;
  wire \ramloop[16].ram.r_n_15 ;
  wire \ramloop[16].ram.r_n_16 ;
  wire \ramloop[16].ram.r_n_17 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_8 ;
  wire \ramloop[16].ram.r_n_9 ;
  wire \ramloop[18].ram.r_n_0 ;
  wire \ramloop[18].ram.r_n_1 ;
  wire \ramloop[18].ram.r_n_10 ;
  wire \ramloop[18].ram.r_n_11 ;
  wire \ramloop[18].ram.r_n_12 ;
  wire \ramloop[18].ram.r_n_13 ;
  wire \ramloop[18].ram.r_n_14 ;
  wire \ramloop[18].ram.r_n_15 ;
  wire \ramloop[18].ram.r_n_16 ;
  wire \ramloop[18].ram.r_n_17 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_4 ;
  wire \ramloop[18].ram.r_n_5 ;
  wire \ramloop[18].ram.r_n_6 ;
  wire \ramloop[18].ram.r_n_7 ;
  wire \ramloop[18].ram.r_n_8 ;
  wire \ramloop[18].ram.r_n_9 ;
  wire \ramloop[19].ram.r_n_0 ;
  wire \ramloop[19].ram.r_n_1 ;
  wire \ramloop[19].ram.r_n_10 ;
  wire \ramloop[19].ram.r_n_11 ;
  wire \ramloop[19].ram.r_n_12 ;
  wire \ramloop[19].ram.r_n_13 ;
  wire \ramloop[19].ram.r_n_14 ;
  wire \ramloop[19].ram.r_n_15 ;
  wire \ramloop[19].ram.r_n_16 ;
  wire \ramloop[19].ram.r_n_17 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_4 ;
  wire \ramloop[19].ram.r_n_5 ;
  wire \ramloop[19].ram.r_n_6 ;
  wire \ramloop[19].ram.r_n_7 ;
  wire \ramloop[19].ram.r_n_8 ;
  wire \ramloop[19].ram.r_n_9 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_16 ;
  wire \ramloop[1].ram.r_n_17 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[20].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_10 ;
  wire \ramloop[20].ram.r_n_11 ;
  wire \ramloop[20].ram.r_n_12 ;
  wire \ramloop[20].ram.r_n_13 ;
  wire \ramloop[20].ram.r_n_14 ;
  wire \ramloop[20].ram.r_n_15 ;
  wire \ramloop[20].ram.r_n_16 ;
  wire \ramloop[20].ram.r_n_17 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_8 ;
  wire \ramloop[20].ram.r_n_9 ;
  wire \ramloop[21].ram.r_n_0 ;
  wire \ramloop[21].ram.r_n_1 ;
  wire \ramloop[21].ram.r_n_10 ;
  wire \ramloop[21].ram.r_n_11 ;
  wire \ramloop[21].ram.r_n_12 ;
  wire \ramloop[21].ram.r_n_13 ;
  wire \ramloop[21].ram.r_n_14 ;
  wire \ramloop[21].ram.r_n_15 ;
  wire \ramloop[21].ram.r_n_16 ;
  wire \ramloop[21].ram.r_n_17 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_8 ;
  wire \ramloop[21].ram.r_n_9 ;
  wire \ramloop[23].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_1 ;
  wire \ramloop[23].ram.r_n_10 ;
  wire \ramloop[23].ram.r_n_11 ;
  wire \ramloop[23].ram.r_n_12 ;
  wire \ramloop[23].ram.r_n_13 ;
  wire \ramloop[23].ram.r_n_14 ;
  wire \ramloop[23].ram.r_n_15 ;
  wire \ramloop[23].ram.r_n_16 ;
  wire \ramloop[23].ram.r_n_17 ;
  wire \ramloop[23].ram.r_n_2 ;
  wire \ramloop[23].ram.r_n_3 ;
  wire \ramloop[23].ram.r_n_4 ;
  wire \ramloop[23].ram.r_n_5 ;
  wire \ramloop[23].ram.r_n_6 ;
  wire \ramloop[23].ram.r_n_7 ;
  wire \ramloop[23].ram.r_n_8 ;
  wire \ramloop[23].ram.r_n_9 ;
  wire \ramloop[24].ram.r_n_0 ;
  wire \ramloop[24].ram.r_n_1 ;
  wire \ramloop[24].ram.r_n_10 ;
  wire \ramloop[24].ram.r_n_11 ;
  wire \ramloop[24].ram.r_n_12 ;
  wire \ramloop[24].ram.r_n_13 ;
  wire \ramloop[24].ram.r_n_14 ;
  wire \ramloop[24].ram.r_n_15 ;
  wire \ramloop[24].ram.r_n_16 ;
  wire \ramloop[24].ram.r_n_17 ;
  wire \ramloop[24].ram.r_n_2 ;
  wire \ramloop[24].ram.r_n_3 ;
  wire \ramloop[24].ram.r_n_4 ;
  wire \ramloop[24].ram.r_n_5 ;
  wire \ramloop[24].ram.r_n_6 ;
  wire \ramloop[24].ram.r_n_7 ;
  wire \ramloop[24].ram.r_n_8 ;
  wire \ramloop[24].ram.r_n_9 ;
  wire \ramloop[25].ram.r_n_0 ;
  wire \ramloop[25].ram.r_n_1 ;
  wire \ramloop[25].ram.r_n_10 ;
  wire \ramloop[25].ram.r_n_11 ;
  wire \ramloop[25].ram.r_n_12 ;
  wire \ramloop[25].ram.r_n_13 ;
  wire \ramloop[25].ram.r_n_14 ;
  wire \ramloop[25].ram.r_n_15 ;
  wire \ramloop[25].ram.r_n_16 ;
  wire \ramloop[25].ram.r_n_17 ;
  wire \ramloop[25].ram.r_n_2 ;
  wire \ramloop[25].ram.r_n_3 ;
  wire \ramloop[25].ram.r_n_4 ;
  wire \ramloop[25].ram.r_n_5 ;
  wire \ramloop[25].ram.r_n_6 ;
  wire \ramloop[25].ram.r_n_7 ;
  wire \ramloop[25].ram.r_n_8 ;
  wire \ramloop[25].ram.r_n_9 ;
  wire \ramloop[26].ram.r_n_0 ;
  wire \ramloop[26].ram.r_n_1 ;
  wire \ramloop[26].ram.r_n_10 ;
  wire \ramloop[26].ram.r_n_11 ;
  wire \ramloop[26].ram.r_n_12 ;
  wire \ramloop[26].ram.r_n_13 ;
  wire \ramloop[26].ram.r_n_14 ;
  wire \ramloop[26].ram.r_n_15 ;
  wire \ramloop[26].ram.r_n_16 ;
  wire \ramloop[26].ram.r_n_17 ;
  wire \ramloop[26].ram.r_n_2 ;
  wire \ramloop[26].ram.r_n_3 ;
  wire \ramloop[26].ram.r_n_4 ;
  wire \ramloop[26].ram.r_n_5 ;
  wire \ramloop[26].ram.r_n_6 ;
  wire \ramloop[26].ram.r_n_7 ;
  wire \ramloop[26].ram.r_n_8 ;
  wire \ramloop[26].ram.r_n_9 ;
  wire \ramloop[28].ram.r_n_0 ;
  wire \ramloop[28].ram.r_n_1 ;
  wire \ramloop[28].ram.r_n_10 ;
  wire \ramloop[28].ram.r_n_11 ;
  wire \ramloop[28].ram.r_n_12 ;
  wire \ramloop[28].ram.r_n_13 ;
  wire \ramloop[28].ram.r_n_14 ;
  wire \ramloop[28].ram.r_n_15 ;
  wire \ramloop[28].ram.r_n_16 ;
  wire \ramloop[28].ram.r_n_17 ;
  wire \ramloop[28].ram.r_n_2 ;
  wire \ramloop[28].ram.r_n_3 ;
  wire \ramloop[28].ram.r_n_4 ;
  wire \ramloop[28].ram.r_n_5 ;
  wire \ramloop[28].ram.r_n_6 ;
  wire \ramloop[28].ram.r_n_7 ;
  wire \ramloop[28].ram.r_n_8 ;
  wire \ramloop[28].ram.r_n_9 ;
  wire \ramloop[29].ram.r_n_0 ;
  wire \ramloop[29].ram.r_n_1 ;
  wire \ramloop[29].ram.r_n_10 ;
  wire \ramloop[29].ram.r_n_11 ;
  wire \ramloop[29].ram.r_n_12 ;
  wire \ramloop[29].ram.r_n_13 ;
  wire \ramloop[29].ram.r_n_14 ;
  wire \ramloop[29].ram.r_n_15 ;
  wire \ramloop[29].ram.r_n_16 ;
  wire \ramloop[29].ram.r_n_17 ;
  wire \ramloop[29].ram.r_n_2 ;
  wire \ramloop[29].ram.r_n_3 ;
  wire \ramloop[29].ram.r_n_4 ;
  wire \ramloop[29].ram.r_n_5 ;
  wire \ramloop[29].ram.r_n_6 ;
  wire \ramloop[29].ram.r_n_7 ;
  wire \ramloop[29].ram.r_n_8 ;
  wire \ramloop[29].ram.r_n_9 ;
  wire \ramloop[30].ram.r_n_0 ;
  wire \ramloop[30].ram.r_n_1 ;
  wire \ramloop[30].ram.r_n_10 ;
  wire \ramloop[30].ram.r_n_11 ;
  wire \ramloop[30].ram.r_n_12 ;
  wire \ramloop[30].ram.r_n_13 ;
  wire \ramloop[30].ram.r_n_14 ;
  wire \ramloop[30].ram.r_n_15 ;
  wire \ramloop[30].ram.r_n_16 ;
  wire \ramloop[30].ram.r_n_17 ;
  wire \ramloop[30].ram.r_n_2 ;
  wire \ramloop[30].ram.r_n_3 ;
  wire \ramloop[30].ram.r_n_4 ;
  wire \ramloop[30].ram.r_n_5 ;
  wire \ramloop[30].ram.r_n_6 ;
  wire \ramloop[30].ram.r_n_7 ;
  wire \ramloop[30].ram.r_n_8 ;
  wire \ramloop[30].ram.r_n_9 ;
  wire \ramloop[31].ram.r_n_0 ;
  wire \ramloop[31].ram.r_n_1 ;
  wire \ramloop[31].ram.r_n_10 ;
  wire \ramloop[31].ram.r_n_11 ;
  wire \ramloop[31].ram.r_n_12 ;
  wire \ramloop[31].ram.r_n_13 ;
  wire \ramloop[31].ram.r_n_14 ;
  wire \ramloop[31].ram.r_n_15 ;
  wire \ramloop[31].ram.r_n_16 ;
  wire \ramloop[31].ram.r_n_17 ;
  wire \ramloop[31].ram.r_n_2 ;
  wire \ramloop[31].ram.r_n_3 ;
  wire \ramloop[31].ram.r_n_4 ;
  wire \ramloop[31].ram.r_n_5 ;
  wire \ramloop[31].ram.r_n_6 ;
  wire \ramloop[31].ram.r_n_7 ;
  wire \ramloop[31].ram.r_n_8 ;
  wire \ramloop[31].ram.r_n_9 ;
  wire \ramloop[33].ram.r_n_0 ;
  wire \ramloop[33].ram.r_n_1 ;
  wire \ramloop[33].ram.r_n_10 ;
  wire \ramloop[33].ram.r_n_11 ;
  wire \ramloop[33].ram.r_n_12 ;
  wire \ramloop[33].ram.r_n_13 ;
  wire \ramloop[33].ram.r_n_14 ;
  wire \ramloop[33].ram.r_n_15 ;
  wire \ramloop[33].ram.r_n_16 ;
  wire \ramloop[33].ram.r_n_17 ;
  wire \ramloop[33].ram.r_n_2 ;
  wire \ramloop[33].ram.r_n_3 ;
  wire \ramloop[33].ram.r_n_4 ;
  wire \ramloop[33].ram.r_n_5 ;
  wire \ramloop[33].ram.r_n_6 ;
  wire \ramloop[33].ram.r_n_7 ;
  wire \ramloop[33].ram.r_n_8 ;
  wire \ramloop[33].ram.r_n_9 ;
  wire \ramloop[34].ram.r_n_0 ;
  wire \ramloop[34].ram.r_n_1 ;
  wire \ramloop[34].ram.r_n_10 ;
  wire \ramloop[34].ram.r_n_11 ;
  wire \ramloop[34].ram.r_n_12 ;
  wire \ramloop[34].ram.r_n_13 ;
  wire \ramloop[34].ram.r_n_14 ;
  wire \ramloop[34].ram.r_n_15 ;
  wire \ramloop[34].ram.r_n_16 ;
  wire \ramloop[34].ram.r_n_17 ;
  wire \ramloop[34].ram.r_n_2 ;
  wire \ramloop[34].ram.r_n_3 ;
  wire \ramloop[34].ram.r_n_4 ;
  wire \ramloop[34].ram.r_n_5 ;
  wire \ramloop[34].ram.r_n_6 ;
  wire \ramloop[34].ram.r_n_7 ;
  wire \ramloop[34].ram.r_n_8 ;
  wire \ramloop[34].ram.r_n_9 ;
  wire \ramloop[35].ram.r_n_0 ;
  wire \ramloop[35].ram.r_n_1 ;
  wire \ramloop[35].ram.r_n_10 ;
  wire \ramloop[35].ram.r_n_11 ;
  wire \ramloop[35].ram.r_n_12 ;
  wire \ramloop[35].ram.r_n_13 ;
  wire \ramloop[35].ram.r_n_14 ;
  wire \ramloop[35].ram.r_n_15 ;
  wire \ramloop[35].ram.r_n_16 ;
  wire \ramloop[35].ram.r_n_2 ;
  wire \ramloop[35].ram.r_n_3 ;
  wire \ramloop[35].ram.r_n_4 ;
  wire \ramloop[35].ram.r_n_5 ;
  wire \ramloop[35].ram.r_n_6 ;
  wire \ramloop[35].ram.r_n_7 ;
  wire \ramloop[35].ram.r_n_8 ;
  wire \ramloop[35].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_10 ;
  wire \ramloop[3].ram.r_n_11 ;
  wire \ramloop[3].ram.r_n_12 ;
  wire \ramloop[3].ram.r_n_13 ;
  wire \ramloop[3].ram.r_n_14 ;
  wire \ramloop[3].ram.r_n_15 ;
  wire \ramloop[3].ram.r_n_16 ;
  wire \ramloop[3].ram.r_n_17 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_10 ;
  wire \ramloop[4].ram.r_n_11 ;
  wire \ramloop[4].ram.r_n_12 ;
  wire \ramloop[4].ram.r_n_13 ;
  wire \ramloop[4].ram.r_n_14 ;
  wire \ramloop[4].ram.r_n_15 ;
  wire \ramloop[4].ram.r_n_16 ;
  wire \ramloop[4].ram.r_n_17 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_10 ;
  wire \ramloop[5].ram.r_n_11 ;
  wire \ramloop[5].ram.r_n_12 ;
  wire \ramloop[5].ram.r_n_13 ;
  wire \ramloop[5].ram.r_n_14 ;
  wire \ramloop[5].ram.r_n_15 ;
  wire \ramloop[5].ram.r_n_16 ;
  wire \ramloop[5].ram.r_n_17 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_9 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_10 ;
  wire \ramloop[6].ram.r_n_11 ;
  wire \ramloop[6].ram.r_n_12 ;
  wire \ramloop[6].ram.r_n_13 ;
  wire \ramloop[6].ram.r_n_14 ;
  wire \ramloop[6].ram.r_n_15 ;
  wire \ramloop[6].ram.r_n_16 ;
  wire \ramloop[6].ram.r_n_17 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_9 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_10 ;
  wire \ramloop[8].ram.r_n_11 ;
  wire \ramloop[8].ram.r_n_12 ;
  wire \ramloop[8].ram.r_n_13 ;
  wire \ramloop[8].ram.r_n_14 ;
  wire \ramloop[8].ram.r_n_15 ;
  wire \ramloop[8].ram.r_n_16 ;
  wire \ramloop[8].ram.r_n_17 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_9 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_10 ;
  wire \ramloop[9].ram.r_n_11 ;
  wire \ramloop[9].ram.r_n_12 ;
  wire \ramloop[9].ram.r_n_13 ;
  wire \ramloop[9].ram.r_n_14 ;
  wire \ramloop[9].ram.r_n_15 ;
  wire \ramloop[9].ram.r_n_16 ;
  wire \ramloop[9].ram.r_n_17 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_9 ;
  wire [0:0]wea;

  weights_buffer_pong_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[11:9]),
        .ena(ena),
        .ena_array(ena_array));
  weights_buffer_pong_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPADOP({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 }),
        .addra(addra[11:9]),
        .clka(clka),
        .douta(douta[511:9]),
        .\douta[115] ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 ,\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 }),
        .\douta[116] ({\ramloop[8].ram.r_n_16 ,\ramloop[8].ram.r_n_17 }),
        .\douta[133] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 ,\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 }),
        .\douta[134] ({\ramloop[9].ram.r_n_16 ,\ramloop[9].ram.r_n_17 }),
        .\douta[151] ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 }),
        .\douta[152] ({\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 }),
        .\douta[169] ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 ,\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 }),
        .\douta[170] ({\ramloop[11].ram.r_n_16 ,\ramloop[11].ram.r_n_17 }),
        .\douta[187] ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 ,\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 }),
        .\douta[188] ({\ramloop[13].ram.r_n_16 ,\ramloop[13].ram.r_n_17 }),
        .\douta[205] ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 ,\ramloop[14].ram.r_n_8 ,\ramloop[14].ram.r_n_9 ,\ramloop[14].ram.r_n_10 ,\ramloop[14].ram.r_n_11 ,\ramloop[14].ram.r_n_12 ,\ramloop[14].ram.r_n_13 ,\ramloop[14].ram.r_n_14 ,\ramloop[14].ram.r_n_15 }),
        .\douta[206] ({\ramloop[14].ram.r_n_16 ,\ramloop[14].ram.r_n_17 }),
        .\douta[223] ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 ,\ramloop[15].ram.r_n_8 ,\ramloop[15].ram.r_n_9 ,\ramloop[15].ram.r_n_10 ,\ramloop[15].ram.r_n_11 ,\ramloop[15].ram.r_n_12 ,\ramloop[15].ram.r_n_13 ,\ramloop[15].ram.r_n_14 ,\ramloop[15].ram.r_n_15 }),
        .\douta[224] ({\ramloop[15].ram.r_n_16 ,\ramloop[15].ram.r_n_17 }),
        .\douta[241] ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 ,\ramloop[16].ram.r_n_8 ,\ramloop[16].ram.r_n_9 ,\ramloop[16].ram.r_n_10 ,\ramloop[16].ram.r_n_11 ,\ramloop[16].ram.r_n_12 ,\ramloop[16].ram.r_n_13 ,\ramloop[16].ram.r_n_14 ,\ramloop[16].ram.r_n_15 }),
        .\douta[242] ({\ramloop[16].ram.r_n_16 ,\ramloop[16].ram.r_n_17 }),
        .\douta[259] ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 ,\ramloop[18].ram.r_n_8 ,\ramloop[18].ram.r_n_9 ,\ramloop[18].ram.r_n_10 ,\ramloop[18].ram.r_n_11 ,\ramloop[18].ram.r_n_12 ,\ramloop[18].ram.r_n_13 ,\ramloop[18].ram.r_n_14 ,\ramloop[18].ram.r_n_15 }),
        .\douta[260] ({\ramloop[18].ram.r_n_16 ,\ramloop[18].ram.r_n_17 }),
        .\douta[277] ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 ,\ramloop[19].ram.r_n_8 ,\ramloop[19].ram.r_n_9 ,\ramloop[19].ram.r_n_10 ,\ramloop[19].ram.r_n_11 ,\ramloop[19].ram.r_n_12 ,\ramloop[19].ram.r_n_13 ,\ramloop[19].ram.r_n_14 ,\ramloop[19].ram.r_n_15 }),
        .\douta[278] ({\ramloop[19].ram.r_n_16 ,\ramloop[19].ram.r_n_17 }),
        .\douta[295] ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 ,\ramloop[20].ram.r_n_8 ,\ramloop[20].ram.r_n_9 ,\ramloop[20].ram.r_n_10 ,\ramloop[20].ram.r_n_11 ,\ramloop[20].ram.r_n_12 ,\ramloop[20].ram.r_n_13 ,\ramloop[20].ram.r_n_14 ,\ramloop[20].ram.r_n_15 }),
        .\douta[296] ({\ramloop[20].ram.r_n_16 ,\ramloop[20].ram.r_n_17 }),
        .\douta[313] ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 ,\ramloop[21].ram.r_n_8 ,\ramloop[21].ram.r_n_9 ,\ramloop[21].ram.r_n_10 ,\ramloop[21].ram.r_n_11 ,\ramloop[21].ram.r_n_12 ,\ramloop[21].ram.r_n_13 ,\ramloop[21].ram.r_n_14 ,\ramloop[21].ram.r_n_15 }),
        .\douta[314] ({\ramloop[21].ram.r_n_16 ,\ramloop[21].ram.r_n_17 }),
        .\douta[331] ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 ,\ramloop[23].ram.r_n_8 ,\ramloop[23].ram.r_n_9 ,\ramloop[23].ram.r_n_10 ,\ramloop[23].ram.r_n_11 ,\ramloop[23].ram.r_n_12 ,\ramloop[23].ram.r_n_13 ,\ramloop[23].ram.r_n_14 ,\ramloop[23].ram.r_n_15 }),
        .\douta[332] ({\ramloop[23].ram.r_n_16 ,\ramloop[23].ram.r_n_17 }),
        .\douta[349] ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 ,\ramloop[24].ram.r_n_8 ,\ramloop[24].ram.r_n_9 ,\ramloop[24].ram.r_n_10 ,\ramloop[24].ram.r_n_11 ,\ramloop[24].ram.r_n_12 ,\ramloop[24].ram.r_n_13 ,\ramloop[24].ram.r_n_14 ,\ramloop[24].ram.r_n_15 }),
        .\douta[350] ({\ramloop[24].ram.r_n_16 ,\ramloop[24].ram.r_n_17 }),
        .\douta[367] ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 ,\ramloop[25].ram.r_n_8 ,\ramloop[25].ram.r_n_9 ,\ramloop[25].ram.r_n_10 ,\ramloop[25].ram.r_n_11 ,\ramloop[25].ram.r_n_12 ,\ramloop[25].ram.r_n_13 ,\ramloop[25].ram.r_n_14 ,\ramloop[25].ram.r_n_15 }),
        .\douta[368] ({\ramloop[25].ram.r_n_16 ,\ramloop[25].ram.r_n_17 }),
        .\douta[385] ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 ,\ramloop[26].ram.r_n_8 ,\ramloop[26].ram.r_n_9 ,\ramloop[26].ram.r_n_10 ,\ramloop[26].ram.r_n_11 ,\ramloop[26].ram.r_n_12 ,\ramloop[26].ram.r_n_13 ,\ramloop[26].ram.r_n_14 ,\ramloop[26].ram.r_n_15 }),
        .\douta[386] ({\ramloop[26].ram.r_n_16 ,\ramloop[26].ram.r_n_17 }),
        .\douta[403] ({\ramloop[28].ram.r_n_0 ,\ramloop[28].ram.r_n_1 ,\ramloop[28].ram.r_n_2 ,\ramloop[28].ram.r_n_3 ,\ramloop[28].ram.r_n_4 ,\ramloop[28].ram.r_n_5 ,\ramloop[28].ram.r_n_6 ,\ramloop[28].ram.r_n_7 ,\ramloop[28].ram.r_n_8 ,\ramloop[28].ram.r_n_9 ,\ramloop[28].ram.r_n_10 ,\ramloop[28].ram.r_n_11 ,\ramloop[28].ram.r_n_12 ,\ramloop[28].ram.r_n_13 ,\ramloop[28].ram.r_n_14 ,\ramloop[28].ram.r_n_15 }),
        .\douta[404] ({\ramloop[28].ram.r_n_16 ,\ramloop[28].ram.r_n_17 }),
        .\douta[421] ({\ramloop[29].ram.r_n_0 ,\ramloop[29].ram.r_n_1 ,\ramloop[29].ram.r_n_2 ,\ramloop[29].ram.r_n_3 ,\ramloop[29].ram.r_n_4 ,\ramloop[29].ram.r_n_5 ,\ramloop[29].ram.r_n_6 ,\ramloop[29].ram.r_n_7 ,\ramloop[29].ram.r_n_8 ,\ramloop[29].ram.r_n_9 ,\ramloop[29].ram.r_n_10 ,\ramloop[29].ram.r_n_11 ,\ramloop[29].ram.r_n_12 ,\ramloop[29].ram.r_n_13 ,\ramloop[29].ram.r_n_14 ,\ramloop[29].ram.r_n_15 }),
        .\douta[422] ({\ramloop[29].ram.r_n_16 ,\ramloop[29].ram.r_n_17 }),
        .\douta[439] ({\ramloop[30].ram.r_n_0 ,\ramloop[30].ram.r_n_1 ,\ramloop[30].ram.r_n_2 ,\ramloop[30].ram.r_n_3 ,\ramloop[30].ram.r_n_4 ,\ramloop[30].ram.r_n_5 ,\ramloop[30].ram.r_n_6 ,\ramloop[30].ram.r_n_7 ,\ramloop[30].ram.r_n_8 ,\ramloop[30].ram.r_n_9 ,\ramloop[30].ram.r_n_10 ,\ramloop[30].ram.r_n_11 ,\ramloop[30].ram.r_n_12 ,\ramloop[30].ram.r_n_13 ,\ramloop[30].ram.r_n_14 ,\ramloop[30].ram.r_n_15 }),
        .\douta[43] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\douta[440] ({\ramloop[30].ram.r_n_16 ,\ramloop[30].ram.r_n_17 }),
        .\douta[44] ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 }),
        .\douta[457] ({\ramloop[31].ram.r_n_0 ,\ramloop[31].ram.r_n_1 ,\ramloop[31].ram.r_n_2 ,\ramloop[31].ram.r_n_3 ,\ramloop[31].ram.r_n_4 ,\ramloop[31].ram.r_n_5 ,\ramloop[31].ram.r_n_6 ,\ramloop[31].ram.r_n_7 ,\ramloop[31].ram.r_n_8 ,\ramloop[31].ram.r_n_9 ,\ramloop[31].ram.r_n_10 ,\ramloop[31].ram.r_n_11 ,\ramloop[31].ram.r_n_12 ,\ramloop[31].ram.r_n_13 ,\ramloop[31].ram.r_n_14 ,\ramloop[31].ram.r_n_15 }),
        .\douta[458] ({\ramloop[31].ram.r_n_16 ,\ramloop[31].ram.r_n_17 }),
        .\douta[475] ({\ramloop[33].ram.r_n_0 ,\ramloop[33].ram.r_n_1 ,\ramloop[33].ram.r_n_2 ,\ramloop[33].ram.r_n_3 ,\ramloop[33].ram.r_n_4 ,\ramloop[33].ram.r_n_5 ,\ramloop[33].ram.r_n_6 ,\ramloop[33].ram.r_n_7 ,\ramloop[33].ram.r_n_8 ,\ramloop[33].ram.r_n_9 ,\ramloop[33].ram.r_n_10 ,\ramloop[33].ram.r_n_11 ,\ramloop[33].ram.r_n_12 ,\ramloop[33].ram.r_n_13 ,\ramloop[33].ram.r_n_14 ,\ramloop[33].ram.r_n_15 }),
        .\douta[476] ({\ramloop[33].ram.r_n_16 ,\ramloop[33].ram.r_n_17 }),
        .\douta[493] ({\ramloop[34].ram.r_n_0 ,\ramloop[34].ram.r_n_1 ,\ramloop[34].ram.r_n_2 ,\ramloop[34].ram.r_n_3 ,\ramloop[34].ram.r_n_4 ,\ramloop[34].ram.r_n_5 ,\ramloop[34].ram.r_n_6 ,\ramloop[34].ram.r_n_7 ,\ramloop[34].ram.r_n_8 ,\ramloop[34].ram.r_n_9 ,\ramloop[34].ram.r_n_10 ,\ramloop[34].ram.r_n_11 ,\ramloop[34].ram.r_n_12 ,\ramloop[34].ram.r_n_13 ,\ramloop[34].ram.r_n_14 ,\ramloop[34].ram.r_n_15 }),
        .\douta[494] ({\ramloop[34].ram.r_n_16 ,\ramloop[34].ram.r_n_17 }),
        .\douta[503] (\ramloop[35].ram.r_n_16 ),
        .\douta[511] ({\ramloop[35].ram.r_n_0 ,\ramloop[35].ram.r_n_1 ,\ramloop[35].ram.r_n_2 ,\ramloop[35].ram.r_n_3 ,\ramloop[35].ram.r_n_4 ,\ramloop[35].ram.r_n_5 ,\ramloop[35].ram.r_n_6 ,\ramloop[35].ram.r_n_7 ,\ramloop[35].ram.r_n_8 ,\ramloop[35].ram.r_n_9 ,\ramloop[35].ram.r_n_10 ,\ramloop[35].ram.r_n_11 ,\ramloop[35].ram.r_n_12 ,\ramloop[35].ram.r_n_13 ,\ramloop[35].ram.r_n_14 ,\ramloop[35].ram.r_n_15 }),
        .\douta[61] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .\douta[62] ({\ramloop[4].ram.r_n_16 ,\ramloop[4].ram.r_n_17 }),
        .\douta[79] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 ,\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 }),
        .\douta[80] ({\ramloop[5].ram.r_n_16 ,\ramloop[5].ram.r_n_17 }),
        .\douta[97] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 ,\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 }),
        .\douta[98] ({\ramloop[6].ram.r_n_16 ,\ramloop[6].ram.r_n_17 }),
        .ena(ena),
        .p_115_out(p_115_out),
        .p_135_out(p_135_out),
        .p_15_out(p_15_out),
        .p_35_out(p_35_out),
        .p_55_out(p_55_out),
        .p_75_out(p_75_out),
        .p_95_out(p_95_out));
  weights_buffer_pong_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[8:0]),
        .douta(douta[8:0]),
        .ena(ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[152:135]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 ,\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[11].ram.r_n_16 ,\ramloop[11].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[170:153]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[224:153]),
        .ena_array(ena_array),
        .p_95_out(p_95_out),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 ,\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[13].ram.r_n_16 ,\ramloop[13].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[188:171]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 ,\ramloop[14].ram.r_n_8 ,\ramloop[14].ram.r_n_9 ,\ramloop[14].ram.r_n_10 ,\ramloop[14].ram.r_n_11 ,\ramloop[14].ram.r_n_12 ,\ramloop[14].ram.r_n_13 ,\ramloop[14].ram.r_n_14 ,\ramloop[14].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[14].ram.r_n_16 ,\ramloop[14].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[206:189]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 ,\ramloop[15].ram.r_n_8 ,\ramloop[15].ram.r_n_9 ,\ramloop[15].ram.r_n_10 ,\ramloop[15].ram.r_n_11 ,\ramloop[15].ram.r_n_12 ,\ramloop[15].ram.r_n_13 ,\ramloop[15].ram.r_n_14 ,\ramloop[15].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[15].ram.r_n_16 ,\ramloop[15].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[224:207]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 ,\ramloop[16].ram.r_n_8 ,\ramloop[16].ram.r_n_9 ,\ramloop[16].ram.r_n_10 ,\ramloop[16].ram.r_n_11 ,\ramloop[16].ram.r_n_12 ,\ramloop[16].ram.r_n_13 ,\ramloop[16].ram.r_n_14 ,\ramloop[16].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[16].ram.r_n_16 ,\ramloop[16].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[242:225]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[296:225]),
        .ena_array(ena_array),
        .p_75_out(p_75_out),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 ,\ramloop[18].ram.r_n_8 ,\ramloop[18].ram.r_n_9 ,\ramloop[18].ram.r_n_10 ,\ramloop[18].ram.r_n_11 ,\ramloop[18].ram.r_n_12 ,\ramloop[18].ram.r_n_13 ,\ramloop[18].ram.r_n_14 ,\ramloop[18].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[18].ram.r_n_16 ,\ramloop[18].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[260:243]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 ,\ramloop[19].ram.r_n_8 ,\ramloop[19].ram.r_n_9 ,\ramloop[19].ram.r_n_10 ,\ramloop[19].ram.r_n_11 ,\ramloop[19].ram.r_n_12 ,\ramloop[19].ram.r_n_13 ,\ramloop[19].ram.r_n_14 ,\ramloop[19].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[19].ram.r_n_16 ,\ramloop[19].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[278:261]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPADOP({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[26:9]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 ,\ramloop[20].ram.r_n_8 ,\ramloop[20].ram.r_n_9 ,\ramloop[20].ram.r_n_10 ,\ramloop[20].ram.r_n_11 ,\ramloop[20].ram.r_n_12 ,\ramloop[20].ram.r_n_13 ,\ramloop[20].ram.r_n_14 ,\ramloop[20].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[20].ram.r_n_16 ,\ramloop[20].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[296:279]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 ,\ramloop[21].ram.r_n_8 ,\ramloop[21].ram.r_n_9 ,\ramloop[21].ram.r_n_10 ,\ramloop[21].ram.r_n_11 ,\ramloop[21].ram.r_n_12 ,\ramloop[21].ram.r_n_13 ,\ramloop[21].ram.r_n_14 ,\ramloop[21].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[21].ram.r_n_16 ,\ramloop[21].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[314:297]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[368:297]),
        .ena_array(ena_array),
        .p_55_out(p_55_out),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 ,\ramloop[23].ram.r_n_8 ,\ramloop[23].ram.r_n_9 ,\ramloop[23].ram.r_n_10 ,\ramloop[23].ram.r_n_11 ,\ramloop[23].ram.r_n_12 ,\ramloop[23].ram.r_n_13 ,\ramloop[23].ram.r_n_14 ,\ramloop[23].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[23].ram.r_n_16 ,\ramloop[23].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[332:315]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized23 \ramloop[24].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 ,\ramloop[24].ram.r_n_8 ,\ramloop[24].ram.r_n_9 ,\ramloop[24].ram.r_n_10 ,\ramloop[24].ram.r_n_11 ,\ramloop[24].ram.r_n_12 ,\ramloop[24].ram.r_n_13 ,\ramloop[24].ram.r_n_14 ,\ramloop[24].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[24].ram.r_n_16 ,\ramloop[24].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[350:333]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized24 \ramloop[25].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 ,\ramloop[25].ram.r_n_8 ,\ramloop[25].ram.r_n_9 ,\ramloop[25].ram.r_n_10 ,\ramloop[25].ram.r_n_11 ,\ramloop[25].ram.r_n_12 ,\ramloop[25].ram.r_n_13 ,\ramloop[25].ram.r_n_14 ,\ramloop[25].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[25].ram.r_n_16 ,\ramloop[25].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[368:351]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized25 \ramloop[26].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 ,\ramloop[26].ram.r_n_8 ,\ramloop[26].ram.r_n_9 ,\ramloop[26].ram.r_n_10 ,\ramloop[26].ram.r_n_11 ,\ramloop[26].ram.r_n_12 ,\ramloop[26].ram.r_n_13 ,\ramloop[26].ram.r_n_14 ,\ramloop[26].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[26].ram.r_n_16 ,\ramloop[26].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[386:369]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized26 \ramloop[27].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[440:369]),
        .ena_array(ena_array),
        .p_35_out(p_35_out),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized27 \ramloop[28].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[28].ram.r_n_0 ,\ramloop[28].ram.r_n_1 ,\ramloop[28].ram.r_n_2 ,\ramloop[28].ram.r_n_3 ,\ramloop[28].ram.r_n_4 ,\ramloop[28].ram.r_n_5 ,\ramloop[28].ram.r_n_6 ,\ramloop[28].ram.r_n_7 ,\ramloop[28].ram.r_n_8 ,\ramloop[28].ram.r_n_9 ,\ramloop[28].ram.r_n_10 ,\ramloop[28].ram.r_n_11 ,\ramloop[28].ram.r_n_12 ,\ramloop[28].ram.r_n_13 ,\ramloop[28].ram.r_n_14 ,\ramloop[28].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[28].ram.r_n_16 ,\ramloop[28].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[404:387]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized28 \ramloop[29].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[29].ram.r_n_0 ,\ramloop[29].ram.r_n_1 ,\ramloop[29].ram.r_n_2 ,\ramloop[29].ram.r_n_3 ,\ramloop[29].ram.r_n_4 ,\ramloop[29].ram.r_n_5 ,\ramloop[29].ram.r_n_6 ,\ramloop[29].ram.r_n_7 ,\ramloop[29].ram.r_n_8 ,\ramloop[29].ram.r_n_9 ,\ramloop[29].ram.r_n_10 ,\ramloop[29].ram.r_n_11 ,\ramloop[29].ram.r_n_12 ,\ramloop[29].ram.r_n_13 ,\ramloop[29].ram.r_n_14 ,\ramloop[29].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[29].ram.r_n_16 ,\ramloop[29].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[422:405]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[80:9]),
        .ena_array(ena_array),
        .p_135_out(p_135_out),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized29 \ramloop[30].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[30].ram.r_n_0 ,\ramloop[30].ram.r_n_1 ,\ramloop[30].ram.r_n_2 ,\ramloop[30].ram.r_n_3 ,\ramloop[30].ram.r_n_4 ,\ramloop[30].ram.r_n_5 ,\ramloop[30].ram.r_n_6 ,\ramloop[30].ram.r_n_7 ,\ramloop[30].ram.r_n_8 ,\ramloop[30].ram.r_n_9 ,\ramloop[30].ram.r_n_10 ,\ramloop[30].ram.r_n_11 ,\ramloop[30].ram.r_n_12 ,\ramloop[30].ram.r_n_13 ,\ramloop[30].ram.r_n_14 ,\ramloop[30].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[30].ram.r_n_16 ,\ramloop[30].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[440:423]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized30 \ramloop[31].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[31].ram.r_n_0 ,\ramloop[31].ram.r_n_1 ,\ramloop[31].ram.r_n_2 ,\ramloop[31].ram.r_n_3 ,\ramloop[31].ram.r_n_4 ,\ramloop[31].ram.r_n_5 ,\ramloop[31].ram.r_n_6 ,\ramloop[31].ram.r_n_7 ,\ramloop[31].ram.r_n_8 ,\ramloop[31].ram.r_n_9 ,\ramloop[31].ram.r_n_10 ,\ramloop[31].ram.r_n_11 ,\ramloop[31].ram.r_n_12 ,\ramloop[31].ram.r_n_13 ,\ramloop[31].ram.r_n_14 ,\ramloop[31].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[31].ram.r_n_16 ,\ramloop[31].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[458:441]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized31 \ramloop[32].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[511:441]),
        .ena_array(ena_array),
        .p_15_out(p_15_out),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized32 \ramloop[33].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[33].ram.r_n_0 ,\ramloop[33].ram.r_n_1 ,\ramloop[33].ram.r_n_2 ,\ramloop[33].ram.r_n_3 ,\ramloop[33].ram.r_n_4 ,\ramloop[33].ram.r_n_5 ,\ramloop[33].ram.r_n_6 ,\ramloop[33].ram.r_n_7 ,\ramloop[33].ram.r_n_8 ,\ramloop[33].ram.r_n_9 ,\ramloop[33].ram.r_n_10 ,\ramloop[33].ram.r_n_11 ,\ramloop[33].ram.r_n_12 ,\ramloop[33].ram.r_n_13 ,\ramloop[33].ram.r_n_14 ,\ramloop[33].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[33].ram.r_n_16 ,\ramloop[33].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[476:459]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized33 \ramloop[34].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[34].ram.r_n_0 ,\ramloop[34].ram.r_n_1 ,\ramloop[34].ram.r_n_2 ,\ramloop[34].ram.r_n_3 ,\ramloop[34].ram.r_n_4 ,\ramloop[34].ram.r_n_5 ,\ramloop[34].ram.r_n_6 ,\ramloop[34].ram.r_n_7 ,\ramloop[34].ram.r_n_8 ,\ramloop[34].ram.r_n_9 ,\ramloop[34].ram.r_n_10 ,\ramloop[34].ram.r_n_11 ,\ramloop[34].ram.r_n_12 ,\ramloop[34].ram.r_n_13 ,\ramloop[34].ram.r_n_14 ,\ramloop[34].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[34].ram.r_n_16 ,\ramloop[34].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[494:477]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized34 \ramloop[35].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[35].ram.r_n_0 ,\ramloop[35].ram.r_n_1 ,\ramloop[35].ram.r_n_2 ,\ramloop[35].ram.r_n_3 ,\ramloop[35].ram.r_n_4 ,\ramloop[35].ram.r_n_5 ,\ramloop[35].ram.r_n_6 ,\ramloop[35].ram.r_n_7 ,\ramloop[35].ram.r_n_8 ,\ramloop[35].ram.r_n_9 ,\ramloop[35].ram.r_n_10 ,\ramloop[35].ram.r_n_11 ,\ramloop[35].ram.r_n_12 ,\ramloop[35].ram.r_n_13 ,\ramloop[35].ram.r_n_14 ,\ramloop[35].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[35].ram.r_n_16 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[511:495]),
        .ena(ena),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[44:27]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[4].ram.r_n_16 ,\ramloop[4].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[62:45]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 ,\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[5].ram.r_n_16 ,\ramloop[5].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[80:63]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 ,\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[6].ram.r_n_16 ,\ramloop[6].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[98:81]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[152:81]),
        .ena_array(ena_array),
        .p_115_out(p_115_out),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 ,\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[8].ram.r_n_16 ,\ramloop[8].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[116:99]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_pong_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 ,\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[9].ram.r_n_16 ,\ramloop[9].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[134:117]),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weights_buffer_pong_blk_mem_gen_mux
   (douta,
    addra,
    ena,
    clka,
    p_135_out,
    DOADO,
    DOPADOP,
    \douta[43] ,
    \douta[44] ,
    \douta[61] ,
    \douta[62] ,
    \douta[79] ,
    \douta[80] ,
    p_115_out,
    \douta[97] ,
    \douta[98] ,
    \douta[115] ,
    \douta[116] ,
    \douta[133] ,
    \douta[134] ,
    \douta[151] ,
    \douta[152] ,
    p_95_out,
    \douta[169] ,
    \douta[170] ,
    \douta[187] ,
    \douta[188] ,
    \douta[205] ,
    \douta[206] ,
    \douta[223] ,
    \douta[224] ,
    p_75_out,
    \douta[241] ,
    \douta[242] ,
    \douta[259] ,
    \douta[260] ,
    \douta[277] ,
    \douta[278] ,
    \douta[295] ,
    \douta[296] ,
    p_55_out,
    \douta[313] ,
    \douta[314] ,
    \douta[331] ,
    \douta[332] ,
    \douta[349] ,
    \douta[350] ,
    \douta[367] ,
    \douta[368] ,
    p_35_out,
    \douta[385] ,
    \douta[386] ,
    \douta[403] ,
    \douta[404] ,
    \douta[421] ,
    \douta[422] ,
    \douta[439] ,
    \douta[440] ,
    p_15_out,
    \douta[457] ,
    \douta[458] ,
    \douta[475] ,
    \douta[476] ,
    \douta[493] ,
    \douta[494] ,
    \douta[511] ,
    \douta[503] );
  output [502:0]douta;
  input [2:0]addra;
  input ena;
  input clka;
  input [71:0]p_135_out;
  input [15:0]DOADO;
  input [1:0]DOPADOP;
  input [15:0]\douta[43] ;
  input [1:0]\douta[44] ;
  input [15:0]\douta[61] ;
  input [1:0]\douta[62] ;
  input [15:0]\douta[79] ;
  input [1:0]\douta[80] ;
  input [71:0]p_115_out;
  input [15:0]\douta[97] ;
  input [1:0]\douta[98] ;
  input [15:0]\douta[115] ;
  input [1:0]\douta[116] ;
  input [15:0]\douta[133] ;
  input [1:0]\douta[134] ;
  input [15:0]\douta[151] ;
  input [1:0]\douta[152] ;
  input [71:0]p_95_out;
  input [15:0]\douta[169] ;
  input [1:0]\douta[170] ;
  input [15:0]\douta[187] ;
  input [1:0]\douta[188] ;
  input [15:0]\douta[205] ;
  input [1:0]\douta[206] ;
  input [15:0]\douta[223] ;
  input [1:0]\douta[224] ;
  input [71:0]p_75_out;
  input [15:0]\douta[241] ;
  input [1:0]\douta[242] ;
  input [15:0]\douta[259] ;
  input [1:0]\douta[260] ;
  input [15:0]\douta[277] ;
  input [1:0]\douta[278] ;
  input [15:0]\douta[295] ;
  input [1:0]\douta[296] ;
  input [71:0]p_55_out;
  input [15:0]\douta[313] ;
  input [1:0]\douta[314] ;
  input [15:0]\douta[331] ;
  input [1:0]\douta[332] ;
  input [15:0]\douta[349] ;
  input [1:0]\douta[350] ;
  input [15:0]\douta[367] ;
  input [1:0]\douta[368] ;
  input [71:0]p_35_out;
  input [15:0]\douta[385] ;
  input [1:0]\douta[386] ;
  input [15:0]\douta[403] ;
  input [1:0]\douta[404] ;
  input [15:0]\douta[421] ;
  input [1:0]\douta[422] ;
  input [15:0]\douta[439] ;
  input [1:0]\douta[440] ;
  input [70:0]p_15_out;
  input [15:0]\douta[457] ;
  input [1:0]\douta[458] ;
  input [15:0]\douta[475] ;
  input [1:0]\douta[476] ;
  input [15:0]\douta[493] ;
  input [1:0]\douta[494] ;
  input [15:0]\douta[511] ;
  input [0:0]\douta[503] ;

  wire [15:0]DOADO;
  wire [1:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [502:0]douta;
  wire [15:0]\douta[115] ;
  wire [1:0]\douta[116] ;
  wire [15:0]\douta[133] ;
  wire [1:0]\douta[134] ;
  wire [15:0]\douta[151] ;
  wire [1:0]\douta[152] ;
  wire [15:0]\douta[169] ;
  wire [1:0]\douta[170] ;
  wire [15:0]\douta[187] ;
  wire [1:0]\douta[188] ;
  wire [15:0]\douta[205] ;
  wire [1:0]\douta[206] ;
  wire [15:0]\douta[223] ;
  wire [1:0]\douta[224] ;
  wire [15:0]\douta[241] ;
  wire [1:0]\douta[242] ;
  wire [15:0]\douta[259] ;
  wire [1:0]\douta[260] ;
  wire [15:0]\douta[277] ;
  wire [1:0]\douta[278] ;
  wire [15:0]\douta[295] ;
  wire [1:0]\douta[296] ;
  wire [15:0]\douta[313] ;
  wire [1:0]\douta[314] ;
  wire [15:0]\douta[331] ;
  wire [1:0]\douta[332] ;
  wire [15:0]\douta[349] ;
  wire [1:0]\douta[350] ;
  wire [15:0]\douta[367] ;
  wire [1:0]\douta[368] ;
  wire [15:0]\douta[385] ;
  wire [1:0]\douta[386] ;
  wire [15:0]\douta[403] ;
  wire [1:0]\douta[404] ;
  wire [15:0]\douta[421] ;
  wire [1:0]\douta[422] ;
  wire [15:0]\douta[439] ;
  wire [15:0]\douta[43] ;
  wire [1:0]\douta[440] ;
  wire [1:0]\douta[44] ;
  wire [15:0]\douta[457] ;
  wire [1:0]\douta[458] ;
  wire [15:0]\douta[475] ;
  wire [1:0]\douta[476] ;
  wire [15:0]\douta[493] ;
  wire [1:0]\douta[494] ;
  wire [0:0]\douta[503] ;
  wire [15:0]\douta[511] ;
  wire [15:0]\douta[61] ;
  wire [1:0]\douta[62] ;
  wire [15:0]\douta[79] ;
  wire [1:0]\douta[80] ;
  wire [15:0]\douta[97] ;
  wire [1:0]\douta[98] ;
  wire ena;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ;
  wire [71:0]p_115_out;
  wire [71:0]p_135_out;
  wire [70:0]p_15_out;
  wire [71:0]p_35_out;
  wire [71:0]p_55_out;
  wire [71:0]p_75_out;
  wire [71:0]p_95_out;
  wire [2:0]sel_pipe;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[100]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[19]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [1]),
        .O(douta[91]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[101]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[20]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [2]),
        .O(douta[92]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[102]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[21]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [3]),
        .O(douta[93]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[103]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[22]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [4]),
        .O(douta[94]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[104]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[23]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [5]),
        .O(douta[95]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[105]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[24]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [6]),
        .O(douta[96]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[106]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[25]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [7]),
        .O(douta[97]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[107]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[26]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[116] [0]),
        .O(douta[98]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[108]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[27]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [8]),
        .O(douta[99]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[109]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[28]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [9]),
        .O(douta[100]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[1]),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[110]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[29]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [10]),
        .O(douta[101]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[111]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[30]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [11]),
        .O(douta[102]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[112]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[31]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [12]),
        .O(douta[103]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[113]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[32]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [13]),
        .O(douta[104]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[114]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[33]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [14]),
        .O(douta[105]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[115]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[34]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [15]),
        .O(douta[106]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[116]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[35]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[116] [1]),
        .O(douta[107]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[117]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[36]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [0]),
        .O(douta[108]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[118]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[37]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [1]),
        .O(douta[109]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[119]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[38]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [2]),
        .O(douta[110]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[2]),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[120]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[39]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [3]),
        .O(douta[111]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[121]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[40]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [4]),
        .O(douta[112]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[122]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[41]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [5]),
        .O(douta[113]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[123]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[42]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [6]),
        .O(douta[114]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[124]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[43]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [7]),
        .O(douta[115]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[125]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[44]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[134] [0]),
        .O(douta[116]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[126]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[45]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [8]),
        .O(douta[117]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[127]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[46]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [9]),
        .O(douta[118]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[128]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[47]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [10]),
        .O(douta[119]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[129]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[48]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [11]),
        .O(douta[120]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[3]),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[130]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[49]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [12]),
        .O(douta[121]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[131]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[50]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [13]),
        .O(douta[122]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[132]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[51]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [14]),
        .O(douta[123]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[133]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[52]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[133] [15]),
        .O(douta[124]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[134]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[53]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[134] [1]),
        .O(douta[125]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[135]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[54]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [0]),
        .O(douta[126]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[136]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[55]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [1]),
        .O(douta[127]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[137]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[56]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [2]),
        .O(douta[128]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[138]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[57]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [3]),
        .O(douta[129]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[139]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[58]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [4]),
        .O(douta[130]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[4]),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[140]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[59]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [5]),
        .O(douta[131]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[141]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[60]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [6]),
        .O(douta[132]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[142]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[61]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [7]),
        .O(douta[133]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[143]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[62]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[152] [0]),
        .O(douta[134]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[144]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[63]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [8]),
        .O(douta[135]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[145]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[64]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [9]),
        .O(douta[136]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[146]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[65]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [10]),
        .O(douta[137]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[147]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[66]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [11]),
        .O(douta[138]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[148]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[67]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [12]),
        .O(douta[139]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[149]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[68]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [13]),
        .O(douta[140]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[5]),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[150]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[69]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [14]),
        .O(douta[141]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[151]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[70]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[151] [15]),
        .O(douta[142]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[152]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[71]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[152] [1]),
        .O(douta[143]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[153]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [0]),
        .O(douta[144]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[154]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [1]),
        .O(douta[145]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[155]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [2]),
        .O(douta[146]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[156]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [3]),
        .O(douta[147]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[157]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [4]),
        .O(douta[148]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[158]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [5]),
        .O(douta[149]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[159]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [6]),
        .O(douta[150]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[6]),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[160]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [7]),
        .O(douta[151]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[161]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[170] [0]),
        .O(douta[152]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[162]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [8]),
        .O(douta[153]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[163]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [9]),
        .O(douta[154]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[164]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [10]),
        .O(douta[155]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[165]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [11]),
        .O(douta[156]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[166]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [12]),
        .O(douta[157]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[167]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [13]),
        .O(douta[158]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[168]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [14]),
        .O(douta[159]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[169]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[16]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[169] [15]),
        .O(douta[160]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[16]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[7]),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[170]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[17]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[170] [1]),
        .O(douta[161]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[171]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[18]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [0]),
        .O(douta[162]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[172]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[19]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [1]),
        .O(douta[163]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[173]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[20]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [2]),
        .O(douta[164]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[174]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[21]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [3]),
        .O(douta[165]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[175]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[22]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [4]),
        .O(douta[166]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[176]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[23]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [5]),
        .O(douta[167]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[177]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[24]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [6]),
        .O(douta[168]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[178]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[25]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [7]),
        .O(douta[169]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[179]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[26]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[188] [0]),
        .O(douta[170]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[17]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOPADOP[0]),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[180]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[27]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [8]),
        .O(douta[171]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[181]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[28]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [9]),
        .O(douta[172]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[182]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[29]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [10]),
        .O(douta[173]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[183]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[30]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [11]),
        .O(douta[174]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[184]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[31]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [12]),
        .O(douta[175]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[185]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[32]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [13]),
        .O(douta[176]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[186]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[33]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [14]),
        .O(douta[177]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[187]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[34]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[187] [15]),
        .O(douta[178]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[188]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[35]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[188] [1]),
        .O(douta[179]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[189]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[36]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [0]),
        .O(douta[180]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[18]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[8]),
        .O(douta[9]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[190]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[37]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [1]),
        .O(douta[181]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[191]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[38]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [2]),
        .O(douta[182]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[192]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[39]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [3]),
        .O(douta[183]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[193]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[40]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [4]),
        .O(douta[184]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[194]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[41]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [5]),
        .O(douta[185]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[195]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[42]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [6]),
        .O(douta[186]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[196]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[43]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [7]),
        .O(douta[187]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[197]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[44]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[206] [0]),
        .O(douta[188]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[198]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[45]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [8]),
        .O(douta[189]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[199]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[46]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [9]),
        .O(douta[190]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[19]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[9]),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[200]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[47]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [10]),
        .O(douta[191]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[201]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[48]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [11]),
        .O(douta[192]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[202]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[49]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [12]),
        .O(douta[193]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[203]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[50]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [13]),
        .O(douta[194]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[204]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[51]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [14]),
        .O(douta[195]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[205]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[52]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[205] [15]),
        .O(douta[196]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[206]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[53]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[206] [1]),
        .O(douta[197]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[207]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[54]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [0]),
        .O(douta[198]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[208]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[55]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [1]),
        .O(douta[199]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[209]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[56]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [2]),
        .O(douta[200]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[20]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[10]),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[210]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[57]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [3]),
        .O(douta[201]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[211]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[58]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [4]),
        .O(douta[202]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[212]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[59]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [5]),
        .O(douta[203]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[213]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[60]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [6]),
        .O(douta[204]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[214]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[61]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [7]),
        .O(douta[205]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[215]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[62]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[224] [0]),
        .O(douta[206]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[216]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[63]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [8]),
        .O(douta[207]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[217]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[64]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [9]),
        .O(douta[208]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[218]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[65]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [10]),
        .O(douta[209]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[219]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[66]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [11]),
        .O(douta[210]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[21]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[11]),
        .O(douta[12]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[220]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[67]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [12]),
        .O(douta[211]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[221]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[68]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [13]),
        .O(douta[212]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[222]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[69]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [14]),
        .O(douta[213]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[223]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[70]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[223] [15]),
        .O(douta[214]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[224]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_95_out[71]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[224] [1]),
        .O(douta[215]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[225]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [0]),
        .O(douta[216]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[226]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [1]),
        .O(douta[217]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[227]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [2]),
        .O(douta[218]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[228]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [3]),
        .O(douta[219]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[229]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [4]),
        .O(douta[220]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[22]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[12]),
        .O(douta[13]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[230]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [5]),
        .O(douta[221]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[231]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [6]),
        .O(douta[222]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[232]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [7]),
        .O(douta[223]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[233]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[242] [0]),
        .O(douta[224]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[234]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [8]),
        .O(douta[225]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[235]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [9]),
        .O(douta[226]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[236]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [10]),
        .O(douta[227]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[237]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [11]),
        .O(douta[228]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[238]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [12]),
        .O(douta[229]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[239]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [13]),
        .O(douta[230]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[23]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[13]),
        .O(douta[14]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[240]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [14]),
        .O(douta[231]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[241]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[16]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[241] [15]),
        .O(douta[232]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[242]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[17]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[242] [1]),
        .O(douta[233]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[243]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[18]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [0]),
        .O(douta[234]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[244]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[19]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [1]),
        .O(douta[235]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[245]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[20]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [2]),
        .O(douta[236]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[246]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[21]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [3]),
        .O(douta[237]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[247]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[22]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [4]),
        .O(douta[238]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[248]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[23]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [5]),
        .O(douta[239]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[249]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[24]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [6]),
        .O(douta[240]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[24]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[14]),
        .O(douta[15]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[250]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[25]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [7]),
        .O(douta[241]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[251]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[26]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[260] [0]),
        .O(douta[242]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[252]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[27]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [8]),
        .O(douta[243]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[253]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[28]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [9]),
        .O(douta[244]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[254]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[29]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [10]),
        .O(douta[245]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[255]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[30]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [11]),
        .O(douta[246]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[256]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[31]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [12]),
        .O(douta[247]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[257]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[32]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [13]),
        .O(douta[248]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[258]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[33]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [14]),
        .O(douta[249]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[259]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[34]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[259] [15]),
        .O(douta[250]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[25]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[16]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[15]),
        .O(douta[16]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[260]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[35]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[260] [1]),
        .O(douta[251]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[261]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[36]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [0]),
        .O(douta[252]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[262]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[37]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [1]),
        .O(douta[253]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[263]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[38]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [2]),
        .O(douta[254]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[264]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[39]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [3]),
        .O(douta[255]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[265]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[40]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [4]),
        .O(douta[256]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[266]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[41]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [5]),
        .O(douta[257]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[267]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[42]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [6]),
        .O(douta[258]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[268]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[43]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [7]),
        .O(douta[259]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[269]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[44]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[278] [0]),
        .O(douta[260]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[26]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[17]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOPADOP[1]),
        .O(douta[17]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[270]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[45]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [8]),
        .O(douta[261]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[271]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[46]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [9]),
        .O(douta[262]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[272]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[47]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [10]),
        .O(douta[263]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[273]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[48]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [11]),
        .O(douta[264]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[274]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[49]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [12]),
        .O(douta[265]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[275]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[50]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [13]),
        .O(douta[266]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[276]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[51]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [14]),
        .O(douta[267]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[277]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[52]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[277] [15]),
        .O(douta[268]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[278]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[53]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[278] [1]),
        .O(douta[269]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[279]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[54]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [0]),
        .O(douta[270]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[27]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[18]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [0]),
        .O(douta[18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[280]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[55]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [1]),
        .O(douta[271]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[281]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[56]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [2]),
        .O(douta[272]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[282]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[57]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [3]),
        .O(douta[273]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[283]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[58]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [4]),
        .O(douta[274]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[284]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[59]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [5]),
        .O(douta[275]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[285]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[60]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [6]),
        .O(douta[276]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[286]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[61]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [7]),
        .O(douta[277]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[287]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[62]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[296] [0]),
        .O(douta[278]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[288]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[63]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [8]),
        .O(douta[279]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[289]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[64]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [9]),
        .O(douta[280]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[28]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[19]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [1]),
        .O(douta[19]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[290]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[65]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [10]),
        .O(douta[281]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[291]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[66]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [11]),
        .O(douta[282]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[292]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[67]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [12]),
        .O(douta[283]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[293]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[68]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [13]),
        .O(douta[284]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[294]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[69]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [14]),
        .O(douta[285]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[295]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[70]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[295] [15]),
        .O(douta[286]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[296]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_75_out[71]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[296] [1]),
        .O(douta[287]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[297]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [0]),
        .O(douta[288]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[298]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [1]),
        .O(douta[289]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[299]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [2]),
        .O(douta[290]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[29]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[20]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [2]),
        .O(douta[20]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[300]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [3]),
        .O(douta[291]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[301]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [4]),
        .O(douta[292]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[302]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [5]),
        .O(douta[293]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[303]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [6]),
        .O(douta[294]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[304]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [7]),
        .O(douta[295]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[305]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[314] [0]),
        .O(douta[296]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[306]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [8]),
        .O(douta[297]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[307]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [9]),
        .O(douta[298]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[308]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [10]),
        .O(douta[299]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[309]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [11]),
        .O(douta[300]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[30]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[21]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [3]),
        .O(douta[21]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[310]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [12]),
        .O(douta[301]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[311]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [13]),
        .O(douta[302]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[312]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [14]),
        .O(douta[303]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[313]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[16]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[313] [15]),
        .O(douta[304]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[314]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[17]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[314] [1]),
        .O(douta[305]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[315]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[18]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [0]),
        .O(douta[306]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[316]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[19]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [1]),
        .O(douta[307]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[317]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[20]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [2]),
        .O(douta[308]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[318]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[21]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [3]),
        .O(douta[309]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[319]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[22]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [4]),
        .O(douta[310]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[31]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[22]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [4]),
        .O(douta[22]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[320]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[23]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [5]),
        .O(douta[311]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[321]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[24]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [6]),
        .O(douta[312]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[322]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[25]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [7]),
        .O(douta[313]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[323]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[26]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[332] [0]),
        .O(douta[314]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[324]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[27]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [8]),
        .O(douta[315]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[325]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[28]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [9]),
        .O(douta[316]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[326]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[29]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [10]),
        .O(douta[317]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[327]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[30]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [11]),
        .O(douta[318]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[328]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[31]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [12]),
        .O(douta[319]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[329]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[32]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [13]),
        .O(douta[320]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[32]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[23]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [5]),
        .O(douta[23]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[330]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[33]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [14]),
        .O(douta[321]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[331]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[34]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[331] [15]),
        .O(douta[322]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[332]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[35]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[332] [1]),
        .O(douta[323]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[333]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[36]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [0]),
        .O(douta[324]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[334]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[37]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [1]),
        .O(douta[325]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[335]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[38]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [2]),
        .O(douta[326]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[336]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[39]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [3]),
        .O(douta[327]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[337]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[40]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [4]),
        .O(douta[328]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[338]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[41]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [5]),
        .O(douta[329]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[339]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[42]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [6]),
        .O(douta[330]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[33]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[24]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [6]),
        .O(douta[24]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[340]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[43]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [7]),
        .O(douta[331]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[341]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[44]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[350] [0]),
        .O(douta[332]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[342]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[45]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [8]),
        .O(douta[333]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[343]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[46]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [9]),
        .O(douta[334]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[344]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[47]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [10]),
        .O(douta[335]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[345]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[48]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [11]),
        .O(douta[336]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[346]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[49]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [12]),
        .O(douta[337]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[347]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[50]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [13]),
        .O(douta[338]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[348]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[51]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [14]),
        .O(douta[339]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[349]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[52]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[349] [15]),
        .O(douta[340]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[34]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[25]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [7]),
        .O(douta[25]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[350]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[53]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[350] [1]),
        .O(douta[341]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[351]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[54]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [0]),
        .O(douta[342]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[352]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[55]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [1]),
        .O(douta[343]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[353]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[56]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [2]),
        .O(douta[344]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[354]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[57]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [3]),
        .O(douta[345]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[355]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[58]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [4]),
        .O(douta[346]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[356]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[59]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [5]),
        .O(douta[347]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[357]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[60]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [6]),
        .O(douta[348]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[358]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[61]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [7]),
        .O(douta[349]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[359]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[62]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[368] [0]),
        .O(douta[350]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[35]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[26]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[44] [0]),
        .O(douta[26]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[360]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[63]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [8]),
        .O(douta[351]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[361]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[64]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [9]),
        .O(douta[352]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[362]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[65]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [10]),
        .O(douta[353]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[363]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[66]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [11]),
        .O(douta[354]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[364]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[67]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [12]),
        .O(douta[355]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[365]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[68]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [13]),
        .O(douta[356]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[366]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[69]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [14]),
        .O(douta[357]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[367]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[70]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[367] [15]),
        .O(douta[358]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[368]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_55_out[71]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[368] [1]),
        .O(douta[359]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[369]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [0]),
        .O(douta[360]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[36]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[27]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [8]),
        .O(douta[27]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[370]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [1]),
        .O(douta[361]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[371]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [2]),
        .O(douta[362]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[372]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [3]),
        .O(douta[363]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[373]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [4]),
        .O(douta[364]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[374]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [5]),
        .O(douta[365]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[375]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [6]),
        .O(douta[366]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[376]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [7]),
        .O(douta[367]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[377]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[386] [0]),
        .O(douta[368]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[378]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [8]),
        .O(douta[369]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[379]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [9]),
        .O(douta[370]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[37]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[28]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [9]),
        .O(douta[28]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[380]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [10]),
        .O(douta[371]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[381]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [11]),
        .O(douta[372]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[382]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [12]),
        .O(douta[373]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[383]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [13]),
        .O(douta[374]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[384]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [14]),
        .O(douta[375]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[385]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[16]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[385] [15]),
        .O(douta[376]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[386]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[17]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[386] [1]),
        .O(douta[377]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[387]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[18]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [0]),
        .O(douta[378]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[388]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[19]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [1]),
        .O(douta[379]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[389]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[20]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [2]),
        .O(douta[380]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[38]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[29]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [10]),
        .O(douta[29]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[390]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[21]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [3]),
        .O(douta[381]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[391]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[22]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [4]),
        .O(douta[382]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[392]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[23]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [5]),
        .O(douta[383]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[393]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[24]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [6]),
        .O(douta[384]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[394]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[25]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [7]),
        .O(douta[385]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[395]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[26]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[404] [0]),
        .O(douta[386]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[396]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[27]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [8]),
        .O(douta[387]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[397]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[28]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [9]),
        .O(douta[388]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[398]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[29]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [10]),
        .O(douta[389]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[399]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[30]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [11]),
        .O(douta[390]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[39]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[30]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [11]),
        .O(douta[30]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[400]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[31]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [12]),
        .O(douta[391]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[401]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[32]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [13]),
        .O(douta[392]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[402]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[33]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [14]),
        .O(douta[393]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[403]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[34]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[403] [15]),
        .O(douta[394]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[404]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[35]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[404] [1]),
        .O(douta[395]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[405]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[36]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [0]),
        .O(douta[396]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[406]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[37]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [1]),
        .O(douta[397]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[407]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[38]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [2]),
        .O(douta[398]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[408]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[39]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [3]),
        .O(douta[399]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[409]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[40]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [4]),
        .O(douta[400]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[40]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[31]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [12]),
        .O(douta[31]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[410]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[41]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [5]),
        .O(douta[401]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[411]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[42]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [6]),
        .O(douta[402]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[412]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[43]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [7]),
        .O(douta[403]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[413]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[44]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[422] [0]),
        .O(douta[404]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[414]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[45]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [8]),
        .O(douta[405]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[415]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[46]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [9]),
        .O(douta[406]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[416]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[47]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [10]),
        .O(douta[407]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[417]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[48]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [11]),
        .O(douta[408]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[418]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[49]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [12]),
        .O(douta[409]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[419]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[50]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [13]),
        .O(douta[410]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[41]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[32]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [13]),
        .O(douta[32]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[420]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[51]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [14]),
        .O(douta[411]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[421]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[52]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[421] [15]),
        .O(douta[412]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[422]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[53]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[422] [1]),
        .O(douta[413]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[423]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[54]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [0]),
        .O(douta[414]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[424]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[55]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [1]),
        .O(douta[415]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[425]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[56]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [2]),
        .O(douta[416]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[426]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[57]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [3]),
        .O(douta[417]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[427]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[58]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [4]),
        .O(douta[418]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[428]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[59]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [5]),
        .O(douta[419]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[429]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[60]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [6]),
        .O(douta[420]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[42]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[33]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [14]),
        .O(douta[33]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[430]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[61]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [7]),
        .O(douta[421]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[431]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[62]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[440] [0]),
        .O(douta[422]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[432]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[63]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [8]),
        .O(douta[423]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[433]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[64]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [9]),
        .O(douta[424]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[434]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[65]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [10]),
        .O(douta[425]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[435]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[66]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [11]),
        .O(douta[426]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[436]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[67]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [12]),
        .O(douta[427]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[437]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[68]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [13]),
        .O(douta[428]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[438]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[69]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [14]),
        .O(douta[429]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[439]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[70]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[439] [15]),
        .O(douta[430]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[43]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[34]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[43] [15]),
        .O(douta[34]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[440]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_35_out[71]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[440] [1]),
        .O(douta[431]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[441]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [0]),
        .O(douta[432]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[442]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [1]),
        .O(douta[433]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[443]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [2]),
        .O(douta[434]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[444]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [3]),
        .O(douta[435]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[445]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [4]),
        .O(douta[436]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[446]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [5]),
        .O(douta[437]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[447]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [6]),
        .O(douta[438]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[448]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [7]),
        .O(douta[439]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[449]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[458] [0]),
        .O(douta[440]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[44]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[35]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[44] [1]),
        .O(douta[35]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[450]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [8]),
        .O(douta[441]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[451]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [9]),
        .O(douta[442]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[452]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [10]),
        .O(douta[443]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[453]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [11]),
        .O(douta[444]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[454]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [12]),
        .O(douta[445]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[455]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [13]),
        .O(douta[446]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[456]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [14]),
        .O(douta[447]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[457]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[16]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[457] [15]),
        .O(douta[448]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[458]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[17]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[458] [1]),
        .O(douta[449]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[459]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[18]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [0]),
        .O(douta[450]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[45]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[36]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [0]),
        .O(douta[36]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[460]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[19]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [1]),
        .O(douta[451]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[461]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[20]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [2]),
        .O(douta[452]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[462]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[21]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [3]),
        .O(douta[453]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[463]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[22]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [4]),
        .O(douta[454]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[464]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[23]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [5]),
        .O(douta[455]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[465]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[24]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [6]),
        .O(douta[456]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[466]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[25]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [7]),
        .O(douta[457]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[467]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[26]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[476] [0]),
        .O(douta[458]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[468]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[27]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [8]),
        .O(douta[459]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[469]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[28]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [9]),
        .O(douta[460]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[46]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[37]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [1]),
        .O(douta[37]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[470]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[29]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [10]),
        .O(douta[461]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[471]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[30]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [11]),
        .O(douta[462]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[472]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[31]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [12]),
        .O(douta[463]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[473]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[32]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [13]),
        .O(douta[464]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[474]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[33]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [14]),
        .O(douta[465]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[475]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[34]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[475] [15]),
        .O(douta[466]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[476]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[35]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[476] [1]),
        .O(douta[467]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[477]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[36]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [0]),
        .O(douta[468]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[478]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[37]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [1]),
        .O(douta[469]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[479]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[38]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [2]),
        .O(douta[470]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[47]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[38]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [2]),
        .O(douta[38]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[480]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[39]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [3]),
        .O(douta[471]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[481]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[40]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [4]),
        .O(douta[472]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[482]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[41]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [5]),
        .O(douta[473]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[483]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[42]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [6]),
        .O(douta[474]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[484]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[43]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [7]),
        .O(douta[475]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[485]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[44]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[494] [0]),
        .O(douta[476]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[486]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[45]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [8]),
        .O(douta[477]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[487]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[46]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [9]),
        .O(douta[478]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[488]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[47]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [10]),
        .O(douta[479]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[489]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[48]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [11]),
        .O(douta[480]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[48]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[39]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [3]),
        .O(douta[39]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[490]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[49]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [12]),
        .O(douta[481]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[491]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[50]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [13]),
        .O(douta[482]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[492]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[51]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [14]),
        .O(douta[483]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[493]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[52]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[493] [15]),
        .O(douta[484]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[494]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[53]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[494] [1]),
        .O(douta[485]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[495]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[54]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [0]),
        .O(douta[486]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[496]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[55]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [1]),
        .O(douta[487]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[497]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[56]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [2]),
        .O(douta[488]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[498]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[57]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [3]),
        .O(douta[489]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[499]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[58]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [4]),
        .O(douta[490]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[49]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[40]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [4]),
        .O(douta[40]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[500]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[59]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [5]),
        .O(douta[491]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[501]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[60]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [6]),
        .O(douta[492]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[502]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[61]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [7]),
        .O(douta[493]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[503]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[62]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[503] ),
        .O(douta[494]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[504]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[63]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [8]),
        .O(douta[495]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[505]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[64]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [9]),
        .O(douta[496]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[506]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[65]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [10]),
        .O(douta[497]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[507]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[66]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [11]),
        .O(douta[498]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[508]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[67]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [12]),
        .O(douta[499]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[509]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[68]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [13]),
        .O(douta[500]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[50]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[41]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [5]),
        .O(douta[41]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[510]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[69]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [14]),
        .O(douta[501]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[511]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_15_out[70]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[511] [15]),
        .O(douta[502]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[51]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[42]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [6]),
        .O(douta[42]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[52]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[43]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [7]),
        .O(douta[43]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[53]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[44]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[62] [0]),
        .O(douta[44]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[54]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[45]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [8]),
        .O(douta[45]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[55]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[46]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [9]),
        .O(douta[46]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[56]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[47]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [10]),
        .O(douta[47]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[57]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[48]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [11]),
        .O(douta[48]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[58]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[49]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [12]),
        .O(douta[49]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[59]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[50]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [13]),
        .O(douta[50]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[60]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[51]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [14]),
        .O(douta[51]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[61]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[52]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[61] [15]),
        .O(douta[52]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[62]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[53]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[62] [1]),
        .O(douta[53]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[63]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[54]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [0]),
        .O(douta[54]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[64]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[55]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [1]),
        .O(douta[55]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[65]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[56]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [2]),
        .O(douta[56]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[66]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[57]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [3]),
        .O(douta[57]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[67]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[58]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [4]),
        .O(douta[58]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[68]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[59]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [5]),
        .O(douta[59]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[69]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[60]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [6]),
        .O(douta[60]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[70]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[61]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [7]),
        .O(douta[61]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[71]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[62]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[80] [0]),
        .O(douta[62]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[72]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[63]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [8]),
        .O(douta[63]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[73]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[64]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [9]),
        .O(douta[64]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[74]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[65]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [10]),
        .O(douta[65]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[75]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[66]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [11]),
        .O(douta[66]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[76]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[67]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [12]),
        .O(douta[67]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[77]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[68]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [13]),
        .O(douta[68]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[78]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[69]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [14]),
        .O(douta[69]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[79]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[70]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[79] [15]),
        .O(douta[70]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[80]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[71]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[80] [1]),
        .O(douta[71]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[81]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [0]),
        .O(douta[72]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[82]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [1]),
        .O(douta[73]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[83]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [2]),
        .O(douta[74]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[84]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [3]),
        .O(douta[75]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[85]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [4]),
        .O(douta[76]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[86]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [5]),
        .O(douta[77]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[87]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [6]),
        .O(douta[78]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[88]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [7]),
        .O(douta[79]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[89]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[98] [0]),
        .O(douta[80]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[90]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [8]),
        .O(douta[81]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[91]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [9]),
        .O(douta[82]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[92]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [10]),
        .O(douta[83]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[93]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [11]),
        .O(douta[84]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[94]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [12]),
        .O(douta[85]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[95]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [13]),
        .O(douta[86]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[96]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [14]),
        .O(douta[87]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[97]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[16]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[97] [15]),
        .O(douta[88]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[98]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[17]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[98] [1]),
        .O(douta[89]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[99]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_115_out[18]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\douta[115] [0]),
        .O(douta[90]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(p_135_out[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOADO[0]),
        .O(douta[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addra[0]),
        .I1(ena),
        .I2(sel_pipe[0]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(addra[1]),
        .I1(ena),
        .I2(sel_pipe[1]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1 
       (.I0(addra[2]),
        .I1(ena),
        .I2(sel_pipe[2]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [8:0]douta;
  input clka;
  input ena;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta;
  wire ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOPADOP,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]DOADO;
  output [1:0]DOPADOP;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]DOADO;
  wire [1:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized1
   (p_135_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_135_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_135_out;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_135_out(p_135_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized11
   (p_95_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_95_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_95_out;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_95_out(p_95_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized16
   (p_75_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_75_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_75_out;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_75_out(p_75_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized20
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized21
   (p_55_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_55_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_55_out;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_55_out(p_55_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized22
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized23
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized23 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized24
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized24 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized25
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized25 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized26
   (p_35_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_35_out;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized26 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_35_out(p_35_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized27
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized27 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized28
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized28 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized29
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized29 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized30
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized30 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized31
   (p_15_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [70:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [70:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [70:0]dina;
  wire [0:0]ena_array;
  wire [70:0]p_15_out;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized31 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_15_out(p_15_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized32
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized32 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized33
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized33 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized34
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    ram_ena,
    clka,
    addra,
    dina,
    wea,
    ena);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output ram_ena;
  input clka;
  input [11:0]addra;
  input [16:0]dina;
  input [0:0]wea;
  input ena;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [16:0]dina;
  wire ena;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized34 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized6
   (p_115_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_115_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_115_out;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_115_out(p_115_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_pong_blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [8:0]douta;
  input clka;
  input ena;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]douta;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hD935B774C4B3B2D659D98EA677C4C2EE28418C362E87FD9569363E7F0B3FCCB5),
    .INITP_01(256'h04893F22E9EEB3042893F0D84D9236DECE5B05D5446351987C8F2A31B3678D0C),
    .INITP_02(256'hD2F5EE2DAE01298AB6FD79C2DA45E1A1055344542B55F068F929331815D4B4F3),
    .INITP_03(256'h6DEA127BBB16817A59E66229B380B69F8C258E373D2DE5F9ECECC103DC3C29BF),
    .INITP_04(256'h8218E472F860C547B1135356C669DAA10A36949A8A64EED4683AA0403F76568C),
    .INITP_05(256'hB436F125FB0956035FCDC62758550CF8B0E11C233CFD11D7D8DEC17D8583F3DC),
    .INITP_06(256'h216431C26AC13FA7C359234F52DA7D4D9A5329DA861E8B78DA410351701ABE84),
    .INITP_07(256'h7279516955E5940D4DB4D4377FF3DA789FCB3EB3994AC867AAFF02DC331A0472),
    .INITP_08(256'h413E22AF7D59F75680D30684F5E77AED6618197CCF7F3DE2E8B435EFE92FCC43),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0DDEC6D8D7C546241D8114AC513D954EDA9B2BBDA5BC7935875EB2DE4A9BF423),
    .INIT_01(256'hC89DFD8136A8900800BC1E4681C3CA66CF6CB7356E08B0F2027C3E9834FFDC43),
    .INIT_02(256'h2DA830F2BFE483CBB18AE42BE03B3570C16975B650D20D66E2D749B1AC6F8B8C),
    .INIT_03(256'h00739EA817228264B14E8752DCDB7A7169D4CE0BC54C6ADF7C3DEFF8375BFE9F),
    .INIT_04(256'hF787D493570B48CB5E84B110C5F8C666FEB490E71DC1383974FE2C764AE63E28),
    .INIT_05(256'hD07C5D7D4426FD6B3D3D7DBDCA0EE9F7A071DD137484780321004D86DFE0D2D9),
    .INIT_06(256'h4BF7705EB7B67409A2DCE60B974E27C018CFD3616366A657C26DBDB6DB7C74F9),
    .INIT_07(256'hF635E28E57CCFF7BB186E461D4D4165A1C7534AA07E72592378B34CE9FFF5869),
    .INIT_08(256'h04E6F22CD68C3DF648AE692D3943221989707EAB62845C61EDF76F69E8391B1A),
    .INIT_09(256'hBDE27657B854A7F6D98E29AA83D9C5285A5F84A3E56B9D50C2262AAA65006878),
    .INIT_0A(256'h162DDC8DCA459590DDD5C630B9EDCC4A57068640B59EC919F5DA654305B9546C),
    .INIT_0B(256'hB00B4BC2344CD206CDA9E32150B9510F189324CD8D35EC4934F9C3048AE5F8C1),
    .INIT_0C(256'h3750E0FC8F88E6506AEE1EA0018C25DBC6E51B5BAEE6F083AA829E09CF3A66E8),
    .INIT_0D(256'h29FEF31D70C6BED3C91AB007F5C2783A98ED3DDE4CEE0F530637ABC530111C41),
    .INIT_0E(256'hA5ADFCF3DA49E03DA7F995F3257CBC54D653831921E321FDA4EBCE46E5056765),
    .INIT_0F(256'hC4772BF249E58E92D53BA230FA425B6C8932253561A9FC8E9150A0C876DF4EF8),
    .INIT_10(256'h62D2B5C67B0D4911A2F7788E99FA069CEA678E20A34578C3BB52C567AD2B053D),
    .INIT_11(256'h533396013B922FA611B0488797D9C0A994205C7CCFA1CEBAD41927D1065DD409),
    .INIT_12(256'hD1A8DBE48CCB673433F6D9A67C16D112650DBCB502B8E872609C2BD34F7AC3BC),
    .INIT_13(256'h5F1EC258E6EE84421F388680E0DEBA7D75EDF3AF83D1FEE446BE530994DE27EB),
    .INIT_14(256'h88898E531A50574F3BFDCC0780C83C73F55CE38E2C0886A2D3A3A94D98C41D46),
    .INIT_15(256'h73F05E0CD5A919F4614D0047F69ACB53D714CCAEE91449D80E149D2814237758),
    .INIT_16(256'h81B43A2C26B43C9E99B21BB05273B401FC37432139BA939707C0DF6F8D973524),
    .INIT_17(256'hCAAA19658C7B495576657C36302146C127F5DC0EF5D5D4701F85E1A832BF74E5),
    .INIT_18(256'h8FC12B8EFB589271CCC34CA99935A67AC48F0E9EA5E7E4D5B45D134330622C68),
    .INIT_19(256'h88D0C3E171DEDE92CD7A73C8C0D17C15D8682835A7D37D4CBB8670AA9875EB8E),
    .INIT_1A(256'hA3DED35B2CD8993D9FD8395C861AEF0AA160F8750772B3A74C8A788A77CFBD80),
    .INIT_1B(256'h9FE56FACA03656A18499534B73FF903C1965F41F278318ECE01D00CC885CA3CF),
    .INIT_1C(256'h43934F0B1C925BEF65E753E71EED90D48CB6D6738D99878FF94263AEAAE1E1FF),
    .INIT_1D(256'h76E587BA49788F11A3E0FE92E949A941013FCFFA8DC0874BA6BD14B43CDA98AB),
    .INIT_1E(256'h92400116BABFC601702142832E4F71E7D529FFAD86F160AABE6B09E23AC60C41),
    .INIT_1F(256'h05B2C20C3F53089B1D161C14F147D45A64164288BA9E41A4833EB70460580D1A),
    .INIT_20(256'hAFF881EC2D2050E117A454748B89C03059B725CB2F73D1A8A36565B752C9D74D),
    .INIT_21(256'hC7CE2CBDB477670932D91A57ECC9DF3E476CF84C4BFF42BBB0C7E21D42D85B53),
    .INIT_22(256'h2095CC10B35428220F10763EB5DC8A6A9B00EE34DAEF3C31B2AC47A21CFB312D),
    .INIT_23(256'h4696554D5FD33BE4A7A13AEAC64C855652B7D9D936320CFA2A7CB450DD2698EE),
    .INIT_24(256'h70B8CDB7024DDF92CB118B29F7756657C97DC5F9B5E2E53E3B8BD1862DB25A75),
    .INIT_25(256'h1AB7010271B2F6D0302C07B63E181CAC868A758013B6C0C6117146B4E170E497),
    .INIT_26(256'h372311A2280751D0D5B7A30537B85AF3642B57377568513869CADB541035AD38),
    .INIT_27(256'h3FE120235B2BD3EF4C568772974A9B8BEACF9A943ABE2062FC8E628282C33B7B),
    .INIT_28(256'h98DA22A58C40739B9950624972CCB9615B2DC5110F4CBA366DD955500628866A),
    .INIT_29(256'h241CFF3EDEB78C5B565476F886F1369AEABCDC9E66C40CF06B8A547AAAA1C85E),
    .INIT_2A(256'h6B8601D68EF9205AC68160B3DC294F13DD3F1953E2322CCBA6432DB6F1563CCD),
    .INIT_2B(256'hD01F1D65B4C5C8A12926586C0F6DF520D674DFFFBA18C6602D0E00B7C6ED6E27),
    .INIT_2C(256'hA9B89925721CB51C941B1A351D63EE84ECDE840741424B9EE09B951770051AD7),
    .INIT_2D(256'h4B5763A00A4C00E33B100F716061CE60DB4E2A9D1788011AA29F5579F2216308),
    .INIT_2E(256'h40F82CC4A941A1DCD60F8DACB1E65F12934C86D3491BA35F6FAB29869C41BBBB),
    .INIT_2F(256'h55213B12FDE62E02BE5014C247E7171BD53C49169CC9AFCF0C7E86865714B989),
    .INIT_30(256'h6E393B65DC12AE8CF0D5FD91C87592EE066B21BC756F7DBCFF9F8C1C906F456D),
    .INIT_31(256'h4390B2C3571BE796F6F65EFB172AF0A581C8944044BBBECE4AED20601F8BA1F8),
    .INIT_32(256'h527380834E7DD7E4340FD7A15F691E54F3AA240D48C06041A21FD433426E20BB),
    .INIT_33(256'h39DEE6001AE426832F323C257E653B933F62E1543199BFEB4AF54B98F62BDB0D),
    .INIT_34(256'hAC8879104A4F6B1C94172975A57AEE0EEBC2B7836E80E25050D61F7A443D1470),
    .INIT_35(256'hF26E903C00691ECFDD3B942A23FFCE859609941BDC4F8C7CB3FACB144CFD046D),
    .INIT_36(256'hED557709A24896A6813BA20DF127C8B543109A36E429D8351F72B97C2A56AFEE),
    .INIT_37(256'h75B916BC9D1322C489A48E6ACF59C52AB274E3AE91986DEE10F9D5F30D79C1F9),
    .INIT_38(256'hAB36B9D473D6D676DF12956F504A7E56B8FB8FB1DEAA38B3544D17D4CB119711),
    .INIT_39(256'h49BDF4B0ACE88564BD6571442BA7E2BD7E28E96CCC06AC95B485884780AC3BA2),
    .INIT_3A(256'h3BCC18B33B48D82C730B2AC2019DDC8E57830E36E46A64EE62FFCC678EB0E0B1),
    .INIT_3B(256'h4CD6C9569E656D266956146C4A218B11D830D009450C34C818F5793BA73FD6AB),
    .INIT_3C(256'h4E86473F7BC2115C6F0842451C119F41AAB22852585C3D5DC93F3D3DF8898C46),
    .INIT_3D(256'hAADB215296194604BCACC5A984D58E879EC0CEDB269CA40A20D107A737ED1A4D),
    .INIT_3E(256'h2AB8CD2FD3871A71092852EFB3A7F77147D3C3737CEBFB4DDC1C2C0F65609067),
    .INIT_3F(256'h939A1F863C353AB9328B6885830E0033B3E5DA1940E2080BA0DC795015C882B4),
    .INIT_40(256'hC89DB25731068D464FD0FDE58A6ACCEB75B76339AA973023DD7AF2C144029A75),
    .INIT_41(256'h522C354CF0A214FC87B69ED4D76DF0213269AD4B96393C28E0C240ADF455949B),
    .INIT_42(256'h4549967872CFF1F5748FE65BC09E7AAE291AAF7B27467AC9A874EC2207794DB1),
    .INIT_43(256'h8FDFFACF4C9327AB4F4CD361ACF552B860070C1EB2FFA467EB432ABD95B57D8A),
    .INIT_44(256'h58D334FE015999D5564A137CC29D582D997E1D2106BD4ECD971DEF1E5ACFB91E),
    .INIT_45(256'hDCF46BA6540391BC56ECBA9A39ED762592BB1A80D36E53CA799B2E4B8BC19F71),
    .INIT_46(256'h99CC2A9087ADEB9494199694766AEB5510A32D6D06914EB9A5A345FCEC8E0A47),
    .INIT_47(256'h74FA9495566222613A18338789B9113C28EA394550936C01A5C11C623451D527),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOPADOP,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]DOADO;
  output [1:0]DOPADOP;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]DOADO;
  wire [1:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7B8A82D21D4A602FDF0B7FEB4D90A7AC5620AB1482B977621BEC148393F20D50),
    .INITP_01(256'hE3F61EFE8C3B346995BB65A7C6AC0071D6D4A8132E7E7FDEA4E176CC6BDE472F),
    .INITP_02(256'h396EC679D133A4D8D9D43F05CB9380FEE63C26F83BCFB09EAA6CDC7946C0325F),
    .INITP_03(256'h99B966C4E7426FEC050C33E7521E1AD14A690682431E3007FA504B3E20C9DAEC),
    .INITP_04(256'hB3A081CE26498359533473A8B4A779005FCAAAD6007D4E2F4D6DECF559113827),
    .INITP_05(256'h87A047C4833DB0B4E9DE330056916649050C2E4C0EA17EFBB59400840EC8A2DE),
    .INITP_06(256'hD4C3946587275A7C090AA71319110437F79548F4134387D84A9474140059082C),
    .INITP_07(256'hA13814A9232F0ABB60636336FAECF6C481FBA1F117073EF4AB136EB7A31755BF),
    .INITP_08(256'hA1414933277EAF6E0307B62BF1ADE3EF3087CF6B58F2E3515A432329624E973D),
    .INITP_09(256'hFA9A956B98476858A3F1B6C9CEF705476E2A19CDE5E0A6D5FE58CA15036FC583),
    .INITP_0A(256'h2A3980DE6ACFF94516454BE75659FF9968A64871FD8633E5799D01E9F0C6C57B),
    .INITP_0B(256'hBB2D6502F97707BC1A14D4B5C8D30D85AABC6694C6056F78D3D41DCACA38170C),
    .INITP_0C(256'h4DEFFF5BBE084AB91D7C8F09DAC12C76D1703F01AD77E039B33A34589D5B384E),
    .INITP_0D(256'h567796D89926D553E52C80C5C92C96A4D8ECA961337EA1E3D6021A37B5CC60D8),
    .INITP_0E(256'h5BDB5CA6F3E0A12746BABB8271486486FAF48E443C04F9BC06B0A75B948E35A7),
    .INITP_0F(256'hADB1CA21A5EEAF5B76D31D61E48ECCF0E513439B8235DDAAEAF43671DFED1A47),
    .INIT_00(256'hF5BA76D8B1A310E4D4B5FD99062E2D57BBE05E49B0853B8DAD49C191FA399D73),
    .INIT_01(256'h0A002196568F7A133500F8E996F2117D5319D3A4484D2E3C60DF1CC656BAC5FC),
    .INIT_02(256'h6B5B90F609A034437E447E57ACA3AD7AFAD852CB5D74423D9B604C39E2856735),
    .INIT_03(256'hA289F4CC2E1B5F782AA4260D1C7348A63241EB1CF10088417E5A5068F8695671),
    .INIT_04(256'hF269E54B8C0D6BA12C358C5A3BF996B61F33CD3115540DE8300D7C7FDBCCA1DA),
    .INIT_05(256'hF939643B3B8E2CA1ABACC094DF8C8E0881DBCEA0E6382F2524C7F98E21976CE2),
    .INIT_06(256'hC3A41ACA4AA30DEE2A6015D4BDEB0A1D439FBBD1E72E3B80C93FF0B9D9CD467C),
    .INIT_07(256'hBFB737FEFDAFFED06815698B94016C8D9D1378F0ADF06C0DAF31DD10A4430127),
    .INIT_08(256'hBD673FAC65C703F2D924B118CEF19DACB82FEBC54CB14ED0223A83B24C1412EE),
    .INIT_09(256'h5C28ED259DCD38A6A4A4B45AD6616824BFB9AE75F6C27E3651255EC706972091),
    .INIT_0A(256'h05182ECE76D789196719591A7CD437AFB75CE44307E2013200E75A66A016A74C),
    .INIT_0B(256'h6D9D9C73A0E1B2D73C7B640FEF6C00F0B1EA07A8541FFFB46B326C0C347DA4FD),
    .INIT_0C(256'h10517E08B7CB2DDB76E1B29D18E6287AD68BF4173B48381FE2E3591B0B4469E9),
    .INIT_0D(256'h77D3DD54DB5330FA43E156F65D1FAC47287A60A03C1AC89F5AA85DDBA6A43093),
    .INIT_0E(256'h1C5EEF58DB4D6C714674A31B741E84F14366F7F725E9F7F5FF838992B53B2118),
    .INIT_0F(256'h9A798AC482E1A6D3CBA29D658045B0E60F049CD5D4D6B502BAFF3AC5A3FD9B67),
    .INIT_10(256'h132EF11CF7835012A10EDC5E303382E196F9DCED2B2CC4CD2415AE7A7882C15B),
    .INIT_11(256'h3EBEA4ACE357FC2AA56B65171D550F037DCC93A47CE83389B33B5C526B5B83A2),
    .INIT_12(256'h8327806E5202D4D835967F302A267657BFA84B86AE5AA0562DA55CD23659F057),
    .INIT_13(256'hC71A0333F812B30A25C2EFC50247C02279BD30DEF6FB143F6D0D670A9BE48BEE),
    .INIT_14(256'h2DDCF84E8C8468F2191F46497D3E6F611A0F9A8F7D234C8242092D03FF0E878B),
    .INIT_15(256'h79346FC5F52BB1D1B027D0F39A82A09F9CF39EF945559D178D4C851C7A8127BE),
    .INIT_16(256'hF7271536BB9C9672C42F6D315CA29C0F2BEDBEAA438CF087201069B0EF502E96),
    .INIT_17(256'h2227E959DAE194029F075C659230F049BF0D16655DF11793EB6DCEA84B52521F),
    .INIT_18(256'h37207F1CFB4F1D34358746D48E222E8F7E9F541B35CEDAB35B3BAB801B4D445A),
    .INIT_19(256'h18E163DD562EDA7C5EF8453EFABC7DB527C5AC723A933C7A5446B6EEF592B022),
    .INIT_1A(256'hA99B6C8A8F44854F047DF370A31B0B74ED6A5B3873D048F9F4A2B971F4E83397),
    .INIT_1B(256'h0A4025289C18CA1A31EC6D7CCF0416759361FE5918B64C776F8C87A9B5B0E745),
    .INIT_1C(256'hAAAEB0698D0F51781664DC59B3ACDDC044B216CCF6107957EF4103CDBC6C667B),
    .INIT_1D(256'h728A87F9A8051D4016EC3E4CF01D3AA2FF2DA322DEBCF5CBE6F33CC498EF0B36),
    .INIT_1E(256'hEF5FEF0A9E0E1E47D532432E7D1C6DEA4F6F6EC64931E5D0FD581974C5F34F56),
    .INIT_1F(256'h2695473A26DF34447EF3E09804904DCDC8FF9FAFC4EE795CE72AF10EDD63D069),
    .INIT_20(256'h1BEFD4B153F4729F53352D1D28B6DE88800F7F8BA9474942B83961E4E11723B9),
    .INIT_21(256'hEEFDB4D9CA9716FBC31526DFE34F902E0B7B46AD25C15852A45D65127FF5F3CA),
    .INIT_22(256'h38097ADB27E93D1EF740C4A0E1D9DB866BD566B466150911601FBBE7EB67DF5A),
    .INIT_23(256'h0482FCD4AF9AAC738C104DBA5CC2656AA0C36096026B57ECCDC1E144E699744F),
    .INIT_24(256'h9BA9D3BB95E5E18509977B6A52D672D72BD51653B214B23704DCE0C82166C7D2),
    .INIT_25(256'hC4910C04F38AD0AF3875D84E722DF4042644FC8279CD8F1B94AE151881315857),
    .INIT_26(256'h5F5D750D81170FAB6B567D409FF017BBE734392998258A40A9984499DF1B1E55),
    .INIT_27(256'h90C8D97EB2974BD8D6470D724E4CDFCF913F31E82D5AFA207E672C76885D723D),
    .INIT_28(256'h416A748DFE53DE17726A384D02A4556A7F9A7CE3EC988A78213181C431FE9536),
    .INIT_29(256'h3A56C32698CD1904FF039AFD963CA9454F5AF55AC0ECB6DF2C9E0C5CA425964A),
    .INIT_2A(256'hF2D21D1FB82DAB7085DD99777755B79CB6D51600A0B873391D8F8A4A198E68DB),
    .INIT_2B(256'h84550B7AD47D58C7DF6693727618761125AD400EC942ED37326F5094B7EA1717),
    .INIT_2C(256'h28BD9915CF52B2526CB69B7A1AAB1B4546C8BB53CF521A9E62A374288D1348F0),
    .INIT_2D(256'h05F6D892EDA4298F5E8ED137DB141B64100E3AA7CDDD85A646B5E0AE6629A570),
    .INIT_2E(256'hA6A115B74B6856B7CE3E056E91B4F851E4137419192A837DAEFCD8F96D93F7A9),
    .INIT_2F(256'h1887E8562018D28CCCB48733E0AE08FF6D0DD99E61D2ED85E2924DE426B82938),
    .INIT_30(256'hC8C337CA31A5D5774105E4CD239B0DA3F2F4A0B22C029440851B41B1927D1D96),
    .INIT_31(256'h6CA5D4AFA29C1979257C2B9319C9CEB1DC5ABF8F4D7F6198E8F2992DD0E1D9AA),
    .INIT_32(256'h9BBDFC700FC7E38A462C0340A9E5B124316299ED841E2BE914A5F92032152CED),
    .INIT_33(256'h1B603A18A6C3F110665A70D3E176446A0EF392F9F45783568D7D43936C9330AD),
    .INIT_34(256'hB4BBAC5243FDB2C3A1C6BF0AC0BB806320FEB50FD0FE7FB785119558FA3B9812),
    .INIT_35(256'h2492E8D135910EA2E285780B1EAFBFB7515DA8B2105BDE04660C2733DF1CAA92),
    .INIT_36(256'hF99DF5C700CAD1C604ADFF09331E0C9B35C4AADF030E36953088C5EC795B2069),
    .INIT_37(256'h0F379CF66E9029C262DF01B9C5229C48B1DADADC51D34B6CB0BFE293ED574959),
    .INIT_38(256'hE44B742B61A41C195E1D0AFB7E1FA2FA20FE70E33F6D9172643747884A2E4580),
    .INIT_39(256'h421A72664DA25F3E42911CA527B5A492F4D14CF80D050AAEBA1C1175F7743E6F),
    .INIT_3A(256'hAC431C01E716A03B9FE3FAEBE34C1E6F09B29DBF151D28C453850C0710857072),
    .INIT_3B(256'hBD3AFCF2D706A1ACDBEBBC4A869633ECB3BB6B9D15AEEBCA6020126D75870152),
    .INIT_3C(256'hAED1EF6CAA4870C02F577294A2D51AA6B0B80B78E9E867D4BF5E65630C07C0D0),
    .INIT_3D(256'h5662FD2E6B9E49F68F4F876BEB11B05EA78F028A2B334FB233F1C7C850D37AE1),
    .INIT_3E(256'h33DA968DB0F0C415F2EEDCC773440AD35382CDCDD54FA90ADB07E0DABA149883),
    .INIT_3F(256'hE102A35339005A47178F968D72E15C46E92077A6E71D4DDC35B5976A1E1ED53D),
    .INIT_40(256'h565CE0C26F1D55E22637C1B93901CEC4BF385AB8DAB346AB975A291E16797B69),
    .INIT_41(256'h55031039AE986D21AA04968A3E17CEA2BBAA7219BED3E6292094F5833E9925B7),
    .INIT_42(256'hC8022996E58308E6EC0AA892CFC8AF5A10A7191A8AEF9BB6F99CFB233886AAB0),
    .INIT_43(256'h82C4692A360F93774091A9DE5E25FC6AF5A0BE4F9DD4C29798FF16A66F251950),
    .INIT_44(256'hD9C8896F248E6A6FFF19E786D3C9630028207851B9EC39A70F515F6A4EA50151),
    .INIT_45(256'h2F14682075611580B82B56F37B7AE6665C462353391810DB85692E50B321C434),
    .INIT_46(256'hB83DD06619253A69A9AA5D0BBAF2E8F019961EC75DA8ECC563478B69BC67C147),
    .INIT_47(256'h8E6F2E8680819927F27B6856461AA1059D26F6C43DAECB6B368789F7D4CA5EFA),
    .INIT_48(256'h8BF3007D27384FE69E23921FC506C941D09FA24765A367E1C8A75598800507CF),
    .INIT_49(256'hA234160AF8A93C263F01B3760AAB77FB39422FCFAF370D1A47FD8199DB6C39A5),
    .INIT_4A(256'h54B68B584A73B9F1C2E2C48A7463D04193073AFD65DF860D1B617F819383A1F2),
    .INIT_4B(256'hCE73D7EFBF67863DBC11BE86C1F35C898FF49481CB4DB70747D3291890835700),
    .INIT_4C(256'h1AF1EC4D62395D3D41DD8104B0D7DC6427831E5240F1652DE2D84D408E07993C),
    .INIT_4D(256'h659361487DD7DA246AE687B722EB16B064D16D6221C7FF478C7DCB5796E7593E),
    .INIT_4E(256'h8DCC6F0FD5C00EB3D1EDD80DEE408199215AA1E6D11CA12CFD737F4ECDCDFFCC),
    .INIT_4F(256'h66AE9F5696B47C5EBB42C0AFA6B566D29037E68B3C922A24E9A969E8FA638FEE),
    .INIT_50(256'h9B18ED848274A3472B47774ACF84E6AB14045478E94BCBD5745B2802034749BF),
    .INIT_51(256'h56B8DB79F28E211751B050DAB33BAA2BACB6B3286E5A1012324F380BE29EAE25),
    .INIT_52(256'h1294C653B98F2FB2BE9CA7B317A238BDCCEC4C455704240781228412F46415D8),
    .INIT_53(256'h989E5D7D20B67415F532293DA5C5756A64E62249117B7792E24434E70ED3C398),
    .INIT_54(256'h2C6FA668CDBB8BA75D9DD2A599BA71DD8CC359DA35B0432717EA76E6428F798D),
    .INIT_55(256'h201F2A77188EE8C3444EB45D2DB2144B0B4E07BE35924DE671D472431C524701),
    .INIT_56(256'h512A362AAFBDA04B986EDD9A96F8B182BDA57D473E08C69A36C052757215C8E1),
    .INIT_57(256'h4051C1AA075335D6EAAEBB8E1FF4639916D9011F7785248EA6AF1287B6B7F3D3),
    .INIT_58(256'h543ED838AC33921F139044C0616C7A8895868D0B030EC1A79A91B6C13E40C032),
    .INIT_59(256'hF6C724448CB01A6DB03D2D3D987FE7418D293AAE2E35E71F9C2B0F593673B960),
    .INIT_5A(256'h0C7E36EEB7D9E6EA0370FDE70A29866BB74085FB0975FCB244126632CEB4BB33),
    .INIT_5B(256'hB6370BEF4DA65100456D800C33BD832ECF3928D6426E4C218724F654B6154829),
    .INIT_5C(256'h8A292B1339482799A83AF4793F1064133AF95C90CEA246F6CDBC0A5DFC3365C0),
    .INIT_5D(256'hEF5DD9836F34EF3BF60BB737B28AC21B1C327129FC4F37600E41D6CF07F49E8E),
    .INIT_5E(256'hAECFA9FE07B8A4313409DD1F7D91F52529AA9AAA9B9A39640390A880B42B64E9),
    .INIT_5F(256'hB89DE64D47166004161AF905795D141D81934F6EE36FC077599B7F4237BB5904),
    .INIT_60(256'h6C9A67F41CAA2B43F087379EBEA4637568934C28F5DFDBA227D733FCFCFE1EBD),
    .INIT_61(256'h40F1F78D7F1C73A7686AD9A0580F6A65A162599336F3539C78274A6729586691),
    .INIT_62(256'h681966EF42206E4CDCB81092B729DB7C1D162A14BF6F9A8B9A042F03B79D4880),
    .INIT_63(256'hE9625EA0B4026F736134C6ACBA3D4CD8E41E73F44751A9EFA72861288F7EF78A),
    .INIT_64(256'h4ADBE8BD121FD5B6A10E08E234887A64A57ACF04D17E54BDA6252244FF12746C),
    .INIT_65(256'hAB3271DDF8AC9053F3C2B937A488C7D81ECDBD74CD569364220078BCA9357B6E),
    .INIT_66(256'h82E30157FE7E14981DE3FA1581EDD2166CB2937FC4420BEC98B84E4AA67A1C30),
    .INIT_67(256'h93A8CA7896550A37C9FDD4F04C57A3F312A0871F678B1EC1BEC5660B4657038E),
    .INIT_68(256'hFC8B6E51CFE5A4A087096E10123D36B437E46DF090CE38E7399F54541E28203D),
    .INIT_69(256'h715ABB665D6C74924A752DC803688D4435D2AFA47AFA40700A2341085A15E1AB),
    .INIT_6A(256'h9E7DB17A425D51C7D54F0B3D2B8162576398F0D6E4C4742E875153851801E88F),
    .INIT_6B(256'h920C331EFC3ADBC43ECF2D24B3CD2BA59FDD404A19F383AFE76E83CC03F36D24),
    .INIT_6C(256'hCBCDF96338A9603CA4EBE900AA33152D6CF88DFFA5DA0454A60697675D251531),
    .INIT_6D(256'h3AD03CCDD7ED2EC656858DB472742D294EF9361FB79186E25EDB3DBD86EFB604),
    .INIT_6E(256'hE8FFC1298BFA77C87B37A6E30DC3F25603E257A01432332D8019497D64D074B4),
    .INIT_6F(256'hC769E97D8A7B07E4689E1D15367D6715D7CC3056103BB07922498DADA26FD86B),
    .INIT_70(256'hB77E3E3E0FFE61BBD78129C40FB70419EB5D4763B95BF6029196057F0A4BA5E4),
    .INIT_71(256'h9A6B0308265AE923335389F1EF67A62F7D1C92AC43DD2BE1E2D81419A9472529),
    .INIT_72(256'hAABE16823A9DF9A55E911A3081A67AF1ECFE2A5448CF2A2F024B7C7998A6B64B),
    .INIT_73(256'hEFE27599847C42FF544C71166CDF49CA75FE5FA08A7D4DECDE32FA4AD4E03888),
    .INIT_74(256'h76E531CA1606C9D6B2A12D6A51EDFABCE28AE27ED19B26B049949C4A404C798E),
    .INIT_75(256'hEAC26655EA48583EA8F09E335AF9FE170ED219ECA8BA51DBDD8688867760480C),
    .INIT_76(256'h773FACD74DB76A6A2E5FD665AC4E7B4BDB4CD67BF36760E9883947D952286D71),
    .INIT_77(256'hAF44CEADCD402252CDB3A9C67A19C2AD337AF000A97C5586AB0F280DBECD06C0),
    .INIT_78(256'hC2D495E61DDC7512195DB262F67C1912305484C7D4A45A292F19FAF4913523D1),
    .INIT_79(256'hBE52FDD2D707D9FBF97E14FB156427FA2F8F0CD2E71ADC9E2DC12147A2A75A5A),
    .INIT_7A(256'h658503F8530E44581E274DA78ED0B04A2E29B627E661A7C935704E4205CB58BB),
    .INIT_7B(256'hA7DD58AFE38FD7BEF65CDA9E5155635C0F3BE036CC118D9F7B3B283CB87FFF7F),
    .INIT_7C(256'h11CB2D7C1C7EA74CAB5512712EF2310779547CB34C75662D448BE91261CAF9DC),
    .INIT_7D(256'h97A5F4E9A372B747530E331A14EAF6A29559AE78818988838B3EFB61298B318E),
    .INIT_7E(256'hD35DA0E7F6BE0C227F43ABBCC75D76F938F69910F9E5741C759DA586DA7DB10A),
    .INIT_7F(256'h9A056139E28FF4F10E47EEC333E071B688ECF4915BDD65F58329E421C4797647),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized1
   (p_135_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_135_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_135_out;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h6EEAEDB7C8FF05D32D21E8150A0EACF13591061C0F24077A806FD70291FE3398),
    .INITP_01(256'hB07976C8DA9C3E002C2385BD7984D0FFE5E5A97F6B2F128EC3AD228D3812FEDF),
    .INITP_02(256'h599F186E58911D65DE3B16E73FA4D456E58360D40ECCADE97063435E016BB361),
    .INITP_03(256'h29E56EC61712FA89FFF78FE6AE92EA47F6EDD1B0B1F6F9FD4057567D64B0229F),
    .INITP_04(256'hC20B478CF8C631C3483C86097AC5108BFCF83E60DB826604123D7EB73394C2B6),
    .INITP_05(256'hECBB66AB78318353037AABC4942B2C5557A3AFF297EDEDFF18F34482535197A0),
    .INITP_06(256'hC86FE69B89029E89D1DC7DA1E79338D7671579A03F3526038D192128D860A306),
    .INITP_07(256'hBA193D86BB3CB3C612B07EBF9B252EA93BCCC5880106E4D6A0AB5F307B1D3EC5),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE6CFF47763C328610046EE42273ABB345C2889BE7CAFAFD95FA9D155DF9CF42C),
    .INIT_01(256'h12D4E9042C595A8328A8351AC84B728D82149AA351858C6EA0DDEC7A0C7C295A),
    .INIT_02(256'h7337875D63BAE52E08CA6EDA8DD02DFB5BDF7C25BAE95C237CEC42C37C1DEC6C),
    .INIT_03(256'hF110342BC84F8C7983076550694D534A1831F238C1A24B42A6991117CF34E1E1),
    .INIT_04(256'hE1FC205F185C56F9795E3845C3F7CAB197C60B39DB155D0EE4884EADE9660750),
    .INIT_05(256'h7A0BA2777475AAA88F0D355E3BE87B4D7BA6B68C035D33782F9A787E1E95410F),
    .INIT_06(256'hFC4614A5BEE38E7D4EFF7AB567BE5A06E6C06B831CC805F619C9827346F68A06),
    .INIT_07(256'hDCB898654266F5CBF9A37F3276896EF371C533352C7575D7DDC27FC02D62771E),
    .INIT_08(256'h36D629BE5B19E255E77C324DF56A029B74AAC51AA1BDBF7F18C7D74DA6C60854),
    .INIT_09(256'h8C137FDE95A3BF9E2E5FD4A27174FEA86D2A965820A9CA1478F96785FA974D45),
    .INIT_0A(256'h3EFE852F325E3470089325F2562CBB69DA70736ADDFF7054A521E8AE6D2998B0),
    .INIT_0B(256'h6DBEBBA348F64176E224A67B8A0DBBBDB1F32E0F00DEA42AB0BB4F0F1CBD6890),
    .INIT_0C(256'h639F8CCCBAB20431AA81188372D820EC7C9650E0E1EB4FEEFE2535D949DFCAE5),
    .INIT_0D(256'h8712F7F584C270BA870B70E29E5286064CC97AD2D0812FE61DE1AA7165DDCEA9),
    .INIT_0E(256'hBFE961D404131AFD9A5EDE7E5E482B2764C1447A04D0C2C1F6E3224EDDE5AC16),
    .INIT_0F(256'hA1A7064C70027872C8B26B831391101A02B728CDED26FD910A8EC7D40A746F47),
    .INIT_10(256'hDC5135A5AD0F98ABEE91010D6844661D54096F99AF94EC96638444D1D8C67A82),
    .INIT_11(256'h033F5CAA76DFBCEB3C3A68DA4277A26C538562002096BDA129F9AD5A572E97DB),
    .INIT_12(256'hF914D262971F25D2E8A0BA6DE74370C1B1D6F2F55F2FDCE7D061EBCA1BCAF88E),
    .INIT_13(256'hC375601FC02ECE4979DCC099B323A2030EC4066045CDC363720FD2C4F14F542F),
    .INIT_14(256'hCC675F22CF033155F4F3175BD6D9E0A4DD2D77F858F3D5CA8A10934D79635553),
    .INIT_15(256'h758F599E46DE3E42CC2C37969960F7A186146A15B4D581FB52B98675FC1B851B),
    .INIT_16(256'hBB62BAFA34DAA0E893139AD897BB55F513F651EBC292C1060D4EA4606C6AE445),
    .INIT_17(256'hE29D3B751CC1BE55DCF263B3BD851CE1EB08BC858F0F3CBC3C70FA75CF47CA47),
    .INIT_18(256'h8C219B242CE372CE1A4E7EEB670F9B7951B4B2003CA0216EC43E577D362552FF),
    .INIT_19(256'h78086F840F01A63A4229AF2D4B90D59951B4D019FC5BD2D9CABC2A3C66E94792),
    .INIT_1A(256'h47ACB235BCBA08452EAE53070432078C7EF6A54F835B5A73963CBDA7CDFE575F),
    .INIT_1B(256'h1F06C4BC40700AA177DFBFFA567B246A9DD3E7B6BA46842E05385A1D0C86E05C),
    .INIT_1C(256'h22C032C1F618F7021A69DDA847EE6C573ACF0E9BC21E1C85A00B4FB3569AEB1A),
    .INIT_1D(256'h658CDE95F5ADF2459BB5F75310827299947044EDC47A2B4060244EF51E8B098A),
    .INIT_1E(256'hF8AF23189E5DF94A8C9BE06CE1C48DAD952F13E8A1B0B1CB8D6D5489853E90BC),
    .INIT_1F(256'hF710EE2B445F244FCBD4CAEE8A914640FBBF9BE21126FB2290EA4C1581DA75DF),
    .INIT_20(256'h6F8677F1488157927EF58E42041C80C84B152743C98370CDDEF9E0FB69004FD9),
    .INIT_21(256'hBF2FA425C4F937F03078439B77A4D130263FFE81E35BFFB41852B42F8F3BAFA5),
    .INIT_22(256'hB08BE21326A6052EE36FEBF54C7C1070729871FA1322368C122553D163E14E11),
    .INIT_23(256'h7C773AC42A636309FF99A021EF812CAE8C33BBF4355E3E5F06AA8752D5B4C737),
    .INIT_24(256'hAE27398E3B6DF8CE9B6E17F3FF6B5E2420151D66BCE4A5EBD50E118882CEF49D),
    .INIT_25(256'h9A4906F167C148974439DA4995EB1EBA1D959DF85BDE0A9F97A9BBCA1949FAEC),
    .INIT_26(256'hDD6B84EA2239F76C13D17731A5A72518FBD37255A8F8875B47C7AFB7DE9A8C05),
    .INIT_27(256'h5A9B1CF1F905F20FABB04A5553B8803C569FD4D4C8AB2D288D92EB8D3C1BC60E),
    .INIT_28(256'h44DB1ED030C4D5A808E2C00250E728F981A0916BAAD063DA3AEB77A3DFEA419A),
    .INIT_29(256'hB7ED625CC078517F83F61B2BDCA3DB8E09750ADFE63AE0FB0ABFB6B5A4585286),
    .INIT_2A(256'h2D5CC6D976F6A019402CF2E4F2D572ECA389DF7DEA88C88DCFE951C6B74F72A8),
    .INIT_2B(256'h27FA74F4B2DCD223D146A281490E6D0A20ED62A0B2E4FAAE14B1DA23A64B2D72),
    .INIT_2C(256'h3DA464BDC21F169EDC6794BEE699876F9E1AD8B29E686C1073DE8599DECC4589),
    .INIT_2D(256'hEB299A5161FD75CD74C3FA8B3FF96DF11307D2131A4329D3943FA147C0B9FAB0),
    .INIT_2E(256'hE2973AAB96CBF75A5E6A2601F75E0C668A81B66E612F879A96F9C8A41C2CDAD4),
    .INIT_2F(256'h43CBCE5692940368981A350A0D3F14DE76CCAC2B31E95F2FF96DE19CBE015036),
    .INIT_30(256'hEE637D71D16F60322AC3FA825C8B88BC51BC8B251632295D02C3582FCE17DB09),
    .INIT_31(256'h5DD6DA831FBA5A226A214CC30113A91C05D35F3EB949CB9077FC8C41BF98385D),
    .INIT_32(256'h30B55960D4EB890BD9BA0AF40B50F414F35E766C9333D1A9E870FF19E7A5D771),
    .INIT_33(256'h0C535D785C6D0E448C50092AD8E685601AF34554E1EFB803ABDE1CA51088CD51),
    .INIT_34(256'h28C8448A35F19500A81D6C3052C7BB3BEC41BBCDA0818241C396DDA3724812DC),
    .INIT_35(256'hCC66D01A862F9564B13F6C0F847FF2963BBFAE57D05E0523DADE9B26A8581C77),
    .INIT_36(256'hD578B1FA0DBF2BD1BCBEB575006BF838955B3E351F77CA784CA3DD3ACA9371C4),
    .INIT_37(256'h7908FBFC327DE2862448E795C96F95FE52D1C28ECD3052A1D95A44607D74D13B),
    .INIT_38(256'h3B847435DDAF8C68998E26D11619D8C207E3FC10C2DB8EFD3E9A24CFA195D11A),
    .INIT_39(256'h5D0F4EFA67AB3E0026390FFD55C85407EE826D5925812DFF85942AE66CAFC85F),
    .INIT_3A(256'hA312DB8DA19F8526CF23550140B8BCDE8E553E81BFE9D471F8E3164E0B602E93),
    .INIT_3B(256'h92E69DEB453194D56C87CFCF8CCCA3BA989560EDE2A832E8FDE3A5F40694FC7E),
    .INIT_3C(256'hD8E8C2EA9AD834C18959CC1E5B99C6F2AB12D15152D4EDA9514AE665783F40F5),
    .INIT_3D(256'h23E1B072E1476F4E15F7F9F16D47C5DCB4E811F24B63C1CD6CFDBFB53DFFB62B),
    .INIT_3E(256'h4CAC87C4FC48736DD28ABC9B2952B6BA27681AC908FB9CD43990C472AD8FA2F6),
    .INIT_3F(256'hB635281239BFC956E0FC4A4A058B3A37281FE62719A3E74E1617559FB975006B),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({p_135_out[34:27],p_135_out[25:18],p_135_out[16:9],p_135_out[7:0]}),
        .DOBDO({p_135_out[70:63],p_135_out[61:54],p_135_out[52:45],p_135_out[43:36]}),
        .DOPADOP({p_135_out[35],p_135_out[26],p_135_out[17],p_135_out[8]}),
        .DOPBDOP({p_135_out[71],p_135_out[62],p_135_out[53],p_135_out[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,wea,wea,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h9C225D16177EE60D5F442C868D93579A5BBE4A516D2E9E5A8E2C8D014F71518F),
    .INITP_01(256'h2D730EC250B7FF31D8BCAA840D9FDD3020FF92100ABDBCA32D13E4ABE2336F52),
    .INITP_02(256'h651E375453411BAA5555AB2D064E5593E1ED2FE61C924B08003C3C1D5B33C658),
    .INITP_03(256'h170FA21CA98DD1595B1E4374D038360D24F43FCF914610D8A9C6E1F167E485DC),
    .INITP_04(256'h97EBEB1594555BA5177233B9D254A33DBC2868D034951B99728AF47AE4AD3F52),
    .INITP_05(256'hF03A63E50AB4741F5EB470931FB0D62E1BD6EDBEBC744F7264CC970571DFDE41),
    .INITP_06(256'h13BE35361798C7955030A42895ADCAFDCAD95F8AF3D107251052C0D44FEFDDE9),
    .INITP_07(256'h81F7FD2F6C8C624B1CB3F9A64331A5C4508510CCB065DBB7F3F6B80982F71A40),
    .INITP_08(256'h768A95233C3A8BCB0306C22844C22BD8CDE58D22F83BF53AA52DFDE5C8F52EF8),
    .INITP_09(256'hC15034AAFEEC184B896C652C79E71D9F0980B9C4F2B2CB5730C2AA6775FC8DA4),
    .INITP_0A(256'h680533987FD98B67783BAA4361480AA482E16D3DD2AED6418C6104F027975C66),
    .INITP_0B(256'h074B4E9BC810002935E772555712965181F9D8B686F25E8946D2B30F5A01D074),
    .INITP_0C(256'h5E20DBEF043D11142BBAF496AED18FF845EC1FCA05EF07345B585FCE160FFEEC),
    .INITP_0D(256'h6D22F161CCB26317C122A3EF592D16C11D1D902A35B5EE76CBB68D3FE3B71183),
    .INITP_0E(256'h9FFEF20B3090689F58702A8F77EB020762903721FA9F66D6DFDCA8CEAF1E0994),
    .INITP_0F(256'h3BB61508CBE63A4DF3922CB3E72ACCA43D0EA72C6E49440DB569BE9B4617ECC2),
    .INIT_00(256'hAF83A2E2FFC373621E6D314E1DDF7B602C1827CE238D7152DC062914F6DD2BFB),
    .INIT_01(256'h363EA7A48F0A6D40002B9C80C6D5F61D595154656A3A52F562E11B4248467A5B),
    .INIT_02(256'hE51528BCF9B161E30C386686337F01073D1FFA725008356CE39C6554202DBDA0),
    .INIT_03(256'h2777FE51CBD2245A5CEC55A7181778A31445D5C7A82B3C7E6E3EA169A6434681),
    .INIT_04(256'h28517FB3330315C1DEFAC5D705FDCF90583AC8D5A31A56E59922DA19EB9A8BC9),
    .INIT_05(256'h698448BAAFD2707DAE49EAA6ADC56EBB34F6280DE3F9756B59ED6400E84E4EC4),
    .INIT_06(256'h472874668A26464C1B95D1C4647D58C0A3A68C3B5F715D21213208ADE84A53E7),
    .INIT_07(256'h15ABB76CBD38F88758394A5646CFD2FF44214379182311177772519B5E14DF5E),
    .INIT_08(256'hCCB286C45EEFA42F1E10BCD6F6FA094457CCF22E70F08D9F401C95411FC4670D),
    .INIT_09(256'hA7FE8CF642743CA2ED11F7CEDBD1AAA24A6AB3BC1916EB249963D9ACFB658749),
    .INIT_0A(256'hF9B4E59B8429B662621E062496CE2025B72C7367C73129E102C457B00233B437),
    .INIT_0B(256'h77CFCEEB8D18A06842413BEF7D5B01F5F3226532EBA0579A931B2F118C1E6E5E),
    .INIT_0C(256'h49A49D79AA9DD490EB8732B2104CC98CE7ACEF7FFBD12B67B00747074509B1D5),
    .INIT_0D(256'h76C418544A5315D7BFD8F1006BD83577C4F5357F96960ADA5E158DC3FD13C1D3),
    .INIT_0E(256'h1B38AD0EAE208763F6EEB804F842393267348488F3E4C43158CFF2DB1146DA0C),
    .INIT_0F(256'hFCF7DD6E56C8A7016820297A210F5BC44FC2C1CEA9F1402DA6235558F3B300DD),
    .INIT_10(256'h1C56959BF2972814F45CE0993248FEEAFAEFF8EEFC2C75DFE0C169FF08B6BC0D),
    .INIT_11(256'hEA5D7B39555119FB5A68F3A6C5A2ADD92F57CABAC9E940AF0052638CC62A6F56),
    .INIT_12(256'h02C06D58E55C8243D9AC5A9217D0C17AD0F937A9FFEEFF70CD3334E18DFD3716),
    .INIT_13(256'h0B872019B40107D9B7D95BDFED33E597F1C79FE5ECB350558CBA076B5A1B2CE2),
    .INIT_14(256'hBD51CEFF4F462ABE9F647295084C35F10D1180D10663C8772D9C6946898AAFF0),
    .INIT_15(256'h0D8D4DEBA794156CA387D76895D1A907968CF63347C98DEE5D8B334CCAD3AD65),
    .INIT_16(256'hC86551B553A22B9CB6D39975DB66175CA0303061D3168FB9A6B1DABAB97C2212),
    .INIT_17(256'h8CF848D3984A2FD8FE2AE419624E9D343B963751BA53EB45AC79A32729FED494),
    .INIT_18(256'h3C3352181DEBCAAC9586DB5CE7D5B24B545B676BCFC0348A37A15BC95F2D5C2F),
    .INIT_19(256'h312279FB9FD1DB72903EBD253CD6E2D332AE0C39EB1F20418114B1D1E635D947),
    .INIT_1A(256'h8BADC79F02ED63CF63A50869FE8A4FE2BC74ABE29420E8474BE85A8942124F23),
    .INIT_1B(256'hA4386BEC206017471BD4E7290AED485FAF1209DFCB678F2C7BAE0A13680B41BE),
    .INIT_1C(256'h54BE3A9241AE2DCB1EED01272CBE2B68A41DE5443EB4FE8614605C212F5BD351),
    .INIT_1D(256'hED96A622D5F7EB282790870EF997F34B91AC4F0229B74A12636BE90F04E22F5F),
    .INIT_1E(256'h7B9C6D46E434F2207BF21C50DA23CB7ED9DB3269A0C419E4CB725CD67549A7CA),
    .INIT_1F(256'hAC8263B825CC45012EBA27ED885C5D832FBB82E9EF9A1A858D1B54593370653E),
    .INIT_20(256'h10F98F81F5C20A8943E7AEC95064A05768D6867814E72B00D761C74B30865A3B),
    .INIT_21(256'hE1D5967B9710546485552AD24807A3E07895CA1367B8D79F0123DD7E835CDB4F),
    .INIT_22(256'hA07B51C202B5DC59DFB62315B5F0A060BD1F48DA2212051F91350E8F1260A7E9),
    .INIT_23(256'h22BD6D80F5A2E0A4BFEA37C58A74BDBB180D0539E39C851083CCD6AAC80038A9),
    .INIT_24(256'hC72A038FBDBA0C07AE61FCE980B7A38315AF40CB171FDB811896785103EDB3E9),
    .INIT_25(256'hFAC15EE9A0D2657105E59403953C13230FB90E11F8E81F569930964BAD61946F),
    .INIT_26(256'h69622D2D16159E0AC0CC526EF6EEC7816D305AD21305B8303E1DC3727295997E),
    .INIT_27(256'h022A945C96A0DC85CFAD30A4DAEB4633F49EF38E6BA47B4A8706BCA4275AAA68),
    .INIT_28(256'h22AAAEAEFACAF3D897C8A0BFDE79AC869A229918529FEC0E05794C7B71549C97),
    .INIT_29(256'h4619CF912F6BDBD1C0F18003A5407A22036E8DA222EFE8C3B0EC5737E56B6A05),
    .INIT_2A(256'h7A7563E9F4368E02E608462061485C856C498A8A28F4D1C1AB8641C22F5D9259),
    .INIT_2B(256'h5513B8CF77E2766DD7348CE4D71671351CB38DF631A3C986390039B3AA87D572),
    .INIT_2C(256'hBE7AF49F35998151122CA493A49510F41700480C8402321CB69CC14FC268F85A),
    .INIT_2D(256'h826AF1B3F4CD04B340FF41C2DEC9545E878EA184B50EA68D072982B91D530742),
    .INIT_2E(256'h63B730E102903E7C9C78259FE40F8199365B9A39C575F83D3C92DC639B7C3F3C),
    .INIT_2F(256'h747313543AD5AF42CF3CFC9E121373A0546173A6CC505DD5DC7B26BFF95EF05F),
    .INIT_30(256'h31EF008E8B0DE1217B7D3ED5C86E15BD607A34F56729AE9D95ABC491E949B167),
    .INIT_31(256'hFAC142EE4C643DE568E33E6E80B4F9FD23206B41181204DB0E3A4E36D9C18808),
    .INIT_32(256'h826AADB9343C077CD958DACA3701C25050DCF8110AD47CF6514D0C08A60C7552),
    .INIT_33(256'h9D4135427913FAA007D8FD178B9DE7669BC11027130B9EF6F67B750888660CEE),
    .INIT_34(256'hAE001517CF9854C0F3AD67264F9339D951B14BA4ADA2DFCD5C6BCA01D5184C66),
    .INIT_35(256'h730F6CC1337014D45D661D3D42F81A46252CBB4AAA305FEE3CF291C6D0A726EB),
    .INIT_36(256'hA7F94E081A2A18DBB8B1D63DE1FC9DF90E7CCDDF3B46F97048CA21FCA5868474),
    .INIT_37(256'h67E4FC9E5CD28A8B5A5867C54531B32458F544416F939D51B2A9FEF258D538D4),
    .INIT_38(256'h2AE1DE65AE94698E49913EE0BC0CE0DA9963ACEFF3FAA81347B8DF6BA5406342),
    .INIT_39(256'h857175E89395213857A2E8A83F68D969F485242B6BF54B897281B46D869919C0),
    .INIT_3A(256'h04758F5A487AD74472574F1D96B5AEACDBD9FDA341755D1402C5B2B4D046A45D),
    .INIT_3B(256'h99CA2B8B60A81EC2E4B366A8B5EF46CB74CE338AD24D906F23A09EF2680320CD),
    .INIT_3C(256'h8555A64D9E70BA09D6A50E70C54316415345D3AA8AA097B08311444F7DAA9CE0),
    .INIT_3D(256'hE4DAB40C6D82714E621DF64F042BAEAC4467039A412B587E831148FCD3F0CCB5),
    .INIT_3E(256'hD3F7B9A37CDB07E259C6C31053D4473CCF5E5A07A36C752DA533BADB7EBB049E),
    .INIT_3F(256'hFA99885EAE5837A7A2B302FA7874F39F869FC881DCB3936501E7AC63EA7EF043),
    .INIT_40(256'h9D43BEE7B148A3D9472EA5FE1DAE22BBDB132BB7ADC4B634795F21AC548F648A),
    .INIT_41(256'h64EEC2CDE01ACD5C9727292144EFC766EFCDA3E17047340CCB89CE50CA3BC1C0),
    .INIT_42(256'h3091867D47F8382DB25012D3150D20ADE1BADD2FFDA97872F1640FE4F8E9BD06),
    .INIT_43(256'hE94DE82A6FEF6B846739326B5A613609B5DF16C1719AF433E9E5A962129D79CE),
    .INIT_44(256'hD9828DE0439D98B433407FFD31646CACF991823A35433B82D72EF8C8DC1D9281),
    .INIT_45(256'h19E989E6504C27711F2243BE9B87DC462708F6ED50FE2B0DA761EB8DA9B083EF),
    .INIT_46(256'h0C02DD6D99E56B731DE9B979B1DF5309798E575F86DD3A30DF4D929A67D1E4AE),
    .INIT_47(256'h31368E26DC51441D29ACC09C254F41AC2C27B7F22E27ADC9658A89D990DA1D5F),
    .INIT_48(256'h0EB8348850B46DE096625B6DF539BF56B7F2B8B7BF0A61888C29A8FE3169DEDB),
    .INIT_49(256'hEF73C1E9AF42BD58008E7466FF25D6A7368CDC9398E6D7FD808E11510C7B53D4),
    .INIT_4A(256'h101BB18C25817E0DE3718B99E939BB9226F7E18A4111D4D2A779525DB1DB1F61),
    .INIT_4B(256'h4AA45EC69B0085A5BACD1A45A4161EBE068B74D52229158C707BF121C630D2AB),
    .INIT_4C(256'hA7DFD3D5F581303510383C175D2C24528D06B23433579A725025CDED447EB629),
    .INIT_4D(256'h544F787BF2CBC28DD7817B331D403B1B4181ED29089573C6A7120C1B4C036F8D),
    .INIT_4E(256'h7DCFA06A271A5860B67A66BA888CBF45931B259AE9D398CEBA9B41D3D81DE85B),
    .INIT_4F(256'h8A4CD329C2511B841337DCDD293ADDC4288794D3250DF0D496CDAB8B8582DD42),
    .INIT_50(256'hED76C82CB2F75114285B4F4813EE6CC46256270267711C36D1B05EC32864FB8C),
    .INIT_51(256'hEAB6290590D6F7248CAD10B845A44E9C39D3B706288CDBD370093C3D8CE0A650),
    .INIT_52(256'h1CACCC524C6307966E755BB2E045C3F89ED8E7B2ECC81B754330B1C1A51E67D4),
    .INIT_53(256'h22F2B1C10ED0EEDEC418EE2E05917A47AB27B60341AF1CEA88C6D187094CC49B),
    .INIT_54(256'hEB56F204796F1B57CA71034D9E54E7B8CD9798F9423659C9693719D9312D95BC),
    .INIT_55(256'hF10B43B6D2D5923B6C2A29B8510629B27B5E7A468E6C23DCDF6B89257A3DF419),
    .INIT_56(256'hFD61906DEC9247DF4122C6BA3F919ED4F9C8457956CA550779C3E32EA0D53017),
    .INIT_57(256'h10BAE124DE1DB62834EA2E114C00D99203191668C1D0CF9E96662198B8270940),
    .INIT_58(256'h18A1F682E1B5F2585242B573BC6940324FD83B53BC46454EF551DAB48AAC1001),
    .INIT_59(256'hB9D9FAB6A93EF3727DE09DA491DA45BEC0D8C372B6E4298319BBED77F3E67BC9),
    .INIT_5A(256'h7169635DEBF11378ABB41E7915ABAEF13D7C3D67A18138E8D462AB7457C6DC30),
    .INIT_5B(256'hC28FED973394621CE2EE9897567B4A7B1B54B201C8B39967787D42ECE05E3EE4),
    .INIT_5C(256'hDA0080760044C398DA484C6265A859CB944C0F8A63A25479BCD0301F9E57A0A6),
    .INIT_5D(256'h7323DCC8BDB71422469C29FB7FF4D59523E75925D557815D8CC44FF995474384),
    .INIT_5E(256'h7420AF068532EB6213BB18ED32481A02215E948B2FCE8541E42DAC8108978168),
    .INIT_5F(256'hF00B828BCF8B4BC803553E2F75B2A853951929C509062F7DA72CA69CC26B9447),
    .INIT_60(256'hA161A34DC70551EE4A3A7C888B9765B7E8DDC8F20BD310C3FEC72FB45EB2D0EF),
    .INIT_61(256'h69A5951C71CF7A4C8F29846B98DEF74F43D671AD45FDD60B55F916642DCB96AC),
    .INIT_62(256'h25804FB0BB0C6272AA9F04220F34951CF37011C0B5938288A6861534CEAF1D5C),
    .INIT_63(256'hB4A8F495114F9DB4FD7844E848D35600296740F72D90C95FFEE05AD3D76D2375),
    .INIT_64(256'h973A480917E7D295E46D41B2456836CBCCE61C481190917C15893D0BB46EB77A),
    .INIT_65(256'hF5E004CECA342857E5123104A25A97C16CAB62B95A6FD30B0F66B329D35471B1),
    .INIT_66(256'hEA1E7D08A8E4F8BC89C055F896CEB8B3EEBD4F8327384D85D3FBEA086B522F1B),
    .INIT_67(256'hA947AB7E836A2B9BE56BB4FD996E9B286DBADA6E76070CEF13FD7B7D2337E448),
    .INIT_68(256'h06108149C586A587444871EDC01D5DAAFE9FC105A1B46733ED5013846155CF2B),
    .INIT_69(256'hEF4095D1B11CA0EC512EBCC3F9FAD5F3E888B8B3D41179A312DEEB4B6222A35C),
    .INIT_6A(256'hB6D7D39531101D0ABCD9A7D8CBD1817F01299DB17EE681CD4B8C68FD8D138C59),
    .INIT_6B(256'h6C40B3AF0E7A0AAE0D09FA4314E74DC47B6819DAFC6DB4E27A68774319353CF0),
    .INIT_6C(256'h5B60048D65480271FF3F8CDCB788492AFD32D84927F081FCDEB97E06DDE147A8),
    .INIT_6D(256'hAA275BD98E067CDF095AEFB7A8DAA48283E126ACEA2A79EE44134242589D36DD),
    .INIT_6E(256'h5E12C23CD9BD8B7A3E1F750A300DB240F773925D5923E056A0B6FEB75935D080),
    .INIT_6F(256'h35C56E191E02E46A2FB7D8039360334F66FBA8AED1F2D0540BC76FC3853877AF),
    .INIT_70(256'h606ACED2277FB28202B3B36BABADE46013B3F4C917D0226F670DD8A455B09E8F),
    .INIT_71(256'hAC2828BA1E2122B5C964D50DC552B29826A4495283E79ADA1E45C98E29D6FB92),
    .INIT_72(256'h7BE39AF8436698FF9615E24C252BDF443AC40FA62951BBB1040C5C7A649A3BE4),
    .INIT_73(256'hA60FAF1757591F2144FD326AC915C6F547CF3404E946B20B1B2D12F0878AFC79),
    .INIT_74(256'hC080E7DCC7F866B5AEBAAEF1DDD272FAC9A5E5973B48CFFC7C654D10BF3DEFD9),
    .INIT_75(256'hBAF62924B0CA4F701E25E5F640066A26F1F45CE927214374132DF9E08B26673F),
    .INIT_76(256'h9653F667752B40BCAAD7E96A7539478BEB4AA5E2EFB5694FBA5CFCDECB7AF9A4),
    .INIT_77(256'h80D1061B3BDC55CFBEDC8D7CDEDDDA55AD54D228C8F62CE7F6EDA85C52D8B79B),
    .INIT_78(256'hB706553C8B00638CAEF746DB5DB347A4F68D89366A401E2C86A6E93D3557F7A0),
    .INIT_79(256'h0D179676091EAFB661D8DCFB709D996C409CFB7BA43DFDE5BFE0FCA9D6915B75),
    .INIT_7A(256'hBCE7DD21A3D055179488BF6B90CD0BFBF374228D15169235DBA3F858595AB701),
    .INIT_7B(256'hBF3D5625ED5995622C1BDD4019114BFA3D858C0FA2028F549E0A009DE0DB13D2),
    .INIT_7C(256'h44F5E1A87595E6FB488BE3589AEA1406BE6C541E8C2B3A6E1B2E4AE79C6C8AE6),
    .INIT_7D(256'h5C545F69273532C9374F1F091354500B153257E24AB359C8F6F0B501897F4314),
    .INIT_7E(256'hF1598BE96DCB17DDB3B444D0485772F526F1EC498750718B2F280CD42266E706),
    .INIT_7F(256'hBA1581E87CD876BC7E5703F76D9A2FCF7A558FE113F60061D2019289257B7879),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized11
   (p_95_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_95_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_95_out;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h061E9657BB03378AA27F11F3ABFB75AED7E00159128C50746F47F04CB3B66B44),
    .INITP_01(256'h7E573932EA97EA9F319BA4687223F55F15578D3FE13A9509723283F92DDBD5F2),
    .INITP_02(256'h880F3035E61DC68126857975E028BD6CA77186319EA522A45F575E7F769C2A13),
    .INITP_03(256'h3E6ABBD6A7E20A385A54F8A897103E0274726CE16ED345C96395F780CA052EFA),
    .INITP_04(256'hFAF4E86C995C28B446EB37F824828C1B1EC8186C3D543FA6EA190809DBB67C8B),
    .INITP_05(256'hE15CA83CB4907D5F02E53F80D2BEB20EDB61453B65BD1D53FB94C6F409F1AA03),
    .INITP_06(256'hDCF66F41CB8EF554E0D1FB1FD01B7850DF0AA1E680D5A88C6BFE332502BC9407),
    .INITP_07(256'hEA06C3AB27D057869AD711B5E0795091B0F72721A83EE9C333A9A7D148ACB8CF),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h53EA196D36C0F44C482A0DC93CC76292760AAC54827A5B31A29CAEC314E3F536),
    .INIT_01(256'h1919B1B7C12B3DFE3E374C98C1ED1ECC9EF96DCBC63FAB4B2DD755D9F5483474),
    .INIT_02(256'h8B2FF0C645A6FB96FD5DD3AB6FFDB03DF06F28E0616DB011C4C3AC3A5993AA61),
    .INIT_03(256'h50DA8688B8609E2F5529A05A16A720941287EB08967EAD93309ABD641DA23271),
    .INIT_04(256'h21654FB85209A70BA5C04C7D4252E51156F76EDD1C14F5143716AEE54C957306),
    .INIT_05(256'h885151987D2D9A5EB946EBB7AF16FD7854F57969135435EE4560ABE616C63110),
    .INIT_06(256'hF843C718BE2839DCA5E18EFC44CCB1669F98F367221EDEEA93B157D8A1B5E3AB),
    .INIT_07(256'h9C9F9026C896B6241031330ED38A6513D3A6CD1E694E87F759039B93F96AE777),
    .INIT_08(256'hE1E9E194A762601F833D0FDE15ACC577585E3DC02A8EFF132B6E720AC6AE8BD5),
    .INIT_09(256'h2097144AE22BBEDB8B85A0699AE82FFC6CE94873219F337D60CE272594FF00B4),
    .INIT_0A(256'h006825A27F7CA1E013D42842EF364DD59EC72392592CE43AF2F9C3E89D813B60),
    .INIT_0B(256'h1D364D5E8B76A84DD373E414C3BFB8536F6A5A53BA0973DA4534F5BA61B0D492),
    .INIT_0C(256'hB80561BDFEDDD8D3933D50E8E4744732F3FC701A2B5966F146DBCD26255F48A4),
    .INIT_0D(256'h37013F2F30E13C1EBB8748FA4DF064CAE4D31C96BCC56D8DE743EC0BC551F63D),
    .INIT_0E(256'h9B2B2CED2247C2A21A4A89680C541E5E4FE7F50D63BF7BB98C04986F62C9A185),
    .INIT_0F(256'h622ED2614BB1B2B333F2AFED3AB3F10621ABC735B15E3EAA0B6060A90AF0635E),
    .INIT_10(256'h501C50CC6E692CEFB88A7062B84B0369D6F7A6F96BA9DB510C9163D4962BB337),
    .INIT_11(256'hB91AE5898785807BE5C01541201EE1C51E74A2A28FF00EF64665D7D014BC9087),
    .INIT_12(256'hFF48F6264F75A126E863C59DD59CFEAEEBFC315AC75A288857BB8F4C513DCE72),
    .INIT_13(256'hA75083C0C18226B4A43A57F4416245468ECF5EBC0D943D9DB51C6F8A44665421),
    .INIT_14(256'hD09A8E45262124E9F33ADA8CB008E6CE37109CFDEE7CF02EC5AF97326A1D56B4),
    .INIT_15(256'h23D0B9259E63C00FD8C71A446D1D68815ECE332E6C78F2525D3C549171B6D892),
    .INIT_16(256'h09936BDBA5E85F1ADD684D73446189EF56585A9CE17566D8EBB18A133E8CDD9F),
    .INIT_17(256'h181C2B5EC07D034CD59809378697D15DAE416744627032677DB41A460BE36553),
    .INIT_18(256'h1739A8EE3DBBCA66C13E8B981732B1F1439A12255E4F2AE3A33F8ACF4ADDB76E),
    .INIT_19(256'h1B22B7DF5DEDB37EA25685296EEA749D2BD413F98EDAC096DBAD47BCC1CB3F9E),
    .INIT_1A(256'hD4FD1581BC13AA102CC28682269C02FE3A6775562BCCC3D642053B26E6E7C468),
    .INIT_1B(256'hFD9AA69AC1190D0F5DEA299B71224BDF39AD1A649AF897702340036811EAEEF4),
    .INIT_1C(256'h0BCE953A769B060ECC951D21E46437CE06721A73C90A2EF46320DAF45A3BBE93),
    .INIT_1D(256'h89563DDBE35A932A126E0765FDD69DC2083D05B287AE238A82F442F2EBA09E82),
    .INIT_1E(256'h8A19180B7E902DA8C5A0AF1C546E1302EDAA22876A708FE20408B4849DBA6F90),
    .INIT_1F(256'h691A9DAF3E289141D515C01E60B40879B2C2E67EC5A822FE3D089A4BAC6CC1CB),
    .INIT_20(256'hD0D2A20042BAFE0FBCE88DC3199B75A371E1B010C20AD143A3DA3EA68B50038E),
    .INIT_21(256'h20EE5096D0E8E94DB691DED058510213CAA4F59AE81ED23703BD11C13D8F16BF),
    .INIT_22(256'h301092709616360DCEB39871588D042A2869CFD976D6B5800F52554524C7723B),
    .INIT_23(256'hE7ED6AE19FCE0CD64705A76E0A199A85B8795989E6481C2A562FDB650F5CB15C),
    .INIT_24(256'h58A0AAED72AE490B0EF9F4EC57CDBEB08ECC7E3AD907203DDEB49DCA0341F2A7),
    .INIT_25(256'hAE5D20985B47FFE324C093C6A405076043CF16EF9A59CB8A435E3E7887F6DA67),
    .INIT_26(256'hCC9E9565FDA2FC7AE834D44C2EBE3DB8022454372F240CB856A10B1B8BD50618),
    .INIT_27(256'h5ADF4565FF185A840FBE3FA01F9613EB1318BF1F6A7DE41F1EB24BB7F56E0E1E),
    .INIT_28(256'h4D4C06E65934AABE3B907A702BE7D9C1154F7F38273AEBE40201D52DE87123CE),
    .INIT_29(256'hA859A8A5CB2C9A726034467DB3ED31A6F887D35753D2B0471721FCA9F6374DA4),
    .INIT_2A(256'h9531D394DC2E9386A3EAF2F3EC07772164751441DD092D952D70D5E12DEC1C12),
    .INIT_2B(256'h67F97843E7C5BDABED838AC89A67EF4BD2C1D08660F5E9AEBC5B09F13CAB994F),
    .INIT_2C(256'h824EFD5E4002DE7957B5D9ACC394BABE4217F773FD6CF4D035559F4F5700EB4B),
    .INIT_2D(256'h02148CF555BA99663BE7169E36EA37F183A0B2BE24460534811DD70A2542955F),
    .INIT_2E(256'hE64910E2DEFCF0323E559FB28B60C39C65F04F7426A39F33520667B9BDB0C90D),
    .INIT_2F(256'h849288A5474D3E2F0A99F513812EFE232200A84A893D15762E91A13D790D975E),
    .INIT_30(256'hF03535D502A9E47AB748B5A85889DBD38180A6C003D45AAD927F1541F5664A83),
    .INIT_31(256'hF55C21C301F1CE058D603C2315B21A3D8587C4989F5602F645A34CB7BDFD930F),
    .INIT_32(256'h1E2420B6CE78A734920CCFB2B05BCC09BA71FAC94F8C81EDB8DDF80063F927D0),
    .INIT_33(256'hCF76B46FB4FEB7F6949211FC0215D3953E425766DE3A256B4A384428EC2C0226),
    .INIT_34(256'h58A3834AC3604B5C96B3E6B87EFF7936A52AEC7D61521DBDEDB07133EAE5DECE),
    .INIT_35(256'h5B91BA624F7A5DA0F78844AE3AB935FC4BEBDB2295E3ED728E702AFC243B94B6),
    .INIT_36(256'hB5B245D1D7F1E6392E20A24A9790F62EF70722D74C1A9CA14F1CCC742D23D9D0),
    .INIT_37(256'h28EC3275047B4378D98B9690499DCB77B69C78E50638ECB8FFEAA1E183F3137E),
    .INIT_38(256'hA8142359CD52A77C742CDC9966683599CC454FADE05CE53A80BB15BE20A70155),
    .INIT_39(256'h7191B2BC922E9AF06C18CD7DF90291A775E68CD00B05B69CC46D75816EC73446),
    .INIT_3A(256'h56007CD8E009D0C7074068A550ACF76BFB8467A51C736F1B315BE1A97DC55504),
    .INIT_3B(256'hCEFB6D777CF817149F54B2382102A020ED609AADA63C9F7342CE1FC656C090AC),
    .INIT_3C(256'h59C6040EDEC9523B8318119C4EE078E6FB2749C0CA35EF828229FDD3A03CE263),
    .INIT_3D(256'h5B18CE033A998C5F222F6401D3EA8584E3F781AB633D0D18E236455995DAFB5E),
    .INIT_3E(256'hE4D9B42224B546DF270ECC34D64397F8976D5D5F661D6ED18220B14D29AD1CAB),
    .INIT_3F(256'h40B018C6DF536018CB80D6754D3CDB4ED99D9B5863AD5026F9032D41038AF695),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({p_95_out[34:27],p_95_out[25:18],p_95_out[16:9],p_95_out[7:0]}),
        .DOBDO({p_95_out[70:63],p_95_out[61:54],p_95_out[52:45],p_95_out[43:36]}),
        .DOPADOP({p_95_out[35],p_95_out[26],p_95_out[17],p_95_out[8]}),
        .DOPBDOP({p_95_out[71],p_95_out[62],p_95_out[53],p_95_out[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,wea,wea,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h98E8E87910569D526A62946E27ADCEDDFE500795B1223D8022CC3EC304E667F6),
    .INITP_01(256'h6E0D46FA63BBEBA67FEBAEEC268FC1CE461A6CC90A1F3B300D399C08B1775A92),
    .INITP_02(256'h0276996BF8624366B2B30CA0AADD068661EFD95703671BDEB82A8E66F8384170),
    .INITP_03(256'hCA7BECDB4FAAA3DA04C69B7BF55C22E4D4304D36FE943A8FF532788CEBA57C57),
    .INITP_04(256'h2FC44D3BBFC85828695B48E7299422AE47F3D122D2D1898EDD1B73A3968DDDDD),
    .INITP_05(256'h4540317E26A94F335E47C987FD111EDB609ABEC4F6BC69C710F4E877F22A4BDC),
    .INITP_06(256'h55B6C72ED5A3A5AA6FD0025EBF6889B5CE86FC62D3942FBA5E0A7428EC4CC6FE),
    .INITP_07(256'hED58109D46456A73EE40AC246990F5256A9E6E6C69B14288244CC12D85649BC6),
    .INITP_08(256'hB78614BF9765C82DC3043FEFFDDC977042541F6F31A51536FD20D0772998D9DF),
    .INITP_09(256'h017E499266F820448C78459B5434BA009887D4677F9A6C225EAE960E1161FD6E),
    .INITP_0A(256'hAE9A5FD0ACEC136458AA9A830D293CC831D8834B90493258844FD7E93A55235F),
    .INITP_0B(256'hAA8DA09649A4E2BC7CE26E0E4C600AB408E5F440C605B70E53B68B2C2596787A),
    .INITP_0C(256'hBCF9C26C2FF3D72F4255BAB2E92CA5BC1EF05E570937CE6C2288EA6DEF889CFA),
    .INITP_0D(256'hA2FD43B1E262BDADADBC341018CC27F39CEF1F1C7D5204F97A3005334A5A465F),
    .INITP_0E(256'h2AB4FC80505954F4E3853627732B596C46F8AC35E983A9BD9C0DB004D103A9D7),
    .INITP_0F(256'h5D9A3463B26D83CA704F1EC8B945C93818EF2ABE0F76A64BB8FF8A2D4AECF5A3),
    .INIT_00(256'h82DABDA45A9585A78A0614571F5D6F535531DB3C1CCBFE10B5AC4B225D02B8F5),
    .INIT_01(256'h3E682B02C09CC7DE118CD2FB3A0BA487D35CF0007B974B79CAAA0C133F20919D),
    .INIT_02(256'h22E732E60E09A5F8DEBE5111CD54CD513E9330F6DBFD31549A70729A90AA0764),
    .INIT_03(256'hB276C8D9AC6ACB28D037B532A885E2A15B2ACE152338E9A42607093E33F0D35D),
    .INIT_04(256'hB94505246EF20E483B84D4830FD5718A846BC5A3FC735EEB3F343486306979AB),
    .INIT_05(256'h874D2E98B7CDE593682FB651A39C5AE5DCECCC21AC2B6704DDCA09BF2918DBA0),
    .INIT_06(256'hE31BD62B74A3A918FC77FC2D35280CE6DADB2BEBD65FD956D105D95E2099A3A8),
    .INIT_07(256'h2D8D551CA3D5E08AA16465719A93DF84CB6343A1FB6F46587404294486C995B1),
    .INIT_08(256'h2408AE757F35FC107EC2EEDF96BF09F826D5E3275E3A5F08BA9DC96C4316AB48),
    .INIT_09(256'h56FAE002D4E64943E62108ACE6E57E22E84AF0A116BF4FE69AB1ECF5F005C070),
    .INIT_0A(256'h7681687BBEA9BC15E08A294BBC6E8C07AF97415E0BC14F567D95EF910BCB967E),
    .INIT_0B(256'hB5FEEC5E550B6F421713F8D3875723AA08EC1A450C68ECF1FB0797B66087A0B6),
    .INIT_0C(256'h71E6F425783A9D9B3E7E48EDA6F3959353D7E2E2228ABD1FA240064E26C9CAA8),
    .INIT_0D(256'h52DD3FF359BB9DB675C0EFD232EEB42D6320F0DF66EBF882D9EA3A0D1E9D0B45),
    .INIT_0E(256'h072D4531EA3B73803D64DBBABFC3D64666DC0D54C8B7C9199FD3A85AC0D1A9D4),
    .INIT_0F(256'hD8B78A2D0A58F27C538F5C52873C05084277AED47E101EE58248438F053A94C8),
    .INIT_10(256'h41905B5A464A689680A6107619E0EA6540D48CB14C86DB70ABE21BEA1707FC6A),
    .INIT_11(256'hED9D8CF33DB1EADF7BC6A8F8E8D6B4A242C5BF9930B989C83AD53745DE079A86),
    .INIT_12(256'h4377A45996547B1D4E4CDB95C9C969A47B9DCF01647E43EB29ECC9C2AE429C24),
    .INIT_13(256'hA0560A2A3745F4459A18B4E40EA8EF5F82283BE241B04C9A4B0552A0DB150E5D),
    .INIT_14(256'h5CE3E2EC379D6FF78C06A524FB7CD3C31BF67EF861940A3531C1CD42B025F444),
    .INIT_15(256'h8D70D4DC9CFBA6973944938C941F2D076CA18585E0C51D4F33779E3B6553B666),
    .INIT_16(256'h5F75739DB0F8EE27FFD776C64D690EC0341C11C52E5488E395A748B30C85E124),
    .INIT_17(256'h91763A59AC31D4267B58EECB4F630D46D02F58092F490889F8CB2C42DE9529AC),
    .INIT_18(256'h762E09BF4BA52F813A3C19FA1A7AD1CE563F6342CA993BD62D81222F02B826F7),
    .INIT_19(256'h1677D77D6800954FCEA1F4FA196BA5AC18F7AEE76359D137EE01E4639FD1DEE9),
    .INIT_1A(256'h444D3205364AA93F5EF79A6942BC91F7D92E98CF3A0886C8760B93F7743502DF),
    .INIT_1B(256'h654FC76F2B09468E7E62F7524A5918AE794FE332325811B362E4B89DB3554C0A),
    .INIT_1C(256'hCFA655C0DF79394BC4B4BE84741D95AAAEC3B80C418BB4FF38077215E9CF73F9),
    .INIT_1D(256'hB14744417281314DC22E07E7EDFAFA387E597BF053B035072397A6C92F097DFE),
    .INIT_1E(256'h245BFCE0A4E57EBE906CBC3C00864638A7965B35AC91F5D8641793797E2B296D),
    .INIT_1F(256'hF5753803D20DD1F20B5250D95CD0FAB0E01648FCC8F30208A1EE73C68B526EE0),
    .INIT_20(256'hFE71F9B5E3BC7357D3D732D6EFED0498DF04D60063730390A44B424E4848F21D),
    .INIT_21(256'h7ACBD9D8F6F1EC3CABD7C6D3EA4A90F4000D76C75C10C4AD150659D19F2CAA92),
    .INIT_22(256'hD852B991BFEBA981CF907A17074D9B3BBB354B2A1E7A4175C302FF46D8BBBB9F),
    .INIT_23(256'h526CF0FFB47C6FDE40B4DF856AAC47ADB094BD1E1DF838D1F0E4519D8ADCC07E),
    .INIT_24(256'hEF0C5ACD1D16568DA0E2F45DB92C5B5DCAA94F2B2E239EE29E3D9382331C1679),
    .INIT_25(256'h1C1F786833DB7A32B599059D902DB7CC6813E79159B704C380DFDBFB2F9B82F4),
    .INIT_26(256'h9834C7A8A28CFE8B4B8DE63D5FCC11ED633ECFCA46CBF75479E1F102C7E6AA64),
    .INIT_27(256'h4E8F45571D8DE8E03B229185CA14A876E34015762E830ECAEF523FD7478F1886),
    .INIT_28(256'hADF1E5E1292676ABE953004DD19945E110FCC336580F3BC574828AD7BEF298F3),
    .INIT_29(256'h7F1A901BB6FB5955742B3C34DE09BF9324FC936FE1612CAAEB8640C42B43837D),
    .INIT_2A(256'h2E51E69D9130401174A6CE13EC4E5F87734A684D60482D2C2E834D68E0D74050),
    .INIT_2B(256'h0B354F95C976BEC8CDCD3A760B3363F5C6F7C57BB2E9334CF3C3046E946F38B5),
    .INIT_2C(256'hD9A67556E8B33BF26B6DFD8CF669244349DE7CD615ECE932B2C53287D4598A22),
    .INIT_2D(256'hBBF5ADC82120FCDA9BDB32A6B7305372D660ED667BD4F1A573CEC5DD8CB11E80),
    .INIT_2E(256'h934FC4BD928F1ABC7FAF052F4A6D3D889622616A7E8EFEFE4A0A1148A99E5A5D),
    .INIT_2F(256'h353DBEE3DBA8FC0AAF01183C276FC0EC07938D310D18EBC35489B9A9D36CD31B),
    .INIT_30(256'h230F5147003D621D92FDBB7E33BBC4911B6ECB08C0DA1C3EEE222E7FF53E5D1E),
    .INIT_31(256'h971DDD94191CE1F481C0F8D384E5A8F8AD766FDDCC89E27EF30851746247A521),
    .INIT_32(256'h59100189E1B62A6B07FA732E188E0B05363F1B362D1660D9382512EC60400A6A),
    .INIT_33(256'h93447444AE978F5CD85B19B9AE2C4CE4B66CE35E5AA2C399677D83397502F59E),
    .INIT_34(256'h3FB09814B37324FB8F1F457F5A23A98071C0D3032032A95E36CBE9FC79912B80),
    .INIT_35(256'h25AB1431AC31E0D5B19B278111BA666E00342A0BD453412DDC782F5D753018DA),
    .INIT_36(256'h69525A902DE0951A1AF24E7EEF6179A18C36D7135F136A9B06BB0AD83A0D7B63),
    .INIT_37(256'hCE964D2A9597AE2C8476708C97C008F05C5339E93E2C2DF5EA4BBD2D29A0A846),
    .INIT_38(256'h1994B07885D4F678311BDB8B3E1B027A11973DAAE98668758C86B318BB1F9ED6),
    .INIT_39(256'hF28EFEA80CC12E5B2229AEDD1716ED2B97AAA7E84BAE2FCC00141FCFF6019502),
    .INIT_3A(256'hA114830E4D0EE79A8AB8EE993FE3F64472AA67B40DF8DCEE2F34FCCFCAF6CD19),
    .INIT_3B(256'h54F16D1B886793AC1F899DAB41D3C726A6689C84AC441EDFFBACE11AF85A7CA5),
    .INIT_3C(256'hE68424E4A375D2943600ACCF3E7F89A6811399A01FF0DA2ADAF6E596187F3F54),
    .INIT_3D(256'h04C5F0CA6196317DCE11FF890162F16CD586331FE813650EF8E9D4E0B378B135),
    .INIT_3E(256'hC470B0F8437FAAAF55E795D8D3AC5344DE27BF3C1D55A433405E8A992DA13584),
    .INIT_3F(256'h3ABF584B48D3162B9252EAD502F7EDDFEF47ECE9C901607E4951C254D33DF864),
    .INIT_40(256'hF7F35301D5D6C8B3B1AADA19D19ABEBB34EEA9C999EFFA49317E103D96F9C09D),
    .INIT_41(256'hB7072F3A0125F02E4B3B2E3FE1B4E3C6D5EBD8DC19FCDFF3F3794D41DA60A6A3),
    .INIT_42(256'h92543329E129420CAF9F6EC91A7F60EFDAC719ACAB9E249CD86BB4CCB5134842),
    .INIT_43(256'h0E0E1A27F48CFE6F198F21C29D0BD2D05EF51F7400D61D02F3CDC9BFB8368F0B),
    .INIT_44(256'h9C48202640F329191258F47A272E60BA40E1C5ECA58DB269EB75D87B303E0236),
    .INIT_45(256'h3344AFC24E3510DE354ABC0C5D47363044873BDE86C3F38D81357D85F80E0340),
    .INIT_46(256'h2ABC153CF55618AB16B709B8D6E9A144E73425BBFA907ECAAC51367D60A0BDCB),
    .INIT_47(256'h15C56165CEE66437E04C6986A16CB81BA12E5AFB2EC743ABD9DDAE18F13134C6),
    .INIT_48(256'h43689A8D25AC3A4C83A67F49871306A00143F3A2965F75F6353AE52FCD482618),
    .INIT_49(256'hE39C4A5FE2FD23F6DBCAAD72A27368E0E3A8DD6351C2E41F6D7563E2A3A2E535),
    .INIT_4A(256'hA1B21F203867D24AD97F5A92BA6515E887AD2130BACC6F015E82A98ABB25C2B3),
    .INIT_4B(256'hE228621D517B253BB81A2D74597113080CB23554FCD801F21B0B0BE5B4B98EDA),
    .INIT_4C(256'hA5AF455DCAE5C3CD9E8C1B7A51CA163DD2FF9BEB4C1599FE9320D8D1101BE338),
    .INIT_4D(256'h8522D1DCFC0603659A765E99C7A35291728341205FDC65CC2008522326DC72C9),
    .INIT_4E(256'hE316284FB5926ABC156077C2B546F6D9B53E18FD8275F24993EA23AE14EE20FE),
    .INIT_4F(256'hCA00FA2C343ADEADED55C0388173287EF16D55E7546F11F1F3172060069D8E2E),
    .INIT_50(256'h2B6A1048468139F610D0B647146CB7193D4BA2194C9DB64E25048458576373FC),
    .INIT_51(256'hB7D32B91AC5AEA9F3E2C56E0D3B85B4B123C98AAF2529E5B903B5A68631CEAFF),
    .INIT_52(256'h22CB6FF96F9A079BE0A6EF1ECF19B786CEFD80C87F7EF77E302ED97ACA463955),
    .INIT_53(256'hBF31A43536CBD5B1AE9A7CB6117587884689563AFBC7C6CCF8A1ECEC36D3A483),
    .INIT_54(256'hCE953E9D028A290563983CF347BE75F93FCE3CE6DE828ECB86DC029E1E6AE06F),
    .INIT_55(256'h99D27A095CC80D192D1DC6DA15D6A688C1EEC7CA40C100CE5805191C9B4C49B8),
    .INIT_56(256'h945DB4523C1FD3C0835693192381877D8CBA1A40A2E8197408AC4FC20A521E68),
    .INIT_57(256'h88D79AEC78C8D40BCD535F304560AC972F85F8AEB6F99280CA6BFE8FACB304D2),
    .INIT_58(256'h187FA0801875C4C999A2F07E91C3A2E13AD5BF52E65722F88FFFA817A50BA385),
    .INIT_59(256'hF4F0DA1E2C144EF5483BB40ACBFB05DC6CCCABBC9A7B7BD5EFBFCD3673828142),
    .INIT_5A(256'h097952D22B97DB662572A1D2321E137B00521F66FEF750C50E295488CC30A398),
    .INIT_5B(256'hF7F23B34460E5C2DAC8358D82375180C40591A881BD89B19510CAF3D005B74E9),
    .INIT_5C(256'hB2D04E851321EF8CBF3AF8E35CB5639FF119DDBB4A66F2055A22E33EA2E10676),
    .INIT_5D(256'h45FEE6C67B202FF03148B2B1FCD2ACE324BEEA1A556C8402DF456129C9CF6024),
    .INIT_5E(256'hEE552678ADECB837CF48FDCC0CF5C9085CD0EEBB6B937D3A38D3AC40AFCADCB4),
    .INIT_5F(256'h84CE93D273ED5D3CBC8DFF3FB3CE85681683C7707F998532DEF2A5762E8B798A),
    .INIT_60(256'hCB7FE10F3C03CC70EE349EF2DB550EBD8910E7882F46C17599DEA24C5ED1C52D),
    .INIT_61(256'h808D1E9E1FC51F116CB2AF4733FC6D5EBB3C60BD0D3B2C370BE4E59DD654E259),
    .INIT_62(256'h27F65E9BBEA0902FDB488AA6B7DBBBF8ABFB7F7654607BAD1E3A2D07685AE8C8),
    .INIT_63(256'h54F7E7706514398DAF3640C361C59E3C256E50E8A65CDAB862B85EB5632E54B9),
    .INIT_64(256'hD332BFD047E74509C7D828CA063910414B7A8BBF6E2C7522E0AD3BDC69DED4EC),
    .INIT_65(256'h09E16400E4408B39536D4D8A6063DEE602AE0AC26A5D786FF927ABB669205203),
    .INIT_66(256'hE06F1B084CA34432073D560FBC3702F9B94366CC45294E472F71636525E170A1),
    .INIT_67(256'hC2BAAB4EAFA9F2E551EA30E5073B317BA1FA244902E8EFCB302BFEFD2FAD2262),
    .INIT_68(256'hE16D9205F398219BF69CA3D32350A0B10D1F2BCC2939D4903DE72E6014D7CFE6),
    .INIT_69(256'h9B3768E001931948C2EDC9E208D8D1DFF2A84B868A06AE66069F1E97580F81A5),
    .INIT_6A(256'hA8FD76F15AAFB3EDE97D6462CAA7C9F4C1230C94A9B4A5FA5B9750E704AC5C3F),
    .INIT_6B(256'h422330EC234E984E7C85F5EAF6917AFD4C60B9689DB58620655FD3C7297D53C3),
    .INIT_6C(256'h2D6EBB1CF418A52B5313175FA3604CA19638D999F95AF2F6CEFAA98E204EA9FC),
    .INIT_6D(256'hFAB4906080DEA32896D93BDD39BB1CD0B5CE299FB10F47720D631ED0EC5B55A5),
    .INIT_6E(256'h373E5A752019250EDE1463CA8BC43B94F09D3498BF4AAFF9DE83DE97DCF4D984),
    .INIT_6F(256'h966DD82E8C69C7436DE66BA2F51A5E0978727F6F512DB09F39BCA1392AD5EDC7),
    .INIT_70(256'h6B34A5729E37DBB0512FE6329176B3352BCD7D2C257F5F70B75738196CC1A209),
    .INIT_71(256'hCB05FC3F9C8D6804E545AF31B83A60AA3BBE4F558CC41FD2F04606B092618507),
    .INIT_72(256'h3F89B14827E94E5A4CE75A5DAC2D706B1D6CF983F9E16A8BEDCBC6492965B8F8),
    .INIT_73(256'h22903CC073D9EF1C4C9CF9413F2940A1CDB59BF0435AAAEB5DE1254F60209F38),
    .INIT_74(256'h224C59BE164BEA3358F860F4F14EC1358FA36DDF7313B595D4838F529397A6A4),
    .INIT_75(256'h05376EE800E72CAD8136BCC58A6EA0B63FB9DC13A065CFBA9FA91D48642AA53C),
    .INIT_76(256'hDDF1A8170DC45129E4CE76CC8076412C3429DE90B5A5A11F760E96E4BD5CD600),
    .INIT_77(256'hA971A3A83CFC27328CCA79C5E36B9CAE2833D8CCB204653EEC08FE93C8AD51B9),
    .INIT_78(256'h2ED0A9407DD798F35F1C0697AA7DC590DC99E44E0DC0B5F2A8E0247E765BE7A8),
    .INIT_79(256'hAA8A1B7A0A5F1478551BA548F17E28282B293EA3D55262CD66D03501F2C494A3),
    .INIT_7A(256'h2E0B711EFFE11FA94F0CACFF84601389935407F91F21C69B57715228D66B7930),
    .INIT_7B(256'hA4D4890AF63D9ABF01DB1E973B7848606803BD95B95A2F3ECE6C19C93138D796),
    .INIT_7C(256'h3A5F22F44D2EC183271CBBD2644BE6DD3DFDD4A35B1A654CE45356561FC0EE3E),
    .INIT_7D(256'h855FDB68CC843AFA26F598402CA0F8F147894644810532584757EB863C9C95A9),
    .INIT_7E(256'h83BA3342896076D49B2991DD91659FA870A41F20E1F8A8985A96C4C86FAFD2E6),
    .INIT_7F(256'h2FB87C6D02637D9A3978759E25FD8306F3089EA5989A6F7020FD318A1F6F82E9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hE2D5F7BED8C62165EAFE3D8E234235FC8FECE899F8515AB3E718D0081F9B3D74),
    .INITP_01(256'h95F066F2AD6B9057373AD84938442CC2508CD113958851A54CDF2E6960DF792C),
    .INITP_02(256'h7F46A6BCFAEC170475E31469BD3B71CA95F1EEB6639D136731EB8D50C8F512AC),
    .INITP_03(256'h1719375BE963B34F030E0E742838BDBB8A038313012A51B0207532A86FA25ADE),
    .INITP_04(256'hA0310516B9E65BDE5C982BE927AC87DF9C7D517615AD0F3F02DD5B566C591D56),
    .INITP_05(256'h4352FF4E042C86007375604DF9903AF478B6B1B9E053104E30B19123EC7BF3E9),
    .INITP_06(256'hDAE4C48480655CB282714EEDBA810BFDB098299A76D9C7BE95E125A9C42F0939),
    .INITP_07(256'h1AE74528FB5D23A7B774DA1DE1864B0EBCB2A1E9584C3397E2421CB8B6116731),
    .INITP_08(256'h43A9AB13FEABFCFC7A8A927B73E31D03488CD7B496EB8476F26B730273D81F5A),
    .INITP_09(256'h97D7CADEE0C04A1864412CE47D4C521BC373D5063E9114AB2B8A146AF056A2A9),
    .INITP_0A(256'hB7B4959A105961D7108CA30B60642A3F39E2391C18FDBCBA36AB2E4F11CAB172),
    .INITP_0B(256'hFBD92E50A81F3FA13C1FDA3664BF8CBDF3A5E864329D4A22F18F3E508DD83BEA),
    .INITP_0C(256'h4F5491BE60CFB117448A27C8744EC195C741FED1107A208A684921D431BB065A),
    .INITP_0D(256'h2A1E1693D9B683582CC6BD76E4BCB54C333EC87D5343AA3C292CA73FA4328A61),
    .INITP_0E(256'h06B07D84972771474FC47A7FC33E371629DD4C49F8AB4C00F320E2AC1B8E2599),
    .INITP_0F(256'h53A2AC4BDB67EABCECD09C5BE136B2187C50C9F93731CC041504DC3B988A2463),
    .INIT_00(256'h7F908101BF6736059543ECC39A508D7E3798D4006B8DD99438E6456B9E994440),
    .INIT_01(256'hB11D03E643186EDF7D411FAEABF62EB50491FD7D0F654733669D35D4A11517EE),
    .INIT_02(256'h591269968E7C7E255649FCA49D2F20917CE0885BD8913ABBEA483F5D284260A0),
    .INIT_03(256'h942D31448CE651CCA26742F27DD3F7825BBC3839473C4EB90FAFD048AB9728F5),
    .INIT_04(256'hC30C8F69C0B400E8B2E1659ED822971B79EC29AA56B748C3F755F5C96699130F),
    .INIT_05(256'hE236DD12CFD1F12C1E618F3D2723995F06237E3F6BE0E9349CAA4825CB7BEC1C),
    .INIT_06(256'h3FC739704E34DFD2E2A3F017907C165BE0FC9EF39072DBE3400D279E8B30A821),
    .INIT_07(256'h012B281FF9A65A055109832B31AB827D1246886D3095C53DE761ED8DAAC9727C),
    .INIT_08(256'hF5C556431BC7866376F4D7A72414DD4DEC3AEB349085D9B7270FBC2384561187),
    .INIT_09(256'h4B47E0FFE27DDF550CE315319B04E1D7E9C04EF2CA09DB7F73AA0ED6E43AEC52),
    .INIT_0A(256'h765D241A173490EA46524A2D082F8E9B3D9D906AEBDBF97FD802CB12F010BCAC),
    .INIT_0B(256'h084F551595C066C63647D1F1809977D0D05990E74343FA90E854FD49DC1ECB91),
    .INIT_0C(256'hB50F35864327356FBD43339EAF7DE8F79E24CCC3073D8FC8B895854B63FBB517),
    .INIT_0D(256'h65A45ED48EBC44E11DBC61AE0D2E0A5886F3EF2C4172E3E28E9B089DCD0BCE32),
    .INIT_0E(256'hAAC943858A8FE594A5168849C591F2150E5290D38717C06BC553EBD443E640BD),
    .INIT_0F(256'hB904E2913692ED6CCA6607ABFAFA70F543FBFEA728460F7E6EE2F688B4038B46),
    .INIT_10(256'h06B48FC087235C77CA4C502B3CDC020EC0BDA5B4C2541C5582147C209964EA9A),
    .INIT_11(256'hC9B05829DE9511BC894B712E70CA14443856A2CCCBEAB0F64750F170CAF62D91),
    .INIT_12(256'h6399381E5A8DA8C9BFFAB644E97649BC7ADE161BE7F6E35DDA24144D7F4DCD51),
    .INIT_13(256'h34A1876E162D1BFF06B721380B63F4A1DF9C2DC24A365767D2B43DCD1030F31C),
    .INIT_14(256'hFB1E83B3E1922FF1A6DB03A6C4C551CDFF1836FCF60DFF69E7099CE5CD39F811),
    .INIT_15(256'hC3CE472FEC41492C0A97EE1EB427D04F645EEDBC304F0FF89DE5FBB78B48D505),
    .INIT_16(256'h33A92C86CB58AEDB9A10B9DCB1F05E5B3A984EC769E1D4560412E5A6BB903F72),
    .INIT_17(256'h2A382D4A69A80B663ECB63FA9AFA02B39E3EC542C48FB8C712F79DD4DEDFBE79),
    .INIT_18(256'hD9855E447C9DEBFC361D5ED93FA79EC44A57FD1249B5A55282347B85784A00EE),
    .INIT_19(256'h7D23220E85051B7ECCCA5042D5CD43F04D8D927EB46BD2899B491BF9FB8AFC72),
    .INIT_1A(256'h67E2CE75FB29B3D6ECEED9AEBA5D2C852F0DD75DEE478C11B7E81FEB90CB090F),
    .INIT_1B(256'h744887DEFF5095F5C5C96C00F292F4A5E4A117FF91DED419937A16E67B82522D),
    .INIT_1C(256'hB69C97F4A698F48AD7034D7D08BA55C17C1AF1394509B5A34975B8761FC03382),
    .INIT_1D(256'h4DDEB6897879C3E03B7D8F5BC39476D8B766EA7F458120FE07C2EC6978AD0FF7),
    .INIT_1E(256'h4B8F995A87F6F9471362E8D9CD9E13F684756B638B1684DA24EB23BE2B913943),
    .INIT_1F(256'hDC850E52DDAF0D1BB4ECF934F0CFBB40B1E8A81007B67E42BF2A1E7B391092A1),
    .INIT_20(256'h66E465168517D049B6A83A87D932B841FEB9AFC59E3CC22299814C1674095196),
    .INIT_21(256'hE5140E1F7A746C4AA8EEDF25FBB716D61326AF8E1342E06511932927EFCFEACB),
    .INIT_22(256'h069AC97F58465EE6EE3C52044E43D8F957C9B6357E94102F2BB1FA2DC6701913),
    .INIT_23(256'hE51E55962ED3AE64033BFA1D0AA3C86F4FC6DFD55CEC8F22FD9AD60B3830C0E9),
    .INIT_24(256'h3E5E346FE0BA8DD6E17B80C3D152861E0E6D81EEC93861DE97B009B849B3A3C8),
    .INIT_25(256'hCC7A17081AEFBA81C597DFF9F57873939E9A48D77D818CB938AB31C4C0DA968A),
    .INIT_26(256'h2BF2C76FE8F0BC57E8D672F154C9185F7CECC2CE8CFF5B90AB47454AC86EEB30),
    .INIT_27(256'hE504493A39B17F292FF5B86D2D0EE47C3D19821AFF4397E1EEE47CA2211375B3),
    .INIT_28(256'hB8B373A47C151B425A3C10782DD77ACEDB3666DC6F7D0541D717C66530350E8D),
    .INIT_29(256'h015433C6182B0DCF7E5B8530B6C688860D05FD4C672BD1ABC76B940903D73A6A),
    .INIT_2A(256'h3238445F974C29B98E3735BD92A3A9AE33D052E43821E48E288B48DDE100446E),
    .INIT_2B(256'hF5C1C881136A5A1A93BB0B57557FCA8680A8A8370E94AD0BA5D4B90FA9B9D951),
    .INIT_2C(256'h984E85A696CB51C82AB44C5713AE66759BB6FB827E2652B09840905D7B1BEABD),
    .INIT_2D(256'hBC8585AAE59D5588853A5011607E157F3D6879FB9C258F359959B94374BEBFCD),
    .INIT_2E(256'hFA6B03D4C9286A61734F91C62079BF19A1C1AB77B37876DF43C841575C0A77E5),
    .INIT_2F(256'h8F5AD446DA52269E9E876A5A18566EF85065C7D5D0FE4BC16C5D2DD35F5562B1),
    .INIT_30(256'hF6F91C78C63782CA0CA8E8143205446D836041EA77FB1A7B7B957F6DF9F1F728),
    .INIT_31(256'hC29A1C877547D96C2DAFD71BF567B0DADBAFFD9C4885036ACA4C62468AEEA980),
    .INIT_32(256'hC24375C86BC7C703E4CBB812016511834A33F5DE4544CCE7CD7501CF2C48FC6C),
    .INIT_33(256'hAB1203CD0DBB5053B9AFC61C542BF30D22EF569005CCCC5088FE92EE692D0441),
    .INIT_34(256'h0E8E00901EB403658EDE498C4BB55A99BC8F27CA4BC233C0637D97A60BD1E9D6),
    .INIT_35(256'h02C47738410598AC1B02FFE602F40359BB21BC1708895A4F84ED70DE2ECF6A35),
    .INIT_36(256'h65E7E6718B5E05D86C15906788E430A1D224CC64D8AC77173B9FAE0240F022A7),
    .INIT_37(256'h6FC62C03282B742F413E326F80297EE6E675CFEF88621EB65ACD34127B478B2D),
    .INIT_38(256'h89BF38809983FB7AF9B03479235A596C60FF50F912D602222DCAF8075A40C957),
    .INIT_39(256'hB9EE59F65D9A045C1879B3F87DE7B2E2EA219164A45678FEB2EE098CAC8648FF),
    .INIT_3A(256'h4A5CD0E9F510F601DDC4B933534342F0CDD7010A08C82C8824210FAA5159AAE9),
    .INIT_3B(256'hB620B55AE52DAB8428E59AB5BF7ECB80D490567BA986B90A6F6495E72BD4DA61),
    .INIT_3C(256'h76DFB988D05D8705252A90A1ECA5BDA9675F103B2F5DDC9A8A05C6CD059BA4FC),
    .INIT_3D(256'h591EBDC169224B5996BAD257BB9B715D4E3E3C06479D9E5682ACDAA28E1219C7),
    .INIT_3E(256'hEC23539C11794D28804BEC24B8FC8C748F4C35A3E9940277BD39BF8C918A0189),
    .INIT_3F(256'h75D196710BD51FE6250613FED1A11E68078874B36BFBB5AEFBB5793130A270B9),
    .INIT_40(256'hE5AEA0B9A7198B015CEB47A370930353B7D2F0C7CF2DA7971F96135CBD7629D6),
    .INIT_41(256'h4DE752ECF72B5304B030CD2333C23448AE9A78378C157EE7B28A71830E3EEBD4),
    .INIT_42(256'hC9B3CA62CF6A12F2E4538A297B992702858B6B9F3CC86F17B264FA1866527D52),
    .INIT_43(256'h2B6BB3E447D557182BFA4671F8E99ECE9609A69BF6496A60B85C5463E2836DEA),
    .INIT_44(256'h79F5C6C5B9A872EB1CE34A64268527204F01F95FE51F6A3297358D136ACADEED),
    .INIT_45(256'h08266E5CDC8D6F0910C7EC807DA976AA1B1E60264E89A6665C9AA0A434895D83),
    .INIT_46(256'hDF7BEEDF932EC9E7A2E71437C96F854D8357BECC3ED0502226BCDC514EF4877D),
    .INIT_47(256'h6BF6C371471AAFA6E776291BE6FA7EAF20EEAFDCA5DC488637D0E9C9B3AE21D4),
    .INIT_48(256'h0BB395CE811D4D18787BC8F44F0B5959B7E5A102B8B579680C8BF57B545071E5),
    .INIT_49(256'h2E2F3FA6BDD86AFCD0B09AE54B8E8C9652C4A257B0C4D958559DE465C4C03849),
    .INIT_4A(256'h6165A0A2C01339D9B195788CC6836C3D5097CF03D1E00028E732FC76E690255A),
    .INIT_4B(256'hEDBB0A1B21CDF4F0C471BB1FA4FDE6AFBA18FE575503B421042DB1B74ECC7998),
    .INIT_4C(256'hE389EA88CDAF7BF84D61A5E6439A0A9DC6DD5C4261D79639476E202C37EC5332),
    .INIT_4D(256'h5BB52AFBD46740C15D7B153D0A00B86CEBA7F1D77C1697A79FB554C452D6FADF),
    .INIT_4E(256'hA916091367B06EE06AB020AE1AE0F9640E88ADDD7C110F8C6AADCC596C06ED60),
    .INIT_4F(256'h412EE053E877812BA784EB955BD4646C1F043695A94CA8BB385098174011992F),
    .INIT_50(256'h6BEAC54B94B767B6CBD654FD5541A21B90591A184757FD569A4461B05B2D7441),
    .INIT_51(256'hAE8E67D04854C30CA9D4EE7E3CEF8CADBA7212EE5E6373247ADFF671070DEF93),
    .INIT_52(256'h2C1A39AC1147A004724EE742F369B1B76856BCE6E0BBCA684476E4D79DCA28CF),
    .INIT_53(256'h829CA98079E89440105A8B8C6695CE8D7256EEFD6F1E7604B272D5C613092803),
    .INIT_54(256'h0D1B01602B460E3D5E0206C08963C4F494880FBD9576AE1AFB99AA80094BB3DB),
    .INIT_55(256'hE0C9DBA674160F07556B74C58DB4A00D166904D7721B427B16ACA388BEB55A1C),
    .INIT_56(256'hE4BB3B6E247785DD4F0D9D2C267C1F0262324DEA660691835AEE7312D653B393),
    .INIT_57(256'h5905B3F5552FD78B4FC3FC7CFF0144E84DF074B7F41FB43027FB19C571E19C8F),
    .INIT_58(256'h3A2C2ED690F59802CD68440B2BD6589A0E5B290EE8269970DA607CCAF863F5CE),
    .INIT_59(256'hFA6AA161431BE9300ECC4742C36B95BCADC29614ADDA1FD43D340944583014EE),
    .INIT_5A(256'hA8C3465C744449639B07E2CDF3E614DA80C96E4213B868CB7D96E00E10DF25D6),
    .INIT_5B(256'h7312FB46097E598C022FEBF848BD10BF742BB8E92FE1D69937AC8C7296D1A448),
    .INIT_5C(256'h4DBF74242663CD4C7DD36F2CA0BE79DFAD27B06C9A8E191AC5E1A6CF84BF07E2),
    .INIT_5D(256'h0056F090738FA2810180ADDDB44CD6DC220AF5DC21A477C2DFBE8F091750D76B),
    .INIT_5E(256'h076ED2CF2B6022B377F255F422BE673070AF7EFA032495C32EBF18DF22B27475),
    .INIT_5F(256'h9BF12F4BB3D3A17CB11731CBEE7874D9132D2D0DC8F44F80114AFAEEF60D80F5),
    .INIT_60(256'hF2ED1562C2F0EA6869C5DE3117216B775D384036434184729490936D04AB2996),
    .INIT_61(256'h12140BFA851286424384EFDD0DC398B77788DD5C04C88DB32198460BEE95D454),
    .INIT_62(256'h38DDBB2D78A35DA1749743A35C0AC6478F6FD2FABF49C4F29CB69E2598AF8B72),
    .INIT_63(256'hBEC3F8C85516CBAB9332E42979E4675F78F8C073FAF77BFD9B23DB84372D3D97),
    .INIT_64(256'h1CCDCB7F6292D648FF5BDCADEE518891494AE1E0D4A9E5BA31CC80E04EB3F65E),
    .INIT_65(256'h5A7B1C64D6F27E1B7C291713807A286FFBAAEF32B450296151B52723EFF3AB66),
    .INIT_66(256'h30DE9F0F38DB355626E5E6D9D738C0C2B8B1A1532B974315978A2148B2164271),
    .INIT_67(256'hC54F40F3B6BD010826843AA4D58EA4E238441468A94C861CDEDF95073EA37B21),
    .INIT_68(256'h0544F1EB8ACA3D5D977FE5A66E5B8424AFA77EF0894D630752B38AA34AA74600),
    .INIT_69(256'h64382742067FAE1DDE78B93AFB0E2BE16C3DCB22C8B205A0818E8F21B014961F),
    .INIT_6A(256'h023D0AB9BF8E6817E9114147F0FEA95A0EA67656EC9515260246297E4C75C031),
    .INIT_6B(256'h5218EC2868D870B94F81738DA06DBE7A22535677B77AF6776B3C5FC416229CB0),
    .INIT_6C(256'h900EBB7B3152E5D3E4386094C7D128DC539D20F48B749F75F68F27ADDA4F7699),
    .INIT_6D(256'h5DF881C157641DC7A84933CAC4BA335F2F29E59FEC904341DAAFD3E095F5376D),
    .INIT_6E(256'hB1C9587683BE52D5D752B9D03124C46DD3BDF9348EE7D2F2387C42342CD08044),
    .INIT_6F(256'h729AB38BB25D0EDE15171B1693D264A264C65F0D6C6D5F78724610D43D829EA3),
    .INIT_70(256'h1F99CD27F1B081869F2270A37C8CB00B5ACEE1F0CCAD78C82842342BA3D71BB0),
    .INIT_71(256'h1DF3259BC2F024EC98FB4E60A2C62A2EF64F1F0021B4541132B2265CA3659348),
    .INIT_72(256'h5071C845AB568DE31E5054E314BBF7B7E54FA8F5D0BF0E3DD15E759F2B92D0B9),
    .INIT_73(256'h635DFD5CDBB127AFE44BB31A0952C389221DA9B9D3BF4901F59740683ED925DB),
    .INIT_74(256'h80D26C8197049C36B6D1C74C92A5E2C5F8988B7998963A7A2E8BF428CCAA5428),
    .INIT_75(256'hD02FA99A30AC3B352D12D4FBC777E0D6FB34479EA395F0BBD8927897F3094380),
    .INIT_76(256'h87DD017C9DBB3DADAD14A54C1B70CE975DD4B4FAE8F54A5678C95C73749C8704),
    .INIT_77(256'hBA50E4E3A44FD3B2140B57401905D019903F3A243EFCBC76E390F67C4CC924E2),
    .INIT_78(256'hE775455306365F1B6F52657354AC862B1F8FCB34493FB4C73407B17F673A0572),
    .INIT_79(256'h4992ED54FAD90D9C2948EE74F4A8EC6270668B4DB7C36998F4824AE54E22D7BD),
    .INIT_7A(256'hFE9C2A298F40C3812FF82A253CAC08BC81C39557A860A41D6C4F25E1BEE5F93D),
    .INIT_7B(256'h733E346460FF84A5683DA1922612D24688D3E7BB893AEBB5CE6331F14AF4B55D),
    .INIT_7C(256'hAC176BCFCFABF0A5582CB70B6641631868DA8E74150074C391F76F2C3590AF30),
    .INIT_7D(256'h7328A6111EAA5D96A5B8527E66BDEB0209496D2040EA0E5AE4B933FB5CD43AC9),
    .INIT_7E(256'h0302FCC8D16644E07F14872C64A64FE574F03975E542DA4277A99C095873F4DE),
    .INIT_7F(256'hBE083A7A6F682955556F8C641C62B9C28B362BDEB4E5F4A5B8ACB127F9C17DAD),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h66FB748B851B8BF4697C65D0B906ED407D771DA02CCEA4CC5383447F7FBBDBD1),
    .INITP_01(256'h4D2DD86012647F39506EFA76B9CD6C5B426FA8BD643B7B13E1C5221F19FCF2F9),
    .INITP_02(256'h038EF8457CBBF84EBF1944145FB3582CAF65F59963A27C9C1F53D97F91FC791E),
    .INITP_03(256'hB4DEDE80D396BA9C7B12AFAEB96936B53240B64842B380C6CDFCE15AFA66C84F),
    .INITP_04(256'hF965FE0937AA9D5CAE56140930B592E07786B0C45C207EBF3A8C26A14DC69E3A),
    .INITP_05(256'hF2236718C2B9E30B22A3EB4430E7EDA56DCCC1DD192D2C9FF86A96C85C0DC8CA),
    .INITP_06(256'hF243A5FD4D9C5BD1AEE1962944F96C640763F39EF871C70D1E0FE82A85D6F4F6),
    .INITP_07(256'h42DA8AE1C866574F6276BE9477A7DDFF6F3C622C07EC97DC753D51A603F1247F),
    .INITP_08(256'h74025FBAABD003BA711E988BF51DDA9305923AEF33A63D01EC88403926CD775A),
    .INITP_09(256'h93EAE71A8C7405B8543322EECBD3DEBFD451B77067424B4570A4BFDB5A2FC522),
    .INITP_0A(256'h80725EA3452F087DCAB78B5F8AB31FB1F956C17D81E2B3A156F40C30717D6162),
    .INITP_0B(256'h3475D8C309255483A7848BA882C75F901A8D05F77AA5669E630EA84A817C4147),
    .INITP_0C(256'h34C1C91CCC030DF20C0E407979B5181B81F9E104019DE37A94EEF6F0AFAFBB7E),
    .INITP_0D(256'h0A1A6661082B6B17888DBC760D97025934005DB2D97C5A567AA4249596BDD934),
    .INITP_0E(256'h4C25E09D5FCBAEA56E3790B605A8BE3DDA2A2D4F58E51D2129BFF9282C66CDC7),
    .INITP_0F(256'h0F9E78A7C06BD37120DFF240A94E2EE25563B7502434DCB3EAAAABBE6A477A9E),
    .INIT_00(256'hE3EC57733AE6FE76C3A4B47B0D82A720411474539A0905E211D64E340F683D52),
    .INIT_01(256'hA354036AB927A1BA8D0AC4EDE1D5D96288FE8F9C1B2A308E0F9C0D1BB06A357A),
    .INIT_02(256'h4291A38EC85FE72DF2063587A55B1CC813672E3E82B124914040121F56DB61ED),
    .INIT_03(256'h00DC040D6D50C00C3DF522B1A137B1A0172FAC153F1F306619D74CF7E6F4E8B8),
    .INIT_04(256'h0714999BBA31876A23DD669900DE186AD7221795540A08FF1748EB37670D525F),
    .INIT_05(256'hF7643F292639765DDF54820791C72FFDE392B91AD855547E1C0CBFD7E99604F1),
    .INIT_06(256'hF5A15DCA2372BEF9CADF3B4BC28038C273F0BD2BD7458B0FB52371EAA0115B0A),
    .INIT_07(256'hCCDF9B8FE72715148067380BF416FB09830517E9FEFD23AAE61ECDE976DF378C),
    .INIT_08(256'h3450E09CF1CAAAC0538F591024CB0320F4F765B2978C87F2CC060C0A29220C8A),
    .INIT_09(256'h8245C44E51740702850C8373B7A8290BC5C6237B0A80AFCD41D2EA271E7C685A),
    .INIT_0A(256'h2655B1736C023439770CF3F3178259BFFF3703AB737346EEA4ECC11B438B04A8),
    .INIT_0B(256'hBA0FD5B3A1C5A649A19304B98F9684BF15CA39C1754484C4F42860118B877C9D),
    .INIT_0C(256'hDD2030D3126305F58FAB83A98A4049B8BA3E58C0392FAAFBFDC74D415B0322D7),
    .INIT_0D(256'hCA20D7189207F4F8DF5D6FB5864C9155A07B5FBF0B1C8632A7C38BA00466EF47),
    .INIT_0E(256'hCFA048FB1B8577F903A7565CD77C0B77D243FB49D71CFA9164F1E213320C1E69),
    .INIT_0F(256'h5B21FED49F229F8B0A59E65A8608DB694FE4A8618C81874FE247398D4B2CB9D9),
    .INIT_10(256'h91A13F9F5369D9CE0F6D54F907F23E9745D26E6D0F4FCDF3A55214D7DDA1A892),
    .INIT_11(256'h6BC93A6A3C1042AB31EB188A07695CFF49DEC70616298DED367D24A9469CEC62),
    .INIT_12(256'hFC3A7A390B6ACFBD35614DDA8244BDECF38F433DB47339CBB0F900F1AFF0C44E),
    .INIT_13(256'hBFD09344D9A06985BABC9AA9F7D36AA09F5D94374354508C699DE1C601D952D7),
    .INIT_14(256'h2BBBAFDDE12D7E11B643DB17BAA5987BD6A60508428DF64BF11AB0EAE3B484A2),
    .INIT_15(256'h0ED294285C7A45D05C41765DC4B246DD23AE0FE9A5A6450D2759148A90DEE620),
    .INIT_16(256'h52A93891ED36D2B10603A85C81A9D0A0CB6E3D483AEE2B47DD5B91EB2A2501D8),
    .INIT_17(256'h9A2D49D23CB75EB8A3B9685A2782BA1277941A4C8106312494BED2D1DAC96AD9),
    .INIT_18(256'hBEC1D13B88A5D64C11F4FE6435F63B3D4DA1CD9CAAE25D654112C4C529EB4C34),
    .INIT_19(256'h79BCED8ECBC7C68780BAB089EDC0A0AE127C8A4FCEC5FD88F62C1CF36C36A503),
    .INIT_1A(256'hE792D2B6F99FA361F70A23651E822A7C099815D95B1968CB2492575DF1AF710C),
    .INIT_1B(256'hEDE7209B58BDF6CE194C75FB700D3C77C7002D6494EC0BF7F914FD8662D1EBB1),
    .INIT_1C(256'h5A81AE7A61C0C9430DDCE422AF6277D1112F27291F9FA2A0F6F313E569BCEC5C),
    .INIT_1D(256'hFE3462D6C1B5603C14BD3966BD53C1D6F89CE7E6B6A0B2341CD3883EED7FA443),
    .INIT_1E(256'hC55480BCAAF1F14671EDAE43096A1A9CA57711B0A59B8E9211A762A96E8F8DF1),
    .INIT_1F(256'h1C1D7A1AF5272178451F5207D7258478C61949733BC67A804BC68335B9E28021),
    .INIT_20(256'h774872DE0B8324B4622C0B70F77EAD1B9638459E05FB4858523DAF086A1A1DAE),
    .INIT_21(256'h08E5C31C1585FD4B7028253D190F8CEFF923998A74138770C89D213E0416087E),
    .INIT_22(256'h398E9F206F7FE411554B9D5472E5F18796428642D9DA8E4B05B3DD5376A1057A),
    .INIT_23(256'h3BACC202ABA5CC3BE4A81BB19AAA1D8ABB83CD4E9FB3FD1C8B0D5E70636010D9),
    .INIT_24(256'hF82963FFF0F8B69FE028F159C869CFA4D2CE75E8327D558E049432E1844152DD),
    .INIT_25(256'h879A688721C22DB73ADEBE499F5D958191C923238051B5309631A61E046D605D),
    .INIT_26(256'h4E5C08D9F6918C0B27827089BC0AB029A5B11F9E4F324B53300ECE46882A978E),
    .INIT_27(256'hF5F1DEBD7E081B73043AC29DCBA4160BA2FA78F7FD88D1DC809B7C4FB7379583),
    .INIT_28(256'h47A3B353B0DBE79FB9984FAC5D5D6A7CC5F027B19C15BC056E3EF3A4DAED3C30),
    .INIT_29(256'h1720B0701955C3424D1F8A3388291DB30A4F93ABC6D3CC2CC0B121CEDFA905F7),
    .INIT_2A(256'h48B30B883D71A42CA324E9DAA8900AC5A50687564059F2891EFCA4DBCF6C7EF0),
    .INIT_2B(256'h9F0B845F49E2F80F987B6E5FEE4AC9F6E94B97F9921EF01DBF65E9FE289727C1),
    .INIT_2C(256'h6CFCCEB974068B559A4F5C5F322FAE88A2651F8D3A94910D09727869590F5A79),
    .INIT_2D(256'hA8615CAF35148C3D5F5E8353DFFB635C3E0E9E43091DE503F76512050542B61F),
    .INIT_2E(256'h557BF7EB1AD0C94ADB80B7AC80679C4D0529E6F9344B759D8C202580A9ACD8CB),
    .INIT_2F(256'hD68D180C28BACAD9D79C93793CDC0872B0296613BD37EBCA0CE2CA288B68E335),
    .INIT_30(256'hC546934181C5813B0AB6AE17DF1E5F20F7BBC1C1617F5080FDF3F819BE3CEB9D),
    .INIT_31(256'hA8511CD956385347387BCB5912CE557FADEC4B390864308703FDC938FCA8302F),
    .INIT_32(256'hA7A7D6D7FAEDA5929675DFD671AC0A427A3C2DC641AB3C39A454FB08EFB5E963),
    .INIT_33(256'h3D290735A64A723B152804D1D84F5B12D8B8E233EAB21C3A6337D7E25FC01921),
    .INIT_34(256'hF87B209260DCE0AD3C6A2437F3ED7CD6FF625924EB1BF08F4E45C970C0FFD315),
    .INIT_35(256'h1FF344DEE1CE8E308EB481910D0D8AC57BA4C95AC198EAFC4B29D67A667DC5D9),
    .INIT_36(256'hC6D242860F0AE1F1A72485D9FE4D95CFEB70BBE034EE02742681D62B9B5B0FA6),
    .INIT_37(256'hBD82683185CAE2BAF3709AA22A24CEE084058EA3AAA74A4BF744D2EA8D159BD6),
    .INIT_38(256'hB6ADC1BEBBB1613A9A3B85ABA5AF4152B57805269002FE879DFB3EB20BD4D229),
    .INIT_39(256'hAC61ED578337EFA3A24C80B6B737FD5C560FA12764DE481E90CC20BE79EC2A90),
    .INIT_3A(256'hA9EF281F7AECBE84AC4ADF08C2F7F9A47510C5CDC6270562A677DADCC8D70FA5),
    .INIT_3B(256'h2F97AE9DD7A0968B32E804C4F2E8736F789D3853627BD7902308A4E463F448A9),
    .INIT_3C(256'h368C2D35EAADBF2E0CA3B639030C4E0D187AA1A30E5CC9BD39E9945CA93E1BC4),
    .INIT_3D(256'h054CAB9D17B472A73B1E9536A46B0BBFD7001DB9A9C60E9F28B7B8A0C6BDAD3F),
    .INIT_3E(256'hBA4F1B0166C969322CE8B30E625F61FD33C79789E65CCE4EE42FE54D02089625),
    .INIT_3F(256'hA27C81C3E5214FC8BA83B08E75C99B85B0BE27146EC1295AB4B1F8B825F3C50C),
    .INIT_40(256'hA62E01B6091796630348A1C8555C6960AAE840519762CAA0419C57BA71595A73),
    .INIT_41(256'h53C2703840F0A1553BB8843EDEE810E44E0FFBD3661BE51E43384EAC109E4190),
    .INIT_42(256'h87B31048DA7FB012A8C4FA9F0BC072784F57A5CFEAE1AC1DA593742D762FE617),
    .INIT_43(256'h9709AF7424A753CD86452FE3F67BF30F0D7EA60A47ABB08D1670579F7CA9DBE3),
    .INIT_44(256'h2E5DA01DDE7B72F0C379B6532D9E5840F13FDB03484F5EBE12C22A5CE5F4F89F),
    .INIT_45(256'h9595E1AD1F11C7DFAFD3F2B790F717031DF0FAB7DB1339C6ECB24396F93EDB5B),
    .INIT_46(256'hE1A8DC0318A755DFA4A9AB6B053C79278C24996C2498EDC77842FD922F0E0C56),
    .INIT_47(256'h9C378C0E38E0396DF0C008A046CFCDF02CE24973C93EEA79C906DB44A51FB0C6),
    .INIT_48(256'h046D6C3E678A02A69004E264BBF9E2CC2588D9B70C21647CEB4299DECB0D3E70),
    .INIT_49(256'hFD892FEE9D059B972F8755AC6CB8C16E12A9E4021450DF27D16653ED67F207BD),
    .INIT_4A(256'hE81685EBC79DB212E6BB443FA1CD6582499896A30AF5CE84AFD15C372A321C8F),
    .INIT_4B(256'hB119C44B451D368FAF4900C6B846F6153395EA1CBBC1869E45BA2AEAB4D6361B),
    .INIT_4C(256'hE553DF14B8604F3036CFD4EE4B7377A6A608F412B4CAB62E9B878CF14ADD6B81),
    .INIT_4D(256'hFC2D25BF06B932ACCD1771FE4C473D3C610236C2D6485BCF2DE4E643027078AA),
    .INIT_4E(256'h5830B6A8FAF5197A14E4356B3DF7EE9267710CA1DFF0F87163B75ECE8E16DFD1),
    .INIT_4F(256'hD8D9AF32B272AC481AC93A4F4C6E50BB16D3E2E520C0585A243D41C5BA0759C1),
    .INIT_50(256'h2C87027773E5F71905B7E7577C30CEAB622044D96678D6B3A57BC8CCC590CFFB),
    .INIT_51(256'h9D78D18F999D55E3BD5038C7CB94664867D05CE0F1F4713E4712084F3D4B42DC),
    .INIT_52(256'h2DA3881CEB3FC7D9D3A863B92EDEB404BEC7BFB619B85646C838B12AA76E7972),
    .INIT_53(256'h79AC3C32E4EB32462E17DE3447CAD840BA59F4BA9ED3DE4FC2B9A8E9D6D10B38),
    .INIT_54(256'hF991BC9B1941CD7C69F333798F8ECAB7B4D84B9F152D1A356F4CA38AB6B24FAB),
    .INIT_55(256'hBCD3C1AF0232E583E26564D102B3069D5C7072A56C275475B4291C6243F4885C),
    .INIT_56(256'hDF03EEF9A11A92EC3787FF948BADA62EA33049849BB8D2C01E166D2476715345),
    .INIT_57(256'h484E7D71A9BC8D1B04C243375AE8AEAFFFE918BECBD69A15F1FAA6E718BA49A7),
    .INIT_58(256'hDE28E26FB8198255E04BC55C01B57C36CBE78C8BDAB474B08348944694ED335C),
    .INIT_59(256'h7A40A4AA4C6B3E5B837F463A15CDA61BF1D8506F0C2CCB81FC50A87CF69C4A68),
    .INIT_5A(256'hEA05E596B5BC0D6FEC56B2EE6AB2F70FD3BAFB3ECF08B56F19125583EA764B80),
    .INIT_5B(256'h6B9D4DFE675FE08590E71113358BFBDCF1443F1389ACE6FDF0B7FDCBA9004C62),
    .INIT_5C(256'hD8BBB90686F8482DD9AAFB393AECA22EEB37737B0BC5FB68BF2C5B26F76547C1),
    .INIT_5D(256'h8DA75F73B8FC5E88EA17E0E05122F5387666839B49D397AAD79B608F456528F8),
    .INIT_5E(256'hAFBC3853EB94FC8E2D479109DB901A21444A06278B3C335EA5B0684683971877),
    .INIT_5F(256'h84A3D57E8C34964F18B1F771437FFA9C5072731C4796C52E481A8DD6ADFA67F0),
    .INIT_60(256'h132CDD613D3D6CBBC79FED0CF63924B9299DC0E61F14A534847F3C5422E8A415),
    .INIT_61(256'hC8E781ED320D992F5D6A342CE85F80D062A4D9030E675A84A994D5C89DAA5DE2),
    .INIT_62(256'h3038AE07138C4AE0A8F51E7334200B4A2DC04FC649AB53AB6D96A786BAE4263E),
    .INIT_63(256'h73D500410114C32F850D6CEF3D953BE3096423CC34C3B1734052E63B4EC6BFDD),
    .INIT_64(256'h671955E5C35370BFFFEC8E1F35D8FFEA466279CAFAB0776BA0E5FA6A10BCDD8F),
    .INIT_65(256'hCEA9216A4DA9060346B0C67298ED18B5D392A78C373A31D4D420A69D4D35878A),
    .INIT_66(256'hC10EF73D1090E46282A80B68E2207821ACB6DD73AD1E3B0F5A5B54BC3E931358),
    .INIT_67(256'h4BC66FFE3074FB41208215670FED261820CD93655E544C0FBA3877849DBB8667),
    .INIT_68(256'h92B4EE43550414D2A0CA1DCF5F113F644BA7B5280D9CF8A5C84E51ED5292D978),
    .INIT_69(256'h0781D699AF889B7D203F93D39E313116B9E7B857F06A2D7318A226F13C3DFED1),
    .INIT_6A(256'h2F36DED10677E4D170B50546A5EF379185C7F192366B86058137BC5E194F9E6D),
    .INIT_6B(256'h510AF21B62DF6A3785C6B59D5AAB8C2FABF018277A321CBFDF60B71BD493CB0C),
    .INIT_6C(256'h6DD361713915339127C13C0B3679B370A1B163C1D52EB9BACFB68FD9D06F7E76),
    .INIT_6D(256'hEBDEC6062273A6428E976FF1C999E1712C54D90DCFE3EF9CCCE49C363CBEE41E),
    .INIT_6E(256'hDE380B1111E5B3940F02C2E02F84CC4C267C614753C2C67068A174F6393C68D7),
    .INIT_6F(256'h10D8BE2FF4ED132C54927CFE5CDA42539E0AAB529774CCE179E7DFB73F51AB28),
    .INIT_70(256'h55261ADDF22BF68E2A43504B765BDE537C600488C48FD48BE37BEEC732D83F79),
    .INIT_71(256'h2CCB22EEB2858695B2E9B08CBD153BBC709F167F3979800455F47294B69FE4F1),
    .INIT_72(256'h4707DE8C28EC2B58226EB44D0F4BCBAF4D8426BC3ADC0F616F0E09F524895F86),
    .INIT_73(256'hB8D69BA7DFD6E11DAB8984F885218D46E36987984A1A222C2CC564ED722DABA4),
    .INIT_74(256'h2D2CFA38D71F5BDEE444285FC07E758DA0B4259CEB85EB00F79C67749CE1C04B),
    .INIT_75(256'hB6DF79DE43C8B6B98B1175D2E3EC5B33F066B844796EED60F523D67DC5EF7359),
    .INIT_76(256'h40519FF7A500ADFFD5F00603AD4A9EFCD0CA148F50024C6AD41C25163EBA6755),
    .INIT_77(256'h396A028DBFB6C387DB674BADDF66B6A09C6A9D1A09544DAA8D6AB63089653E2A),
    .INIT_78(256'h0294459DB42120DFFF4D64CFFEEAE9B371CB67CB15D6DD04397C5D2B84143D42),
    .INIT_79(256'h053AE81662FDEA67D5AD577BC8115D82E9C2771D7A30BC52E37C1177FF753964),
    .INIT_7A(256'hA5C96DE848443C34D30148D0256568C4F97046801E9160886AC148634F024EA4),
    .INIT_7B(256'hC4A051B5DD092BE6ABB8DC7C4BF404A11507F61F70D409488F55F77E935B2952),
    .INIT_7C(256'h479FD4B694B3C4BB280FB06C3227A36FD02B0BE24664DC79E459E627F40CB610),
    .INIT_7D(256'h96BA2D37E0DBF93FB824FE173D1318F1EFE7C54984EC4B5C9E682AD39CEFA6BF),
    .INIT_7E(256'h98C9B42B44FCA7186AEE192DD6975368016833E22FB6B8B5798348F85C958119),
    .INIT_7F(256'h76305A71108742C98ED25F8933217D1D9480141C5C0B6E006FFB777360056192),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1955728CD4675715B400EA6A50E575D73EFA406E833CDF5033C2F96D9571ED8F),
    .INITP_01(256'h9F063A7D14A155C6AA2CE2275243A7B1041C0CA3A9442F8212C73C985C9FFFEA),
    .INITP_02(256'hC5B33B89174E8315908DBD14CDE1B5DC0682BF0D5305ACCD7E71760A964AC9FD),
    .INITP_03(256'h040EE33289E90663C974CE145C624DE326AABD7F06B12B9EEAE9277B73F00842),
    .INITP_04(256'h3CBD0EBF290F50DAA0E6C66F7BD12BE03D19F1AD28EFEAFB5C172E5A295A1502),
    .INITP_05(256'h310A9602EE0EE3388758B5F364956C071E10A04E80E3D9E32DA300339DA16557),
    .INITP_06(256'h0DC8622FC83946DC46E36D00A50AA1479CE9960685C98FE5CC03AB4438FB35E3),
    .INITP_07(256'h04D250830985263CC110D6EC55500538E7ADB2F2987A3F348F537B5E649FA704),
    .INITP_08(256'h3EF47F5E6EDB07005A0BF7B355BE79CC728029F34BCFE6E3112BF5DC7B9717E2),
    .INITP_09(256'hB2EFB8B5392B98E4AB67B528EBD03FB296A5F5217055C4537980878911963078),
    .INITP_0A(256'h5612E6E17B13CF38D4838B5AE4FD2F62144A16EB13F267D0806FBDD999D31949),
    .INITP_0B(256'hE534BC1A1232B0EF9EAA9F480E4C5C8F54BCF74F34FC8E462E2E935775EABD47),
    .INITP_0C(256'h9F5BAA292F5774DF31FE90188F1A1EB3D0F9088495AB8B4CA9B0D5D6E19A0249),
    .INITP_0D(256'h80B984DC17D7C21E4E7D7AFC8AA5C17BE89A15D759CD8362FB98323082D20007),
    .INITP_0E(256'hFBC8A18AEDCCEF787D372A49B3E61190DBB5783DA6485BA335A5D17DE6D87F2D),
    .INITP_0F(256'hA5CF2F27A2ED6F08D1DE6EB62D2951E065ABFC667329539D833B696B95B29BB8),
    .INIT_00(256'h2246D0197FF745C97A8C71979BC2FBD836FC0100DC847DC9102CF0EFFD8741CF),
    .INIT_01(256'h73E254D6BC434EE2EFD00D11605B38651762CC39EFC3DC75BE2ABB9C301C001D),
    .INIT_02(256'h972C46D93C11A9AFB852B4691DA368B0B386B54B925ADCC2255271143C8B6AA2),
    .INIT_03(256'h373B0A357E9CF47274B47A00CE81A7B6F04D24AF95D73D7B1267E7060DFF472E),
    .INIT_04(256'hE2446C4F8773C68A4B310D5ADDAF6A26B47E9B15A71DDDD3DF6F08CEC3384BCE),
    .INIT_05(256'h27613D2C99EF14E8C0F014663E9D07898EFA8A760235BE8BBCCFCF48DB907CE1),
    .INIT_06(256'hC71E0EA34B7621158B2024F2CBB177DCD1E499DBA74AC6C4A109E101FA1F7C29),
    .INIT_07(256'hF08CCB746EBB3572BF6628029C3E8B62423B18EE9B9B7EF3FBC3711F5F4F1E52),
    .INIT_08(256'h77B0830408A66F20840496DFBD7CDC361CD74489D0BFDA4C9AA2CB6041271E36),
    .INIT_09(256'hAF1D3D47BA150908CDAFC076E9CC0902B69FD371A6E17ACF2C12DD9B9DAC23F8),
    .INIT_0A(256'h330FDC4341187530E66337E9ADE2302FFF19611B0F0533ADD4D686DB463AFCD7),
    .INIT_0B(256'hAEC76A838F4A73EAE0FEE8DEFDF3F9475E457F37A0629465986C5504D996711A),
    .INIT_0C(256'h7D3A7EF0C0A2597337B4EB6EF5BD614921D07F9616939EA5AB938476B9C65DAD),
    .INIT_0D(256'hD919115F6EC5BA78D45A4E6FC7635B7BB04784D979747BBB0C212F0E6208352E),
    .INIT_0E(256'h5696B5D7AC94313C5EABD3A38D5CA472A7148ECB59FE4713463A1FCA512FC855),
    .INIT_0F(256'h12CE55D418B959454C79354D182A9C53F74B13586175C439579BB88447D057FC),
    .INIT_10(256'h03FCFCAFD870C9A0662BD62EE2D8742B84D48D80A3F90815115A86ACB715F6B2),
    .INIT_11(256'h461BB5C56E8CA871ED60726C7C1580D3F9A4A350E99D24E3F3C426952BC81157),
    .INIT_12(256'h6648CF2E34BA5DAB2CCC1E8B647986B605A75AEE4E09FF803D6B753C9740FD27),
    .INIT_13(256'h6D0804852E5DF745570AF6A6BFF8EFFA33C98DE85452F9D1581E681CDE8D92F2),
    .INIT_14(256'hA8FFA42DEBC9E32DB10C01217ACBD479C3FEC63E16D0DED5CC41A29F66FA8E48),
    .INIT_15(256'hCE34467ADB61736A97154E10BD678FA712B60D393512DE5BA7E2190AADC71FA2),
    .INIT_16(256'h792D4FF0DE28A6F3F5FED12C5835F87394877DFEE49A59C1C26A1A1A6643EACB),
    .INIT_17(256'h28793AC1014EA782CCFC98629631B0C3A714107F2645B457134921AAD2F67E8C),
    .INIT_18(256'h590993583BBEF3E6F79BB14E45E929B2641A5EE1BC09FFE720C5C1B2A0BC7C3D),
    .INIT_19(256'h3754371C11612BAF012CCCA1C26F0A868DC1F63A56C06CD8119A31904D928B86),
    .INIT_1A(256'h2E5120146DDE4FAE5209D06C44859C32A2DF1C046CE91CF7AD3DE9ACA8B24F25),
    .INIT_1B(256'hFA3EE9947481B84AEF7C591C97BDC13673FA85D25EBFDED67982821924E210A1),
    .INIT_1C(256'h37F24BCE97EACC86B48C7336A64943DB0F999D375F238F00F1CFD310C779D0E3),
    .INIT_1D(256'hCFC2369A1E88ACEE9431BC26532E9366B1005CB81141FC9BAB175A8206430ADF),
    .INIT_1E(256'h6B0DBD5671E274D2656604F0859D0F5516426E9E77C4CC86709C59B9E954A3CD),
    .INIT_1F(256'h038E4FB078E492B48D3B6F3C27786B85CDA096470349B3B7FF627FB4B4854B84),
    .INIT_20(256'h7CB07266CC397756ABC87F221CAADFF8AD0E3994422C724BD068C3598DC65E81),
    .INIT_21(256'h6B6FD82F2CF77D82ADBCEB8B6C17D1CD4ED0EDCD05E5E4526FF47686EF056CF2),
    .INIT_22(256'hB50ECC8BB129E576071A32C7FE242710A2EAC4EB66032AD87AB3AADA20E403E2),
    .INIT_23(256'hD89A98B95CC8A2B9CFE3C8235CA97F1CD7B1CCA39C452478B80CA8E3D1CD95A6),
    .INIT_24(256'hE2963A6E898C85AAE925BFA1E71AB3E2F4064735CE67C0CD07CE75914AFE3B89),
    .INIT_25(256'h7F9515E024572DD7C734F43CB9BC3A2AC4D98EC6701C079B77EE9822193D7153),
    .INIT_26(256'h0B20476BFFB76687A28CD76B1EB44795746520717426CEB1DF64DEB01E6189B2),
    .INIT_27(256'hD2A642068F4DD8ABE6563E0E901A6FE32F20D7594A85B94BA8FC8195794B71E1),
    .INIT_28(256'hDFC7718467333F71B40E1C95AB53CBC67B567E4DDF1636BA3E8FFAFE45063A0A),
    .INIT_29(256'h4933B303C09175B6C747308E2682A3524EF4EA52C58496730B48A4AF42876A11),
    .INIT_2A(256'h9DAC21EBC0C304A11353F3023FF2AC730B82515BD58A8440BE858BDAED0B9427),
    .INIT_2B(256'h16BCB99D0F4A5B53FFAE7A6A871A07499D69FF91ABA2742C9A967AF5F9E1955C),
    .INIT_2C(256'hE81FC95015EAEE20D5985D27BCAAF5A58AC6CEFF560C7E37DB4E7D0153B0B782),
    .INIT_2D(256'h7C655712ECF8775355BC7A5DED75436C52E045C3CC4814562F00A536370E82A3),
    .INIT_2E(256'h579DCB44F90DAB7AC7A020ABDD5F694393E9FE237DD95EFD9043051BE74ED34B),
    .INIT_2F(256'hD71BFB6041EB31D6DCC6B379E58479E6B3EDE276A28209BDA452C015EF06A27B),
    .INIT_30(256'h05AC1B90723D232187599ED86D4FECB5D17BB7D90FEF9E9F25D888E76087B0F0),
    .INIT_31(256'hD70B8BA20C50B7ABA51180B790FD708F0391737152632A8127E69D3E8561FCCA),
    .INIT_32(256'h562A0BDBA9113B079285C9C26B9F7A18018EA61933B4CAD0F90D2042AFB06BA5),
    .INIT_33(256'h80C303722544F1F688BC3CC1CD28A5F5FBCA24FFF4789A012BE1600F61792CF0),
    .INIT_34(256'h5F0028D42D87A1C230E4FBC48151F361A08DEB4BEC4CD7BE6A81C3D996D03439),
    .INIT_35(256'h8DC5842A715F11A5C278B02C4C5388F95BE2D759E8971DE21190896E06283913),
    .INIT_36(256'h13E7D4B7646DD3FE202491384E680FB88ABD8BEEA4A3F793012D8C07597B8A71),
    .INIT_37(256'h8D840D058EBE47420C9F0A78B2D324F0FAA4F3F135E32E2391DBFED69B0A345F),
    .INIT_38(256'hA0E79CB29BC8FFBA455A0707A19596E3680ECE2B656F4FF1D461E1549ED693D3),
    .INIT_39(256'h6D17F955341976750D35EF9769DE7F92B91C2D48257386DE39E6466756EEA175),
    .INIT_3A(256'h6DC0420A9B84862E7BDCCADFBBB356E0B20C02500899DB45B3B9793666727FA2),
    .INIT_3B(256'hBFB5F39A26B563BD62CA0671FCA60DC6F9D8EEC579015EA1FCD1019A48FAB134),
    .INIT_3C(256'h2CC3960562483A5296E4193589F0980DF6E38EF1EDA569452F4C693D7C49DBF2),
    .INIT_3D(256'h99F8C935A248265D8664FDCB913BD77F2735A467B5C330266347582C8ABAF336),
    .INIT_3E(256'h90CBD3B4293B6C57D86311C50370EE6AFDA234EC23052D6E4754C760E0006D65),
    .INIT_3F(256'hB1565388A397B0E2DF7A10D64682049EBB635A7706B670D18081176207A52840),
    .INIT_40(256'hDBC19AA4C7B621DF0831CF94DAB63C16BA433608F10632FA41C07ACA44151567),
    .INIT_41(256'h35793DCBC777E6C71299661A3F0CA6E6B3D1B50CECA02A22108A4A68003830AA),
    .INIT_42(256'h15BD0864986064D32BD8004D2D1B9D84F562F6F617E6C33C42DCA06E6FFBF63D),
    .INIT_43(256'hDB44D652A0F4775FFF328AEDD431A4FC28BFE9786ED5C7B688232E94582D0320),
    .INIT_44(256'hA14F7D7099CDA286AC71BB23EF268DBE8FD5F67693B1C3AD1D12D538487F4AFA),
    .INIT_45(256'h26018190B014DEDFBE9B81EC516CC742D59DD17DB405C8BF8AE45385DD72B27A),
    .INIT_46(256'hB3240A1063AF0B76D27D4AF8EBFD13EF9498BE5034C62CE060A2A1B5A7DBCBA3),
    .INIT_47(256'h0C9D12AFCAF8A3D579293A427319F209D6D65991F0D6B4244297AC2FC5B80A25),
    .INIT_48(256'h076FA8E15F19C87BB85BD63A43EF08E9E780F75CD4EEB96B27C63389ED74F0F7),
    .INIT_49(256'hBA5AE378CC9EBCB7F399C11A32E8FCA22565092EC67AAEC94B9296BEFADED856),
    .INIT_4A(256'h32FD09548CBF3A2408817F158CDC068194E682037CFF18BD7572791E03C1D99B),
    .INIT_4B(256'h964898FADB5BD0964DF129A96FD1F83B2C9B0890E93455BEE37892E5D25F4BFE),
    .INIT_4C(256'h7982C22A066440C44C6D1928A169DDA9F151EDC16E1CFDFE50067925E00EEEAA),
    .INIT_4D(256'hD5B1D2099702F8B6C9CA8AA665EFD9D9DAD77D060D21AD35DD3CBDDEC471CB1C),
    .INIT_4E(256'h288F56F60426704C6F079190B4AED697E2076DAA028FF235D1DA9292EC0B4429),
    .INIT_4F(256'h7F3248A5CC17290613B1DA5E516CA22DACD28F857BBAB2055161121F42082C22),
    .INIT_50(256'h45928FC5C06F1A59A75C211AF4CCCFD7A9179F60FFE1B8E24BFF2F8C1B171E37),
    .INIT_51(256'hE37B242A1413CF4F483293E50D2E41DBE50204A91852AE523433DAE397B519FA),
    .INIT_52(256'h007FF4E16BF5899C85575B14338E33C67ECB4A9EB932FBD671B1A8E926D0C043),
    .INIT_53(256'hAA6956B5F88FF6CA65DDE2DA0915AB262E39A171BB45623D3A7C44318ED2F7B7),
    .INIT_54(256'h0C51A4AE4E9770ABE328A47924975DE4B20DB89279A63CD2AD6ACB0C3F3CCF23),
    .INIT_55(256'hF3D835A2F8605BCB92DD12E2BAD6DAD2504D9B7F38EC878CD29C0ECF3E556C33),
    .INIT_56(256'hCA2B3631455CB288E859067C271BDAC12DD79BC5062354AAE03753AFD920D0DD),
    .INIT_57(256'hF3DDCEBCCE693F595E22371236FA9CE00B0E335DE4C63B5F445052EC7394BD29),
    .INIT_58(256'hB08366DEFCF4A3F960105908FA3E9E3653D16610E8915E6471980149A8D9446E),
    .INIT_59(256'h207BEC8EDA616A4009BD2A52AC3E57A9C52D9B78C33AB68C7DC4E71194EA7D40),
    .INIT_5A(256'hCDC317B4ED69900682FAE62828CA7D34A312F82BA120F99519407FEED40B2FE9),
    .INIT_5B(256'h703A013D486039DF89307B3FFF0488659DAADE1F581BCFAB4938063954829ACC),
    .INIT_5C(256'h2DD5DE93B6A1E03A99997B0BB2B5F31B9D9A178923E9EB681D9B94649E552E65),
    .INIT_5D(256'h550CBA6C26B4929CA5E3B0BFD27E69CCAF244528C5D19C8F1D41C848DA6F9AB1),
    .INIT_5E(256'h105AE92FAB2BBEACE09DBBF393F16C6D9AD985C0C9ECA77D3916CC7EA6DBEA6E),
    .INIT_5F(256'hB3404E0911A6E55CD1E6DC4B8CB9FA37B774ED86E4A25D37C6142D6114364444),
    .INIT_60(256'h0D4FB9FB281F7FCA49B88EE0D8B34635E6D3ED540DE1CECFBEAB5BB4B7B2B9FF),
    .INIT_61(256'h1C42CE544FDEFD0758DC90F488D565CD47B1EFE50A04C1C9BCE06E432B7B58E2),
    .INIT_62(256'h3EFCE8779823069B1F3506D582795E65CAB50BE52BD2D9A77E277A35C984DF02),
    .INIT_63(256'h482F876793E67C44FD26621FC9CDFB1A11DEE22D65B57D4611D2D981243BA116),
    .INIT_64(256'hD38759795432A164AA74A6BD260DDE8BBDCE1802DAF2A7B9B871B123182BE299),
    .INIT_65(256'hCC72CE6E2E64EDA97D49D921BC50642DB48EA90FAC6E3C961E24AED483CBFC26),
    .INIT_66(256'h7D25D97140999D0BFB73C404D8B84600E8708A130E83B922FAA7322AECD0524A),
    .INIT_67(256'h761F0F1CA6E2B39FC4BEB242530DA847549B834D32AE9019BDBD768345D74F0C),
    .INIT_68(256'hE95771EE163D41DE0205A19B08AF7A41B5EC214041059FCAE33A607A4C6B5782),
    .INIT_69(256'h4059EAA786454FF2CACDACBA1538EED7F43C555DA74597E6AD39CCE75CFEF3F6),
    .INIT_6A(256'hAE922B2B1C86DE170A807B93E20938C831E16C6918D641B27E7838B08359E182),
    .INIT_6B(256'hAF81997DEDF52C6A1BD8ADFC946745EA9C52AB1ECA9BCA397EA51F4FBC46755D),
    .INIT_6C(256'h03DB0DD07B97478791C84543109719CB600A91A28889B05A602D42639858E405),
    .INIT_6D(256'hD139698FD754B5E6C9895F1D5F7F6402A63DB857124825CBF8B218EFD8D56A24),
    .INIT_6E(256'h3671E2F02BB0E83783BCE202DE40CCC676C4D86B8926292B146EAC1AAB48E0C6),
    .INIT_6F(256'hCA7588FF2544C98AE49337E015F46AD26568CD3DF6DAABA50C5B9EA255879FCE),
    .INIT_70(256'hEF64AEA9732E2ACCB7C7323B2182F8D787C7834B3F75BF2825451643B3185AA1),
    .INIT_71(256'h50BF43249BB7554CB230DB7217EA690BCCA1803CC457C425D2E6B1450AFA15F3),
    .INIT_72(256'hFB13E48B15BE39E67BB612D362A597834978B094F62B130028F2D2B7EAF8B4BC),
    .INIT_73(256'h8005BBA1909363EFD6D28A1FA312613CB4D56F1B1CD042D53DA184772AE04B83),
    .INIT_74(256'hA5F89BB1FD49F79EC7EE5E0A0F86C74B7EA9B47E0E1D3F44C4558FD094ED9546),
    .INIT_75(256'hA8D80129147A653E0A417ABE27B21D02712FE20110EE5F1F02646BD9ADC3C044),
    .INIT_76(256'hABB4EFDC9715445CBD08142B1DB49AEB91C8B6CFBB8021F2E67ED596687A57BC),
    .INIT_77(256'h509A7F99228A9F6557F090B7113FA66C27E0EE1ECC69451B3D633AA6380FA76B),
    .INIT_78(256'h01C714E4191CE82D109E47A2AEE2DDFCF5E16B2DEDE5F20B003D5C0F44BE2E4E),
    .INIT_79(256'hE2CAF94432C9EA98DBC20D0EA9FB166EAE93FFE2361F294CF4CF76161B30779B),
    .INIT_7A(256'hF1B90EE60B5A9BF61103CEF3133FCEFA271EAF8BE65DA1A5960B36D6EBFE3D37),
    .INIT_7B(256'h1F64DA557276D407725618508CD9B18BE7B49375B2F3924E5D6CE3B69F01190F),
    .INIT_7C(256'h5B43EE633DD2ABC79E836B3779EC148C0D4683E585F6802F9CA0C1A4F5062C16),
    .INIT_7D(256'hEC0E95A8E3B2EA82882F7E2F491C6E1DF7A961ED6DD88DA56D765F361B9A8954),
    .INIT_7E(256'h839A8E3BA103332B7FF2D7C93A9F23AD36C6DB1C10DA59C92437A2DD02898169),
    .INIT_7F(256'h45EEBDC67049D1E126ADC2A4FA781A2697CD0B820174EE20C38E2DCDCEBEC653),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized16
   (p_75_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_75_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_75_out;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0B0099B748FEED693F29C338A12E7226F7B05A778F88BCE4B5701614C413F6E9),
    .INITP_01(256'hC064FD41F6F0C8952E5B4066AC3541797C07BA12EB40668E7B103F6E3C103165),
    .INITP_02(256'h0AC21CA78217E1828C8AD486646F7E2783672294AAA2D15504D4989AB57AD8F1),
    .INITP_03(256'h67F10949A9834FBF4EAF6F21B7D62656D73EE1FC49D8068E034C1854A7FFFF4E),
    .INITP_04(256'h97B2E84E3094B6A2917C36F80CFD08B0A02FF3B8B1400D25C82F222960AEBED5),
    .INITP_05(256'h9B6E7B86AB73706A22703F968F633C96D58E2CCB191F160B9651529CDB4A1092),
    .INITP_06(256'h9C54A40B95944265E6495302C26456C792DA4B9AD6580746660BFC944C9301FA),
    .INITP_07(256'h737317393A676CE843E61A17C1DCFF2BC8B34081FE76402B3D4B61AD43477B72),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3B9F6DD7E22F2173D709C4D81130253274994ACB958D5ECF487E35C68E69589A),
    .INIT_01(256'h2B04871A95233837A9F2C2C05C53856B15B976005B635B31C98D6413841ECD71),
    .INIT_02(256'hA344C96C2057BD539E69BAD48042E0181B4E2CE5917D92A552D503B69C7A5951),
    .INIT_03(256'h2BD21D32D9707D8B10938B4909A6A2F546E6AC58E9B33CDD666053098E8209A4),
    .INIT_04(256'h04B53A64D8F2146EEA17CD6E9CFB5A08C9CDCC4B85FE5C2BA4A9B84B8125C361),
    .INIT_05(256'h6EC46E3DEDE4605EFAEFB873855690E5D630F7932DDE26350491F77ECD49FBC1),
    .INIT_06(256'hBC593D600565994B6E58CF4EFA1B7E3C4BD0CA6B72B2256B81F5309722B707E2),
    .INIT_07(256'hE454D9296FAA308FD21E654040FFD6F99A4F356175AF1D33F929A0B7D20F7061),
    .INIT_08(256'hB7BA5E128CDD20AC3B0D37F05943E4A09C5AD66E710534DF9E9E39A7EF611686),
    .INIT_09(256'h1AA45F643DE131A2CB087B3210543C9A761B27831B3DE2D8EED188CC294589E0),
    .INIT_0A(256'h2EA28605CA3553A7778B78A8F89194E642A01910197BB264FA0FC123E2E34F33),
    .INIT_0B(256'h593659EE9999A87BF8123F99B4AB6D7891F785C61709E39536D6E1D6A727AD02),
    .INIT_0C(256'h892C14D08512A87F6481D925250BE510ED26C05554386E3CF23734D2C4F46C8F),
    .INIT_0D(256'h3B0960F8EEAF244CA3650922363EC65B79DB460413E6FF85A87FB6CB67A370BF),
    .INIT_0E(256'h1F210415F00A61027101EE31F2DC0C0DF890C909DC4AE244897BB957E0B0FB14),
    .INIT_0F(256'h425C88378AB03ADDA89B9B4D4FE5CBAECBE9DC1B4C7454AA5C7778B3D06EDAED),
    .INIT_10(256'hF03C50EADFFEE7EF89DAB7D328DE4431D73C22CB24C883520260B2360D709D69),
    .INIT_11(256'hF303A7A7541B05227A2A6F823D00A1ED6400C466FA5D81DD9C4B37FDF27A9220),
    .INIT_12(256'h6959FDF4A94F73F4807AEC4ADD907586E9BEF9C3517B84AE3F59F92F03E8004F),
    .INIT_13(256'h26C39F2D1ACE46FC1F2990B7A4E6586B1E27A80C3D73D0E676B0FEDB2EEB21C4),
    .INIT_14(256'h73930A83252E8DB6013F921EDD8704908CC9BF53239BD09A8D0B6A5370FB83E8),
    .INIT_15(256'h6F1E3F48AAD708E8F24A76A44E7458D32E16237C49D53F92A76982321DFD101C),
    .INIT_16(256'h1AFD6D1303FC59568D6133FCD6FF03ABDCFDCD0A8C6569315842A63457A53D16),
    .INIT_17(256'h46BA82111DE7AB2920FA84504CA2E7186C9898F0F82DB52CF794D29560DB269A),
    .INIT_18(256'hE07D5CB276B314097E6CE017310B51D3D5AF79E47B1CF3BA5D0B98608EA18472),
    .INIT_19(256'h89E717C707F73BC5A2F2C0C809D384EBE5B28D597958E450340BC3AD284F3831),
    .INIT_1A(256'h5A122DF092CC7FB3F96D760FBDEFFAD032BCD7AD9C01723DC6D3A53BA8869101),
    .INIT_1B(256'h42ED5631E944C19A13AB48B3E35B84B94C717ECECA8053C4D19FDC17FBE290C6),
    .INIT_1C(256'hF8A542B459414E72A08E1994D1D5B20F388506913D867A12B247744864B861C0),
    .INIT_1D(256'h355DBC65DD36C137763506080277E567E59CE97ABC1EF6464C5347EEE9568D7C),
    .INIT_1E(256'hF397F451206EDD6BE97BBC057559496D0B50726913F1CCE153865C53CF5029D7),
    .INIT_1F(256'hC546F8CC24F02B84809F42EDC80F39AD7BE92AA31CDEA99B06CBC1BF35115C40),
    .INIT_20(256'h528DC25316F5749663B4A73AD308B7B87B65A1F561EA73C2664688368FC0A730),
    .INIT_21(256'h3EF79AEAFFD434D74AD0E493868439AC799880A3828371718599C28B194D361D),
    .INIT_22(256'hDEC5476384C75269F9D8E1A2B3ADEE650008232C310CE36CB8788CA361BF1279),
    .INIT_23(256'hD874A294539CDA6C78F09B65BB25DDE2757D5B7D8EF91632E473D8B7C7CB793D),
    .INIT_24(256'h76473B7765CA26BC2D6FA344C694D070EEA49806AF9DF761B4712F692DC7E053),
    .INIT_25(256'h0DB892CBE1D6E8A90F5C2498DA5D383DB748C82AB2B97CC4C65EB2C334EC3F1A),
    .INIT_26(256'h66252A78DC651ED6A0F0DB3E9453C54A359AC8EF67940384A4B6D367267FAA9D),
    .INIT_27(256'hB2BCDFCFA0434B2B4E1DA4FEDADDD35241DF3BC790FD017BD5D07C8A24EC0EA3),
    .INIT_28(256'hB063D67CBB7BA3A660142CA9A4FB4A0B36A8446BF915C1698DB6C2040802AD23),
    .INIT_29(256'h1175474C44BEBD8FBB9655B32903644B56CF56C8E3A3871F18F81E4B79A563EA),
    .INIT_2A(256'h068C9B12FFEF0D351D5F176ECBD21C66749A8BF40D59A2A5F01290759E248FE0),
    .INIT_2B(256'h3BEC04975BCF21C487D46D0A00260607667E018E2C51E571250C34551158BF76),
    .INIT_2C(256'h62573A934A12F6F757C40E3EBC4640F0B50DD679881344C25EEBACB4B070F62C),
    .INIT_2D(256'hF4C6737FC5D33327C776C7BD831EBD13E97FC68ABB61FDE8D1E45BEF20AF54A8),
    .INIT_2E(256'hDCA320E65F05415B4248BFEC900BB43BE4D67950FD853B35E6A5837314D6645B),
    .INIT_2F(256'hF2459C7BDB132AA4CFCD6D0F4E79F1906E164AE117998ABA06256B774633D68F),
    .INIT_30(256'h6B89515A73837CC09613239E682C0480608175E6DF009193DAA49F89A0266A5D),
    .INIT_31(256'hFDE950C305241C8D02907E9B8C12B6FCCAE493AD3185437B2A5F231E481982C6),
    .INIT_32(256'h1BCCA3C1FD491D3EF7DD755160E5AE0E9588BB50421F9911022E1602E6B9871F),
    .INIT_33(256'h5B40FBF2DA6A87F85CE3C4609C40195DBA551A081B15B17DEF678D2DE69CF0E9),
    .INIT_34(256'h334380A24FDB15B800DE6864412D00B420B463B5FE8E41683E64FEBE7B8C3668),
    .INIT_35(256'hC844EF3BB3E315591033DF5EE06DEF7EDB86A9B39AC4ABAEEEE3E4D274676707),
    .INIT_36(256'h8988222928301E51325EF0C3755010EEA552134C4E8D10B61CA52E154D7D3495),
    .INIT_37(256'h4303F89D259AFF522593171329C7E735E2F31981718D7927F63945485478FBE5),
    .INIT_38(256'h3E0DCCCF172F197A9D7E80DE1BA0F53594BC6A70E446B61BDC67A48108ABC3D7),
    .INIT_39(256'h8ECBBEB1D21547CFF8D2B2929E4BAFFE227CC580C78AA7031ABA474A52CFBEF6),
    .INIT_3A(256'hE94304A585D2459EFD43DB172560B615F258ECC8B39100D889CF286E011BE2F2),
    .INIT_3B(256'h194A2E196A16FABC18C8951C068DEDAB39F9BBAE3E8B5B2AB6D773D720E84261),
    .INIT_3C(256'h05A499E69F50C67DE462A29ED961BB393DB0AD88D66C417A0B1134E8AA5DF60D),
    .INIT_3D(256'h377C0334192AF02BFEF85B27547D3D00D52740B10D1FF031BAE73C91A1EC070A),
    .INIT_3E(256'hC73E55F21DFEB359186B8E88604641C6FEA8C24876ED75B18BA312C60F53BF40),
    .INIT_3F(256'hFEDDEFFD4BEE267BA0A20EAD736BBB6A859D788C5E67637900EB0FCB13542D3C),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({p_75_out[34:27],p_75_out[25:18],p_75_out[16:9],p_75_out[7:0]}),
        .DOBDO({p_75_out[70:63],p_75_out[61:54],p_75_out[52:45],p_75_out[43:36]}),
        .DOPADOP({p_75_out[35],p_75_out[26],p_75_out[17],p_75_out[8]}),
        .DOPBDOP({p_75_out[71],p_75_out[62],p_75_out[53],p_75_out[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,wea,wea,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hDE99B5FE50CD81E1C45A143C190D1C78118FF34139C71157367E369C8BF2BF1F),
    .INITP_01(256'h14546B31D1B5DFBEC3D5C006D15B112B0154C9CE441D3A35F3CA86E88D03D040),
    .INITP_02(256'hC01FF7DCEBA845931D8858BB415C3920F6322DA4DFCE30B0A9C228E743FA941E),
    .INITP_03(256'h2511475D7C90B710BEE9AE4AC9501DFA85BAEBD765D26577A3D0A4D87DBD791B),
    .INITP_04(256'h89C7C876CC03964E2411C916080D5F393E1E0D0B1709606D964F826F98F94936),
    .INITP_05(256'hB526842EB653F2DD78508DDC0F79BDE0424D5957238651ABDE02065259AA4317),
    .INITP_06(256'hFB43A8593582DDAC5F8F387865138189E9C350157FD7FC7A2BEADEB98303A874),
    .INITP_07(256'h6F587C3EA8D36517B69FE0746AB0DAED381E06C5F6E1C0E005B657C067A4388E),
    .INITP_08(256'hF707C94F3AB798EA8265764A41BCD6BDF471764ACAC7CA877A317CD6C904E5CC),
    .INITP_09(256'h1CB3D9A8E09DE9EE01B91BD527F74B44F7D08C799FE83D005757FF3F14E68C21),
    .INITP_0A(256'h2148D4ADAEA93D22BA8EAA631281DB181B26225D5F2D14C2F16BE1F5516CBC9E),
    .INITP_0B(256'h73A2FF6770D4C80AAF72B0F9D8B2973AE427321845E91FFEB9393385175EECFC),
    .INITP_0C(256'h6CD6E9764B4A9B0B08CF12FE52A698C2AE1A8A33B8B80BBCCF145E7646D0BA2F),
    .INITP_0D(256'h032A845A17C1598E3BECFC8B923108C4F0F4FDB10DEE416F9A7B696B66A4A9DE),
    .INITP_0E(256'h34B7892649A8F75BC0D3D40CE5F462372EB40A15DAD9F3B48AD2AA1DFBA40F9D),
    .INITP_0F(256'hD911AE71E408A2DE2D5F444828A12F7B3626CB9889665843D7231591EFB413EB),
    .INIT_00(256'h263DEB70B0084B97D4A754054B7651791860705E1B799D97777923635D50C1DB),
    .INIT_01(256'h9E137CCF3347C933934BAF9E139297CB0D162B4E5F228A7AC1F253350A11D337),
    .INIT_02(256'h691DCDD4864E6E13828273C5C8F6FED8A605A3F6576349C2CA18115F3E78A984),
    .INIT_03(256'h193860D59D2BBDB12C196A00663D056792E60EB4AB459BB3405D5000CD637531),
    .INIT_04(256'h83C19371CEB0F3F66EB5D5BB7CA2ECE724F867088FCAAD5C39BCE595DF132217),
    .INIT_05(256'h1070C22784AA4CD1C2EAA8AD6F8DC4EF382DF55321A58A3D2F8D4C6B71436EEC),
    .INIT_06(256'h4361AE2F2D3C14B2513D30E77FFB11FE56A00F02FF0072BF1802197758EC0AD6),
    .INIT_07(256'h992019533CF9E088BD21A79FB2162C654B2F6A79E05E5C83F0B114C0B90BB46C),
    .INIT_08(256'h4EA74CEFD2C63436254112323E4546BCB56152E14D7F4072E390E59D2DAD30EB),
    .INIT_09(256'hCFF77FF87A038DD25D1469543C4C4F30C50F247F246885BC4189AD78653800CA),
    .INIT_0A(256'h02C2A94DE7D922548BEFB35B408CC5FAD9D5455CEC4DAE969B617B51C1ABF1FE),
    .INIT_0B(256'h5FDF00BD19119165EACBF104FAAD9F1B55FBF55CC88557B0DDFC2219BB04145F),
    .INIT_0C(256'hDC3EE8ABAE69CC027922D9294F7432041919460B2643681B609E506A0CBD755F),
    .INIT_0D(256'h711AD043A63B2D0609561FE7BB4C2DB19A1DE55DD5FC06D24097D8A6118C3140),
    .INIT_0E(256'h0BE1FB1D6051638FA2B16F1669B353F7D2E6E9BE7644E145A59CC2C4A678BC4E),
    .INIT_0F(256'h87042E2342E41CE9F04D75D05BC09009ACABDE43681FC73AD58F90EC4FC0A895),
    .INIT_10(256'h9A4AB0DEC25C06A6EC8108332185903A8860735E07048A5AEE223B67359E4049),
    .INIT_11(256'h642FDE13C3FEC522C4648AD3A5AD69F52EC9500EF91E31BA96A28253E967CDE6),
    .INIT_12(256'hA43E8ACB822D58F1D177497B5FFD1F2F3E29356BEC6EBC1737E919AF147FF139),
    .INIT_13(256'h8C5A1C519827342671F7070F3F0E7EB6F9BF9D03CE7BC8B96FA15B3C3B56DBF7),
    .INIT_14(256'h0FEC3413401EDE239BA0AD7679ED333069C7D3F13BB33C528BE1C0919FFCCA4D),
    .INIT_15(256'hBF040A5CC9C194BDBC4A45B471C516D8834B46E8566AD3551F489B09670A6473),
    .INIT_16(256'hB43765F33E6669E395CB3E0D68AA84DFA89FB70F8D03AAEE56E328E10B81F385),
    .INIT_17(256'h87BEF764A9E440A137F1C4AD8B2DB2166F5D7C3C8F12C01F17D5ACBD5522D645),
    .INIT_18(256'hFFA4590DFFB2FA5DF47AD2EC911234D2FC0E2B19E71E6E14497D68B35C38CA20),
    .INIT_19(256'h8714B1F8798F91C1CC54AB58BA1AABCA2D55FCCBD13186D710BFB4CF22F9F9BD),
    .INIT_1A(256'hF698CC2BF746309E9137349B1073022AB6552FEC0909947D0E0BDD0E65E2E47D),
    .INIT_1B(256'h4E3FF978E0C90BFC42929FB5C23E7AAB5A26541BDD318520E9370AED6453576A),
    .INIT_1C(256'hCB29292425943C70289E0C89BE78D21A0BC375E0DEEF45BF73FC8078A27A98FB),
    .INIT_1D(256'hF2B782D17CA3CBDC13D817CE143F4A4F69E87FC868FE7B37F9F55FC4BAA3C871),
    .INIT_1E(256'h0D432C29B1A905D46239F6C4144834091473E2BC2172CED1EA8B99403540D500),
    .INIT_1F(256'h71FDC93E79A47FAF56A91FEF0113226C8DD3FC8FD1C6D85769DA708A265C42A7),
    .INIT_20(256'hA27B5C466E270246D8DF2230458E94A15AEDAC646E63E5DA691E6B2F56EF5CC8),
    .INIT_21(256'h91AD75181CB76EE302512D517F165CD86E98E39E7F9BB1E8E16E029871487250),
    .INIT_22(256'h463C007EFCAEB8B59EE2B00C33F4293980CE377C574B55A176F72D867668D5DE),
    .INIT_23(256'h49219FF35EC2A215452FA393A543910850819D2ECAD9EAC129A2D6A95C131233),
    .INIT_24(256'h6B2D872F33B21BDFCA768AFC70539C3AC25197BDAD1CE154250ECB1935FF2C1D),
    .INIT_25(256'h8BF1EEF513D1EE7CD28A9E9080A051C54651343D39913514C5D75168B62F8D92),
    .INIT_26(256'h724D1FF6107B7D5E62823DF2B860AFBE4B93FCE2029D90EA9B8584607DAD03FF),
    .INIT_27(256'h31862A024F77F45A76477363616D7B2A566A2513FA7404EEFB8626D9584A4FD8),
    .INIT_28(256'h635B2E66C645164B2F0B3DF202B8C5D2EAF795DDEF5D7C31A3F167D71861FC42),
    .INIT_29(256'hAB22CB36EDE3C95F2BF49054D51C8C35D05C6904BCE4FC082D1697BD22520576),
    .INIT_2A(256'hF2DE138EF01D9807A55C910D529685021AAC0BA623172911915ADA93395628AF),
    .INIT_2B(256'h0E57129FAAE151A6EA975D1F2686E0394B44EF8858A2BEC7177541A3B188FA68),
    .INIT_2C(256'h7E0D8956553280C62322EB2657B2C68D9EE019B6D5D68D5A4DE58F6D69113CA7),
    .INIT_2D(256'h98915E4C0381860E35C401893022678CEF3C66F1AE3D3E80B8F7C8E2462703F4),
    .INIT_2E(256'hD3C68AC7217EC6783758EAFA23C3D9311EC924DA8224D7F69406E8149A764982),
    .INIT_2F(256'hFD58155CFFFBBB0F9A8A6B58620A2D6FECA0C51CFE437FA15F6DD037ECDF7BD5),
    .INIT_30(256'h82723D5D056C2E2C52436F24F79EB9EBBD6C69E2C23DDD12814D973C14949516),
    .INIT_31(256'h792D5C27BB5409D088BAF4363D8238D7FD8C2F44DBC998FABDDDCB7A241DB2B2),
    .INIT_32(256'h143B91070DCDD5DC98D0382441BAF90CFA7A2024CAC68CF6267A1C506F9E1D36),
    .INIT_33(256'hDDC3EA99F87B8D4FE848CD32CA417255984335713D871887782779DEB222533C),
    .INIT_34(256'h9ACDE273E3B237747ED9B63A1C1137628556566EF87ECCF155FBE72357B528B9),
    .INIT_35(256'h9E7C2C4B44262A51302CB8A282A07E80E6EA7D74E362E83D9BFF7A353AD860C0),
    .INIT_36(256'h105DC0B09A82FD65C8CD7D0A2B6F4C60EAC06BE32EC87F7DEEDE94734040C0C4),
    .INIT_37(256'h9CB38DAFE13C7914366CEF50A9EA3140C49C1FD79FF7153821D6A2C28DCB296F),
    .INIT_38(256'h99F42C0E18BD3EABF7116A20BF343C5DD2B0ACE1A217E3335D2266881AB0E528),
    .INIT_39(256'h645100412A6D888D9C9E7DA0C037236627C377BA84CA3E1457458183031F6720),
    .INIT_3A(256'h1A70E0867DE676D3D88847F6F851ABB3A7A31704C2F31F74B0115397346ACFC1),
    .INIT_3B(256'h4AF6D44E9C36C8682DF0672B4D28635046CA0A744C0D4D3CEB8436D715F8DD37),
    .INIT_3C(256'h30706E674EB0A7917D08C0DB50C5D060AD6F9005C7CDE0333EF8601E5FFAA3E4),
    .INIT_3D(256'h034D5F93A46E6F73C1EF3FFD30181F0FF006EE1025DC92A492954656C41B0A86),
    .INIT_3E(256'hB781D9A49A198AD23BFC408E9904D4BFF2BA6A029B38C719C96773C21676AC94),
    .INIT_3F(256'h3571F183DD35EA24B7CE9E61A76FDBEC7D9E995963DAF5635579A27869216F67),
    .INIT_40(256'hB95641D614EA65C31ACDE016F755C9BDB621B1241AD326828B276AF7CD980BA5),
    .INIT_41(256'h752D4EA57A75D82C8B9E3977DBC8752B5884C3064D9B74CA4F8F3C92B6A9B484),
    .INIT_42(256'hD74B94649CA8644C982C7941ACFE5683FEB0A8307243D7E6BF23094D6FF78B61),
    .INIT_43(256'h89BD93F51659A472147D5C70DD162B3DC407C3DB587CA85F5EA8EE946C5CC2CD),
    .INIT_44(256'h1A8DBFCA3691C832E032BF40DA4B10FA701C2338417345105AA617CD039010D3),
    .INIT_45(256'h6C24DB05A39E67ECBB800886729576B6CF253F0252097B9E69111CAFA2FA6244),
    .INIT_46(256'h28F9F69C4D33C2ABDBB9A020B6E14A95FB1FD755AA25378F0E6C8ED55ABA4B60),
    .INIT_47(256'hDB8FADFB337AFF3FB4D94A7C9CBD28F7CDF2B0F5820A920DAE4232BD9CF0A0B2),
    .INIT_48(256'hA53BBFBE65B26A04A411CCD4522A598E69595AD0B62D31FC43E1B4BA314B5244),
    .INIT_49(256'h4ED24E9E21B003EA6196ADE1E43F669791BA866CAAD701E037ADA38A7750B26A),
    .INIT_4A(256'h0B20A27EADB2F50B941202F6EC1FBD6912BC300CC8E7A836C5D8DF49B9CF7DD1),
    .INIT_4B(256'h9F1C7D2DB1CE3206D8C9DED8F7CC3A4782C1E37F54314B33B4F0A7926175283F),
    .INIT_4C(256'h52F558F0A056915356DE53844D89C58B4C1267DFAF5F7B7B8C9B4C83EF3AE2EC),
    .INIT_4D(256'h8FF81DECF7A6B9E762810EAE0930F814678D620711F8FD94468FD848735201F3),
    .INIT_4E(256'hF76BAE74F204F811BAFEF9DDD5696878387D2CDF5651DBC116696F570A1A3CCB),
    .INIT_4F(256'hB7A4D2A516B5347249DDA14DB4BAF1088B48881BA5FB31F69DD676A999CD8712),
    .INIT_50(256'h8488EB73FE6068CEB7B6AE1A8CDD508173395E810E3087F762F968C3D12E2120),
    .INIT_51(256'h8068EF449637E574B7B612C0A0CB3B92AD956FFC02C1BB9D8943E25079DF8DA7),
    .INIT_52(256'hE931C3583090CB525564779374F641C2B1F24605B2A7476442D593A21C97A68C),
    .INIT_53(256'h81D3B55CFB2C7FB703DAF1CBB89B20D5899A383FC4AD18012B5259024712367B),
    .INIT_54(256'hC003A77B0BE0FA2AF615FFD3243209370C77C82B80F7AA324B95B5767D1ADF2A),
    .INIT_55(256'h63EB6E2003AA5C67709012B1585EAA6A427F0E0805F07A0277B4FC9B5C32A780),
    .INIT_56(256'h5B2B516F090A44BF35210F3C3D9396295A6BC4D4F7D58A8E38AFEC192316C421),
    .INIT_57(256'h0D1B502B42DFFC3F648362E6F28B21D6B3140D6400550655FC0E631D2E8D48D3),
    .INIT_58(256'h9853A2321E30865D2C4A9F9163462B7B9E7FDF04CE1D7F073DBD4F4045032253),
    .INIT_59(256'hDAA589F5D8AE1A3553C353C4FDEB0B55CCC72C4795F97631DD03797FAB36951A),
    .INIT_5A(256'hC80F265775E217A31B577A5789D58D81F332DF5398920AFB7689C3ECC3B2EA41),
    .INIT_5B(256'h02AE162F28A54610460D8792B47F883FFC4D5811C5279EA3BAB34FB1C1E60DF7),
    .INIT_5C(256'h50D9FC58679B79606E949BA6EBC670FD9E73FF329173B368086971AD35063872),
    .INIT_5D(256'h403323427B6F926E5A8EE0010AAAFB7C6E5997DDE29B662407C315B8EE135F29),
    .INIT_5E(256'hBC3615E53A725C3C09574A044846A66E7D67A22B1914C744CCE727E7AEEF93D3),
    .INIT_5F(256'h18CD597FC8C1CED0416A78EC2F45D27E5F235E36A3FBC751912213A70B9DB349),
    .INIT_60(256'h12887C539B31AD5C175FA73252032CB4EDCCAA8F53E65EDDB8C7A2F0E6DB7C69),
    .INIT_61(256'hCFE628F1E9EF4C018D302028DFB794D15E8594C7C9414C7C972BFA743F1EEA09),
    .INIT_62(256'h90BA114C01144323D5AB99F347580CD5DE82A44527FE2D7CAC8F6B761C4A8BF1),
    .INIT_63(256'h91DD0E158B9433E119B003586FC99F642C9BA545BAB528CE97EC10C1603A498F),
    .INIT_64(256'h81D01DBD3AA3DD12A07654F24F166FB16B377450A8D65E3DFEDD0AE28223B831),
    .INIT_65(256'h9765A739DCAE0497A14DF3CDBB87F5C0CD9482DC9754B78EDE74AC2BA817402B),
    .INIT_66(256'h75215AC17DC6631AC95B89EFF0EC56A7A3BB488C8786E6988DD647A764224640),
    .INIT_67(256'h6F2DD589BA8997FE2DBB0449A85FE73BD846FF9ED867DB36712EE0CCA0A1476A),
    .INIT_68(256'h9E4286BC6A5233C6CA04B51AC91BC1C9F77A80FC82F9EEF32C925435EFF820F3),
    .INIT_69(256'hC93174AD8DECF8483B5549CFCF988024E2413E7745CDF3C65E2E0EFE527F6D4B),
    .INIT_6A(256'h129085F3DD17BF074E67A673C3B4219878947A64044D1CDC8A4FCF8A054A4556),
    .INIT_6B(256'h9D0642616043568E6E4B78092F704EEC4187AFB31A78ACF0817DB2049BEE1B9D),
    .INIT_6C(256'h0328F1CEBDA63397A5E9861977D25BD4AFA64A1B921D6A1BB68092B4D18042D8),
    .INIT_6D(256'hBBC3E5F86FEE76C99DE511FBA8E9AFE094B4941A919CA6CAE3AD9AB50B2D5B60),
    .INIT_6E(256'h5FB584B9C22CA9CEB92157DC0839EB15666795B72723F046B42DE351782DB7C0),
    .INIT_6F(256'h5D100694EC6F544662B55605E69D590FE483EC956C8C1A1CD94D9D101ECB333B),
    .INIT_70(256'hB3236B91A8664641E32391D73C2C83C48E3EE48743032B1870CD3D37B4EEC77D),
    .INIT_71(256'h049A33B0820259E0458A9A424C4A727F9B5C47C74984200A29FA086AC8321739),
    .INIT_72(256'h1638B943C0804A1E8EB4A9B5A8859CC51940DB3331D9F246CB456AC94C909E6C),
    .INIT_73(256'hB9C17B39738E759787AE719C0F0132178B477BA67896D0B9B9CE5DBBCB5DBCAB),
    .INIT_74(256'hC16572C3CE80D5A43FD7797315404EF1F9151BB0CA2225C45B845F6EE9B519D8),
    .INIT_75(256'h8474612B389F92AE3CF346F1748F875C9FC80604938A6D86093D6882E209365F),
    .INIT_76(256'hFA268D5FEBE6F9EF99FE588E5F9E10699A851446981F264034058B55C2A94B3F),
    .INIT_77(256'hBF30BE8626BCB5C08709A1E56B49938579EA7E7D6F35DF6F3A8949F84DF53060),
    .INIT_78(256'hD1124531109A6EB1B0533D6823F2F51BACC1D9603E97E6FF0731A90DD82056BC),
    .INIT_79(256'h3E46074953D1B5B0F6F0AE9625CF0DB8C519C2385E03868DBB8B1170FACB836C),
    .INIT_7A(256'h891801F00C1DFA33672D16C9A645A512612AA418399A671849FF8433764656BF),
    .INIT_7B(256'hC752518ED103F97DEE33EDCB7D6FE756B2925DFC4F71E887E9C4B566F645A685),
    .INIT_7C(256'hAE00D0D13E966900804A33FCF785E7692C748AC6E48E98ADE587D4454B23DB95),
    .INIT_7D(256'h5D13F586F523E46B11DDFDD739BF01B153762876E5AE9B1872EE4B08C79EE9C7),
    .INIT_7E(256'hE35B82517B3ABD19A4658B9B41BBB1A4F6F91E92EEE19D816258C99969C67D24),
    .INIT_7F(256'hE2A7FEAE1480E046B7849FC3D93289AF0966838ED7D459AB586D37D74EB9A1F6),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0055EC8A91D6FD03FCEE561EE486D26C7AF056B91DFA454AF1E89A03CEC1CE68),
    .INITP_01(256'h296D21DA96ED64844951A05C785BEA655BEEDA738941FD4C64F3A10132C8182A),
    .INITP_02(256'hA09E028C00DC86C160ACACADF51009BD9F4FCC6F12DF5111D13A213B245BCE12),
    .INITP_03(256'h319F492614956D0A0871AB4B6455CF1E4D0B59659CF2363E741096BD05224E6A),
    .INITP_04(256'hF78CFC3D1274AC09D747CC0B308541992AFFD8949D37B6422F1ABA3AAA2F75DB),
    .INITP_05(256'h5A5AAEC9601EA68537904C8FA29C10A113F42CA0E735075B4A354120C79ADEEA),
    .INITP_06(256'h10E89F9F1EDBB95375A966D6012ACA7C40B977568B6D87A4286AA688A1CA61EA),
    .INITP_07(256'h8BA1B1C98522D048007BC3200D04D7C4BEF66AE0EEAF5103A0B111466AFEFE35),
    .INITP_08(256'h4B737C7C47E1E72BD183D20A18987D1307A2EA8C76DF3C1528A4A2C9567AE194),
    .INITP_09(256'hF873B53C71B0604E2F309AE4DEFF5C56E7A82379AE5EC8B491189AEBBD12C22E),
    .INITP_0A(256'h2313872F5292278AC7BAAE481940474BAC180DD1DFCAD54895380B550076BBA3),
    .INITP_0B(256'h491491FE91BAA8E55A070538910A3E6B6A677B75C356C3F7D59E3E63AFD8974A),
    .INITP_0C(256'h49AEC2995479A622C4D1E4A091CEEF56369F783EB071E7489BC9D251F8FA60B5),
    .INITP_0D(256'h77E7AF970CD13152D3D19BC60F255EC2BD74800C9C65CA240A20436AD2F03C53),
    .INITP_0E(256'h38CF32672AADE3D729EDF4879212172A9B0046F7E4881E4383B9C1CA2D2495EE),
    .INITP_0F(256'h483FED18A8E5729AF01C34BF6C972EC944235EB96D7719918333083462C54E43),
    .INIT_00(256'hE916DBB5262C6827D5EAA1D963CAAB96C8263662CBDEEB13774BC33B2F466774),
    .INIT_01(256'hCE8F99736AB879BA86686CD6A25C33924D383BC99360912D1B5DFD42EB751222),
    .INIT_02(256'h1AC8F7CBB7102D45B5B47F666C4B53F4D0581F5D83C20E6D0167FC2391BB46F7),
    .INIT_03(256'hD9E8C7B548BC3A672B3D9D671BCFC6C4921CC2C2834E8ED6010C135B6A62BA75),
    .INIT_04(256'h182DF0D16B372E7D4864D55969804196D6A378AD6B73D326823BF72D6F5B3FF5),
    .INIT_05(256'hC614D03044A3662C0EAFA2B59785CE8C12F75B0394B76B295DB84D4AC84560D2),
    .INIT_06(256'h900835B5AB9535C6E3C59742A93001AE05CF92D2D18653C1EF8BE2BC5DF577C2),
    .INIT_07(256'hA007FDE34F0440581017C8E0DE1F72EEDBAE9400E4D8172576C44D1668F7E820),
    .INIT_08(256'h233A700E349CA24F88829E3DA23C79B7498C085086DD043D17D5CA31DA14FA2F),
    .INIT_09(256'h61BB371D26463EAF6D830BF46A584B45B2BD14211C4B5B85E9A486E535AA566B),
    .INIT_0A(256'hBD5E5B1F56EAFCA92437259C667022842227168C6F35DD6B001D63AA491958F4),
    .INIT_0B(256'hDF028996408295A0BB61C8A31CA2EB5C79B8CA0EF1CA0FF4B9DC13862039C103),
    .INIT_0C(256'h6E59BA99FAC4220DC34CBCD132BFB83776175F938CDE69DFFC19288C58F4304B),
    .INIT_0D(256'hDD359E9DF97B9D83FA8203C01770A62DB22F024CAE50F575E8CC1E5AC0DCD4DA),
    .INIT_0E(256'h6739CB8E7194F259E7D7CE5A98B330849C2AAE340827DFA55AE1764EF37014D0),
    .INIT_0F(256'h4EF5916F7CCAE11DD2B505A4A8925B28B93807DB192E2D00E9DC883F2C4A2FAB),
    .INIT_10(256'hA0CC35672C756235AB965047DD0198310D554D58C590703EB386EAD72BA6B1DF),
    .INIT_11(256'h3A8AF23CA06073EE94751C18CBFEE6AAF289B8418B85C329CBF2265E894C69A7),
    .INIT_12(256'h69F8538F6ABF70BD1CA4C35F7676292E352A6FE390D1FBB75086D69E75B70763),
    .INIT_13(256'hC1F619C3E6B0E5D42A1C4E79108EB2BBCF9DA7E9EF4C0D367A8280329105D0A3),
    .INIT_14(256'hF325CB1B88F6B8673496C4D013BDD82B0065D8BE993E56EB59028C52F9148906),
    .INIT_15(256'hE4AC086225A068380EC4B90D2FAB6FAB89DBC50C8B6DC86B437EB5145BAA74E7),
    .INIT_16(256'h49ACA0B0DA2197A13A76EF4A23699ADBADD6D82A47F8B275398C0C9B30BFFC99),
    .INIT_17(256'h7A37C200C4FD6F50A8BAC592C978911B3757573C83047740E2E9EE927E768467),
    .INIT_18(256'hE03744451FD65E010FC653459AE5E96B56BF2EBA2186E78AD2D427FA40445E7D),
    .INIT_19(256'h4A6692C9472DB4BB51E6308ED2105169C9AC69AE1BA07AB750019546D16BA4C7),
    .INIT_1A(256'h320531716CBC02F13BA3800C381C186FDEAF94F687085EBE1283AF36238F6F29),
    .INIT_1B(256'hD42BE02B797C1C195F5DF54449F4AC32811084D56B8C077A6D567711BFC896F4),
    .INIT_1C(256'hA9D6E9CCF7289F206C1C769D4BE3CDDD003015D4491714F483CDE2718646D07F),
    .INIT_1D(256'h48108A83F27BF64F987CE508F9E0169515586039AB36F3C6C6AB73B73625F645),
    .INIT_1E(256'hA19011D13F74C505426227DB2906AD3745369313B4DAB52493D286EAC8311C17),
    .INIT_1F(256'hF4609D20B22E818BE15C08FBEA16116FCF75FA5DDC33C753DED7EDB5700741D8),
    .INIT_20(256'hC2D46861EEA27118D864924C3F377F2D38DB7FDB94CF4C2E5B8CB20DA8787D7F),
    .INIT_21(256'h04A4F6D1270A435404CE086CB18F3F4A4704A6152E5DC959C8A9DF01BD661320),
    .INIT_22(256'hEED3B7FDB5C18B940C27CD607BB286F25305B8DDD2E30E8AAC4A89001ACB935B),
    .INIT_23(256'h2788C562D7875254538DB20D14BA5F053A05C3C6EFECFF72DECB15270FD35562),
    .INIT_24(256'hB12B95DF67D3426B970458F6CBEFF0E7F2DE9D4B54D51E65EABFE367B7BCCBD0),
    .INIT_25(256'h6BAC3BF1054F5B149C45C585215F1748CA578FE79E760608D6A38317B713AEC9),
    .INIT_26(256'h8F8011AA5C3E519DE18EF0791B0DCDE14AC171B384BF06ECECD2DA66A696FBFD),
    .INIT_27(256'h5C0A150609676D24CDC910EA94842A1F9BACF7A80DE26B38A6C94524BA3EAD3A),
    .INIT_28(256'h225AB5D71755C4EE01CA8BD057E651C43A1FC5982B794768097EB2DC02B6E758),
    .INIT_29(256'hDAA100BA5C3F356BDB630861AFD8E9AC17C305379176514753E26F693C9EF826),
    .INIT_2A(256'h0CA75AF9F3617B1925C4245CCF0E30C6BF1047D0EFCD35CC903DBC5767AB4624),
    .INIT_2B(256'h481DF6649D3EB9E303CCF63C30A27CC477039AAD71B9F78EF414EA6E27A8A071),
    .INIT_2C(256'h2874B91D552E9006BAD5240F7D0068408F9F501FFE814966218C00FD87398A2D),
    .INIT_2D(256'h217EC60692F06BE0E3F93CE8024F344335342AEFE0C655BD91839CD47C16C004),
    .INIT_2E(256'h400A55B3AB111A754E3DAA4089BEBDF25B48F726F432BCDC14E9146D66DB0B8E),
    .INIT_2F(256'hB0AEA1A064D85639D69B6A78CCA2D9F1544857E7EE9C625CB2ECD552AB0259E3),
    .INIT_30(256'hF1FA5341C8044DAB83F51FDFA88ED2674821A5634C1A4853F010B9BE008804BE),
    .INIT_31(256'h92234AAA4855BDD87BDA0D96971B34EDF10AEF9B86E26C00A170ADAC253E1118),
    .INIT_32(256'hA4F9D8E661BB582FC8214239933CE3D093AD89AD60240D88BCC4A44FEA046987),
    .INIT_33(256'h712BAEB58C96F621F2C380B9E1516C7C8ABB1B4847E7A391C308FF88DD87D664),
    .INIT_34(256'h2E2B793B466874DA811FDF41DE68535C912E60303026DF9D99EB023D58000EA9),
    .INIT_35(256'h1A2DBED064F5820161B936A35D78CF738B6D833BA30086676C095C5961591DFE),
    .INIT_36(256'h06571CCD5E73F7121B44D8A4EAE6D0717B6BD7F35AE789C571235188A35E7D19),
    .INIT_37(256'hE8F5A3F027EDAF78E24877EA538F1C189CB450BBF55F2490EEBA4CE92923331B),
    .INIT_38(256'hEA0F5AFE1D34C4F975B977EECC723BA4EE9EE3AAAEDE0F8FE5D0BF893E98E1AC),
    .INIT_39(256'h44BD60285F2E5CA9B849A95745FAAF585A4E9BF1C2052B5CD980EF6FF992816C),
    .INIT_3A(256'h4762F64FBF0009BA2DD24A06074CD56B3E12B0AB55826A4FB04A45E7D5E36AD1),
    .INIT_3B(256'h8BB49A9D53E47D10578DDD9025702DE8A0922A06B66232A7A8762CE8AF3A253F),
    .INIT_3C(256'h730D8CCE828B557CB7593EC0CC321830A5BA762ACD0228671D70CFC8CFD07C4C),
    .INIT_3D(256'h65C64217103995530CD42581CFD8582165E446B31DDAAC9C2C25ADD9FFA235D8),
    .INIT_3E(256'h20D06882200E527A229E554D01E30B39EBC1B84041EC36909ACB208B65369EAE),
    .INIT_3F(256'hA4FE7DF04247AAE648525BA67DDA548FA3DD143A7A169278772ADEFFD7769EBF),
    .INIT_40(256'h4E1CC214FB5C35C77A1762F29CF7FFA1F0CF818F6837A587A878177C7C7BF8DA),
    .INIT_41(256'h6B6458643490A4D56D430CFFAB699C66D9CB7E5A17EA0F0D8F4EFCCB13367604),
    .INIT_42(256'h4EC5C0C866C5F1AC404FD3267624C0D9F20291747B5AC8E07341F232B434DD87),
    .INIT_43(256'h014CF8BA9A7ECF9A4E04205DD4F1C1F2380DBFDD6BA5BACFCC8FD4937DB73714),
    .INIT_44(256'hA9DE3F6781B3D06C0F6D5E201AEF9DBC56C87D02376B9529D1716EFF6D6DE9AD),
    .INIT_45(256'h9BD986E92FABD5CF3FC93F84CFE623A82B0274B5A7B1DA598BD2141AF836E228),
    .INIT_46(256'h9B64136DC47F925AFAE32EEF848AB590709F74D4AE1A2FF2C4E8B236EEF18851),
    .INIT_47(256'hB043B27EA27A18DE6B791273FA4706C48EAA2AFC64F736268972FB4644027C96),
    .INIT_48(256'hCFA1FE5FEB42FB85DFC3AE8CF9EC24288D811C3B255015D531727C58F2330A0E),
    .INIT_49(256'h0EA8175E2FDD7D6ACA44B2D0BDC50E0FC4168CE3DDB6BB73FA4B16FDF8CB207A),
    .INIT_4A(256'hDD327BAF12384EE03BBA76BC3303E438E13A0FC87B1A88C14058D45BBE5435A1),
    .INIT_4B(256'hAFF8DF7CAA00C0CB8A3A6673F3746CD0A2E7F3388F29EA4BBB31C8BFBD15211A),
    .INIT_4C(256'h0F405EF0F0447007DEACF62593EC1DF598EDF77B8CD53E3E5B2C6ADBF3595A50),
    .INIT_4D(256'h76371A155D124B1E3E6B1B0040FA339B787A60D7F17E8407BAE7F836E88E544A),
    .INIT_4E(256'hC740B7793D08EDD2C9C02D5C7B31F5990C4E493683E327B4607FDC86088B920F),
    .INIT_4F(256'hF7FEA283ADB6B2C8890497AC36487FC5D45C65ADB17C6F87BDDF5304C3AD0E85),
    .INIT_50(256'h67691BECAFEA697258F14EAF0A14F52087380E48F9D4F868FBADEDAC664DEFBE),
    .INIT_51(256'h85F0F1C437B8CD884FAA598B2E949848B784C29AE5430546B4FD5B5A0AE80BA0),
    .INIT_52(256'hA2D669BF0E4E160151065ABE1E9C721C225AA2497B9DCF2D09822092D183705A),
    .INIT_53(256'h6F8FE082CA4F8D57037C492AE8C2B138F6CE92CEC65471769CDE621632B26276),
    .INIT_54(256'h1C117F0914920DC93777F7C0BB702215E8B8A8539B8F4A36C486405DC59F24ED),
    .INIT_55(256'hCE90224DB4C3F2357E9FCAB36FAD9E102B1B31D9971C20405A67BFF87F2CE9B6),
    .INIT_56(256'h80FECB9D2D48EC9DC11094C6567B30D32A38DBAC25C7E9CF8299AC3BB103AFD8),
    .INIT_57(256'hEC2C16A5841C78670B93D75176667AB30469EE54D51E310898A7493072D9DC75),
    .INIT_58(256'hAE3CAB549A827A78779B915B43107A9CE00E883704B9624EA816B9F064786C9C),
    .INIT_59(256'h34DC5E920717CEC16AEAF38496876708A7BB0131AF44905B378AF5AA9CBA9EE8),
    .INIT_5A(256'hBA509B0AF641EE51160A6A8621E081478FA7D46713EA5154F92534257CBC96E0),
    .INIT_5B(256'hE6DC5E19B313DE2FA2D8A300BC89F305B19570DBAFF93D8A60F02FC67159C90C),
    .INIT_5C(256'h3DD4F8A602EFC5C5F7B9B0C1C72590647E155D1AFB9CC93DC055254446947024),
    .INIT_5D(256'h2F1CE5D33643BD6E5C4525D973C37B0653475065E6A72BFA32F2F0B2E01C70CF),
    .INIT_5E(256'hBBBF576E5A20F207F08803F1E8EAC1B7B145D07DE3C7118FBEF5F2569A967555),
    .INIT_5F(256'h25DF299B0111887BB5EA3B53A11301AA628704DCE50B69C272F4EF53D88B6DC1),
    .INIT_60(256'h91B4CCD36A1A6A9B5988C9E5B966110020F8B428A5D0827E07FF910E9A9CEA46),
    .INIT_61(256'h73E4FF16BA6413643508447CD347DD447B76CCA8A25874307EEAEC08DE6024BE),
    .INIT_62(256'h35BE0CD8D312DD5C12110329636ED65641DB5FF6E8E00822331E2903E8B00E3C),
    .INIT_63(256'h43237CD37CD7DB128CEBF1F7F908EB5DC599EF4D06320761EE57E2FD2D7CC4EF),
    .INIT_64(256'h1BB7C602923825396315C4B46BC3CC03CD56AE6A04E2739C92E6909CD44A9FE2),
    .INIT_65(256'h850168F6ED53C20361A0323B539A3F3287BE8F37CE9E132D1A0E19C895E4C80F),
    .INIT_66(256'h1D904864D9398942A104EBFBBC4A12EC178DF09467D6E8334121317A8642995C),
    .INIT_67(256'h3C31F6B9C3FB83F13D6FBB2BF76D03D8249669CD1F04344DCD0C2FB90D3D602C),
    .INIT_68(256'h17F46290AA78867589EE5E8CCB97EF726F62C7D76303739B2576671004BF891D),
    .INIT_69(256'h69527F526E701F4AE17104CC16234AB3F765D9929A22C5ED0844C7866ECFDDB7),
    .INIT_6A(256'h2901A4AF01D4A04FDA0A6587DE64E869BDD8B4A2CA601BBDF51EC852358175C7),
    .INIT_6B(256'hF6562B6EF9408B644D5668F42665C723FFDFF1017D4C365261E50C770B33F765),
    .INIT_6C(256'h17B1047C6CB727162716E79FA3B03D9CFA26A61DDEDDC1954365889075EC3F7E),
    .INIT_6D(256'h4235A0CCB5FB058F1212A17958D51A7DC3F62D34660192200FB5977CF22FED56),
    .INIT_6E(256'h2AE2688D2E3B75C4837F32A525C5130128158592FE4BA5DBA3B0C29795CFDEA6),
    .INIT_6F(256'hC36495B38183D7E09183855BDC663FFDCD22A1E7024975E31F9B5C0150C710C8),
    .INIT_70(256'h4A0ACE43FABA6DE35DA3713A5314B7A58BE59C618BF48EC05D36292085D5E057),
    .INIT_71(256'h4252AABE8C39F0928CF223E4A2D814E6F792A5FD4B6CDA3878554545ACBA9B6D),
    .INIT_72(256'h2B1CDB7E1ED531CCC96404DF703CD852C0049A4E2263102C70232935C5FE63C4),
    .INIT_73(256'h5F6A8676F48C47F812C97AD56E976D951FEB45009368D2EB339D16B0C222149E),
    .INIT_74(256'h9271AB5E23ABA00E109FB2074C434E517996A34D08FC18613C6CC707939FB0BC),
    .INIT_75(256'hA99676E8D0517C3B287E2F98BBDE146D829A5D14F019A62412FA43CC480BEB97),
    .INIT_76(256'hF7FA407CFB8AF75FC494B4F51DD43C58F642AF2524B771833C8E78315BC5140C),
    .INIT_77(256'hF6E3AA5ACAC1B53E6F498E627023F410451C3A2621DDBDDC1E933208F6F851E8),
    .INIT_78(256'h28F0EF562BF99BB79E6FEE9B7498731E8E883E91BAF58208B3C0F20BCC05B147),
    .INIT_79(256'h0A94ECAF98A14C186054771D1C424AC262EDD9B7226A1E547D9B7D418CFDE30B),
    .INIT_7A(256'hB00C0B2DFBB9F78D16149AFC4B2921D47624707D5F4F315DA23F9F8C870DD565),
    .INIT_7B(256'h3AD236341395DCAF409259B2F4FF0D419B04AA2FD4C702041BCA374FD699DBB4),
    .INIT_7C(256'h7DE69806D8BF3AEC991926BCD8BB77290BAAB3F185EC63BC1556C2FD486E7DAD),
    .INIT_7D(256'h8A3A44ADD70662C04078DF6FDFC46D13D0017123A942F9F584F64D8261343732),
    .INIT_7E(256'hCE311B39A0D5B8CB81AEA6D330A698AAF367674D96104D7B22DA7276B4017B5F),
    .INIT_7F(256'h2D7104807F84F384CB0F63E63F711022283B332B31E63A9A7840EE137C51DFB0),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h08421F98D0BF96A5C387A502C65F50343A5C021FD771EC9C0D76AF76601A6AA5),
    .INITP_01(256'h163A8D08BC4D777CD4787E6E2115D8AE55968C8A8BBE3F27369BD03D203D5102),
    .INITP_02(256'h492ABC9E437791846FE4A85BCC70002D0C0C36210205E1D8C1B560278CA9EA25),
    .INITP_03(256'h98ECFAAE18550714EB3240AF914ED279FF820E61FA39F58B17DEC3F9A81F7969),
    .INITP_04(256'hE133F0326B359834A7EF97C5DD871B4294DF30DDDB55BB94EAEAADC0EFE9121D),
    .INITP_05(256'h075F81C619E719806452FB60D64508967642AA417FAB399810FE1D1B7E7D1A95),
    .INITP_06(256'hA5F7BF4E0BA24BDF2B44F203D2C789BED639A371DA923B9949638CC86BDEF991),
    .INITP_07(256'h402021B8313B2E240DBC1E93AB3B0D8BE342A4367349E9AF4BB3C1022A8E1C3D),
    .INITP_08(256'h8DEDA444517009E7AB56A810B841D25B8B43D387E21321C42E8728A78D14601C),
    .INITP_09(256'hB0860255AF3D39CD230FB882A24F40358862ABC023D9444610B5625F4FC28353),
    .INITP_0A(256'h1929A1F524247A6A585B940C47D6B6C4B362FDC6F82B87BCFCBEE2029C88B3D9),
    .INITP_0B(256'hE1D2E48CD97EC0E61523C7D1350968EEF1F620ACDC088D35E76776406D6AB141),
    .INITP_0C(256'h999CD6D5B31D79284BBF483BE15B9E55D9B5F14EEBF95F75D6057DFA066C1BC3),
    .INITP_0D(256'h707F314A5322E04647DD442F9D728D02EC8BB8603DCE31E0D7AB84E94A966E8A),
    .INITP_0E(256'hC41217F8DFB790A7D3609B36C21FAA0F3F6FC43D3EA99391C90A4915E47E4727),
    .INITP_0F(256'h8135450435BC58B56A405043DEE0881CD8C0952046CCF8B0CD1FD8E1252E101F),
    .INIT_00(256'h2A9007CD5059DE0A9ECAA88BF2611AA82D870DD24710BF9744BE8E542693B30F),
    .INIT_01(256'h373F503E3AA669ED30E195C556BEE95A5A933C1FDC4B2649F991D7E35191933A),
    .INIT_02(256'hCD82D465285D3969D5D1BF10A1F4587B0F3CCFBAC545675EFC1CC8357A5AC6C3),
    .INIT_03(256'h855F3E41A68E75722A35E171D9EE21C064EE9A40A0FD7CFA958A0A65867FAD69),
    .INIT_04(256'h40C2895E29C987BB12C6ABC2DD076FB43A9AABD658814FBF9B14B5D17338223D),
    .INIT_05(256'h6BC60A9F478EBA9CAF1ADB08686D7A3C35C6BE36D18DF863C033188EAA2CAB1B),
    .INIT_06(256'hC77824501A0D67C8B0A136472E9489D5A1840D7FD7C395B14CB2B1E35A83B4F0),
    .INIT_07(256'hAF2FB8A7022127E0E35F813EF0F83BCAE6803870DAF376BBCBCEA029DC0FF2D1),
    .INIT_08(256'hB8B79581EBDA47435F664C1341952E2F45F06CA810609F7D2B42A44F117F945F),
    .INIT_09(256'hE4D501BE08DB25A096976A23B05E7083BA5D0B749CBD48D5BBC9AA8E12ADB626),
    .INIT_0A(256'h406655EEE0E429950B390FE9DC2781ADB69897F94D903A073B37BB836D7BA82E),
    .INIT_0B(256'h3715B885859CE640562A7D88EA9FD277F0F9E7AEE28DEE29CF876D9624EC7675),
    .INIT_0C(256'h15F7C9B781CD1AF82DA1E8028C89CF9F11BD0ED4ED88DD098193E1739E80D0BF),
    .INIT_0D(256'h2E403CC6029A8AAF291B7EB8FAB8F5E4E497F6B4FBF6C8DE348EBC62F79615BA),
    .INIT_0E(256'h0FF0F446E240E26180992221D3BB90AD5D54612EBCE4B6665852E1EAE6CDC0AB),
    .INIT_0F(256'h32F5B4B87EC5F6B1FC878C6CF0FB80B51BCA4B5C3B10D40650F7F0C5634FF84F),
    .INIT_10(256'h533881E1809276388F80922F2AB4A629EB7E2400DCB43680BE20C460E5D07D3B),
    .INIT_11(256'h77E851722CCD92883C58E202A97EBC5CD2D3925777425F1D14BECBF38D88FCB2),
    .INIT_12(256'h83D3F5CCDA907ABC86E48DAFAE498CDDD571F80F2A1D30A4496CA35EE6FAB4C4),
    .INIT_13(256'hB32BEB362B5003910AFDB840C606669222602C91E856BC90A68F03A2F6BA0C63),
    .INIT_14(256'h470A804A8A2B14C0487C3ED3CD64E9AC1485534CE5AD8C115E06CC0C10FFFD6E),
    .INIT_15(256'h3DF4EED9BA934F0A62CF5DC44DF8AFDC165C226B04CF934275519D171E8D0DC0),
    .INIT_16(256'h70EF551083B6D1EB4582382AEE1650557ABF9BCE426D49476A8F13BCCCE1E342),
    .INIT_17(256'hBE9380E9DD6D403DC69E09F54E00738F49EF26D1EC434E3FA595E45BB175D24C),
    .INIT_18(256'hEC0317BB1CF0C20A74293181984E212FC32B7BA6DE9B53C52FD1A15651A82F93),
    .INIT_19(256'hCA303685198F02CB377071E8ABFC438E7DC4016FB5FA0A5E6B2E0C6AAC3A1261),
    .INIT_1A(256'hC4EE32BE84977788EA75D37524CDC99EC919F8A16AC81E764C762E23C06838A2),
    .INIT_1B(256'h339CDFA5BD8D8AD7FFC2AF2C39525688D3FB868DEB31D0420F91D9C1E501B9BE),
    .INIT_1C(256'h9B0A0502E932BE6996B08F9B987A48042012B77E04F0B7846CB79CB61ED5A699),
    .INIT_1D(256'hE5BB6AF40B7F90F8D4860009C1A22AB1385F1062CC40B44E1D5523EC941ED8F6),
    .INIT_1E(256'h1243BD10066FD0AE14269FE688AB2E0A574B153647CD6B79163254873BBC2119),
    .INIT_1F(256'h08DE4403A190FD5382FBB89589EE018B1AEBA0A27AA4B509D1880ABD0ED772BA),
    .INIT_20(256'h533BC935CC26CF4206C4940F411FD42CA5D9880ABEB90AE7D996C4923A3241A1),
    .INIT_21(256'hD66D0366D26A8F8EDFE945172675EE449E974CD7C4BDA8C39FEABFF324BB3977),
    .INIT_22(256'h7ACB073ECD715DA2341A6DA5D4C352283F0FF931D46E8F53FF108BED449587F4),
    .INIT_23(256'h3648A68AD635AF161F2E8D96D723A8699149B3C27478B9363BC67D27AA727E77),
    .INIT_24(256'h0D210EBC3475BB4E62EF26C2A809A86C43036A004392A2D7789D37B07549A7CD),
    .INIT_25(256'h6F0E03738B27DA21D6FC2A997C2567D7BAD8524C8466D08708F2EA61203F07BC),
    .INIT_26(256'hBA7A0D1B6FE3FD07ECA6A02E3BADEA95A8DE86B0A22400D60B6353C00CEBD0DD),
    .INIT_27(256'h5C2DE68DC05251A2C068AD9803686BC81814101F8BA4A2AA292BC24908CAFFAA),
    .INIT_28(256'hA1DA9E3906B9B84DEC667C614A60AD2AE2790D6D7C9FA29B2595F163CA0B1928),
    .INIT_29(256'h109F85D31B38DC587ADBDC2AC0C52ADA82401658948C3F7C2479261D45D8D38E),
    .INIT_2A(256'hD261AD084488B480BABAB851453B61103A31B9EA0F9DB284E25E943C73A5DCEC),
    .INIT_2B(256'h3B25460B8BC1A1EDE98FDE951A448424DD15ABEF86E858800FE5173110A4FD5F),
    .INIT_2C(256'h109CFCD3F528CF491C87F584F4DDF7BE4222EA3B19BE806B36C1401066A2C219),
    .INIT_2D(256'h51C7FEE4DE5D6F7772F8710F9A3B4F54E032351112B15A1CF1474B432D3FD84B),
    .INIT_2E(256'hA105495D6C7E4CA470B21DD249999606E880156034F3154BDDAAA5EBEAABEA49),
    .INIT_2F(256'h3CDF0E53539B99C6F184B6E6664A12D42EAFD12540AE570949A14C273F732752),
    .INIT_30(256'h263E8934995ABA0C77737D907206BAE31ABDF89B69ED41B7F642DE1DDCF6AC33),
    .INIT_31(256'hDF922886E321FAED99DCAEE3CB9FB854AACBA20D3C5362A72DC4B512968F1D47),
    .INIT_32(256'hB7F4A844E3F38A78E76FB65F37D1C7A31B30B731C388A4423670B529CB5E346C),
    .INIT_33(256'hED36F31266CAA4CA50A178B8F167FEB449AA5F1B12C2A09BAB5E52DF5C413177),
    .INIT_34(256'h8BB4425CA629F848BB4FF00E9F532E2085D9D444E136DE1C6C7E145F45C83932),
    .INIT_35(256'h4D943513016564B5F63DFF0E8606D9F3775C2C52290DEDBED372475B5EE05E53),
    .INIT_36(256'h2063B5CEACCCD84516C6D810E24441F1CCA419C7C9C0996342E06AEDDCD98BE3),
    .INIT_37(256'h8445ED8273FD864EF98A4ADFBA7102BAA48068D0EB06281F723B228AA9E66711),
    .INIT_38(256'h000D13B86581CC33CB13AF8FF78D5C73CDA37DD346BFFDD5C23290A04238A6E4),
    .INIT_39(256'h96A4E31FCE727B687E90AE41D2E0D46575483FAE3249776CB7D174696BC551D0),
    .INIT_3A(256'h816AE8FF5F6C4AEC48D107D820565C5C9EB48C8CD03B17F7F08368DB4CBDA76F),
    .INIT_3B(256'h5E1661F776C73D9C984A3E8B2BDDCB9BBF3D1D19B4B0CBD54BF390C41E6CECF2),
    .INIT_3C(256'h3C3BB231D59BD441157D682C2F9390FDC27EEB1D656A700C8FE95977A67C0393),
    .INIT_3D(256'h03B3657EFDEBCC02D96BE68408592C972F2F87D2009A9D5FDDCB30198F10CA82),
    .INIT_3E(256'h5A239CC9F7B977E61E6C29E371263771865ECC683BCD717DFED43CCF385E4B6E),
    .INIT_3F(256'h1A7A48392B41CFBB17F228F0532DEB06A8218DCC863E8B3AA7CD467B215325D2),
    .INIT_40(256'hED6854A6DEEF754579634BA5B754E053A250062F7296499A3BC80B69682ECE8D),
    .INIT_41(256'hC231C8EF75B353ECDAA52AE611719FCD70E2808ECE15B56AF85F5525727CA20A),
    .INIT_42(256'hE091C4B075D9BAF88DF705C6AB561F81C2200E5EC8E8F5C7E2B769509EBE14CA),
    .INIT_43(256'hD486B556CAF2ABE17D74548B29C893B58D7566B1562F8C111A1D78759207E7E8),
    .INIT_44(256'h78F3BD1CFDE0F4A21C955931E7289B9C36A79C9D83D9BE762AD9756621745587),
    .INIT_45(256'hB8844C93E61A11A3D71451C11750AE44FFAB8514F60A30A17C0DF81CB092765A),
    .INIT_46(256'h270F74D5032ECB6A0E08F3747A392253F67FF24261169238489EC9CC019B08DE),
    .INIT_47(256'hE83022301656023D1DFB3B4154226FD3484825E528D0A7DDDF7C73487C3D5FAD),
    .INIT_48(256'hC953D4F1F5F548846E51D2C739953D86D349AE94E04538528B8C18BD2A3D1C64),
    .INIT_49(256'h2BCD0C17E231DB33D9A77E5423495829A833553994E8F50607C4513C022D88BB),
    .INIT_4A(256'h6935864B53931FDA535F9706C4EBA4CD45B28083B217D2501C47BD1EED56F3BC),
    .INIT_4B(256'hE67D6C90E45061A7FDBC1C54D201A4647BD49729A118A435AA33FB01A902D222),
    .INIT_4C(256'h4091CF475C9EF75475A2788A7CE268A951B109C591E3C3155505F69B59FE4ACB),
    .INIT_4D(256'h5C128B0FBCB65B1253F416F050F41E552387EEF0DC832EA89E35132D796BA780),
    .INIT_4E(256'hE7A34EE91E5A3B96C3555BA722B0FF12E69236DE9AA9B83547246F6BCBE8F770),
    .INIT_4F(256'h16D091319DF603F1B47A0B415A3679F63602A170F4F43BB62EB95E0D1C41DD66),
    .INIT_50(256'h69E7113AF999E4DDF2B2D9A7C6D04DDCF2D96768A92312CA0B86ADF34D81EE34),
    .INIT_51(256'h00864ACE6C922C72D2F5B4278C8D6EBE2C2B1107C7DB461A7A0A21F55A86F766),
    .INIT_52(256'hC1767D8C9FE7DC2465CB26C88D6BF07450CD9CDB549784275A7B6BEB5292325A),
    .INIT_53(256'hD35A4E25D7B13769C4231A691E1C92C8B95731BB92F288FA7852FC8535319BC5),
    .INIT_54(256'hE7E49169469AF1DB6FDFE25E48B6F1AF562D88A9B4D1FD4594E3138C18A8F34A),
    .INIT_55(256'h3695EA3E2D85B9487EAC685FD7CF42358130CD7D080895FC6725D67EF2C3A7AB),
    .INIT_56(256'hFF334BEA6E0886E5CEF5563E22161420CA7D1CE5B3D07A0E6D9AAE555E776515),
    .INIT_57(256'h828E883EFD3470E2C20F4258FDF627F8876D48D4131DD0D9E3DE4E1A04677602),
    .INIT_58(256'h84B7F133C63EE4CDBA6679668362C9A88F4389D06E1E7BC6BE6AC9C058CFC408),
    .INIT_59(256'h70B2BF2FF8DB0092388FEC43D01C53D4B2C5715DA09F37E2FF47AE4B17A8DC9D),
    .INIT_5A(256'h26D6698F8E1EDA162404FEA1317DD1ED1169A1086F295472502C6FB3489694F3),
    .INIT_5B(256'hA28389F3E16C2A472226DB092E158476EF0435ED6FE81C9E0F3B444F28C02729),
    .INIT_5C(256'h85B86A490158114F1711FF84DE51AD7B609D0EB6C59B2E1932D0C70FFF75493F),
    .INIT_5D(256'h79705BFE497A9CD4F6B13E54AF35ED715B0D639A9BA5DDC963069F306320569A),
    .INIT_5E(256'h7D7AD658D0667067A93944CA747BD622C295CD37C0AD76EC51CC1C634840DCE2),
    .INIT_5F(256'hCA6446D656A6146C7E8DEB2642C9F1D62B5E6ECD1737031BD612927003584298),
    .INIT_60(256'hA67B23512CC45F032A9FDE0C5FBC7DADD98F474B0D520E14C20D54980E54EA44),
    .INIT_61(256'hDCC00C6D8704778AE04E9C963008AEAA10808CB07773DD96D1E9DA5024B31AD1),
    .INIT_62(256'hFFEA0A247C0321FFF04F199C802B04CB3FB08281A8169D6D8B7FBBB43B63E751),
    .INIT_63(256'hE6C0F847C798D2D03AA4B2C3CBC67464967ADEB755DFC444B83C48AE98A8249C),
    .INIT_64(256'h619BBF7C69F08638A058C6A397AFE8CC2CCDC3FE024F9D6F7DC8B9B556A6514E),
    .INIT_65(256'hA182BA738CE9F632EC77F4DA6D21DA472E8E429BFFAE74C5705B24AC40B43B8C),
    .INIT_66(256'h24247C0E11A0059DFA0905C70AFA934936ACE41617BC7790B887195145C11D08),
    .INIT_67(256'h637CE17F786AA1EDC5ECF86C93ABDF88BA61658065729AF1718946EE3C25DD28),
    .INIT_68(256'h3A7611ECAA0D296E6138333707CDF5169E1C98EA3EFFFC6254D6FD385704976F),
    .INIT_69(256'hFA3A50DFA2E7B491377B187B85ABE0C79E0E4D992135B5620C5A122EFE813BD4),
    .INIT_6A(256'h20903AAA368D15ABD11A257BBBF97C305BC5ABB75389FCA7C186FA30EFE38DE3),
    .INIT_6B(256'hBC84D979E4E7F4A1128CCCC0315AA537E9C5FA72E5A284FD741FA4FB7711AB91),
    .INIT_6C(256'h454B1D2382A6090D14EA6234ED9BCBEFA6E6A94C54BAE987B8FC550AE8F124CC),
    .INIT_6D(256'h629F859A70648DFA1F645DF9CEBD6CC68DCFD06AFAF5DB866C9568E4ACEF6904),
    .INIT_6E(256'h12BBC23DB496F0417521374DA813F9CAB811C9A861AE04AE13419195A4362D94),
    .INIT_6F(256'h118D8707B74EA952745BD03C0219449160B7A043D2C1816BB982125F9FF30618),
    .INIT_70(256'hEC7AEEB367FC2DA62B15EB20D771F359227B47A785FF72546F82DA862ED709EE),
    .INIT_71(256'hF5A6A547D7B542FA3C9AA723B1263A126FF1C9B3A225F133BCA3F0CE3D9492C5),
    .INIT_72(256'h707DD54810BE795295CE5352121CCCBCDB7A3E3465E868FF5E8775BEF07AC451),
    .INIT_73(256'h967A9DCA669C403E6D927553D49B72925F443F74496BD5B9D36D2D0B151C350B),
    .INIT_74(256'h6BBD7CBDD2CCFAA7F5981513A5C0F136022C9EE3126DAD223756720A166BBD78),
    .INIT_75(256'h58D3296F09A03B43081E0B8EA8D9740322CA7B96D9B13C2DC8F912DAB24996CD),
    .INIT_76(256'hD3978EEA928DE919B8B604C3B29E8B800E92582440C09378832EE62FC18C7396),
    .INIT_77(256'h4BBC3FA8AD2EEB9299768AB11C375B6ECEAE3FDDE17DFBD80438083EAEA1BCD5),
    .INIT_78(256'hBA717256912A7775F553934FCE23B39F7AF13B952BC4A7B09035A7E556CB72D6),
    .INIT_79(256'h511657D281655EB3874AC1A53AB467788BEC06B4B25EB12630A6AFA9A2987CBC),
    .INIT_7A(256'h3C06AEEABA0F34974FF0D1FB88D2725FEBB2A48DB1CAB630F077E6B48F28FFE0),
    .INIT_7B(256'hE5B0B2939C8F88CAD63C67DD0C0A91224D25BB46C1282A37AA9DFE817EEEA553),
    .INIT_7C(256'h8BA2068E960F3AD133650CB3CE500288158600BCAC343A74F8D21593FFD4C6F3),
    .INIT_7D(256'h2C05C56565D518CCE02FEF29F1477B5A580A184FAD00E8BD64B75CEC316B7D0B),
    .INIT_7E(256'hC2B8D7D3875EA84DDBAB75BDAA2BFE5F18E2445019BB95BBCAD218530423AB26),
    .INIT_7F(256'h54D5DD474E120D625BC07B0392C234507B0B8F3083FB826F83DE2A835DBF7687),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hEBBB9D5AAEB0E6F521CF0FAF67604680E068F847B2C8E7B924A6107916BC3AB9),
    .INITP_01(256'h2B4D56254E9B2FE9D0A94C0E90E4983CB57C13E2014C618C1FE9821F8F54771F),
    .INITP_02(256'h3A2E0BEDC42857ED790B91062527BD41201DD36C4C8FA945E5F8C5E54446A4EC),
    .INITP_03(256'hE4D3D93ACCE4999C6AC384FDDEB9B5A81BAFBB14276AF7FC8D424B3A828CE5D0),
    .INITP_04(256'hB30F0C4F67546169860A330F8FEC2EB7B7345FA883D1B9F815B75C3BD9FA5E98),
    .INITP_05(256'h3D96C4EB1C8BC1EF2214732CB56BD36586DE132681633421ECFD94EEEF58D9AC),
    .INITP_06(256'h77287AA667FA97DAD88303A235574E2B1692F70E75A1BFEC207B3CDA736BF5D9),
    .INITP_07(256'h25238D10337A08FB136C1EACDD155CCFFDB26AB3CF5E0137E2F441AE7959D422),
    .INITP_08(256'h7882A8EF64EDC5BD5DF1BFB4243F8ECCD9180DA5A5F5700C7AB20843FB69F314),
    .INITP_09(256'h8BDF28A5AF8AC881FBDA44195328ECDCD2915F72216E0EA6F5D14710DAAADBC6),
    .INITP_0A(256'h6AA4948676C242E702CF7B666EE0BC2F44D0AE97218DC91AC88D26D2F1D267EB),
    .INITP_0B(256'hB222C6DDE555CFEC88FAF9662F6B7B1F901A0989A4C34DF71FDB8F753F84965E),
    .INITP_0C(256'h823E272724BAF0DC236631C4A19D2823A8534EA5C27EADA37BB8E781D0837CF8),
    .INITP_0D(256'h5F6BE803454FCE9584D8EFE8B71C371B5EA5DBC93BDE9D96FB28A98691A6FBDC),
    .INITP_0E(256'h1F34F9C09695C5BB232DB1FCD887BA68BD0D91F6FF4C4136A0EA88FFDE825A53),
    .INITP_0F(256'h7883DFFB6316923227F5EF31D63BAB8845CBF6724A4D96F98AA705B13FDD5B1D),
    .INIT_00(256'h019712FF3353D7E92F1ACC61EAFC844B78A09201C702E63671C9174ADCEA8577),
    .INIT_01(256'h1564B806CCE7E523AA4013242F0E1EA7ED14F5438F9897C792A208ACD0376020),
    .INIT_02(256'hE8E40B6B2480E652129E0DA79FCE488AC185D035CFDA44F2B99EED08059176D2),
    .INIT_03(256'h129B80A23B5FDCA5F56725808FBF22830A01DB9ED8E8D027C8A87B74295D67A4),
    .INIT_04(256'h607FEE0876427747AEB699609417D19C730E0DADAA93C968E28A5EBB38164123),
    .INIT_05(256'hF8449A80A2947283B94C48240B58CA80731EF42B554C0001FBBA4210F54F8AE9),
    .INIT_06(256'hCB55ABB3646009CC2219174042AA592162C3C6A7D901849DFF03BB8729892DDD),
    .INIT_07(256'h18BB0D0DC374FB70A3CD197AC31AA7B34A79EA625B9BEDD6993FA2A4B0219031),
    .INIT_08(256'hEF9B474A3B62F9482E7DC58B1C89C997A731CC3FE776D530540C21549A9AEEC6),
    .INIT_09(256'hD6062115BA935C6A8E55CD20E22D43AB9B46E12BE8C5462FF40629CA2AA8F40F),
    .INIT_0A(256'h0CA105878A811FEC9925C5FA4C821A5BD92D74E0D53F034F99ACC52499314DB3),
    .INIT_0B(256'h481FFEC882C1C86843030E00567B13012A27E0169C781053F5227922E9A77123),
    .INIT_0C(256'hD9F51029A2399DE3B00D3A6A7DAA9A31BD0AE1F771626A4AA900AB6D5DBB77E1),
    .INIT_0D(256'h94892E9BA1562C0BB0D12A0C557FFD6BE3175F7B270F03F39D26D89DB2468F96),
    .INIT_0E(256'hC29DD46DEF4448F4E79DF28A6B0E9CB49E9FA3A31D516D83BEB91D996B024B7A),
    .INIT_0F(256'h2FFB84E93F5A0B51103319050FCA7FB5018999861121ED2F9EA7B1C5ED45EDD1),
    .INIT_10(256'h169C0319D586DDA13133032A95636A672E95E74ECB3C09BC8F16B9A6115F3572),
    .INIT_11(256'h12098B74F01688A9CD55DA6F266AA858779EEB8EDF429C25C1B138DBA3DE802E),
    .INIT_12(256'h4689AC7E9917C1761E943E89429474AF6505698BAD3B0BE125E58B6D6C6B926D),
    .INIT_13(256'h7D6C47DEF33B24ABBBC5EE86D809380A28F79AE1E72828394D0C05D18A2D7780),
    .INIT_14(256'hC7E0FA0DC544CE6E77224F6452948DB22CA79A458029835E1216369FF0287752),
    .INIT_15(256'hDB13B4391E361BBC87AC2B544BF492B8A6253D816B4236DAF01B41C9901D63F2),
    .INIT_16(256'hA280EE35BE13B5424DC6DA5A3E39329FB30688181A66C6C32FE3E618B05C37A5),
    .INIT_17(256'h9C39C3C53A30D519BEE738E96A45107886AB6AE56C0CBFC600BB16E3C618EA10),
    .INIT_18(256'hB83B53FB4BB180164C3077919AC172FAB0150CA556BBD8B0FFFA556FAFB39E6E),
    .INIT_19(256'h2A846C05D01A9BA9F994EEE1DD64524E8696F56F2A9C363558363129BA31AD26),
    .INIT_1A(256'h3E1A419D4582997112F83DEB3A38FCEE419CB9B72D95F4B3EB5273762261A60A),
    .INIT_1B(256'h4C2419262EA897D8B595AF411D235BD142E62239911994458DB656E028A8BE26),
    .INIT_1C(256'h0FEB3D6FA7D4E1704E1EABB3958AE85C6C5266C25FC04DEA5DDBF68294BD523D),
    .INIT_1D(256'h248021D08ECFC2BBDD1A85158BE75A74758E9A0E319BC4538B5ED6C6F50D890A),
    .INIT_1E(256'h5039757791EBC2F98527D093D762389A184D28DB47408125F75D1039D78023C1),
    .INIT_1F(256'h7034DAB9426732C2BCB114F340EBB8B5D10AB2FCCEEFE40DE7D829DC81936D9E),
    .INIT_20(256'h36FCBCD71F6D8F49863B806BB155521434A5E52B0B69EE579579DDF6BAF440DC),
    .INIT_21(256'hBFDF0DB35EDC85F24D31AD6FB190D02D30D2111765DB500200DFC3FC7C93F7CA),
    .INIT_22(256'hA1108F2E1331DB6E3423E37430CC658F917BFA90E4867F5FE12E8060E4B0EFE7),
    .INIT_23(256'hE5A060442B2F6F46DDA176FEE5CA4950F620CFD4E4895DA68B1761EB78BD6BD4),
    .INIT_24(256'h41138C25D0C99F5096C4F731663973FB49828BC04DFD07DE6319369201512489),
    .INIT_25(256'hA80302A27C50405153C6BA5ECF711C4F363D8BEE13D5F4AB114549C32FCC5700),
    .INIT_26(256'hA7BB5CF7B52A8A006A9CA5E7EFF398D7A68C1B770B3420F887505E627E44FCAA),
    .INIT_27(256'h3B6CD0AC45099C9B365B0EEE164BA058E54DFAD5AF1B887A971222F9B4822409),
    .INIT_28(256'hD24BE77432EEB1E5ADDBB8A6DADCBC90E64958AA21F2CE8CBE3EDD3836AA1CAB),
    .INIT_29(256'h7316F6A6DA1536DE88A0FA8F4997C6785E4FA7A2F80FE30DA6EC3125FA64E3BD),
    .INIT_2A(256'h6B0EB678320BB92670437A580823D8F4841EFF02C67747F9CEFCCF580020BF32),
    .INIT_2B(256'hA756DA104BAD3A7837593C47572F9E7CCB8E0FABAF58A5A7C8E6774BF8EA1880),
    .INIT_2C(256'h919D923C4F2D839AF47DE89E0E6071F1B1008AB3C38B99349B3DE916E4D0BF21),
    .INIT_2D(256'hB9FD1C9AAF31DD92FE69774BEC7003ECE4CC56057E00CD3998281F86BA23CE0D),
    .INIT_2E(256'h27218E17DE4BAC9E4209E2F21EDBCB68077F0809C419224502F6D53F49070363),
    .INIT_2F(256'h1DACB7CF37674C04C7CDFCEEC97250E043A74E9D3C8EA41742FD39AC9B9892F4),
    .INIT_30(256'h959ABBE6D34A97AF15B3303C81744FB6C17B2F9064F077007E0D45B94F2A4859),
    .INIT_31(256'h99B1F152D318C27E1EB7803F25419869FF12289F651A8FA6B140034F684E6CB5),
    .INIT_32(256'h5E8A840CE3E79D93F4338D30894C9DD3A1A99B392E6D22B97AD059F47F46469C),
    .INIT_33(256'h02E800CCAF9AB508B0E8837FB0175AF9900A0ABD28981C09F808CB1546843EB4),
    .INIT_34(256'hB630D0545B488E84653223D5B3DEE6B1DEDEB08FFFB0DCC206DABBFE0976F687),
    .INIT_35(256'h2A6A6755F58E1F5C28BDBC40313E90B18DC3B2DC7C53F677E8420AC9F09C50AC),
    .INIT_36(256'h9BD8BC6C635301735F462C66404BD97F955035EFCB7F3AAEFA1EE3797F2B5FCA),
    .INIT_37(256'hA3E847C755D2BCC9BDF3FF1D0F2C8C1D254D7F4AF0919EA729777BA5938652F9),
    .INIT_38(256'h79DAB3FDEB1413366B66B0458607090578150D23942195B63248AE8ECAE0EFF9),
    .INIT_39(256'h3A359B7BD8DA77B56E9DDD442054B8F6611279FB8F6CB3C750D5E4B0CB70851B),
    .INIT_3A(256'h9B0D674BC35E8193A67D4E2D967BAFB684281AF0121ECFDF361C8B0F142F8095),
    .INIT_3B(256'hBF490D45695D259FCF5D7DE099DB6A026D3F26C4A317F372969321D527F52758),
    .INIT_3C(256'h76648FFAF52D6452E0358255B7A6395A09EA9E23E3DD0B351B4A109F03F319C0),
    .INIT_3D(256'h95218828970F75608AFAB76CB876F4D80F4E740970760258903877B31F3C1265),
    .INIT_3E(256'h341A75AD86C87163ADAD7E2BCD1674E0612C543F31686185361676E4FCE4411C),
    .INIT_3F(256'h8C6D42D7FE6E3780BA04CC22BF0F8AE84CCC79F5C4C6A5092B8D70A373663847),
    .INIT_40(256'hA9571A53E0EDAB44242B8AB91ADB09C37A1221B4ABB579FAEE1B430DB3615927),
    .INIT_41(256'h7E3AB6B51AB644E5D051459A393EAA6E32BCDFEE4BB683029EDD76F9B2610C11),
    .INIT_42(256'h429D634C49A3D70832DFDF98E4FCC0FEABED51B3AD261FD10846CAEDE8909259),
    .INIT_43(256'h254DE9CD5BD1EFABC5E70A9E999D41405177D70947202D9915B3EBE1FA8FBE37),
    .INIT_44(256'h90F11AC460062C56652E3DBA2883FFC40FA38CC351EA1E23DDD4BCD1A09F1971),
    .INIT_45(256'hAD8F2DBE33141425B40903F96292D6316D6DBC1AAB9D16845309E58B35242206),
    .INIT_46(256'hE376FEAB0B183D1DB9842D5BF45A6E1F29023078EB409FA0DCB9B2777511FE32),
    .INIT_47(256'hCAEE5DE871B6975DB177DB069963DD8E736DCD5FF157EC7D00C0C22C5DA204D3),
    .INIT_48(256'h79D0CE104AB3C7BF333B016A61D3FFB4F64DF960CA49A6EDEFC68C08F3771346),
    .INIT_49(256'hF570C95FADF268EB22C9AF6E4D9340274F0C945820720C43C5F302937F33C664),
    .INIT_4A(256'hCB3682C1F2AEC61384F4EC52163F8DD7F7E3E14907BD70E097CFE27BECA3450E),
    .INIT_4B(256'h6F2C105BE36337F4D940C6736CF7E6A9F943FDC22156094F19DB038E15BE53D7),
    .INIT_4C(256'h476253EFEEDA138C20C3D163571CC58BE822C5D2B698A4A0E0D5D0662A0BC838),
    .INIT_4D(256'h41B8058DE805EF43B48D0C94482BF975BEC2C97395667D6EE80A5BD4F47A1614),
    .INIT_4E(256'hACDFD72511440C82C00D88BC5EEF29E78994DE20106BAB32C20841DDC169A31C),
    .INIT_4F(256'hC231F9F8EDC74AD451076E83AA3381CE706789D14F84968BA04807C760C3F891),
    .INIT_50(256'h227A874C665A668380F4AB0C8CB42904FFE73FE357629DE04EF9D22B2D077025),
    .INIT_51(256'h72533A23EC07F3D0AB49297FCB27C38FA4E08331DCEE9D42EDADB67920E60C46),
    .INIT_52(256'h44CBCF1620833D4975160C1B801D7347D784E1D0DAFA33E29414AFD0748006AD),
    .INIT_53(256'hC104EB655D96694E877B0D9C4D72551AC90447D088FB9DA631124D7DE0858AE7),
    .INIT_54(256'hF1DFDBF9F1814843BFDF539D5EA91E1F1EE47C8F9033119BDDE681FF6F50834F),
    .INIT_55(256'h0FD7620ED765339A318625BAE295C5D4034FEA8928A1BAB78A573AB55089F8FE),
    .INIT_56(256'h90D39AC761A74A8B7C7FB436A3176D16737F2071384D5B9A858FA43845EB7D04),
    .INIT_57(256'h4683C1FD1AF5F5B6DA204E6F699203FBAD9632AA9780414BF4D3F1A693EC5F2C),
    .INIT_58(256'h6B54A8B41707CA998993DD96D888307B56E4BC5790602917B8910F7AEAE81F1A),
    .INIT_59(256'h2D8892EF8F4B879242D1431C3F5DF0418BE61E8644344A127FE81F1C69B4F4F2),
    .INIT_5A(256'h9C1351D305E497370C8037B59CE2E827C3AD976FD533AC702661B1F0CC4022FB),
    .INIT_5B(256'hE970AEB2E3530E3D7F8ABF5A9E9AF5D6179E044F2C0D806593BF2AA0CDAAB6C1),
    .INIT_5C(256'h942ED67563029960F1687E111A569254CC482314CC197F657D8BEF2DC774F466),
    .INIT_5D(256'hA0742375B7F5ABB87B655B0AAB1746FEFBC638851C7B359EA4C3BAFD5E40B326),
    .INIT_5E(256'h4BCFE1026B916DD81A14F29880A84FBB9D9B49867DEA8740132EF42B41F60273),
    .INIT_5F(256'hC4A35C9E099EA973B9DAE18820E5DD4247CA938097D7DAA4B586D13A198A10F9),
    .INIT_60(256'h9150D237F52D9EBBB87AEC38EBE5A977F022AE16B7C2C901DE5D4726515F7EED),
    .INIT_61(256'h33F12CB4C1C6598138AD359705D2B62B258BC797A6ED4A0D29C5FA18F5A97D16),
    .INIT_62(256'hC8E93BBB8173FEFEC64BDA215F26DF28B9B089C3CDB48785ADF301C2F741ED73),
    .INIT_63(256'h8AEAFFD80BCAB1B7657AE8CB10E3253FE6422CBC32DAA3E4546AA64EF096203F),
    .INIT_64(256'hA2512703E9A3E80633D7B267C5C96CBF4580B0906BFBF474C7737FE167A750B9),
    .INIT_65(256'h890CA59D8780CFDEBF4C08C86D8497C57377B8B9EA367D2FD4A12D733E99FBB6),
    .INIT_66(256'h033E642D691C8A79620006ACC69990E31B780533BDDC1D7DD09F12F7DC5A7EEE),
    .INIT_67(256'h0B5A3D52C4F45DF8709819A52DF519778DBC2EDF0271DDAB456DDEFCD7CD0D22),
    .INIT_68(256'hD8D89F2BCC54D9C9BC9E39F7D6D1CAE780528F8A717C1CC5AFAC078406CFB427),
    .INIT_69(256'h309A48A3C02DDBCB62BABE690B0CD9BE050DF1B72A5B0100E62CF527D5751422),
    .INIT_6A(256'hFC645CFFBE5DF3B42220CEF7070A70EF4BD7095122A2AA392D9FF825030DCAA5),
    .INIT_6B(256'hD2D712D42347CFCB608887EF180878BE3A05D57181D7C5B1DA94406D5FADFBA9),
    .INIT_6C(256'h4B950D9C163320435B30EE9CD989FAF4AA2C3200FA23C97A7FEAF5985D25D71F),
    .INIT_6D(256'h9A647F3B36F596F76A325949F996A0CDF7998D538012E62C37B90630BEBDCDBB),
    .INIT_6E(256'h299DB43616F42D7D463A23736CE9C71C0403EFF015AD1C2B9B3C5D3EA27B931F),
    .INIT_6F(256'h51C6620AC008369B015AA6DEF5999963F2A07AC4AE9DF8CC79F0EA2D31FF0B2A),
    .INIT_70(256'hC1A865997DE9BA4A92A4C8E7C05EB99B32A9BA0F423A4C36A1B5DA4AC1D0DDDF),
    .INIT_71(256'h59E9FC3410231FD72A8093A07D7F686104C5A7D4C21E2C88D0F8EE3EBA604EF0),
    .INIT_72(256'h6C161B8E3D0224E4F86B9387DC4B46655866B8DAAD887816C7A8D3596915E4C6),
    .INIT_73(256'hD8899C390D0ED8F85FA1499C66AA1558076681687232A578BC2D9FD07DC8B2E5),
    .INIT_74(256'hD83E97CE4F9ADD1466BD982C645C823BB558B2D4E5FB48BDD0E6DBA3B6EFD5E5),
    .INIT_75(256'h5ED2E2A7047BCB68F0166596F340F20957D85F52014300051C1D38478931D070),
    .INIT_76(256'hA9B71F83EDF17B3ACF85EE840C04EDD891083DF8FE16BC71D37DAB9161D7E3ED),
    .INIT_77(256'h965871CCFBB495B30BD563576FFC6DE6A1CDEAA197DF0B7E873B77D313277FA9),
    .INIT_78(256'h341E7C4B69BC1B57692626CA9FEEFA0A1BA5119EF3408D4D740E24A81DD3941A),
    .INIT_79(256'hFC1EEBE60291B4650276DA53C29C77252323D2F228200D49EFD2A68CA1901803),
    .INIT_7A(256'hC59DDE0B099AAD0CF904E773A8C622DDE48DF453AA61D9BECD25AF1C53F266D0),
    .INIT_7B(256'h3561CF3BFA8A0CA6BDC6AC499ED3D4CD5D61C556AD0437F54F93DFB343EA4CA1),
    .INIT_7C(256'h635956050E0B726D7628A28E0F436D23F8EE00520AF62A81155EC6C275CD5E1B),
    .INIT_7D(256'h15A065104F26C2F8EC94F114E247AD5AB8EC468D763A00F443C983ECB370BECD),
    .INIT_7E(256'h2182CD520940AC4E91719DA7DF17760C9DF275D2FB6436CCE879C4A6EAFD8365),
    .INIT_7F(256'hE0E8196C4B065F604BB87F1CD5AD4324CDF1EE82EF23096A7105E6D4F68762E7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized20
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h19A61B1BBBC7B41040B05C0DE42F13818FE65C3BBCDC4FB9BC583DC39A346A3D),
    .INITP_01(256'h3046AEE8F7AF90197FDAF58FAD730B60C7AB81D4976EB4A2AE1730F7D74C4C71),
    .INITP_02(256'h98D3961CB9830C9E89DC2F859B0699650C6BA9808C930ABBF3EF164752A4137B),
    .INITP_03(256'hD57FE30EB8115038F79969EE719FF367704133339EAAF2872FA4A108E01AE841),
    .INITP_04(256'hF28936B90BF5C53C95BCE44B88674CEAE1C7B0AA91AD2B1073781AFF14B0260C),
    .INITP_05(256'hEEC1BFBE004F6B406458F42E6D2B3ABD5431FA7A74A12E1E0147CE313C203DB1),
    .INITP_06(256'hBD03D33C8EE65E034716E9B11F2141B09E24E3CB6BE9444E6DE7FB9E32C751A9),
    .INITP_07(256'hF2FF9738091F5F4EFA255C8ACE349229E97148AFA3EB6F86B230058E28F9BACA),
    .INITP_08(256'h74F0EDBDA7211A9C4362DD654FA54EACB96E16375908F94E432E16765E6CB157),
    .INITP_09(256'h09FC4FB13921685906A8DC72AD482722DC2DE67D5AC3EF763F9DF528C4870A76),
    .INITP_0A(256'h5EC99F5A3389311A10D6B3E8715ACB74FE17C7112D342489D2CB97FE16A5C5D2),
    .INITP_0B(256'h9930B5CA14E30507F8F3EA69AA9B1808F2783CF173FE142091AD574CF6F80910),
    .INITP_0C(256'h1E260AC8955EEA7F138A209B39DAC135363C5FF6540C800BE0CEDDF9C6D8D014),
    .INITP_0D(256'h8639F12B29E6EDFEEAE34CE40DD3227B0EE9F08152125E08465FA5135CDBC0B2),
    .INITP_0E(256'hC28B28EB0BCFDE27CA1B6479902A951E979F82A2158E3A8FF55800E4E2B3C080),
    .INITP_0F(256'h32991481DACC8CF9B4DE3DB073F2FAA2AA7F05576DE026C1397CDA5710BEFC24),
    .INIT_00(256'h259EB13D78F16E84C71266453D443649AB027B37EA51184A4504EB90EF8A2F7D),
    .INIT_01(256'hCD8834FB96AAD938558B1CE4680AC1EB62BAE7B2CDA5EACD018AA5D0941AE443),
    .INIT_02(256'hD98B953FB7E0C2E9AFF28854EAA7A126C283A26909D0791E3354391ED7BBF963),
    .INIT_03(256'h88A27842AB7A4339F45D6C9DB8B80A7262AA87339659302A5D8DE451C2AB4CBB),
    .INIT_04(256'h31392B819BD46F020DBE3A0334C94616BBE3770335E9E48C61BD3AB54A81DA5B),
    .INIT_05(256'h6BC80898518687063B1205C5833F456A318EF71173E340939C947595FE7CFDAC),
    .INIT_06(256'h97FC141D736A4D2681167D9547CC027012756F599BEBB8EF29EEB847997304F7),
    .INIT_07(256'h16C18CF06914C515773A92249154BEBE7E7A83F9CA3C3C2CC9894A92FF024F46),
    .INIT_08(256'hD879D7AF7E24E47024A3CCFF2A45FC0259B4921BF5DBB5707D0C27E2B7B86373),
    .INIT_09(256'h70EDF7CD87507555332087AB0607145069A52CF3FDBC725193E556ACE21C2401),
    .INIT_0A(256'h61D344D48DCAE407499AB9D9E0FAD1F3C9C1299B4D4F0998579E22D14DF70CD4),
    .INIT_0B(256'h71BF3CA09D53A628130F1CF7BFA079EA1AA6A268B0F2F0796CD853D10D736293),
    .INIT_0C(256'h9A67B08940FB82BD59220C92243F88F397AB356022ED6B975531F93ECA1FE8EA),
    .INIT_0D(256'h7D8811187E4A0D9496780A41D77D4D4A5B1E1C2BE53A9AC5E9D262BD24400032),
    .INIT_0E(256'h71B8741B442B89A533373AF40117A52412B0F6884697FF04BF9692CD6C97987F),
    .INIT_0F(256'h72400B9A07FCA3D092DE7FAE3B23037B177ADD80D85250C6204CE5624C8944C8),
    .INIT_10(256'h22F054D324876927804D9BC4A4112224A74BCCEA5B1E7F7893979DB24139FBE0),
    .INIT_11(256'h36D83A3D1A5EFC81204F32CA8BB803D03238DBCC31EC265CC63B62E1182585D5),
    .INIT_12(256'h64BF75EAFB9177D9E0777379E1EC7CB6EA642128EA2CAE2865B6D8A5982B40CA),
    .INIT_13(256'h9FF064E77D681D38007DB4A757F26B173214D74ACBCE229DB213696F170E3784),
    .INIT_14(256'h461E34DE5F2479B5868B2DD9F7C884F4A46F2EB8931D2F0298576C92305289F7),
    .INIT_15(256'h9F92196476AEF4730CA9E80151C89EACD2EB4E491D4957E513B473FD6E576BA9),
    .INIT_16(256'h6D3A4DAAD0611DE0332F0AD2E0A679FB3E6B8861CB9E0BC694EB6600AF032CE3),
    .INIT_17(256'hCC68531F377F6940944E3F30F7C3EC713A13244AAA5CA0BB62F157CF1B4CEA8F),
    .INIT_18(256'h16C75495EBC0FCDE976B14A56252B89FADFB68302FD541E083F72A1165308C7D),
    .INIT_19(256'hF799DDA1A70890E16489FF3BBDCE26515B9366E5BD20397198A78360A7F7C91C),
    .INIT_1A(256'h39180D65AF8E27FE35C4D0B5A5212681DCCC7B74844B9B8618CB2FC13104BCDD),
    .INIT_1B(256'h77A2A4C44C7F17AC3DBA1B7BA61A7AF6C2656ECF2DE287D3DDE466665D54824D),
    .INIT_1C(256'h82D47BEA2E5B2941867E6756A512E0C12FAFBA19E355C2E0AF0DEAA8B4034407),
    .INIT_1D(256'hAC58F2E91E1DA25EA78AD4B49DEDBA7FB2369072D999B0843A744A4504F3172E),
    .INIT_1E(256'hCCBEF285169B72D4D2C24C90303858F4B1BC9BA24C69D753E5156615BD92D0C0),
    .INIT_1F(256'hE4E07D5A5976D2FC5441E807D57819EC4CE4EBB8A6883666E6EDAB3EF2EC11E2),
    .INIT_20(256'hB146AB8F5113FDE6DCBA2073D606A5A5DC1BDF4159356C7165B5F009D5B51D6B),
    .INIT_21(256'h3466BA40D837D5CC97EAEC5B352FBF6125571984CD7BEF78A0D40367F42CE5B9),
    .INIT_22(256'h9B46E8DBAEC5F4D7A8D41C2C2117A17096421B5D4A93BCD05B9A3863589D0106),
    .INIT_23(256'h21C608A6A1D7F35185682CD95D1BB451FF7627A03ACC42B52615C5EFD4C8D525),
    .INIT_24(256'hAC0955E709384007031675B7AB67BF24833948515DD7B21337AC63C6ABAD8FA5),
    .INIT_25(256'h028A66AB0B2FFE4BDDD9F194A26342411D95A0818487AB2DAF9E4C007D9BA681),
    .INIT_26(256'h8C9B6BAF5FCB2474B7D71B51C22AD379A4A4F0994F22C2425007A49AFE200C27),
    .INIT_27(256'h2D2B9944A93380651AC586C2D8F526271346C565578658132AB53409E325B5A5),
    .INIT_28(256'hE304FD5D98CD4B3E26DC947DF57162B1DF4D149DDA33E1F27CD309FE94DCC6CF),
    .INIT_29(256'h6741D2F5E8CF75338BC1D9F55C5F7CB6A12BF410FCBD091B3DCDF5D5B745AA6A),
    .INIT_2A(256'hF60695B17C13C46A5BEC32E869CC0D890E3AAE1AD16718C4D25CE0F1B9FAF79F),
    .INIT_2B(256'hAA99CC79CB10539CDE08BDDEC8BE28D34FA5D5DEC8C81BC71CEC72C9F907D664),
    .INIT_2C(256'hE97BA41DA7C99F058DD77D37D3A6329560CCA8062D92AA6B3B7A13C566C185E8),
    .INIT_2D(256'h3CDB866D35F9B1058E5A56BC5D2BB4EFFFB99A5BE6EAEAADC307A13EB12922D1),
    .INIT_2E(256'h146571532E1E397A5D2710443318CA0EF6C479F17D01119A8F182C68462E2AAC),
    .INIT_2F(256'h8E97563DEED820482864612D9C177B5DF9978CDC02F63338F1B39BA1CA2600FE),
    .INIT_30(256'hD4319B92E9DBA3771A4BD0B9F1C8F634794EEB7DF698014CAC455D9F44FC1D2B),
    .INIT_31(256'hB4EBEEA8577A02D6C6C4CB5AC603B4E49CBC0C4ECAD5B36D2C2D5F039AD7122F),
    .INIT_32(256'h666AC157A06A1E6105F3E794A54715FD3DC8A36C4855788A09C5E0A2092C4BC2),
    .INIT_33(256'h77378F3505B63DDAAF5A5601FE68CF8C7E78945ABBABE13771AC5150D6711B46),
    .INIT_34(256'h3E31675C3BA6584C914D95569046A69D4BE374595DA641B4C379DD0783E47F11),
    .INIT_35(256'hB04FB2BB555D9A22D72752B64CB6720B6969737F13CE7865694E298825E3F706),
    .INIT_36(256'h9A75AD550FC3D7B21462312CA279E07C23A43A2FDE583379B792687FA14FB4E5),
    .INIT_37(256'hEA0EA939BF7B01A086C144246D0C049EA8FAF1C975458AD77C600244FEE60266),
    .INIT_38(256'hB91B41C6D33C6FFC6C1BD72A203C9C8AEEFC2C535ECFC9640C2B9C9C79815C5A),
    .INIT_39(256'hF50FDD3299A95A11DE5F3B078CD80F7043FC37512D60C41AE79C9FD3ACB85E98),
    .INIT_3A(256'h2D593BB17C6BD3192D3CDE70E29F1C266981BF98B34D69DB017370D8A9FD8030),
    .INIT_3B(256'hB53BAA466D8330A91EADE9CB89429A809A79B0CA37F28BB0EBEABF58917CE9FF),
    .INIT_3C(256'hC4F265A7A9EF3F0D4FE662C2E218DD26322354A1F861BBAA56673B79B80CCBD7),
    .INIT_3D(256'hC24DC4E1F8D14105F2BEBD17AA163145AA0A2889FBCE23C03814989BDE0564CD),
    .INIT_3E(256'hE1D1D360FFEEEB10E8633A4A162BA07AA4B5E7FE170B9A689A824F7FF6103D6C),
    .INIT_3F(256'hE26DDEDD9673FB5FD5100AF361ED9CF18EBA3AE7C1C27334EE49A6DCCE5EF488),
    .INIT_40(256'h59A7F405A692A0433585574AB6AD918AEBC8CCB5C14AAD5A0DFEEE152DE5A634),
    .INIT_41(256'h04390E00A2FC0CACA28D574EE1BA4FD7F1029C995B6E21441794844ABEC359F1),
    .INIT_42(256'h264F5C4F305E9EB5788667C4EAD65FAB313578F3DB1C7AEB9301694A6BD8A228),
    .INIT_43(256'h37EFA270439A728997ACCDD66EACD5C64D5BF62B79A8A8B92F7BC4A1DBE09C29),
    .INIT_44(256'h91D157213F4A846FE3E76181E7E6E814F66E7F29CF3A4035409C971818CBDE3E),
    .INIT_45(256'h903B6024807EB12382D87B85DACED37F897CA0D325C1689B919FA5561C9118B1),
    .INIT_46(256'h2AF835EB8670E2901C3D57911CCDA634BDA2556B690CF2E433A4EBAED67B7B51),
    .INIT_47(256'h7DC096930F079071176E527F6EDF40695C2512B08687374CC4AA02FF01E845F6),
    .INIT_48(256'hE4C4ECBC0D772F0D97FD176BF51E479BB5101A95B1AB983452842803D4843A76),
    .INIT_49(256'hE29EF997CB0B25FCBCC73BB9D23A99F1903F26E2835111B0EE83923CE080C96F),
    .INIT_4A(256'h8CB98B7F4183358F69A19D19ED4F2EFDB9B72447E63988D791EE535AE741AD46),
    .INIT_4B(256'h567182A06794EC0918E1A0E34F9D0911C708FC85FC0DEE4CCC33D2FE56B1DD12),
    .INIT_4C(256'h056AFCC080A1A02753912CA3DA2E7CCDB5B0D5B475F92A8A5C5E8143BD8318DF),
    .INIT_4D(256'h616F9F47BE68D5AA8DA3ACBD2C60F659656E3ABEE977831D3492A16FFF438130),
    .INIT_4E(256'h869B7AB84F55B3EF096845B0650E6B7CC4B51021D769DCF3C1F25791B1A7460E),
    .INIT_4F(256'h803E99F1636281140A7E340AF15A9B0A4CD3A8CE2C62295C67A2C96CD46FE23D),
    .INIT_50(256'hDBE94A705B0E2CDF6C10994DF0DBA98564478539B769C15B0FE47CEA240A3359),
    .INIT_51(256'hEF320CB49FD563507ACBE4AFFE9C6B7896D58AF7960D09EA7966DB990B185938),
    .INIT_52(256'h3CA32B4333B1C531E794B9EE45C9C159EB7080C1A00A720F3B1237C67E9B5584),
    .INIT_53(256'hED9BBF0E5BA2D76317CC752A546D9A0CBC1963ED99F2137E943B7B2F63571F53),
    .INIT_54(256'h7BBC9659E095DBC514B78051F3C192CEEE2A1D5B81C846B86174FC37ADB30A91),
    .INIT_55(256'h2C59EAE7CC6446C22182F9F13959934E22D309B46CF672F78C92AD90C9ED2A48),
    .INIT_56(256'hEEFB7A5B7C5FD4243D62EAEB86CC89490BB482AD7C226003E29C0AC3C61A3113),
    .INIT_57(256'hABE9C2945014EE533A11316BF86D9CDE614F960841D9963EA6A1691E6B81F537),
    .INIT_58(256'h09BBC54881ACAB11A4C08CD8CC76C9A169CB65F8447E6ADDBFFC6270FF07C212),
    .INIT_59(256'h228AC2228A543F71A9E4F204690CF9C2F204D3C906CBC5530C512FE76DFEEDD6),
    .INIT_5A(256'h2966241EAA6B2B79B069391E801C1961C81FF967D2D1B9EE9A0664517D0B010C),
    .INIT_5B(256'h350F7EA85E5FB802E3F55E683BCF81FA7AC24103545503E9117287296A4F5447),
    .INIT_5C(256'h0ECE7253FD71ADC0ED0EA090C231F41F358EEA06DAAF410D47986A4930A747D0),
    .INIT_5D(256'h6623D8B0732AEC7475E836558FA750D44CBE3A8F3ED68F829B037572238F0B75),
    .INIT_5E(256'hE018C6CEB2A222C5768571B462CFD28CB4090323D3F0CF41C0C1E334F9819503),
    .INIT_5F(256'hC7CEE566E481C752E62F026A1DD237F8B69B29F48C1CEC37E38EF0752409B336),
    .INIT_60(256'h052955592F60FA710051DF3A74E9B65A25D68BF29BFCDFC301D141D4EC8DF3FB),
    .INIT_61(256'h0ADB60177C3B9CE097090BA7EDE2C7C83BFAF94F3399AAD4A9DE5CAE5FEF6DCF),
    .INIT_62(256'h96ADFF7540EF8E242489E1890ECBE80813670CEBB22943DFDDC1B2CA7A39FBD6),
    .INIT_63(256'hEEAA525B47F8261672B65757FD0F014F4813AF7086E845F98A9B4DDBA0E12BDA),
    .INIT_64(256'hC31E77C023BA114F0E3BB6B92A07903C6ACFF8D45A1E0652B0F1C9DD1C37E7E8),
    .INIT_65(256'h2AA399F0A8AB4BBE5475A32051A10B108EC16DD984DFB9496B55AE36B4D7CC6F),
    .INIT_66(256'h666ACDE85AD6FE98F01D0A39EB8D226EB5A25B64AD28EB23EA5993FB8B745E2E),
    .INIT_67(256'h89F654625824DF07E1C3661179A55BA620E72AB42FA3D33DDC104CB1D7ECB234),
    .INIT_68(256'hA0FC4147FED5F72ED17CCDCDD4BC7C6F2CDB1BBC069A869D44B09DC002049792),
    .INIT_69(256'hA24DAA1955CDFFD8068E13163CAD1420105ACB4866AF0EA02020C889C23C11D9),
    .INIT_6A(256'hC28AC876AA78E0717D014934497C5A8F565FC46D42F80C7547B49B69B381932E),
    .INIT_6B(256'h5B88C1A2909E36D8916C105F9570DE04834BFE1684BA395618C1A828363A41F8),
    .INIT_6C(256'h8FE7D6573C55AB69447F884E2C27DEE3BDB7B0FF2661D1D71356A134AFC687BA),
    .INIT_6D(256'h542ED568D8E6994B5B666A28A8FBBDF213DE86D225BE1C495B9A97B670CCB8EA),
    .INIT_6E(256'hC9AF46B0E0EE27BA17F869DB5D06B8ED28D430BCBF58E907C4B04BE75EA9C60C),
    .INIT_6F(256'h681C2E048670D6CF90AF7CCD4700CDB2C9CCF143FB1BAC707E7F0362C9F7B2CF),
    .INIT_70(256'hE42F7696EAA79D58BD7A47C7D6FC68335625FB035B82A6DCCC567C9C79CD5EE2),
    .INIT_71(256'h624D0BFCD30904B9CB70280A367A7A0BC832843AA6617D00D07F9D8219A4E24C),
    .INIT_72(256'h5985DDE4898D2D3A13E45E0C26F6DC11900D787C2CABD0B361942D61BE84DB56),
    .INIT_73(256'hE1CB3AB1656C423B049AC2AF9D97AFFB3E00FB800D06A9C82AA25EF0770E698E),
    .INIT_74(256'h0E5624D561ABB881AB448DBA06543FD259F3E544134F2B53CE6881F0E8BEBB2A),
    .INIT_75(256'hC35DB701B40E934761F62655EE8AF24B18B942C3BB22AF28156221070B79C293),
    .INIT_76(256'h565A5537A36B2493906A5FABFF44BC47D78916D04761B48211AE30F6A1AED631),
    .INIT_77(256'h9963FC2B41C7B20ED937F30627C6EBC0F3CDE50B714206AF0D814820567C0EBA),
    .INIT_78(256'hFAD64F779F1219B19517CC2FCD408F31747FA26B445EA048D818F11DEA6B3A77),
    .INIT_79(256'h33CCF02CADF9ED31DB3FE272FCE3393153A172ACA1E5F08D1BA5151805B99DDA),
    .INIT_7A(256'hEBDFC45CA797E1C393B5DC30CBC5FF0B63958439D85ACE2BBD318770D00EB28B),
    .INIT_7B(256'h3139DCAC05116B1B244CA3A7737CAA27CAF52248D3F8B977B97898159A1EEF82),
    .INIT_7C(256'h189FB21C9E535D6C827D1F7370C9E0D6E6C623A0ED4D9E55992FE30B2233CEFD),
    .INIT_7D(256'h3E1698B97EC093B5075FD76A82CECB0BF02BD4CA55E75D55153165184A8A37D5),
    .INIT_7E(256'h2D1E9A2F2F3358C14864951DF3D08354686B5EE095A4959C829A50D3E6757846),
    .INIT_7F(256'hF12F952CF566E6A0B0BA51C1FF4D7D1F5A46E1A62593DDDA03E364A7191F8682),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized21
   (p_55_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_55_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_55_out;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h8284932EB542B105C7E4F1B32C36122C42A23FEBE2C9EFF842D8B6B9552B6FB0),
    .INITP_01(256'hF4A1B5681E4BE7BBD797F44BB65B1A52A903BB5625270CA326AC2C9F4589EA56),
    .INITP_02(256'hC7B2BB1569F7725AA4CD77AD5DB67BB2110934A739D8F23EC1A036DE7265F3C4),
    .INITP_03(256'h6DD3E9CDC6E322A7A2EA30DEE03CA0C3AC1D5780809AD57836DD5EA50F442FFD),
    .INITP_04(256'hEED68C00B015982F1A41302E4360EDC4977E166C3028F9E84746D90B639A1F35),
    .INITP_05(256'h6ED5F209EFEE06247EA968B6910E7014CEE693831133C64B59640833F0A0AB76),
    .INITP_06(256'h48A8519EF958551AF527658BDB711066E11D4499A5AF2920CE911F6A2D5DA51A),
    .INITP_07(256'h39A077199F199FEE3CC07F4FDBC42C338EA6E2595375C051DC4754DED49E5118),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2B32662E4187105C6ED50BF05A347434E849D864F8A95D16C18AB318491F19B1),
    .INIT_01(256'h820FC8A7D7F5639F65469E9164B34752A0E8710575996E7E43F1F5C4CEA7163D),
    .INIT_02(256'hAECE8E38E7DE89C338F6317DE01BA55FE08425E54417E086E30F2ED1F8C22420),
    .INIT_03(256'h3950764811765C365BCE32216F7F532CA5D5274E18DD756CA8154EE55851FC0C),
    .INIT_04(256'h437666A60B064FE1AF6FF44B4BDBB55BA20BBCA58E727628C9C984CEE05F2998),
    .INIT_05(256'hC424EAC46017E9D8D94A9BCFC0D1509A3BD785352E14907843B80E0CE0C457EF),
    .INIT_06(256'h4FD8DE5843AF75564F9B89C6CC564CE932B1D32991893CAABCA3501CD93D00C3),
    .INIT_07(256'h7C41ACDC354CDA0C02786EF95231EB685A0ADFB2C44326B35B1040DA2546E1A3),
    .INIT_08(256'h2EBBF3CDFAD50062EB2507B6DDBB059769BE2593ADF60C0BED2539A7881F98C2),
    .INIT_09(256'hD2106372A93D920462985000CC0D2FC8296FB1CF56C28A5605A43CE6007C12A7),
    .INIT_0A(256'hE9EA04F6F749F1AAE6F85F0F0094BDDA63B37BCA3868FE58FA86918A3C8CAB0E),
    .INIT_0B(256'h2C74D83F9AC4D2FF3B89BBA0F1BF0239CB61E150C5CB22B38AC776946B0CCC88),
    .INIT_0C(256'h8940284557DED96F7E82B041972FA716EE0EF19EBE43D30D1B9387FB415B4D19),
    .INIT_0D(256'h70C6747DC6B78FFCAE3FC41237D22532E6D8F8D5AFFD615D3BB3FC333B589F4D),
    .INIT_0E(256'h8072F3E33B83E770D19401013A102DA8261D6540B725308B0CABF347B901C673),
    .INIT_0F(256'h02FD9CA915EBC21606CC47F5B1DEAF8364D10DE99558C7428BE468F05FAAAEE2),
    .INIT_10(256'h0A9A5167A11C62CD92F492B894A98CC0F87264C059ABB6DAD4591E5D9435FB10),
    .INIT_11(256'h3381DDC50A5851ADC46ADA9A9D3D42AAFE17792017DC2F73829B313E1F5F8380),
    .INIT_12(256'h75D4F470AFE0224DE2C1208628581A8C1D6E8D9D25A56E90C3F579AFB199CE8F),
    .INIT_13(256'h3F1A6A0A836174CCC56BAA189988C4CD4623E96B9C2DAF57D1B118B7838FA7E7),
    .INIT_14(256'h7040F0B0CCE839D23540B3184B567197D7224C059C281AF3AB31FBADD93BB7C6),
    .INIT_15(256'hE0D2A5AD39D9C2A94B6B527F60D6FA88657675984A420205FE6F65B948EE3DBD),
    .INIT_16(256'h775EAAD4DE4EBE2562A1E9DD760725283DABF403FE6C12A700804CB101906F99),
    .INIT_17(256'h110E6131F168F1AE8D848A0D3E892AFC8C375A0ABAB5190A073EF5B2F73A1DCC),
    .INIT_18(256'h87F5642B65D336F323E101F7B2B82DB57B19EF4D95FE88C2B26D12E11BB93172),
    .INIT_19(256'h7A72E383F115940D6818CF756B9549FD20683CCD9A0A808B70E0B29703915850),
    .INIT_1A(256'h80DDECA37E9CA9EEBFC11FD3D27067FF13CFDEEE496C1AD8316531076FCA46D9),
    .INIT_1B(256'hA1A910C295B6B6190CD286568CE143C6F078E758665A17AF8163D24A648B7AA1),
    .INIT_1C(256'hCE2A78B5A230591BE7946986FE22E90522DD71FB754A4DBFE6B5B57320CA2D79),
    .INIT_1D(256'h1EA208A294FAAC02BAA422FD6427191086483CA9BBB627823EF0A9310B34B3A0),
    .INIT_1E(256'h974DCB8F923F71FFA1DC5A126CD14A4332CBBA56A370868CDCFC7A124B066A13),
    .INIT_1F(256'h7D59EFE0E3A97CB884893C0A5F2542B0B8FFBE86A0A767156FC2B4D40B6012A2),
    .INIT_20(256'h8AFB0DB1290EB40295EBD6E366EF50A4E0C93059B1D4903EE39CA895CC266813),
    .INIT_21(256'h044C34C6E3B0C5F7229C84DE32D2F1BD25F5BF7F153C792F685E3DEB10BC99E7),
    .INIT_22(256'hE52066ECA9ED144ACF5FAEE30F4411666E38D570714339904CD2743ACFAFE3F3),
    .INIT_23(256'hA3A0498F9D7C1B9BB6E06E0739D2F0C1E5118C32813BCE7F662373B5A493D2DC),
    .INIT_24(256'h149BD3CAFFC942998B58C62914DA5A4273EAE6875C49A5606B579B67725DB48C),
    .INIT_25(256'h1348631F8A05B051FC383D1B5D809C67F4F81976F63D44BD54361874433FB4B6),
    .INIT_26(256'hBB8DDB30A2786F861C890E06DFDE25CCF0E0FC049EB3411D5219ADF2CB17EB26),
    .INIT_27(256'h5CF90DD0554AAF42B945B55D9427685E472574615BDBE0C696F60E817DE7A083),
    .INIT_28(256'h3A50324A696DA4A273220F7A844353201BA634DEA2CF4F770B603B17A75B916A),
    .INIT_29(256'h2A795E530FF3CC544CB499A6CF75B458475239C7466857C6B93D80EF096E3431),
    .INIT_2A(256'hDD536BFB03927D88A5FC0DDEEB305D749EE9447EA18B64729196ECF8E9F725A6),
    .INIT_2B(256'hF8F84D6A3273CCC2233F39370833589557C9CEFE395CBA999A886CF186D6F468),
    .INIT_2C(256'hA185435CFD24401A3CCB79F47C2B45339859D2E2FBAD2DDD9171780E4C50D806),
    .INIT_2D(256'h7D35A00D82BF5DA3695698226E1EBF1ACE0AF4546928AD98130D6B1810F76567),
    .INIT_2E(256'h6F7BC222287DBB5408B8AF5D047091DCDF2875B75410E0EC483A8FF8BA78E217),
    .INIT_2F(256'hE5824BFE8FDF665B7B46FF4546675379F3581D645C27196B6666233645668B81),
    .INIT_30(256'h85B32EEF129F515BF6F7AF1082A84A64E83F69E2431342FE950E5091571D1B80),
    .INIT_31(256'hA5B582734B58C1B0928E774A2EA8AEE83DC11371D581DAD9F0152D6E60CCEE3C),
    .INIT_32(256'h1AA08D3ABFC2D0D9AF3418C8CE1C42853D7FD6591B2485C284C4AC8871C3D807),
    .INIT_33(256'h740749D0E61B3BB7BB8D3777210915DB5966BB8F9F8C2998E8997314190F01BE),
    .INIT_34(256'h1490146AE165CDE7E0BC6B61897DAA074CDCAA1E6850096EE4FD42A328A368A4),
    .INIT_35(256'hF377252BF24479139C9E3D4BB1E0B720076BD4EF1791A12520B545E27A1525BA),
    .INIT_36(256'hBC8C3D15E6581CB00832C81DE0FE005CC3F837F7A72ECD4DCAD964B8CFDFF94B),
    .INIT_37(256'h64243EAC96B64700A9F1F7CA31B06CC32624A8F234ABE0EE22D2F14E44EC1D60),
    .INIT_38(256'h7AD8A63F0555831FBB61F0D9552DFC8C3251BA38C26DD9A6646F7E91FF36730D),
    .INIT_39(256'h527B9174F2574C5304CC28E7D429D501DD9559CB1E232A06B020D00F46F6C996),
    .INIT_3A(256'h11327392B802410BC4F0892310E8494676DFC09E1320445884CAAE55721606E3),
    .INIT_3B(256'hB66D64C02A0B89B8334EACACE1A437D7C35237B92CF3244A77D85F7CAEAFD496),
    .INIT_3C(256'h9161766A3AA29536C5FD16E9E17C722D2A50D6458A1433AB9ACE629BD95A2CAF),
    .INIT_3D(256'h7C224FAE865D8FF085158D30C41BB3F48F9599970D664BB092EB06EF6027FD4F),
    .INIT_3E(256'hD18707BDD76010DD30179B577ACA5C38F85435E31AE930D57E125B5A72C1E401),
    .INIT_3F(256'h93077CB07FCC71EA729B7911CFDA2078A7B2AC65FCB759CBB8B5A9CBEF66720B),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({p_55_out[34:27],p_55_out[25:18],p_55_out[16:9],p_55_out[7:0]}),
        .DOBDO({p_55_out[70:63],p_55_out[61:54],p_55_out[52:45],p_55_out[43:36]}),
        .DOPADOP({p_55_out[35],p_55_out[26],p_55_out[17],p_55_out[8]}),
        .DOPBDOP({p_55_out[71],p_55_out[62],p_55_out[53],p_55_out[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,wea,wea,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized22
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFC9615F93F6267DA450CDD2502C5A8793281AD44E5A7862DE11CF9505F29EFA0),
    .INITP_01(256'h078BAD76AF0E14B7146EE4198F0D90C3056B19558DEEA57C5C8090406C9EB1A6),
    .INITP_02(256'h77755B0674AB2B184A0FB28DBE697476DD198A92AD1ACBB770ADE3480FC56079),
    .INITP_03(256'h5928BEFD6465498440FE049DF20A9139A3EE15CA573F974E0692123C322893AF),
    .INITP_04(256'h152B9FA7E09960BF24BDCB3EE04D58AB14EFA040C624C1D90A526272AD4A4666),
    .INITP_05(256'h4DBB09B584C7E95D349E32F2C5E2E3CAD2D07D647C829824E5C2560EBC779A91),
    .INITP_06(256'h88ED227E3874E21FC4E03A4B64E8B454AE55A704623D722E131CCC3EE38C2788),
    .INITP_07(256'h6E4498505FFC6529BBFD660C2BF6A251D0693D56739F160C0E19A8E4F4F3A811),
    .INITP_08(256'hE3D4B5DE044F4667CDCDD9A023D849650A01E54B664670A9291E5F4C07B8AE5A),
    .INITP_09(256'h32918C07308FBFFAA54A2F04CCB36FC25B61E51A1F75098D5BB882E6200FF684),
    .INITP_0A(256'hE493198D35AEAC2D7C521775819C0C4B7D1C1ADB62C656E1324385F49A61ACBA),
    .INITP_0B(256'h90C33B46B7832B87571E5D0A1BD630B9CF8A8FBDF4D215668B142E4988376771),
    .INITP_0C(256'h067E3B1F43B0405EEA254118B4F587823ADDBD8105293799891934EC6CF10698),
    .INITP_0D(256'h8385896CCC5EE6A7C74EE5EF7761DBDA3D57B0DC19A830D53D6B2E65E841E511),
    .INITP_0E(256'h2125F7F4255B445F719D2536799DF972858B5E4DA6F2B6521F7636DA570E1878),
    .INITP_0F(256'h515D2518BEF907D397D017731D94ACDD50FBDC5AB58B4FF3D0C4B77EB949CA90),
    .INIT_00(256'h9803412D09C9A31BE2C0AD9247983070B9330FC2A121E12B4F5E3D48820E9D17),
    .INIT_01(256'h9D3CE5C3EAF3057A35F5D9ECE9BEC8E13560385DA0C4943C9C408454421FA44C),
    .INIT_02(256'h69997FB0480587AFC35F5BC988E57809E8D19B37B7AC07FCDCBE9163722EC22D),
    .INIT_03(256'hF49D2B6CA1623001BFEA756265D767347A640095D778DF0500A6A85A3A001703),
    .INIT_04(256'hBFF77E723D33B2ED1562DB2B1E7684184376A84A8117C374170B86BE530BDEC5),
    .INIT_05(256'hC73FFA48BA6B9B9CD9A93FF62EA7F872E23CA39A6692FB336D58B722BC06A8B8),
    .INIT_06(256'hA69A53BDDE763729A6D58B14BE34DD5403464F189DEF58E448E100A1C5634372),
    .INIT_07(256'hAF43D2F74C54AF7613CC3A3A1F0F606EFC975E989C3E257A03E99CC57E98C0D8),
    .INIT_08(256'h6234CCAD8DBF02D8514545B50EFBEB68B6C53DB322A8A2295808857ADF29A2DA),
    .INIT_09(256'h8F3943BF149213B72FAC6DA016C46B01234F04C233A26E31C5C0CB0E592082EB),
    .INIT_0A(256'h3697F1B2E1F76987791888111247F8331533E50A6AB2B3BCFFD5D4E393E8F052),
    .INIT_0B(256'hC8E62C34BDD3CAD45CB45894EBA5ABED75F69FCC364F8306EDAFDEC8897FE96D),
    .INIT_0C(256'h6C3AAC1EA819349A251A7CCCE0A5333D82E187556C6D5B9DE1AB9729591D5B26),
    .INIT_0D(256'h957ED040A7645484BC27848CDB07A57E8C1661186369C133529279A478A04F37),
    .INIT_0E(256'h2C94156AAA28539F02C92336880F8B2E812E4991F596A19499F70EF9E1EAB9B2),
    .INIT_0F(256'h485BCC88FB0296BE2491D89F3C9EA41141B27A3F5B37F24FDF250CA299322D51),
    .INIT_10(256'h5F409551CEA2F883CF3644A2E6784EB2B54D48CA1A9A10BC261E21331AB25977),
    .INIT_11(256'h4B07BC24EB7D14A6250B999B755801F3C12FF2A12A58ADBDCC58F0D56532CABF),
    .INIT_12(256'h504F28297BDF187AFE3AAA9840A13CAA56223CB0D9B06D640E92157FE40A9F9E),
    .INIT_13(256'h0A044848AAD355F00B83554A64F66C8F015905C83239CD599B44366430B9E934),
    .INIT_14(256'h565DB986CBD5FA23C0373636741EF3C0FA6A791D85F92CCC119D8492E7BA40CE),
    .INIT_15(256'h3599C9BC0242D226D80CB8DF6D806F98267B31AB87A57FEB3F83903CC24A0A56),
    .INIT_16(256'hF5BD35C77B2D9505C9F634C2A1C52C75BB73237FE2D70ED5AA25496EF5BF3B95),
    .INIT_17(256'h1D0869CB0A9372EBFF17A41C3B2B9AC7D37632A9AAA292EA6873DB951C66A290),
    .INIT_18(256'hF952BCD9843FE207A2AC1085EE5D252F4AD486B8473ABB1C1B0CB6AF85588899),
    .INIT_19(256'hD6DCBAFAD9CE4AC968F1E823191478728FE269E4B9CC2887370B4DF36982632F),
    .INIT_1A(256'h96B8CC4C7CE766E853A91F6C030FD709009C958D6EB122C18044941479214380),
    .INIT_1B(256'h79BAC1576FE8DFF5E269FE61F406E90F7578ECC13D20098430E5F94746DCD157),
    .INIT_1C(256'h769901251805346599FA02A7932A69BC0291CA25EF61E1F5FEDDD5E3C7AFD1A0),
    .INIT_1D(256'h8B0A9224C30AEE795E2F36740AABD399F7577EC5D800B2F2DBE773C41D37F843),
    .INIT_1E(256'h74BDC7CB59EDF9169F93B94B143AD2CE33F2BD734DD31DAE78D7E7F6307499B8),
    .INIT_1F(256'h1877FAA58FB6D76814AD41EEB77619B862E9C0163DE2DD2D91D368C2B492E1A8),
    .INIT_20(256'h3C3EDE0F1A0C7D3588D584B560CFC8F4AFFA642BECAF7367E6377F7868A4CEA5),
    .INIT_21(256'h6281F1ECD0967E842C24E5700850A0BE1CB881A3E8E36CEECC2C953C6B1E95B7),
    .INIT_22(256'h92D450B7FF1DEB0CBA1586C3EB303E5B1EC24ABD5C3BF360F57B93EFC679E672),
    .INIT_23(256'h3DEEDE99DE7B227270A46891422CB12AA137F0FA6912EDCE03274116A2CD4340),
    .INIT_24(256'hD85DB1D6A427E8256BE9A6AACC75797AB95AAA22329C860D1B70E033BE552CF5),
    .INIT_25(256'h368D4BE7C149CC5603A9A62D5689497D403316DE09479B56374F6C7689DD59B3),
    .INIT_26(256'hA080859CA7EB64BED6A5CC907B4DE3B38485C2752473B8FB61A6A59D8B6C4410),
    .INIT_27(256'h918C7725D11217BDC32E45893F77761497D42AC496283FCAAF4FD9FBC901ED94),
    .INIT_28(256'h05EF93B328EF9A55BC8AE00EE660ED090B65BC5D8441057C3956E2973CCA5196),
    .INIT_29(256'h181F2519B4F102AFF9A1D321B49713F4B89DE33961132D82403FB8816C63A2DB),
    .INIT_2A(256'h5792B156801E50CC7BF31F5AD4E2AF11AB0521CAB5E389BB070CF736D60A8D0E),
    .INIT_2B(256'h3BC66ECD53CA68A29A6FA7B098A7908A6B23148CC930AF34A160CD90BA6176D3),
    .INIT_2C(256'h23251E70BD12AEE8785567D4A944B17952B23D66DA8C31BB55E6F2518F693FCC),
    .INIT_2D(256'h319E10E0BFD089EAADC45510CB4BB478DB7161410C1AEF57EDD108486F13EF78),
    .INIT_2E(256'hACE38F9B980D2DDFA0FA931BD53866E1EF2DFFFCEF7D84BADB4CACF6E7C5A2F0),
    .INIT_2F(256'h624DCD88971D1056AB8B2AAB87FFD0B11C3B7099AD31FEE192E7904100A9ABEC),
    .INIT_30(256'hE9BE3391706BB6E394D3BBD9ECCFE9EE45F314528544BE5407FBECA9A9ECCED9),
    .INIT_31(256'h1978691D00752DBAABA45A523CFA0AFE7C6BAE02693EBD47A926CB423CC11AD7),
    .INIT_32(256'hC211E8E700EBCF2BE7CAFA9071BCE68F6B42105BA4B38A21D71736435CEA2DF0),
    .INIT_33(256'hDA10C3781F090F03C4CA466A4F5F301039A9FC5E14B88B20C4C516183A498881),
    .INIT_34(256'h1DB3A6802A0EE98038DBCECFFC5D52DD6FD44255B27172CFDDD0685A92BAEAEA),
    .INIT_35(256'h596C9A7C775E914472BD95C8FCBF73C4268BD0DE3EBC6C05E27330F3873A9CF9),
    .INIT_36(256'h3D96A782E6D61C459B08C5117DB24301389E32F501492E15FC27EAC30006E50C),
    .INIT_37(256'h0A999B7112F6E6C682B980330039B186DD21D4EFE97E6968F4959B9CE7145C9F),
    .INIT_38(256'hC18D604499E77469C7660D11E2AC617852AE39A07244189A3583CA505A109D35),
    .INIT_39(256'h916A3B07FDAAC0725B3776951C54335C32919895D57B6C853D85E26310CC8C79),
    .INIT_3A(256'hD1AF6239BB50C4BCAE3C278159C0D310AFC84B62239B79821C4BA6E19C402AFB),
    .INIT_3B(256'h5D769FCD2A3D2983007ED78686C90B1C960287A765090F0493B630A4A96EB880),
    .INIT_3C(256'hFB55ACFEAEA59C456E98F3521768CA31B4339DFFBDD7A1FE127B10BC8A69660D),
    .INIT_3D(256'h4C42837B7ECECD50C030B0E8044E2950E4D4CD98E6394B11D8F3B59FCF070D20),
    .INIT_3E(256'hA02D281BE0878D7D72631BC9463E7D85B330107B2BBE6AEE4F92220089BEFB27),
    .INIT_3F(256'h51B66049FCA3B1C5E4B874A396F1DA11CEC918003FF529854E8341A012F88EFF),
    .INIT_40(256'hEA49CA1188B4C55F420D9994A90942C90E85D1344DF765560AE20B66AC0A6D6B),
    .INIT_41(256'h690A890EDB0D52B3AE7266F0701120D9B1D7CF2DC2BA4951629F011E84364289),
    .INIT_42(256'hEC1144307B101804FB6808A6E7A56E39D27C7EF8FDFEDC479F760E37316D2374),
    .INIT_43(256'h31A7BE7B9A6DB8C5A628CA750E9D288264AFC21E4627A901DB4E4FCD0391B2B6),
    .INIT_44(256'h7650DFD5A7578FB5F4C1FE4800B7C9151B7751E197A8D1B3A04574D3C127D727),
    .INIT_45(256'h13FE4D022D524F1964D081BC20D580E7DF48B0F405B7E08ADB95CCC3923A3980),
    .INIT_46(256'hB354BEC7EE97D73BEB20658F49FEA2A37A7ECCCF0E1F1882AC5D997BB12DFD64),
    .INIT_47(256'h548E20F5077FFE6B8B0699F55496F8D0C84C3928CABCCAD94BC2C23D67CF67E9),
    .INIT_48(256'h6834AD0D1E8C539EAE24F7F4ED0986D50E215ED6DA632F5A665E57E10532E066),
    .INIT_49(256'h1A8A653A7CE67E941C6B6430CBE92BA73C06EE92FAB225471D9E681371ECD3A7),
    .INIT_4A(256'h3AECBC58022A3954284375CFF132FB620A0EF6A9C8D9B9A3B40FC3D79EC8CC8E),
    .INIT_4B(256'hFEE01AB9B75891ED30C7427BC4E419DF18266ABDD7A40007462B61809E46F71E),
    .INIT_4C(256'h64E8F6764BEFC52FFBDC89083CFE7E7BAE8D88B4B650D2066C7E9C178E915B7D),
    .INIT_4D(256'h5BA274ECE80304D66AC35A4926ACAD89D1345114931F9787735527E32C33FDED),
    .INIT_4E(256'hA85430FAA20F7A353920135D19302E66D1CECAB3882BAAFC09BE16B9564DE618),
    .INIT_4F(256'hF31180B7573D4B9A2B22229DF4C508858D7A5DDD6B5767DEC5463682606CA171),
    .INIT_50(256'hA77FD4B4DBB3AA10D5C9D7602310086EABD265B3EC283387CDEFE09EA0EF5D36),
    .INIT_51(256'h42C545C62DF37FC1843B836D60A322AE4A12967B6438ACFAA5C509F3A13CDBEA),
    .INIT_52(256'h554F3C49162C69BEC2094DEE9C441C587D05DF3EFCD8941344EAFDABD6B5FE82),
    .INIT_53(256'hBC9B07296E8C895E5588DF662902E7B3920314694C176A84F359FF7F7180A52F),
    .INIT_54(256'hAC3C08BAA3DC2E1B0515CCDCC3F6BA4124C33904CD00715B7BC002683FBB4E1F),
    .INIT_55(256'h1B1090E8371DA9BB3EF03F2F8D45A5F6F8C92063990AE971CAF83E1C8FBEC3D7),
    .INIT_56(256'h1D1948FBFE5171B7968583564D7052C381CF6EA338BA95131AD228B1DD5CB17A),
    .INIT_57(256'h025C9B72CCE4E7C9CD21A42A8375EDBDE0577D07B64F94AEC0B4FFA7F6356DAE),
    .INIT_58(256'hD8D13AB75B9E6F425C369A911D7EE58B53D1C3B284B8C0CF944E66F50682ACA4),
    .INIT_59(256'h5D11A7B093C81D9EC801C5D99388C49B749F961135722C31396648ECBD03C6C4),
    .INIT_5A(256'hE2667E764B79E4975A1652A4C150B45675A409A84A8DF089C7DEBB4988CE728C),
    .INIT_5B(256'h499EC08D8B65B6D2E0EF1A6F4F3F4CF62129B41A0F1D716AF58A6580029015AC),
    .INIT_5C(256'h63271C6328B56713F25250ED3D287649FE3A0CA4A84BB73589903382DFF6D8F3),
    .INIT_5D(256'hC979F282DEFD193DDAC28D714C64FBE449BCC68B5B33C97E0E453009C0963199),
    .INIT_5E(256'h06A9D9F82A1078683395CDB3193E5CD568C292A4CCDEE9C7C186C5B255812526),
    .INIT_5F(256'h66CDF266B42B279E695400C14885A9B988A5BB37F94ACD119179EDDE1A07C8DC),
    .INIT_60(256'h3B88916959D949D5676AECB148C06420BBE7E5D698F3B61986B215407ED09944),
    .INIT_61(256'h1F6CB5CD2131EE97395571847E465AA7E775550238DDBBD2020A57ECBE08D928),
    .INIT_62(256'hB807BA5110D92BA84F6E28072E4DE87859A96D16F5C90643F5D74716B8C562CD),
    .INIT_63(256'h2093F47D0F50BE64D01A06F5146CE523AB99E8825FB71785CCC8F469C203BA2E),
    .INIT_64(256'h02065989C97B27F81F5A5CB473A76C7334B63B9628F2A8BD811AD49F6BCED97C),
    .INIT_65(256'h987FA2145A97DC6B323AED108009D9BF1D25AFAFD1A5634F18ACC574A7053BF0),
    .INIT_66(256'h60AE66CCDF7C8B4F8601E55C04B12D0CD81AA4E207F175236D92B6489D3BD965),
    .INIT_67(256'h750138F3F55C5DDC26E4C42C9D2E1BFDD9C770F750093003CA3CBA0C3932EC5C),
    .INIT_68(256'hFFC76FC3F4D24A02AB641480C44159E3E0D32CFCCFFB0867AA5DB60513C5706B),
    .INIT_69(256'h4F1BEAF6121F02C7D6C4EE61255858A70CAE8DD13CE551E04B6546B48AA3B036),
    .INIT_6A(256'h1ED24F9ABC28C105B881D20B7CD059967C203684113D5762CD5315FFDF2806C0),
    .INIT_6B(256'h524DBD1126C0268C73C6B0DC72F4364ADCD92F1E508871C885206B018EFEC167),
    .INIT_6C(256'h320D28DD36BB05BD134A43796206C1432E96B02B893101F5D50B4FF4E3DBCA61),
    .INIT_6D(256'hB96B6025765A696791D14B26CAF31CA5AEA8D8E93E218872B2F248D5B79108F2),
    .INIT_6E(256'hB3967258A267AD9739D7BFAB2FD94AFFF3F1918DBBE05CF0376E9C5BF4DBB3A7),
    .INIT_6F(256'h3FFDD4DD7A85DDBEB90CBB5AD73434072B91300D9777436C87483EDC190BF7A4),
    .INIT_70(256'h970E531714146E0934B1B3C4A63228083F8DD785E0A306A97D5FC4D76C6DEAE3),
    .INIT_71(256'h8B72A4E7027A2D707A7C8F206F06FDBB94063745DAEA832182007D427620B126),
    .INIT_72(256'hAF7E6639BAE538FE5DB54C3D035424729493E045E6E718E6D5356B959F6D85B2),
    .INIT_73(256'hCB930E9EE35E781C7E0749DD6D6B3F3466002FF85A72B5E5228B6FFFC7BB2968),
    .INIT_74(256'hE2D50E7781238FB6DC5A6A52CCE655A5578B1C28ED0DB2B0D62FB3565FCEC2D9),
    .INIT_75(256'h610B76806C1999414337702B8C6EFBB56E22847501C69E5B5A047322E1844699),
    .INIT_76(256'h57F383C5333F5A00F294B5379FFBD1CA7F6DD77D27DFF88CEEFE967C9C3CA09A),
    .INIT_77(256'hE09DFAD9778A7DAA9C8944FC1DBEC57009E256C7604851D73E5E702E2AD82E06),
    .INIT_78(256'hAE146FC496527DD4A2EEA5593A25A54A6CC9C96C3A9D454390B1757FA7737491),
    .INIT_79(256'hEF33F4982E3CA37109E735507928EEFC427C93BED0BC5A1D18F84D865A2DE7EE),
    .INIT_7A(256'h8915A2D5FA6E5BF2FDF43F9ED4DE80B32CB0AD36F4B1E8B778834283CD372CF9),
    .INIT_7B(256'hC7908BFEDB4D56ECC7271F7EAAABB53A80F39970F3A0518161D76FDBCBAF8943),
    .INIT_7C(256'h4687CA8A1A3789314EDD785625EE92CAEB818F4655A4B3339063D9C73B463D6B),
    .INIT_7D(256'hB742A5792548862AEDCB4278AF652D304953C9AE2672FD5E1CBB9002C1721DE5),
    .INIT_7E(256'h035504D4E616EC9281F6EA5AF2D1ECCC352A65FB9C99C06B8CB75C020D8C307B),
    .INIT_7F(256'h414E071D22DC5A6B00A050AF9C04DE30771A4DAAB27D2C1F55625844E73298DB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized23
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h02E9C00D9C13AACE53E9E86B49252462A597C145C565AA6F9F0B393621A91F5B),
    .INITP_01(256'hA46A8EE537868C5123CD51337759F496483F04787BDBABA466EEA949D00AA1B6),
    .INITP_02(256'hB579F105605F4C194E9433E66E65BA78D40658644267E6555343D542470A750B),
    .INITP_03(256'hCA3453E757ECE79C2400316020B355F6B84A88C34F0CC3C5FBC02F1E91F6AB7C),
    .INITP_04(256'h640B5EBBA3421A70F7827AF384281F405C1549A11D49441BEE4E8789F7650DD5),
    .INITP_05(256'h0FE92416B67E7E77029FA9F3A871D4F693CDE1B7169C568427F010931B4F45A4),
    .INITP_06(256'hA44DD5C86FCDFD1A70FDF37424C6D0E494FAF4C86677A8B340328C7AD00355B2),
    .INITP_07(256'hE7EBE88D6E1E94938886E342084963BEDC44282148167D95AC07112BD41FDF60),
    .INITP_08(256'hEE02F3B0C9C2D1A44DCE97215C622241BF5B3D455893E5793E1E105C59D46139),
    .INITP_09(256'h20938EDB7379411CF7D2980AD077DECC3A3E9BFBFA4814043BEC4A0B1262C7E7),
    .INITP_0A(256'h857D4B49D1A4300EFDAE5B1E4889003A83CB94F799C83E0CE0CAA69DEC12A91F),
    .INITP_0B(256'h8F0C57765A58FC9EF00891A4879DFF1D6BACDED5841494E1EC1599D66C35A02C),
    .INITP_0C(256'h6B8D6B1D5A60873F8C485AC6C18189E284EECEA14224DBF715B964F8AF12A78B),
    .INITP_0D(256'h82B41D18965048D7EE6773A271D8156E42C7E6737FB4C58142F447D20B9E9AC6),
    .INITP_0E(256'h9401D2A91CB1923910C7474994DA873880C8C697196685C98F0EA3562AE76C9B),
    .INITP_0F(256'h105DC96EB85C19DAEDBBF6B31147958821DC666E473A9E932C2E47FF9B2E679F),
    .INIT_00(256'h57E4D7B9AC3DBD4BA94529FDFCAD79EEC0435767BD71AA5079E75E9FD1C27CC4),
    .INIT_01(256'h3A26AC0412AA6530A45B4165A518291C6E728494FB95800E6130340523143281),
    .INIT_02(256'h8CC1489AD28C65DD743CEB0AA60DD96733BE7A8FD22A81D66802347BAB7ECD00),
    .INIT_03(256'hA470FF95D0C3ACD96ACB8AC0A9D82DD8A9535C66EBBE69D81623A60A699E1A74),
    .INIT_04(256'hBDD493B959D600A18D2A83EA3B810E90A9E690A2DD37C0AD5B811EB0B3416418),
    .INIT_05(256'h566A7FEB68196712FA4AEA67F35205C81E322DBE32A06BCBC7D1236BC1A69AA1),
    .INIT_06(256'h76881ECCFEDC6AE624247459D68BE7901073D2D7B0888823EFDEF4C24E3116A8),
    .INIT_07(256'hDEAE44D04044907E5EA222CA0D176CEC604379262AA6C6F2FF22329E8783DC65),
    .INIT_08(256'hB23A11D301887202D18B74C6BD0D27056D4395ABA49E7C78628A4547605A4FD5),
    .INIT_09(256'h0955E24CB5340ED709376429F24D975C83A53AB648CE161A7501F9DF657F2B81),
    .INIT_0A(256'h7C1C45645CFEE75F1AF5A40CB485B4FCB03F1E5861C8874AA5C7780E707BD50F),
    .INIT_0B(256'h9F5BF215289C45C5EBDBB48307360F3E27D00E0617C7E49A7B04DF42E2857D5F),
    .INIT_0C(256'h56868D321A39F3A96AA372944AB21E46B83EA264D8B36D29729A619879C17ED2),
    .INIT_0D(256'h48133130027DB995F5AF19EF9C7C8E9D605591D201441C75D749AF8ADFFFCC69),
    .INIT_0E(256'h6F9FD0509BDC348FE8AC5446F0A5B86673F3C53FA7C77D4B1775BECDB84A0771),
    .INIT_0F(256'hF802CB187086F78FC4FF02E302C123F817DB9EB1283FDCA5E622245497C040DD),
    .INIT_10(256'hAEC2D06FA325571C430E1D1DB85CB3FC3C4FE991310B32F92B4F10F2F3396871),
    .INIT_11(256'hD2A6A98E00F4BDD353AD34CFC812A92654D23DA1679303697EF356E67B1ABED6),
    .INIT_12(256'h3BA7FEE040559F451B3FEC666B236EE76F087685A1CD7775BF44F7F936353E6D),
    .INIT_13(256'hA51843E9368F948BE1E98FB77CD17796AFE66A533E65DCFC7C4AB820B8220956),
    .INIT_14(256'h7256F8B56056A63E6C4C764D0A767BA2875B17080B4861FF93EE82F88E619CA1),
    .INIT_15(256'h63A7EE41F0CAF33546C80AFA8407CED82D14856930DD63FDF89E11610FF08E14),
    .INIT_16(256'hAD00B1BC926009ADBE12BC8158F773CD6389CA260E70790360FDFBFEEC14BB87),
    .INIT_17(256'h1E6B2755F6465287471B321D07B2DB9E729BA465B1EBE892DB24C8134469A8C3),
    .INIT_18(256'hB7DF4C6DCBC635C69130E0123F0B43658DA81E8BC600A9A9ADD8654454B0008F),
    .INIT_19(256'hEF59DF79A3491678BE75C3993AAAA5EBA86DA553CA1779815A31C2BD2ADC3F8F),
    .INIT_1A(256'h8F3D52A709F4CC971D9E29A0FE11AD3478B7534ACC32E057D50CE971ED24DB6D),
    .INIT_1B(256'hE2D3AC587FEE8F04F16C0BB9ED8D28D3CCAA624A172CA3BE161E37D56245A239),
    .INIT_1C(256'h9FBEC9D3F19EECDF58DA6A741325E52BE2CA74A47B4A622EBF96C8AD22B08ED2),
    .INIT_1D(256'h1A014658A7D5906419FF7AF94AC8B67F4A86442C5B1A1472E1262FE827EF45FD),
    .INIT_1E(256'h46FCE648D733F9253A4C5123BB7DF1E165747BD6BDD3EFCA8CB4942B5D83EB10),
    .INIT_1F(256'h98F1A9554220F4D2FF7A5A9318DA44D001164D591480BD35BB141A5671F46356),
    .INIT_20(256'h8B76C4FFADF3166BC487C3048ED94D6151785DC9AEB1BB367B248A440E544A25),
    .INIT_21(256'h883C3B8003B045BA0128B18689053CEA36597E70713C408D7D9271DEE81DC20E),
    .INIT_22(256'hF32342B8A9C740C5948ACBD31F90001D80AD6E84C8B1406CB21D006A85E25915),
    .INIT_23(256'hF31B0B40C5994002E5E659861534224655F2E68CC3DED71AF39E98A98A042C15),
    .INIT_24(256'hEA571F2AF3A070635C847F6DA54A497CC8EDD085A8038687AC3257C51B68FBF8),
    .INIT_25(256'h1EE061D34DD814B27863324F6543E79029818C3A15542BE343ACCEDFF695B00F),
    .INIT_26(256'hF4BA1420EF5883FCE9CEEF997E7D5E4B16E7B4CF243EBB60CEFDF7642B1DDE14),
    .INIT_27(256'h15DB7AC27F900C9DD91FE64445F524E86729F3AA599995E85EF8F41930D678F1),
    .INIT_28(256'h2E4F7DBEFEE759DA44E7DEFE50A3306BF19B80DBAD14DCC18DC491B42F881AA7),
    .INIT_29(256'hBE2A6DB8D6D88AD0851A5739306F538965F699636881261093941DDC525FA80F),
    .INIT_2A(256'h690369F4450FD88E97BF08A39560EA76B9777BB8AD4BE6FBF9F09DF0CFD70C6D),
    .INIT_2B(256'h8DFD06B53016D533C68DB743DA89BB795B9BA49D47BFD73F3F0C177606648BB2),
    .INIT_2C(256'h56ED703794E6BB7248516ED3C67E925C40D620C62C35C71CC74B41418B37FF0D),
    .INIT_2D(256'hDBDF9E362E27EBC3ED4356CE8AAF4BB76A20899AE0F5A6BE2802C1EE8B6E8D99),
    .INIT_2E(256'h968B61A00CDBBC96D6D390AA46B5D42A75C00384F67DC5FB00B4D498025C5C7B),
    .INIT_2F(256'h5FC87C344D3EECD60BF00088304027BC87854934B802AB37D6C2ECB0275AE3C0),
    .INIT_30(256'h5F0259D41C6EE1ED22591DEC6E48810B538D39721A9DCBEF159B62CDC47FB67B),
    .INIT_31(256'h7FE68C3DC2AE7354B2AF790E4F075A020E2914E389E135A3284EB352F7933217),
    .INIT_32(256'hC233D6DA7C6BA9EA3D9C89CC63ACAB4DA718802E1F75DCCFBD8649A2F4E3FE33),
    .INIT_33(256'hD5649E38C8AF179D98AECBA1C4B79D4B7804310F4053C19C185211FC88E3F3F6),
    .INIT_34(256'h1D5707C267FB89EBA222FB8E7AB8DBC468662CB3B6605D56F1B36BBC2610A99C),
    .INIT_35(256'h8127A3F42EEE21A0E766C7402767B9109254FEDA0051ADA79FE804BEB9BC1C09),
    .INIT_36(256'h70C2C560A98C63372D75326DE30B5C67AEF5606C6392D96CF1FCE26DAF16CD8F),
    .INIT_37(256'h0EA64ABF7442646062500D4FF8B4BCB20B7FB51F6A1A30F5E74937C2F77416B2),
    .INIT_38(256'h76CE63639051FFA5F9D757500473E2D8B71B4CD45F916F50B4739F9F64C21A5A),
    .INIT_39(256'hC50C10FFE374019B4962D6324D761DA10847449AA90C643CACFE89F483837451),
    .INIT_3A(256'h0C7DE71CEE25720A5998EC341695E39B297191308A8F64187891A102F30BFB7C),
    .INIT_3B(256'hA4B13B90F5D1639559DD642E7674DC9A4BF845F0085AC968962078C3CF7E86AB),
    .INIT_3C(256'h5383837F4EED0DFD84D21698767BC5AF38578DE2F1FB4DD474462ED42B4BD862),
    .INIT_3D(256'h855D4CED5EBFF9BBBD72AAD06F10FBE122C869D61B40A2DFB39C6B5E92FB2148),
    .INIT_3E(256'h10FBB4FD19D383D1D1924DD28464962158E5F30D2C7DA5DE5B3395BA0AAFE009),
    .INIT_3F(256'h098F3B00D26595A05C0587276FDD926C7C25F754C640BAF9E52F063E975FFB7E),
    .INIT_40(256'h5624DBD763FE757C0A260EFA291A6D202F85D263DA6406015E92E9A013934764),
    .INIT_41(256'h462EC05210927212A4628D98DAA3F4CC2A9F7F5BAEFCF244BF28D33FB9D6CE4B),
    .INIT_42(256'hB71E080042C2D2A278E97EF937F4CBDE3299B32A376F9B63970E7E222485FE42),
    .INIT_43(256'hB43F50FD36FFAA7B4A332B83F122DB30383E28D782E2B2147A0A2F8F263566CE),
    .INIT_44(256'h5580F42613689E957B81D4AD8F63E4B79A961ADA16BA93F8599816B4B84C73A4),
    .INIT_45(256'h53D7A7FEB6EEBD1E53205AFBB8B481FD7557B247ACD1E2D911E0EA6E628413FA),
    .INIT_46(256'h3F772CBF30AB03E2D24066E3A7CA80583E94803CBF6F97076EE7194B13FE80DA),
    .INIT_47(256'hA479A2AC9604DD78758032AAB6966A2F5AE9DB6646956A34F54EEC62346EC41A),
    .INIT_48(256'hE2F0EBF302CC216650550B00CC4446512958D1B18064E8BEB81734D322C388E4),
    .INIT_49(256'h055F3E045206597FDD7BCB9FE62B65749BEAF42ACD93B4511D12C63AD94B0687),
    .INIT_4A(256'h01378B78662126CD9AB1FFFD2485AA35C0B98E0939B9039EA1E8E62F1FBE2241),
    .INIT_4B(256'h8B427CBD34F7E388814960B1C21C3E82E59B97D51B3E3513652654422E434780),
    .INIT_4C(256'h3C6A08191AD9498A7D343BD0094BF6F1D162BAE2AC9E2166ABBDC5458E6ED616),
    .INIT_4D(256'hF0A371D55CE2EE9816387AA3EB398E5E640CF0FDC3B8ACCA73488A5006BFCCA3),
    .INIT_4E(256'h572818ED69B28E1428809B23C461B6ED7200F1CD5A9F7135430AF194953F8DF6),
    .INIT_4F(256'h2D8B1A98016F4546382B0E397656C44F5FCB958459E2AF660F7B1D9918292399),
    .INIT_50(256'h1D50E28FA44986E867B08739B3A614B0F619A547575274DEBFD65D960995010C),
    .INIT_51(256'h2D26EBA83A216411ADB46A98ED4FD62AB8CB29F93E9EAA5D5CE84573D22C277F),
    .INIT_52(256'h99305183B299E41BFA300DCF2D0F2F79CAF4A364BBB85CED99511876866A49F9),
    .INIT_53(256'hC23B4AA6213B625BE2B5E6173C11C70EABB2471A70026847C0899D9C937AEAB1),
    .INIT_54(256'h25AE224AB9F3DE9EBD9354E653F52FFAC3EF353292C3E6DC8E7D5D7A0C373A87),
    .INIT_55(256'hD45C96C8D39908BCB9EF0895584DE22B144DB6DC7DC99CF4A292E047F076AA73),
    .INIT_56(256'h4E2F9B65F4D2BC51A6BF80AA66A20EC6AD5DA4390B198A90ED1647F38AC5DC81),
    .INIT_57(256'h78FB821BF9B72178499FCDBA316771DDE8FB176BF233D8B14781A24D43DF0DBA),
    .INIT_58(256'hD974C81690F1669763E9F8A3699FDEBCEB308220EFF4E3B9EB9BCD3072AAFF83),
    .INIT_59(256'h8420279E91E115BD6FD491E8C3D80C5B5ACA3F851D4F2278301DA787EC4EE5D8),
    .INIT_5A(256'h49C09B0C10CF2334C5CEECCBC07955594B6A9C51904E2272F866721A0F25352F),
    .INIT_5B(256'h546E2E8379C443667002B911B814E5ABA8F1A95D14AB402EABF9E6C92E49ABFD),
    .INIT_5C(256'hAD95E45428DE795F61B2D5B94EA3D3A95EE0662CCC5525D872662ACF36D9225F),
    .INIT_5D(256'h6E8C4992EFAFC922AC9AF02A9B594A7675B3E1C4B8BC5FDBDD542AECD92E1E07),
    .INIT_5E(256'h9D3269033676D3B0A7C10B7DA39FB27CCD7912F6B5C29AF6EAA61CD90EBF8354),
    .INIT_5F(256'h84F6200E05C0484413E63E654BEBEF9331D6C151BFE427AD1E6102F8DCDBD77A),
    .INIT_60(256'hC3ACD3BDE82F9F73792E401122D2E95A9A563DBC65D41E2B1A56CD46C6E27FD6),
    .INIT_61(256'h8D00B585B71ED266839857F5EDA6E7B1A4A6C2C9859FB62AD2A1A210B820BEF6),
    .INIT_62(256'h31369F397F71F72E147413A7A9027D595AA84CA4149450A2B751B051E734EE86),
    .INIT_63(256'h030167B0942CE7C3453BCEB84CC42F74C30242A2DF863DE58F91F06CA89EBC7F),
    .INIT_64(256'h9B47ED4D22CFA7B3A1020D0B7AECC5291EFCC98E617F80049E13F5F54AD02937),
    .INIT_65(256'hF72B70518C2D6FFC60EC1BB80B349F3FF82AAE67220EC56E7A5FA052F6B76359),
    .INIT_66(256'hA0F2A17A9750CE7465D179181F0B17FA68F5E5B033708A28F212EF0EF6B4A8D7),
    .INIT_67(256'h74356BC39AE393E96C519C56617D3B302BA81C6EEB94B4AFFF6797004987F573),
    .INIT_68(256'hBC11A2A59D1EF22D8FE9B7F13EBE3B1D104094912B5E08591A06F059685BDB45),
    .INIT_69(256'h108B6C0510748CD874CB2891DB7335EF295FB61705F580ECF5C43A3CA1BE2019),
    .INIT_6A(256'h4B9E6E580A9B56AEB1FC5C1DDCD11ACD2F9B56D04448901E9BE7C7CFDE3CE0B6),
    .INIT_6B(256'h6518437CB6B1A3CABE98DF49334A95DDC3873C3973B8B855882E0998983C13B6),
    .INIT_6C(256'h07D044EA36144E416D41D12C1E4156FA7D7FF5E77BD1A7090E8865479FCE533C),
    .INIT_6D(256'h28935F202C928CABE499173ECABA889217AC3E279409DAE4CF92CC2AB842C26D),
    .INIT_6E(256'h29EC492447D6E2A1721532BF1F32B6A95ACF7BDB1EAAF6A5ED9793684BF206EA),
    .INIT_6F(256'h602A4A7C34F555BF635D173ACD2C4449D0E8E8DB573DE8A172903DCC4F720B44),
    .INIT_70(256'h1757488A32861E8F66E329D135820C346954299C05AE1546A8C752BB484A4FC3),
    .INIT_71(256'hAC5585E31E9132B223C5A78013B0608C7825182CB997BE151ECEA3B2610109AB),
    .INIT_72(256'h335F4C598B937E32D45C475E236D581212471D0F652EDA51CFBC95820D2B7D4B),
    .INIT_73(256'h1B025BA286D131F2434A72405614809B17749B0C465FA49596BC793A84BA203F),
    .INIT_74(256'hC9C16E16F4604F7C86F2A6F121577962F32C1EA4F4544883D1EAA98D8F305B58),
    .INIT_75(256'h3BFBC1EDEEC37CF1F3A7CE8FAE1A0686382ACBA3274E9923B35D6E2D3DAF8A5D),
    .INIT_76(256'hEDD0E800E80F42BBF39136A84839C445AA23DC1DD1334711C90D956D01787BE8),
    .INIT_77(256'h59C4342DCCF61B6930355918FE3EE2380A06A888E8B78F8302426D15CF40D6DD),
    .INIT_78(256'h8CC94B457E3BECC1FCA3479D92E8BCD7C314AF1EAD03AB32560429739DD5BAAF),
    .INIT_79(256'h1A2CD686481813EB440ED269E721083D7F7F18B85EAA08254E8496D86DEB2310),
    .INIT_7A(256'h80010A037510FC7E00BEE009CF37D62DC35AB7B26397B9EFADD1CC13B55B3DAE),
    .INIT_7B(256'hC5550C44459913B55528D9522D3495FD3258E5970DDDBC263E53078A068E7093),
    .INIT_7C(256'hC0FCEAD5430D691D31DDDF825DEFF260124BC5BC702918F11E2A901B77184B7F),
    .INIT_7D(256'h2947B1C89F207C70E2073B0DE83990A242D7491095D9C2D7133FE1AA7A11AACA),
    .INIT_7E(256'h505E7910D692E1D4962C2E1C209E1873B05EDB279F90008F9657914C98A738A0),
    .INIT_7F(256'h2213AB0F7745180F50E3A949E359A9863F8CE6273E8B8FBA97C7B2A4AB39B79B),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized24
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7199FC20FC7A4DCE8E523BAF17F3BA46FB40AFC2AF1FF93147DD39B352F1AD3C),
    .INITP_01(256'hC02FFC23357241F6320B62B7BAC262CD28656CEAA93EF410D0F913E54D07F873),
    .INITP_02(256'h8627A2D21E281DFD26F51C9070B7C97484FE5F9B0B21D83C78F903E7DE1050D0),
    .INITP_03(256'h70908584E652184601D1E537117A3F432A34E4104FE7FCF48EEA88BE82CBDB6F),
    .INITP_04(256'h734162B4742D6AFFFEE784B03B0E06F07FE6AE85ABFFB7EA6DB093EB5FA8A913),
    .INITP_05(256'h4A8171B8BADBD671736240BC40F135076AF8EDBCE8B6AD57971C7612FAD3FF0F),
    .INITP_06(256'hE0AAFAAA15C18072AEB464FD17A0E742D6DE58C3E5257B5DC8A3B0D0EB3CD5FA),
    .INITP_07(256'h15E1E968678002ECCFCF63BA5A4B124BC6A97D7826DD306C283C7CCA01B14870),
    .INITP_08(256'h239B2045F8345F764E2F4FC9FDB60E36989B250F649B841894A476B3117DD1AA),
    .INITP_09(256'h57E77F4436004BB7A3152A8B5F567F75DF21471613E336AE29C13A6C4955EAB9),
    .INITP_0A(256'h472B1BF9B58CDA99336CA40C9E9E5068803BBA52DEBE234DF72A8708F7367222),
    .INITP_0B(256'hF079703FA662799DB1FB5103AE08D8E381441F947211921D26E6CED0DBB6EB27),
    .INITP_0C(256'hAF5FB59565E083245CF33B5BE890C78F01CCFFAFD908DDCAFCB3BFA6C702AC81),
    .INITP_0D(256'h12B8685A88A5C45E31BDF071E1A2F605FCDDD17BA06A7C7D121C4A03EF279EC6),
    .INITP_0E(256'hB8F9DA79B197238D14B8EEB223FBC3CEF078349D8B8C194B046250FF8A79059F),
    .INITP_0F(256'h35B47F6CCE5F21E540DAF5B5AF4A6563532828656D7BB190117E6E2E91C77120),
    .INIT_00(256'h22FC4A294EA1C30D32734507E6BD8654D6A7F093B915A4D2D0BAD4F390589464),
    .INIT_01(256'hB88D903D6B3294565DD51949BC33650EA3B8842CB862E61E9EA2B835549E404F),
    .INIT_02(256'h18CA4E0C5C4D88E63A7A3D50C75BF579FE4C380EC5ACEA4FA8C4BADAA34E1F55),
    .INIT_03(256'h2BB5ACE7D241061EA8EB6A9A30557210E1AF3D06D376FF597B62B4F358DDE64A),
    .INIT_04(256'h44C8D787D92F667B9AB9CA06D409C5F0A1463D8B4AD6A8BFC31C1B95887892AE),
    .INIT_05(256'h594529D8AF6695EADA3DF6BDB981AF6AD724AFFB2886D65CCF42212AA80834FC),
    .INIT_06(256'hA18176D55B616DE4A1324B957C4FD848D0C1F1E6F621CC3E5FAB133B26D4C55D),
    .INIT_07(256'hB05979F8AD919A0CBEC6D2A69A8CC98DDCCBC715715F7C7DD06BB6A886D21464),
    .INIT_08(256'h15B7007C108DECB6B69D509154FC43F0B160318818E01F142C49873E1317E21D),
    .INIT_09(256'h3AEFEB11FD1B4EC508A2A1B3A773DC58C2AD3829644E61505D1365F682A100B7),
    .INIT_0A(256'hF335DFD89A5BD20914B56185D452D23A4EFA96236265ECBDBF4C9DB02C4C452A),
    .INIT_0B(256'hDA726C3EC196CE88440120362C0ED1002C3DA19FB195079B8514731B01E13516),
    .INIT_0C(256'hB120AAC7A7C3BCDF288CC37156C06B232EC92B4844742FC532756AE5E00093D0),
    .INIT_0D(256'h74EC8576A5420DB615E31C13DEC3BEC7BB17D9DC681D67DBCB1DC0D78CB391B6),
    .INIT_0E(256'h5E19C9261D06B8D20615C4BCB668DDF3B02C46B7189A8BCA148A0C722E95F8B1),
    .INIT_0F(256'hE2153E5AEEAE96CA2002DBD039197527E853C598EFF423387EDE4C7D311845B2),
    .INIT_10(256'hF85C30DB17F2E09DD6440106D7AA34B714DCB33C44DB9D151110E1BA264E7C06),
    .INIT_11(256'hCB9310C9E66A15DFA8BF652AAC515B5D50614D5E41E35FB6F9A92C8D77875675),
    .INIT_12(256'h23EB560A3CE6B9683DB150E823506C03C70CB48EDDCC9C8BD4FB8C86502C9446),
    .INIT_13(256'h0B7866437EE7556A62D399382CE2A7C2757FDFB74AF997A104CF479EA22B756D),
    .INIT_14(256'hE1CD769E1ABC71DCCF9BD687B1478DD7954F660F4536B0BA04C0FCAB3439F503),
    .INIT_15(256'h4954C17D7BB0C08A34678C689966FF8694D2ED23551E67D6E6118BB5CFCA3C77),
    .INIT_16(256'h72C80C813DA339310E7DE71DD8DC1947C7768B06BDE763F7D803BDECA386E629),
    .INIT_17(256'h1A6455E809469E495E48F9575987617B76097911F2BA5ED2C38997BE846DDA29),
    .INIT_18(256'hE016954317716249A6885359C0914F036F1066A6FEF18AB275FCF6667085ADD1),
    .INIT_19(256'h6C8D30FCA2D573AA3FCFD0F3869F1C0DA9C6A207EBA4FA65B50CB657A3D8C632),
    .INIT_1A(256'hB7D352115A1982F878BDC4B707BFFF4722C529D28AA0C7FACF8C99947D1B0D56),
    .INIT_1B(256'hE62994B7EAD8F16AB767C29FCCC8CF8650BB367D17ABC5E2C4F178B0A069B91F),
    .INIT_1C(256'h8A95D0FB9F62CC7973E7DAACE5038CDCC15BAB833A570195F8A7C537213302FB),
    .INIT_1D(256'h9F31FA06EB55327C8FDFC24A0BCD3280554862B9943627EDADBC3D377DDA8A6B),
    .INIT_1E(256'h08A077589F47CC1E41D8D355400D2D0811C40F4E82A500A6C44127B8FA989AAE),
    .INIT_1F(256'h232379AA2FA4855EEE2A11941E190C58DF8DECAB0B3D013BBF6D5D55A2CE4ECF),
    .INIT_20(256'h63F953DE86E481BFEAEBFE167C6C3FC637A5F1AE4554C8E9F9754F6D58B3C2EC),
    .INIT_21(256'h331979BEBEF1C9A6E0AD4C8FD0E32ED981133A838969FCFF143E3F558D85C867),
    .INIT_22(256'h22772E9E5FA59228955A754EFF272E82FC6076F9C4FAB0866503801B2EE16738),
    .INIT_23(256'h904EBACD90FB437070C2C9F5F2C91EA5F0D2FA6BE5A49F8A051C20F072EA2D70),
    .INIT_24(256'hB418008506E7E54F568D2E3981491CCA1C277ED5EBEABF5FB3979278FB8E08F0),
    .INIT_25(256'h8C8A5A2BF27103FA73961015A13CABE19455FDB8DF6A53FBF558384B4ACC3BD4),
    .INIT_26(256'h1F6A873125A5F99FEE13EB5D13E170684741396DAC9FF5784DDA2C939056061F),
    .INIT_27(256'h19F826D76FE69144221E9AC9773571FF68CCB958F07E588B789038F0F772D6DA),
    .INIT_28(256'hFDB2BFD33F6937BD0E7FD55FDD2654D546BAAC3FEE8C6C583D203582027C4F77),
    .INIT_29(256'hA88B8CDB9C1735431566A3E31DD5E27915F70D5F6828348D0C03C52B3B606156),
    .INIT_2A(256'h50A4EABCAED0B514F3A2D3B705A7C25EBC5D885B1922866293672A1C5892125F),
    .INIT_2B(256'h35BA0D07F253820719186E021AB8BC3B32A6022FE13C597EBECDEF0760AAA413),
    .INIT_2C(256'h8EEDBB33AEC7449B8F17EFBCCD02A6F0D60F652710106CA4C3044A14DBC50133),
    .INIT_2D(256'hD03B84CD57C6F24BF42D45F59AC4B0B361BEBFB1FEFCF6A34BCEFEAB572B0FF7),
    .INIT_2E(256'h86BA3050C7982CB9718DDE2CE5BC7978BCEB76A80DFD44246ED401F3691997E6),
    .INIT_2F(256'h02FC3578A6BF3AA9E97B8C968C7B9C39DAEFB8513A64E7ED375C4AC8EAC247DD),
    .INIT_30(256'h2701C757B18E815422618C16DB1A907AF3B2D623D7FD30E36AB428DCBEE67553),
    .INIT_31(256'hFF41BEAA7785DD4BE5A2CE8B5F594735A0C431909BE82262FAEF00622F8C02C0),
    .INIT_32(256'h8A4DF8F74D3010AE65A3A3CCE531C93565541465A471E205D6B6BABB17C2212B),
    .INIT_33(256'h5229603DA9E073809A33369729DD459CBF774DEE5C693196E223287D4071457A),
    .INIT_34(256'hC8344F92468F3659B5F51EAF2009B16527FF71D6E4C4620E514E023EFD2AB30A),
    .INIT_35(256'h8F804E55934F565F6965BB8C4E641B1263ACDB5D4354901337F761A91DFC5F58),
    .INIT_36(256'hE85B25E5BB912B529ED9CFB1ABEC3247C6A006F023CE7C87E0C5DB352F6801BE),
    .INIT_37(256'h1856AE6AE4560189214B1C32A2372BD3A381FB0B5A4AB17870ADF4211E9AF5E2),
    .INIT_38(256'h1C1148826BBE79BC6456FAE39F5304A3EF16102FC2D0EA2745A9E0AF29D50B40),
    .INIT_39(256'h8EE5ACFBB4DDFA018AE0F7F6E7609C6A9C5436947C574A85CF8D02A0643AEC47),
    .INIT_3A(256'h9C01BFA10A7D67D4646F5A6BB47C03223EA8AB9613344010A1B11F7A607B1413),
    .INIT_3B(256'h83B27A0AA14D175507349ED53963F99BB9C9C7C545F3A715CEA7AD895FF79334),
    .INIT_3C(256'h695E08D91F817874B59E020353B6C30D4C41D8DE8231C321C0C6E4F69DAE9752),
    .INIT_3D(256'h6F86E9C8A906B02901D077FC9A8D551591660052CA0900711AF380B7579D5A81),
    .INIT_3E(256'hCA5E840E1B9EFAF85AB50F51CB627846D83A2B74FA812CE4FAC4F3A432FA5E13),
    .INIT_3F(256'h3D7B4FCEF7143DA0138A9877F0FDE4991CA837A5D42E3FCC5BBF74D4ADFC9C01),
    .INIT_40(256'h2D3CD63D492D50519107A80E3EC37CD2C97BE1DCCD60AE711B13A50160190D6B),
    .INIT_41(256'h43306DD993A69222D133FA5F78BC3A35D643BA5702807DACCD89FC9627A6AA96),
    .INIT_42(256'hF79E500E9D0988876EC18D606A3D66443925251207CD098EE4A6E474994A736C),
    .INIT_43(256'h452E1FD8B99A67FD649812B308C1403389E9B247E895BBF71DD8490D19B0987D),
    .INIT_44(256'hED6B4F1EFDC977860B1A8212124CC111562C755E4D25C7CA8C0CFD1CBE165B4D),
    .INIT_45(256'h0C402546DAA01E2E4609B599B11EB551AC7C936482052D21AC1022D65CC291D2),
    .INIT_46(256'h302BD8C706FCC8A52C8FB378C8FCAF424094C31407716F185E0DE981222753CB),
    .INIT_47(256'hD49BC7226D1C9A58C7B9AA506937F3E1DDB0D9C9C6ABC537D738F94B994F44D3),
    .INIT_48(256'h9DADDC3CE49ACC0C8556087DB70DBD5F254D76EE399ADC0DF5E02A5BB95F3AC9),
    .INIT_49(256'h6A2F23075EC31DFBEC005FCE02D7C1A3A93F4CC2BD89DD7F0D0033B808E5350D),
    .INIT_4A(256'h887CEC164E5F211540D33DE84989FFBCBC3C8B435E01B2C89FE78F6C10669EAD),
    .INIT_4B(256'h56A66F7021F42D90C6BC75FCACFA80172174466287EC9C7A9D70D2F1E3F49BBD),
    .INIT_4C(256'hE23574347A31F175E498509E56F8CA634178100CB94971F929406FD779BD0272),
    .INIT_4D(256'h8FDF1F097254643A9ADB5554E70CF9F4DEEFCD1F0B82EE8088C38769D12B69F2),
    .INIT_4E(256'hF54A0931F47126EFD96B9E87A4C891D161406EB407F34E47BAE34B498E0C73BA),
    .INIT_4F(256'hE2E34E5292F56E39CE8D5415696626DD754842D9D0314616F5B29283E4B0CDC3),
    .INIT_50(256'h6977A4D51D6D4479E93A9DD12977F375226165168314E7C002D4F469B9729819),
    .INIT_51(256'h4621FF07D19BEFEE329274840F1511DB7BD1138BEAE697534DB968A9FF2F4BCF),
    .INIT_52(256'hE1C2793400E71F8E100B5384DB0415238F2D645F524FE323F7A6B02AF791EA26),
    .INIT_53(256'h73A15C600326ABDFAC7C35BA1A874E5632E8B790B6DFF62FC94594AA2BF5C1C9),
    .INIT_54(256'hE4BF93A298B1C7B5D1416C455929759581937C5B18D042A526B34B427AE0F984),
    .INIT_55(256'hCB106708BB07A398EFDA857BB5F5AC226849B43B78EDEB9A7E76978F802C13E9),
    .INIT_56(256'h475AD579BFEE01E32E57090904E9B8A5FBB9A8E2912A4867998A71FAEC74C370),
    .INIT_57(256'h834B663EFEAAADC9422CDF33731BBCB10FDDC345055FA42F3D835225F6323284),
    .INIT_58(256'h850690FD8FD4F608D54E99E948B232CE884608BC4C5D9A4838A338E6F46063A8),
    .INIT_59(256'h2D9F8E97BB07DB741D1E68FC340DCDEC20FAF39456A61D016180DC051C55906D),
    .INIT_5A(256'hFB0BD7226C8FD890124E3C3691D9AE8F2486EEEA32069060784E5A23B333EDA2),
    .INIT_5B(256'hAEBF1B743B46FDFE626F8E9586FBE7C9E977611019ACBDFA7DD874EF0FFFE2A6),
    .INIT_5C(256'hA0638CA4B48FF2D591EC98202ABE50A9D1547889D8DEBDA61BDEA438F19C850E),
    .INIT_5D(256'hDC78CBE82B9FCD0004EB0CD1DD83C9D6285C668B23E2AAD40E4FEA661647E7EE),
    .INIT_5E(256'hE5779168C0E4B42DC143C6EA339153B29860C6D2523FBBCD6D4B3FE8B2583F6B),
    .INIT_5F(256'h9F182FF912F9F3416218F71650BE206D6C914CEC61E180C74B960A574F2C728A),
    .INIT_60(256'hD60B8B334F35AB8AC7A95F2136E72B83E54C60F5466C9AB4713E8E83389920D3),
    .INIT_61(256'hCAF40ED2A0376175906EC8E4936BCB39DD3F0B09759383300B4636216FEF07EA),
    .INIT_62(256'h12D81AAB0D919A89F8C3F478F62D8F35DDF7CCBEE50BF933E801794E3F0C3403),
    .INIT_63(256'h8981C798A69B119C80F36FAA4D657694CC49BE9FA4015287D0EFD7FB58AF5BB7),
    .INIT_64(256'h57BEF5D701D4841E93EA0CF86930F9A772F6BEFCDE36EECC569E167B5074B379),
    .INIT_65(256'h8165F0372584CD61948F810D79B7C30D2FAC8D7128463DE80639296126A0B57F),
    .INIT_66(256'hDB939F48D9E7DE22469881478BFCA2E506D8D21EBFAA3B6BC65FD35C05A5F9A2),
    .INIT_67(256'h07E91B80704453EFF90A72E33103FB9759268DCCBFAA1DDD2E84148C44DBE472),
    .INIT_68(256'h316026DA4A6D3161CB0B3C6D2DBC91FFFFCB355FCD792AC487A3BAF5B55FF213),
    .INIT_69(256'hEDE255276987B045627BC20A89F12593F5ED80ACBF67A659E22625116394A385),
    .INIT_6A(256'h91ED9C0CD86B69E2EAA8A24B21EE39B0122C221DD54FB32873D9FFA04D308D90),
    .INIT_6B(256'h42B8AF5AABA6FE3646C7854EF84E5953E6556CDDBA2E381DE3E343AED085CEC7),
    .INIT_6C(256'h317F58012E5729BE280E193D787F5B4F677B9862896C7E7DB8180E64B0E0E9BC),
    .INIT_6D(256'h45A19FA05196AC09EC357BCFFCC93C0702CB6411CA6EBC971037FD3475BE83AB),
    .INIT_6E(256'hC46CE12F4B48B108E1CE972FEE441072E700A68041D55820B25540989388CB4F),
    .INIT_6F(256'h2FCF5EAB3193B2830D34A1C2D0476467A2D647DB941DF6C7D3BACAA639E36E89),
    .INIT_70(256'h0AA8F507D704CDDC618E8E272B51D5F6F18AC3B9947D0800E979187E4FCFC148),
    .INIT_71(256'h212141BF13C00259CE9E97A7A4352E8EC5B018098BA6FA5A9C3DD1B04E51E654),
    .INIT_72(256'hEB849CB33DD4493C1BDC9344B076D0A3C9424D60F534E6938E947405DEA7BED3),
    .INIT_73(256'h67702A5710F01100C96E9ADBEC7ABFD7845D0F57E076A2155B58B8BE26B91309),
    .INIT_74(256'hF30A003B4BA7E45B46AFEDA6B4E6E9E2B3D0ABEBD727B3D007FC06C6BF72E565),
    .INIT_75(256'hA7FDFA0AE355490CAC7A7D5FB29AC033267B0A15DEA1CEB49071AE7A60138514),
    .INIT_76(256'h61EC43D3AC1FBC88A9CFE2EF4DDD5D88AAF0FD6FA55786D0FDF02E2B4DDAFDF1),
    .INIT_77(256'hD3A8C3B8A110F8EAC6C4B68F1A54E13AACB30F29365EAC17CC3FED36AFAB61E5),
    .INIT_78(256'h40537AF720D9B77E986E24BDFEF325AA1861AF27D167132B2F56EBD478BE9E42),
    .INIT_79(256'h1DDBB1F9BB0245DD2930782F153476D8DC78FE3706820FCC05A647DA0A95EDF3),
    .INIT_7A(256'h095159D5F0E6C9F7C60CB9F3EB205EC0AA055BEEE7823EEC6B82E40BC2914B9B),
    .INIT_7B(256'h12EBCA0A57C3FBAE51114590C4BB97F53F488DCFB33E815D322F3E0DEE83BE5A),
    .INIT_7C(256'h84136725BE8EE24818F326BE8932D0F93BD1336DCEBB2967FB3C2B86D34AE316),
    .INIT_7D(256'h6C83E50010C05238B2E66C35138E551F351880A567E5F571670FC9CACE1633C6),
    .INIT_7E(256'h6B434653CDC2AE44BE63D7AE0D0DA449A7DF103B5CB846688FEEB16D87FBEB47),
    .INIT_7F(256'hD3369846799FE7676C5FA1E221817517D108F21471227B2B1247AAB375DA0A04),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized25
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h08311BC8604168EE73E792D8931E47F0166E97F1B4F342CEFC3071293718F37A),
    .INITP_01(256'h0344662B43FC7DEB5ED274E421DF974A503D4B820B9EE2B3E3641AB37FFE0570),
    .INITP_02(256'h2FCBE909C72E32523D9FCA66FC3090785456372A1CBDEDD3BED005BD2BE554E3),
    .INITP_03(256'h373DA2EC5C944D80FE67E038B5DD56C2327CE98CEBA329B1CE22FD15DC95CB58),
    .INITP_04(256'h2B3F5B36D9D860F85ED7B05B8070DA02C7CBFCA1C0CDD8B051DA0303EAB5F414),
    .INITP_05(256'hF1A332D83E7839B48116499B74E930098A790A40B8B9E85F025B7C86544C9A17),
    .INITP_06(256'h8ADC01C5D4124C30339AE4D692E313D4A334F27F2BFC7107DD190BBC4D1819A2),
    .INITP_07(256'h4EACFE4DAF9A6398C02568D93342FADA38482399F26EC07F88D7A193B31F088A),
    .INITP_08(256'hD29FAEDA59F713879DC311A5F23F8AB6029B7A53D406204D9E3F3294FF780FC6),
    .INITP_09(256'h59B707F09CD7F8D1D22E3E4D009B6F203FF8AE4C389DD574AF6379449575465A),
    .INITP_0A(256'h8C53E923CE428EEAE06D33AFB291E4EF408373DBC8D7EE98DA8F4CA2BA3FE97D),
    .INITP_0B(256'h30CFEF151879CBE0D10359841DFEC584623B47A93E907338ED6DCD9F3E41CEC0),
    .INITP_0C(256'hBC77C860DA26C38A4CC6D1C5A9CA67C9A606CEFC408E9CFF9B329AD50B8FFABE),
    .INITP_0D(256'hD440028EA634D703A5DB6C646AF87F54DFF4E55E48B33D4D8361627D0AF6B27F),
    .INITP_0E(256'hA54D14ACE890C1450CB1CB7F2888B940896FAF2DCF107F6C4233B3F7A4682ABE),
    .INITP_0F(256'h05F3DA1CBAF4AD7CA7A410604C8367F94206A0AFD03A200DFFF6AAE0A42D232E),
    .INIT_00(256'hC9A2E2BEF8CD3EEFC87AE5152102D8A9F4543511398C1278A4A0523024B1EAA3),
    .INIT_01(256'h81C3EF6CDE2852DD88EFE481E562A969BF3DA0E742A3C0DECB43B28C72015225),
    .INIT_02(256'h1D0CB6CCEEA9C52A1B52EB49C71F88139EF25C5C27263C5E27E9D398B696ED19),
    .INIT_03(256'h91241889684F21AB087CBB17AF812B3475EBE220355AF1AA733B55020FDCE7A0),
    .INIT_04(256'h6E00621212B8D70441665F31B74E5BD05D6D80E94F735F57D82975087570AF9C),
    .INIT_05(256'hB7001A18BA0187F250A77C7188D2D051169C7BDC6E98A5BDEA140E41D87CECE5),
    .INIT_06(256'hF0B067209FFBAC967885A88D19DFCA045EC3DAB3CB396BECCC90F4A382BCA69F),
    .INIT_07(256'h818C4152E83F9D122EDF14791116244030763A79902815338AFB858E34C1E4E7),
    .INIT_08(256'h38572CD30CCA3F65A5D0B3F874277D5A3FB32DEF4BBC111F7381C40E3F191517),
    .INIT_09(256'h6E7015C2AC865A04C89D097A8E508041014EA31C7F715967F1361D1FD70B8590),
    .INIT_0A(256'hA2256A4D624590705591A34E9A9ADFFEA5FE296C410AE8A8314017E18DE28A97),
    .INIT_0B(256'hE424990B7CCD493977A43539A4DBFD82E136908A1B3988241DB816662366D8D1),
    .INIT_0C(256'h0891F0A02132C393557062C510BD7CED9088F331616F38A0ED2BEC5CFB4941B6),
    .INIT_0D(256'h42CA2B1EB8BCC00D036CB37DEB4E54564645B19B956F691326C9F2DE911C8A1F),
    .INIT_0E(256'h7923645404CA56698901D0ADAADB5E924FC007447749F44DF6F5A64FFF546291),
    .INIT_0F(256'h0A0560E71CF4CAECBE47BB97055894F67FBDF16FC17C1B07F6711B0964C883EA),
    .INIT_10(256'h3DC2B1137B99A289A765D2EE7D202254A2C12CF44C34760971038D3E792EF6F5),
    .INIT_11(256'hF7D53762ED2BA3722D74CB8B2BAD3EB2F9C76BD0DD09DDB7C038BEC27AE6CBA9),
    .INIT_12(256'h70B2B7A0BE997CC1915842CE0964743AE3703599AA5BBD36713918B833A01F6F),
    .INIT_13(256'h045484B72EF6B908185152981F51DE007588CA5DEB4134FB820FB611B934032A),
    .INIT_14(256'h3D96D0C31C06F2D7D653541AE3F6C8F8F957B629043A5002467EF25B50C612F0),
    .INIT_15(256'hBECBB933C92A48F9B9AF507E0CE9876F4F1853F7F4E162C63EE711F3D33250FF),
    .INIT_16(256'hC4CB1C07FA89393C4B77214DAAAD52910B1B75D85CB0A778C3A511E3C3EBAC4E),
    .INIT_17(256'hA2C99D2D677DCA222C2C39F30B142918204EBFD7663A1AC2F7C2FCBBD77A8884),
    .INIT_18(256'h587FBC32345085A39EAE4F5C45CC144E07E7A8EBC281552B224AED99C4C70B66),
    .INIT_19(256'h2B6FFAF9682900B70FDD6125CBE00004DD20D6B2E82E5D06530BB688788A54A8),
    .INIT_1A(256'hCB63B5C77361E58A2153B69ACE4B0C6E930B36AE81988FD1386D81FF98D14446),
    .INIT_1B(256'h3280AA9C9F13423818C3BE5064AFCAF43D1E4812522054C434601D47A7B70350),
    .INIT_1C(256'h9FCA722FDAD9006462784D6B0D09245E167AA93BD628C9FE285669563F4C29E1),
    .INIT_1D(256'h2961246C3BA558D2121EC22E5EEE6F58B0A95511806CE1F252CE2B99BA775789),
    .INIT_1E(256'hA16047D68C9DF20902DE4128546504E8F6297360F1E3EFA559FBFF96D5DF4745),
    .INIT_1F(256'h6BBE201268A99A590EB9796559109EEE6EA51D390D587058C8C14C12A905C0BA),
    .INIT_20(256'hEDF8150ED3BDFA2769D8E8E846D10703D10848F9BE8D09584E4A5AE42B063A4F),
    .INIT_21(256'h47284C1ABCA3C88912678937F21F36761D6427681576C0736D8203BC4FCA2B02),
    .INIT_22(256'hFFBEC9A6AA17BDD5751FBD2E1D4CF7BB1867882AAEBC2F15B42E21550DAE1329),
    .INIT_23(256'hA240AD1E14F81BBB93E97F8A20714CF3161161EF0380A2C96D043C2DBDE8AEB6),
    .INIT_24(256'hE11D4E2CD836083ED02338EEFEDA25D374DDD4988F724902DDF062A4BC2E33CF),
    .INIT_25(256'h97991679125C137A5EBE13752EC799FDD0EE3F407F762B2616B4DB2B2150D574),
    .INIT_26(256'h0C213EF907A3A0CCA7C82C6568B4D9702B3E75301253F9E3FFCEC8C663A56F06),
    .INIT_27(256'h23C16569BF9CE399367850C2BD76C47CFE4090CC76175B05CAB6C8C57FCA93F2),
    .INIT_28(256'h5037EE6F35E517EE05AAAF80A530F6A5518C14FCB37945E862204EAE810A8FA5),
    .INIT_29(256'h2E3D70DAFB2FD124A611408BB4258101619CCBA108A496281D9029A6F45598BC),
    .INIT_2A(256'h531B30806BA2A13CEF90E056FB4E4F550CF4B304A281D5E941D706B9E7CFB9E9),
    .INIT_2B(256'h4D5916ED46FAA0CB8B0DD588C915C68AD0E3808D2E376B6B258D357302FA0CB1),
    .INIT_2C(256'h41D78A1B815BA8EAC30CAE5D9A272C41465BCB1AE506F9CD3261BC855232E84A),
    .INIT_2D(256'h3AA1EFEB6051AA4E12EFD02A952FB52684706E27D4B5586A6E4E8354067D4745),
    .INIT_2E(256'hBE8F71339AAA5D2BF7A835FB4E5597C939F895A75DDA768E6AF85C5FF7167BC0),
    .INIT_2F(256'h64922FC2451BC7426F65FDA455B21E5B3DE9D4881196898A35F5B9F3E096A5C3),
    .INIT_30(256'h9DE70856F3A9D8DE84C9222A704DF3F9F030F1E97B2655708BEF376BBE336AA2),
    .INIT_31(256'h3723ACF20B398211397D620958BEF96793E249BEE457FA7837B6B937C5DE3EFF),
    .INIT_32(256'h8C878AB14A8A0A142F8860D7FA0ED64A69918EEB2DF128E6DD9D72CB57669376),
    .INIT_33(256'h8D91D58D237A33E14164F06E1D1CFB887F6E217E90A151036F322941CF62970B),
    .INIT_34(256'h2C7F7544793FF54D22B0E10BB159B25E2D6F128CB574DC16496C2A5128FE3EA7),
    .INIT_35(256'h5940F7EB9A7DA37D2008A9671E6BE311D282EC0354DA7B1FCF88A4C71EC5A871),
    .INIT_36(256'h3630F8C10F5A17EFFFA35875BE33152F7A8214B874D1E24BC23F026B02DB0F2B),
    .INIT_37(256'h2589B9A6B850EC9FD077F7D84FBBBBADDFBB4198DE71F19904A31E32B35CBDC2),
    .INIT_38(256'hCCAE3C21B6937E83BDE613907322BAC262F752F38370EF1F0BECFBE433C24D19),
    .INIT_39(256'h869C1319BCEB9E9E816DB532DBD3A37A7B4D2209C54D31714BD8E6CCF785FE61),
    .INIT_3A(256'hCAF16B49B69FC97D3E9575323C616AFFF2423426529C3E87CB60A99002D11C3B),
    .INIT_3B(256'hE8DF95F56D2259DBCF58BD7A20633180D5F2505779FB6A7D140FE29D444B9CDC),
    .INIT_3C(256'hFAC051AA278DD9EC194E748D5132AC72285865E67F07E04A58B3044388C2B117),
    .INIT_3D(256'h272BAB796C05EACE16F547AA1503A4ADA92F6AA9974102D279EEE8E46797379E),
    .INIT_3E(256'hA833756BD6452D26F38390BF8826C7955AF6D68014F5A5F1D3B0A848A0AC9945),
    .INIT_3F(256'h45ECBA0A6211AE17735942D15692B385186C657B7C54B642E200D2947C944B9F),
    .INIT_40(256'h1BAC60FC5AB6A2F34D71A6AB362AEDD82CC856C7E4115EBD4095840F6446E3CF),
    .INIT_41(256'hC2D1A67E647EE064C042DBD83C1C4DA89366366F805732CFB48C0637D9DF9289),
    .INIT_42(256'hAD5C74502CF95CB409EB152995E3BCF6A2EBE8BB16E04641008C18748A333012),
    .INIT_43(256'h53A17AA2E0A8AF52577A53C9314D910B4AD0F9E702D2BA4F23F0548501388BCA),
    .INIT_44(256'h9DF840E4EB2EF0D99BF2AFC85B95BCE325275F72934A3F05BBAC07F4178DBB85),
    .INIT_45(256'h5E5C95980C5C7395AC802942CE35529F88CB3573ED3E5A41927E9EC9126C1EBD),
    .INIT_46(256'h6B2CF44DF5C7C6CAF12802CC59414F63C8743E67E378CE39ED57B7E8F88B11C1),
    .INIT_47(256'h7E5524893E66F2FB69ED3EAF5203D43B81C70CBDCDBA3E9627CCC4AB7E6DA1F0),
    .INIT_48(256'h0A39F0D04015AB5F63CA7E012A216EAD8629A885CDA971F027E4ECDA6C96C0D5),
    .INIT_49(256'hA9200773D78339F3272C1F16C99BA59516EC812DA767C3DE93F0FA3ACE30B357),
    .INIT_4A(256'hB36B9CE7A2BE229558EE29AA9953AAFFBB6945E21D31E12820718D8F5E5C3AF5),
    .INIT_4B(256'h7820C9C29D59E72F4FED694BAA32E1CAB87B172EBCCBC92760364DCD1ACA30D7),
    .INIT_4C(256'h35158B2F9B7608AD77622AB7C3A26AEF5D4D53E743FC5BBC82337DC0BDC26EC1),
    .INIT_4D(256'hEA0952A8D01293A85B6E56B02F096CAE2A7E4122BC5F7F4BFC6EB02460502250),
    .INIT_4E(256'h826BFE8B98A0B831FBADFC52943A769ECA6E11CD55B5EECA2EEDB2046E0C1BF9),
    .INIT_4F(256'h2BFC924C0317A0E7FC9F16DD1D3DC419FAE44E587F573269B29CE426911B29A7),
    .INIT_50(256'h75C8CD201033441C6A698CA0F8E186581B610CB64FB6DE253D526B8DBFB502ED),
    .INIT_51(256'hD44B8C69BD81E48DE2BBC3708CBAFF20111E262CC79CCEEE4B4524F0BCB2000A),
    .INIT_52(256'h7EEB862B6AF2977D8B5BDA7A8DC0C7B3996CA413246A84D3EB30F2E7ED25C16A),
    .INIT_53(256'hF4FCEE0A09C4D770D27B94EE0E269D230C1BE95285BE1088B7BFAD644DCCBBAD),
    .INIT_54(256'hF16E13CCD077D05B67F11C6E7D9BDA20631003820E193C67B29F63127F5E32F4),
    .INIT_55(256'h12AEAB43BB7A3F31728450ABD7848C898D4FDC747105AEE082B2FF87B714E7BD),
    .INIT_56(256'h7403F5E461E7B41632DECC44FB908931B3DB4A6C9F5430664CB3B26B6E18DA75),
    .INIT_57(256'h9D1133255D4EF50F9CD864113ED7FF26DDCEB94352A30E1C52A39F81475FAC54),
    .INIT_58(256'h975D99C334A505EE389D427AA11256D88E2C7B16253A07C49E8D17F8AF0EE17D),
    .INIT_59(256'h24CC7E4991121979FE8BD0D9A9684B2CA443BDD0A8D4F7C528FECBEC4DA1550F),
    .INIT_5A(256'hD086827D47AD1D8B431461BAEDB548C2152385A03F59131ACAC1CD188F812449),
    .INIT_5B(256'hCF6E28BD116CAC2C6DA18592E6E11E1E9658A67AE7850B25523C736E385AD18C),
    .INIT_5C(256'h0790296973E7F3F385A25B80FB11553F19A5B3F222C567072AAD8A8C9C3D42D3),
    .INIT_5D(256'hF7FB72AE985DF54C1E8AB28BD8308305FB0DA10B13327B1187C9BB48BA5ADE01),
    .INIT_5E(256'hDA480A8B5B0D9E7113DD82442778EDF3D142C2773D5871FF9F6E2E81215526B4),
    .INIT_5F(256'h7FF8E3EF9D2AEA86C6D8D8E51B9494C9C64E827673969392CA1FFA1F88CD41A0),
    .INIT_60(256'hAFFC094AF0B3AF2D7E5130BCE8B61BE06E3D475D0FE4766BDFB8763BA3F02FE3),
    .INIT_61(256'h65343A3B61AEF336AB444652661564A31ED286AE44D0DC05D5563ADD380C38A6),
    .INIT_62(256'hD0012AC62FAFF3DDF0B0918019F055734E7EC9781983A4EA56A79A87C6ED9DE7),
    .INIT_63(256'hC712E39609D792E5D8F5B22A2CF1293EB9A81158D7F5363515264C1F182EEFCA),
    .INIT_64(256'hD508BFB8641EDD693BFF72AF8D025E8A3E8E13A2AD154D5BAF60AD8FC730796D),
    .INIT_65(256'hEEA08ABE849C2339704AB2766E53178C42D168C02822D1CB5BC58F3983F88F20),
    .INIT_66(256'hED05D26C802EDAEF548D6054C88B448D9F569F067719D6A9BF67FAC91187124D),
    .INIT_67(256'h55D54B70A121DFA7F7679D9A014CF5BC21A1D97C42E831564CB0F4A72FA55A6A),
    .INIT_68(256'h0CE91644A612C9D7983DEDFAF038BAC186F8E1058AE64DF90D1BD8B87C8C5435),
    .INIT_69(256'h5BB892993DC608A31877A59EAD64EE7221F50FC662C159BA674E544065FDF639),
    .INIT_6A(256'h262DB096117F6BA188DCB92A4753DD612681206A2D7421C342E60AE6B7B00920),
    .INIT_6B(256'h60133A5140A68D15D840CD1E4AA39BB04A0BF7B180763DD7F08084DC7B96DD08),
    .INIT_6C(256'h41B56D9E0BC4CDDCE5B097623AF0B7EBEE08B9AA8C2F18EAFDFE3381D2471DF9),
    .INIT_6D(256'h4A18277403CB42F093E4336E1CD50B67CCE6BF11016EC79F06052C395EB3C329),
    .INIT_6E(256'h11450ACE703AA9F0666A3483F8F766AD38CB16FF5B490FEF0C2BEA16664F74CF),
    .INIT_6F(256'h71F0991AAACEA0F847584697D068279C2ED28B9D8FDC0C35EFB72A8EF70C7EB2),
    .INIT_70(256'h4860A879E6CF2EDD5C4E9848B184779EEA29AC946465C496754CC0EA9D74224D),
    .INIT_71(256'h283E95C68023E0506D0F3C0338EAD88B780680D19E4C8BFF59EF276CBBFB4F89),
    .INIT_72(256'h6CD400F4EDA8DBC5BE183CF664ED5DA57B3F3B732545F8BED4F2D63262282B43),
    .INIT_73(256'h867AC248438480F245203892D7274A54DDFB8EBA871A92B8D80386DC9CA467DC),
    .INIT_74(256'h876769C808D1C9BB9030A00F462E0E24F540BC267014C84D6EB80D0C0D2E0067),
    .INIT_75(256'h013B900B52AEC55311D1BDD529DEB37B8249C30896E0A36BE2F42B2591150152),
    .INIT_76(256'h43A6DBC4940874DAA901F21F9CDF7602BCEC167DAAD7C62269AFB2EAE13AAD8D),
    .INIT_77(256'h3F6C52F2AFEE43434E0D791D33B8229BC283B7A9E0AB572A6E95B0004A2A72A5),
    .INIT_78(256'h9B93AB4B68A93E533EF9EF1A82C92489D3BF9CF1F2F0709205C64DA3D5F858E4),
    .INIT_79(256'hFFA86149F772A74D9A10B60EEE162C8BF7CC7BB87ACB6C9B71A5E0FAA9CCDCBE),
    .INIT_7A(256'h36C2642CDF1ADEF13867D347BDBDDC8BBB8C403404092E6C4EEC4576A6FA320C),
    .INIT_7B(256'hEF393CA0B2F6601344B886E88546A43386D44ABE1ED60EF0005E55FD3F1A371A),
    .INIT_7C(256'hA7E9AB117F0662B06595E91482D6A8C08D24D74F0542FF7F560BBAA80795CDCE),
    .INIT_7D(256'h63668A732E1ADCC683DC0A3EE197389A128D55F313FCFBA17A80AEB291BEF1CF),
    .INIT_7E(256'hA09597583C6251663F45C9F0F01A8C8A24C050297A696D31FAB04988AA8F440D),
    .INIT_7F(256'h852EFD809AADDF433569347256EFABD33FED13695FC9955EF64ECAD3F0948F31),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized26
   (p_35_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_35_out;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h4BB35252482E251301BC2A32C9BC5FDF1F492BD001A99CAF109553C541F800BA),
    .INITP_01(256'h9F802C67CD1313CF95B90D60FCFF4615C6DC10E1E715665F66C677A419BC1442),
    .INITP_02(256'h990F61E001606E37186E396F5E715DF57075C6BE18D73169A1C30295AB2ACCDE),
    .INITP_03(256'hBCCA49088C169B40A2A50B0F4E6E634C95862B8959BD798727C4E38D4B8D273F),
    .INITP_04(256'hEFB96E9C1DBF8450EC604CA4DA1DA1204E609A0012BCA8D2864AC2C5B1C2E1BA),
    .INITP_05(256'hFE33DBD28132C8BCFDCD802DCF3020B43333EC11C7D96E0D2B221C041A029BB7),
    .INITP_06(256'h24903FDDF24EAB859080A0E7E1308597711FAD7D816969C665E0934F3292DDA1),
    .INITP_07(256'h366501CA650549790D1B3F954B2B46DD1AC4EA237AD461E14C6B371C82446BA1),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h497C5BC3D47F838095B458E2DB83A1AFB8C2B559873B64B345F389D1F29052BC),
    .INIT_01(256'h4BDA61E493E44A9DDB64311334D2904023E1EE0B4A69B5F8F126EEB279789C98),
    .INIT_02(256'h5C2413D87ADE897039ACCCBECBF3BEACD3473BF632336B7B03BC82AA250054EC),
    .INIT_03(256'h96C7DC2DE5DF05F5917FDEA666996579F433547E4F4B83CADC09CB92EAB54EC9),
    .INIT_04(256'hFE35476DB030DE0197689A44C01C057C15F3E402BC9E742188A8956F1134C230),
    .INIT_05(256'h510F11EF43E6C3495C82ED879E72B4561F6A40611BEE139B24375F0AAC4EF68F),
    .INIT_06(256'h5C563C4E0706EA817EC3F9C422395AC15A16987B4509FEDF78B3D8647E6F6A08),
    .INIT_07(256'h4C0B9CA7F7BF2D5035062A619DD8D537BC7A04C385A15DEF72365E8906008816),
    .INIT_08(256'hAF19F88D762B5CF0714988045B48F6C06507834C07C0CEA1F3C93BE1217842B4),
    .INIT_09(256'h996AA152CB861D684CCBFCFB474A6199EBC5C950784F625C58D65B1D57033744),
    .INIT_0A(256'h5F168CF2F54D66882C14EB46882FFA0BAB290D7F9FE371CDCF1FC0387E36B218),
    .INIT_0B(256'hA54960BDB24971CA0E3C36812377F5AD03150E0B17B7DDE583BD227CC64D7FB9),
    .INIT_0C(256'h2CBC3C0018B1B2FF8BA95F29A283A96941DB87B774DB847EC470C41D545292B5),
    .INIT_0D(256'hE182DF1D2FF08191E36093EA2ACAFE26D738842942BBBB912324860AA631C9BA),
    .INIT_0E(256'h08FF70CD5C79AE47608AE0F714AEC3ED4C36EABC20BC645C77D4DC344C343AF8),
    .INIT_0F(256'h7EA9F53D06FB112CAEBC4E4FEE632C96B624C23FF2121F8C7891CA83DC22ED3B),
    .INIT_10(256'h42BE2D6FDD0C3C2F9C03A726233DD66829F7F910C1F4DD13744C731C6ED338B6),
    .INIT_11(256'h47F57D0EC901F6A68D6F7C18446D0D6D46762871911CD016899977D90AD0BE9A),
    .INIT_12(256'hB6E2720858CF799D160DFD7F692417D92F535C8E77F22AE58A0B6AB8365C36B6),
    .INIT_13(256'h7AA1C1BD1AE3B5AD92137C76D68D9A29585728594EF68DDB273D07FB12A5B56D),
    .INIT_14(256'h0B9B3BB2F5CB7B0996530ACDEE4BBD6159C14C97583B58B0FAB8B49297449731),
    .INIT_15(256'h234623E9FF90DDD87E99C3DF8610C2C978E6CDA02548F7E52E48E6FE557A7CFD),
    .INIT_16(256'h3EBF549A354E39771D315E9F79D6D08B6F728E1D94431D219886DCE1A00C2F6D),
    .INIT_17(256'h443AE120270EFD3A723F746E87C7E9EAC928FB52DE2A6289D98F738A2B2B168C),
    .INIT_18(256'h4AD78FAEECDC9DA39E60C3A5BC89C1C5078B5FB5339F6AB438D4188AE15DB874),
    .INIT_19(256'hD27623D055F852FE6D1AADB029DE81DB710BD1AD5734D8C22A995CC9A8B4A0C6),
    .INIT_1A(256'hB7BDF0E090B4A169975393067E75163A659D260FC2D260016DBD46AE80064982),
    .INIT_1B(256'h07B626799DD7B20414CB9310199B9B0FC1DACAA705E2E364D7315F9C9A04286C),
    .INIT_1C(256'h11EB4A007D00B277640B44038BC9D25850C02C9763040E60F9D84899D9105AE1),
    .INIT_1D(256'hEF95820F47F20618FFAC8C4431A1271A608BFBA4F5D63D0180F2D76FEDAA4CB7),
    .INIT_1E(256'h6104984334A3EA74DFF6EDB15D2A26BC95991BAB8680B035997542DBFC0782CF),
    .INIT_1F(256'h50617F8176507BEF51CBA1291AD1491149CD4BACF66F892794BAD58CA075D287),
    .INIT_20(256'hB91F93B8CBCE9555C07CA65B32C40B5F016D609567D964E0EF49FF1015D60373),
    .INIT_21(256'h94C1850CA1272CFADDE15998B4D1412BDF06DAAD1197B86F23667C6D2E9C9B34),
    .INIT_22(256'hD32281F0AB9D3F5C97680D2D1F30380C61DF9B747F4D075AC17C1A02DC0108E0),
    .INIT_23(256'h48BDDCACAA3B1661A8FF95E2CE30D672374F54BA78554B829F862AB869EB3558),
    .INIT_24(256'h20DF66353074C53A9D361C0A14ABDB2F51F5F5BC449D0243AF614D4BBC08D45B),
    .INIT_25(256'hADE0B8D2BA0ECA50641A6F57BDF5C221CA46B4686D46B0608F738BFE0AB84054),
    .INIT_26(256'hBAAA596782D5310D561C4119E82AF09872B8A0F712B5FAE0EB3C518CFE0B6958),
    .INIT_27(256'h733549226CEF0842CA44FB828E5E5468F084F5184E918B33E3BD4DBEBAFEE409),
    .INIT_28(256'h8FEF1BAE3F0A86E003126535F9DEBEC0CD4B79CC25545D7DC9566A422D749EE1),
    .INIT_29(256'h99C1D45583C2CECB8D9FFC7F1043B03FB2BB52164A48FBC6FAF884E3C1DAA244),
    .INIT_2A(256'h88C9E60E682910FC915B907CF42A3ADC40DCA50156FB3880FCC4D696C53E29C5),
    .INIT_2B(256'h03994BB94258CE68BE76B2FD52A9662AB1282BBC0CF12C73531F85E8FF086A63),
    .INIT_2C(256'hE3DB2509A47A235570049DCE25CC502061392C46DB930B67E625FCECDCE66F54),
    .INIT_2D(256'h6E6DA5DDA5505B8C928B543F66EF5976F67EA0D13FB689FB46740B0B8AE8D399),
    .INIT_2E(256'hD0C944A9A2549EF46CD4330954523C707A87A863CA1780632117A537B4AF01CC),
    .INIT_2F(256'h0F97387D2B8DEDE658C2CD7E9C3C66EBC19F99987A8448F6BDEE3734EDBFC4C9),
    .INIT_30(256'hD0866299F8638A4BA6013A7494184F06BE1BC9848FED4D99D0B2DCB8FA76DB57),
    .INIT_31(256'h505E517EF31D15D04A3B1664EB7257B69598B013A084D539CC4CCBD3C7DDA835),
    .INIT_32(256'hB35020A5CAF9C1B4837FA4E177DA016D7814E7497E50F10A8C863513DBF97780),
    .INIT_33(256'h2716BD5537D5C42CC52A35BFC78D3586517301283237625F890E47E88B7661F8),
    .INIT_34(256'h1FAA2C067A49EB7CF2802CA5399443231D4075B05CC63BBCA4EDFD8146A15158),
    .INIT_35(256'h923F6075A9D779C7769A6914504578FE11FAE3AFC4C2BB7D563D8CE6E5F14A49),
    .INIT_36(256'h8F3A1A114A69444AD579A59FB8900E2402DD61B414C18CFB06F40242BFEE38FE),
    .INIT_37(256'h91A8A72414D9DF62B094D1D648233481EEEEAA05040D8546D17CB6C28C7C31A0),
    .INIT_38(256'h5BC22202516181354B6AA9FDAA944E2AEE1391334655E94D1ADCCA0C4B33B402),
    .INIT_39(256'h13632B18759EDFF066F2FA342ADE4EF4FA03D6A3FAB7E3562BD29F9B262FF3A4),
    .INIT_3A(256'h91B2603787D646A3F3E98031D2F9B0A584173E7B94ADB06D3B96E419D95F31CC),
    .INIT_3B(256'h68E3371388567B1984E86B500A0A6F4E0BC4ADD9510ED2DF7C6D38269B8172E3),
    .INIT_3C(256'h30946DBAD182826E77A0760D91160561145CD45007C9BBAA38BC40D629B09512),
    .INIT_3D(256'hAFA98A7FDE27F279DAF7D69B997702CB6B619C8E7B46AA41F4E2F431E424C995),
    .INIT_3E(256'h5D5F74AB69ECCB4DDFB2838EF32D2050708BC65C0FF30FD69DFC62C0C9351AA7),
    .INIT_3F(256'h9535B315E26E2489FD22985D450B6046D62E77B2FBADB7A3562F1EF08A3E3398),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({p_35_out[34:27],p_35_out[25:18],p_35_out[16:9],p_35_out[7:0]}),
        .DOBDO({p_35_out[70:63],p_35_out[61:54],p_35_out[52:45],p_35_out[43:36]}),
        .DOPADOP({p_35_out[35],p_35_out[26],p_35_out[17],p_35_out[8]}),
        .DOPBDOP({p_35_out[71],p_35_out[62],p_35_out[53],p_35_out[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,wea,wea,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized27
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hA39BF34F71C1D7C3E9FE87F1B0CA7E35107C4C9DD5F2B1E69184B953DD8CCE43),
    .INITP_01(256'h285435A04A0DEE8AB25EB3DFF2A8C99D789A98486DAFCEB5C6E4677E88B1A3DD),
    .INITP_02(256'hEECE86326B3E818BE7B757C09B688C73C4619D2D25D9214A94CCB6E9C8EAFE83),
    .INITP_03(256'hF4BD0535249B07392B7A6F966215F3ACD0854EC4190577CCA0DE6AD46CBE3E02),
    .INITP_04(256'h1B6B5C6A6C7F4F0FB807CD0DF2F4E5D3D139E3FBED083CAB275BD2D59FF1BFE0),
    .INITP_05(256'hAB1B791C8DE90B3654C14D05FF212917F93CAD5FE48DA09263164C2E31823539),
    .INITP_06(256'h4479877A7AA5E9BB6B9EF9ECDDE00DBEAA87FABCBBDFB6BCD575D4D65EB43303),
    .INITP_07(256'hAFC60002BA96A1AF00013D42C8A59A08BB6093C93E62C8EA7C6C76F46E0AB761),
    .INITP_08(256'h86F1CC9F23D45748E3CBCAD2112A06D56FD75F6B0E59FA9B1AA026B68B13964F),
    .INITP_09(256'hD49EB1CE159C48CF01409E6FCC4BBD7DC0D8D076B855A275C4797C1664F683E5),
    .INITP_0A(256'h642D6B65CC591659E1A9DD8C055E911AB375FA1460C25D0DB74FBFC362735966),
    .INITP_0B(256'h1447F6E19DC50F79C68EF47C3908EEE32D945DC563E4D22EDAB1A5A73308A383),
    .INITP_0C(256'h8AF522DA5122DFB5B97D79040A618F01DE8EFA9B2E50097AF1CD8460EB49DA6D),
    .INITP_0D(256'hE8DEFB479B4F7FF600AD53293B737EAAC22F5E7326E2CE47429C611CB594BC3F),
    .INITP_0E(256'h7850366549A791D0241AF788F57CAB457C2DB0AB0763EF2344615AC488B47A79),
    .INITP_0F(256'h1896215A859644876979C25CDBC7B5B64152FC8AC4D526E93A249F11C90397B0),
    .INIT_00(256'hC1DA4D0D54908BFCD32DDB836CCC692D305CC56935132ECAAF54B9E5D99FC8C6),
    .INIT_01(256'h353CEAD58182574938E8565FC02EB9B6B0A72E4DEF473CDAAE62C93C0D5F0A90),
    .INIT_02(256'h4F2CA6AC8A195DC7E69773926905FDD780F73BEB6E1F2C5E4F8108CE08F15CC8),
    .INIT_03(256'h333211D47F1E052C67018EA8974D3376008B7C75282EBAA7891725AAD602C4CB),
    .INIT_04(256'h01F7CCBAA076F24E2275E86F7888716CC5B777DEA8EFE743EE050DAB08CC13F6),
    .INIT_05(256'h12BEA46B056E826DB60AC0ABE9580F9901B8D20ABB709C0AC8B6BBF155BD6E62),
    .INIT_06(256'h80A614A277F2F772E66C73DC8ADD652650A02E49534B1E9884A3F68EE3728939),
    .INIT_07(256'hE0F2E54505773BD09006567E2DF75C1EF4EA082F4BF828C09590B7D1DAE89745),
    .INIT_08(256'h81BE0347BDB722690798C9EAF4D770734A5D70D7E6F605B7CEAE617BBFC31CA5),
    .INIT_09(256'h48A2E430F0EE0CC74397206C22062C5B1E2210179E05414EA08A4F44A36988E1),
    .INIT_0A(256'hB65AC719A55F3C737E95CDD7CEF6E3B5B939982F36D34B17A6C66FD1D15FD9A5),
    .INIT_0B(256'hCA9D30ED8087D65E91FCB45D75EF0DB80E3E585A1FDBA98FE4EE221D3403AD75),
    .INIT_0C(256'hA1A70F1812E025AF258DFF550093D90EA4499FB6986DE3590574FCF5B19FE37C),
    .INIT_0D(256'h4C4014C49E490EDE6DE02E24A6DA1DB58F4C68C78C8F03567397442619BFCD8A),
    .INIT_0E(256'h38006B872596AEA83585E967C43BBA41613BDFD5A278CD19A6E059EFCB64209E),
    .INIT_0F(256'h2609C8D0C646769204A8EC99BC9C0507E5D16AEEC1744034A7304C93014F9218),
    .INIT_10(256'hF4FE74C98D73B125432A46794ABCAFDABBCB19E766F52EE5A13D480A520FE85D),
    .INIT_11(256'h565254689EE3A6D5E16C86CE1E2034EE08A1A6AB725670FB79EC21B83AA7561F),
    .INIT_12(256'h58969F63978B0B1740B31B5C25E6A18BBC1D9756811DE6CD854E4FB84E2D71A8),
    .INIT_13(256'h632F839F3E7EA6EFAFDD9067B091CE18B70CCE4E47A1C8FE4C4D1968E7B0F83F),
    .INIT_14(256'h78250EFD0CDA9AC2C695E9ADE1A139B295EB8ABAC112746F4C5564B944CFBFB3),
    .INIT_15(256'h40D43E822EBA330F423CA80A815D5DADDC46178453F2EB29DB08A61A6F896ACB),
    .INIT_16(256'h846C59C60F75C1CB280198DB7D1082BBC513F505FF55FB7096CC558CBE70244D),
    .INIT_17(256'hBA0AA755AF57949E531EC43DF33246D891149D0CE717581D31C80221E1D32346),
    .INIT_18(256'h7F63E0514686C4BA9618209C3F2F49469A8618E931631786AB332283B30557E0),
    .INIT_19(256'hEF1B87E62A2D5BE66D8D56D9BFE9635312074D694C32B7BB4B0A890D78632510),
    .INIT_1A(256'h31E3DB54724CF3AE6E464E7EE8CB122FCA24DEE6EF24DCA2A762590D3784FDC4),
    .INIT_1B(256'h2E1108E1929B80EE500565E73A80242F5B5803473FE01D6D5328FF112DF0A645),
    .INIT_1C(256'hEDF2098B930E685EA9C0048D8992279E76AFC59B8CC7C35E55F27E5D54C6A961),
    .INIT_1D(256'hEE172ECFC10C9405A6655C2CF2C1ABC308D46470B3B9AABB04CB59AD85945053),
    .INIT_1E(256'hF8216D40887764457AA3E0D7BCC3C5EEB32195BAC65A0B2F6A13142988EE695E),
    .INIT_1F(256'h53D18D4472BADA4632127298E55875102706811DFA42A685C5A5F55E58564D3A),
    .INIT_20(256'h99B02251C41C6F8903E400476C0446353E0AA99B3B45E90CB4D4DF9A79581F0B),
    .INIT_21(256'h5C39C741788EE93074FC390A140ABFCB51269B02C78B1C2C24C1350F85E6CE99),
    .INIT_22(256'h10DA020F78AEB30C9E0E2ACA4C12DFE066190C7A94D21588B6240B3836CF594B),
    .INIT_23(256'hFF217E5A33904AB5FD2F41FC117AD8000812581F67BDA9A8D712AF303C2AF74A),
    .INIT_24(256'h6475F4F31D75A81EC7C6DBFBAF707288475BF5E53791BFE87461E208DF0FA8D6),
    .INIT_25(256'h358088AE55E8FCC68D52F60624220157CCED6CDAB03B619F3CB32523791E92D6),
    .INIT_26(256'h32C0ABA2AB862D5D6EDD4D76CD9AD00EA5CC89A3F05E8B3E51A16069859CDC00),
    .INIT_27(256'h4F1EF4DBE4C60044BBBED21779CBD1E314AF0A3C0743EB2B2DE6C61BBB0AD248),
    .INIT_28(256'h10CBCBA3ADA9D861F15CDC65466A50453500E665954FE3B8D46B55A7B0EC5EBE),
    .INIT_29(256'h7C272B3B44839C32E055A6335A150C452D09AB9D2EFA12D8DA40377D0BD6C1B6),
    .INIT_2A(256'h1AC63CAE79332A7EEDDE62E1CCC818FFE15930F12B0E6F388165390896334484),
    .INIT_2B(256'h17757921A6216112DBCCA395C7666BCEA05B76AC8D8BD97E98703C77772DF7CA),
    .INIT_2C(256'hF99D856779860021EFBC4D89F18A8A2D855B56309A153EE770F7F226C2ABEA2E),
    .INIT_2D(256'h04C057894D024C1C187C607595C1928CB0E0600F2F58F2BAC690942E29821992),
    .INIT_2E(256'hA78BDFA3E4084F7B6172ECC0893F03B7729CFE3F283DDDEE5FB3B49D6ED56574),
    .INIT_2F(256'h1E1EA1BBA18CDFCD2098A6F549E8ECFAAF5D68077F81028BC4160DC840921D42),
    .INIT_30(256'h75A59E2F696BF7AA3EB1D4C39FA856024DB02406C1441278F2154ED864F94A29),
    .INIT_31(256'h127B0A9F96CED536D9F0BF3F40FE57D23CF7CA1E9EE037A3141292BC3FB87DCD),
    .INIT_32(256'hE78B5CB3C3BAA12DA5ECD5B8E8072D37AFCF5F888DB929454B93A9D215F36D2F),
    .INIT_33(256'hBACF877E09DA54AF0B6A5F57A71362C26FD5B7A96CCBBC15167FC96FE22BBC6E),
    .INIT_34(256'hFE4F0FF33E30D7D853BF013E63A590C0C48DA31FFE1ADED29C62E721EE823F14),
    .INIT_35(256'hFAB366FA345E93B29A62F0B1E7A139C1E0FE620567C8B7396993E76AAA184E8B),
    .INIT_36(256'hBF355E65DE5F2C3A1C742266BC814E692AFAF415CC27723480F1C7234E6E183D),
    .INIT_37(256'h709EDAEAE9B67248F74ABC8F2187BF78B1D832D5C554D4ACEDDC207F541C3E8C),
    .INIT_38(256'h149541A2320F3924C709579505B8C71BEA5F703EEB05DF3DF61DB807C245D716),
    .INIT_39(256'h59B6E656989980B5227D5CBF339288A8122D1BB4B4188E606CE22E3AFAA83F74),
    .INIT_3A(256'h80CC5D01029850BD657DE41149D02A9C35F604CCB12FB55FB02EC044147E3EE6),
    .INIT_3B(256'hA3E6BEC34899C2EBBC100FF0548058C9A1F6C77A433DA26EEA432BA74C3D6845),
    .INIT_3C(256'hE60D59C5E75090D3D6CB4807B35D56F92EAD85A98F437B2A081DFEF2975B5FCD),
    .INIT_3D(256'h75A12127B52C86863B4409B1DE8285FF7189C63B3E21FA18BEB63ACE593AE4E6),
    .INIT_3E(256'hD7D98DCC1FFB0D5293F3F3A7E2B71015A94437A3205C33567ACD5C221924E7D9),
    .INIT_3F(256'h241C252B80AEDDFB4C8D02733D83D68575C1EBE83FFB5AACE1605CE9713CCD65),
    .INIT_40(256'hC0D88E319F02B36E35A2EEC871B83062869DDDA976DD29A7C7B5156E0DA7FAE9),
    .INIT_41(256'h41ABEEDBE71C5E31844871371BDA49C99D48188051A7465E5D13DD505ADBE1FA),
    .INIT_42(256'h8732D37F6F89F4B0C5611CCA6203E0ABD1A141E35EAE6D0F45DE83998D7F34EB),
    .INIT_43(256'h32DD9023265E70230B8BB243A1ADAF97BAA0562198D414A7B34BEF4122591599),
    .INIT_44(256'h6097745C56C7ED090799A0459FC696F1B4921E3BC31C38650A2573B7423D32B4),
    .INIT_45(256'hC787F96F134C3A40FE7A4DA95EF0BC8214ABEDDAAC7B163A3B2F7B42BCBD1F0E),
    .INIT_46(256'h12373604C74C799AD87B556EB9D3EFE4FAEE86DAE4CB62F79629947F33C86951),
    .INIT_47(256'h033013EA41A121B9388F02D817AE57D9CC09CB8EE25B228DE28FF1B4D1347030),
    .INIT_48(256'h98D1A6C8214473C48E5F42A539D7414FDAF186562916AB2769FBF43C63F8EC36),
    .INIT_49(256'hC4D9DB9139E86F0DC9B4F9BD3E10E5C3611E1F50F9C97A6C2F9308E0E98DCF31),
    .INIT_4A(256'h6D906F360DBEA1BFCF30D4ABB2F754F4C474BE0799DD121AC4628828780608F6),
    .INIT_4B(256'h0B32D87488465DB4EA744A398B7FEA9F44A3505E11F1ACC4F51A78D6287CC157),
    .INIT_4C(256'hB6C79FAD093DACA5CF70A4DCD26A4C1CB528BAAE164DA17C3450D254C99C3979),
    .INIT_4D(256'h5391037231DF69DBB177A36D238D6EA408605200068594DE35212463CEC75612),
    .INIT_4E(256'h2684A73593A3D0073FF0B968837F2BD880B08FB8725D21F70828751E9E23821A),
    .INIT_4F(256'h70D8359998EB617EBCA3D244CAA928E2386F7374768F5F730DF1A19E6FC543E5),
    .INIT_50(256'h31575E63EB36CA60BF5957141227060A776978DDCBD13C49E3DBE74260302423),
    .INIT_51(256'hD8D7C1AE6765D35E3094C8901DD5DB01D9C58B626AFB69F0C139A48DE92C9352),
    .INIT_52(256'h93DF21CFB346DC7F43CF2E75E3BA7381046D6FD8DB448373387392E23530ED9E),
    .INIT_53(256'h4FDBFBE98E10D9D234A8A3F935A0D4AF30CAABC5198E54B32748F02B4EF6853D),
    .INIT_54(256'hEE57A5A82AAE11DC614BE936936C8F7236E9379B0147340FF5A5992957D2EAEE),
    .INIT_55(256'h8AB7BDEC5DAF9AB925448FC0A6A246E19CBFEAD022087E2F1A00C0DDD570CAF8),
    .INIT_56(256'h521C9430D3837DF87C65F3DD22977F6BAD232A31017DD3EB1873CA62E6105E3B),
    .INIT_57(256'hBB76ED8776855A99041F392D8CC2A4DBCBA3CC9FCA01518821A856C5FF548464),
    .INIT_58(256'h4C8C7834D3A22C43BC206DFDA08240A1FB5A0E641E0EF188F83D8C6CE091B02B),
    .INIT_59(256'h0935E8159199FEFAC84CD0FCA49B1C985F4ABD5D5FC4DB13111436E6AAC1A52F),
    .INIT_5A(256'h606CBEAB61D43ABD6FEBDE32D20A00D599D40B6412178E51437D66A1C618CACE),
    .INIT_5B(256'h6E803E559E648F45E96028318D5C5636F971FE5E0B2B2840E37E70C10DD3F5F6),
    .INIT_5C(256'h2A05FB125580A351F1EF05D6A16E5DDFB17A44FC5C37C9E4A2C9F2527A4CB1DA),
    .INIT_5D(256'h8CEB8BCA45B124333C4CB316AEC80F7ED62992CE60BF1095F77D887E8BEEB270),
    .INIT_5E(256'hEBCDA3C99A8E772886F74C328B8E2160DE3FDFEAAF00DDD8EAB6B84049549A30),
    .INIT_5F(256'h49DD9B72028E92B2C5AA2F47DC8992E2D0FB71727E80FEAD23CC6172A72A5C3E),
    .INIT_60(256'h1488AFF6C822F6C8E9A47D5099DB0DEF1D4CF174BB306B9AB72E20F480A37BE6),
    .INIT_61(256'hE1B087016536AA91004904A05D272DC974C42754468B57E6A830323C71AE1E0E),
    .INIT_62(256'h5B1C2AE67096EC900AB2FDB9694CCD4ABF8FCFA01736C8FF7CAA27D8A7553268),
    .INIT_63(256'h43AD164896EEEEC909388231C877D4E48CCC6580DD2348ECCD71DC113A6EFA30),
    .INIT_64(256'h158EE43683DB09B398063DC4FE7A2962DC7CAD1E5DA422FD83B7C8AC12D6AF2A),
    .INIT_65(256'hAD8FA82BAAAE0D0F5E8BEA073AE038EEB1ADE5A13039DD809DB9AFED29A9F466),
    .INIT_66(256'h4B63FE92532F580CCC42110436B97D85D4E4E414E217A41DC3600338E1CD0359),
    .INIT_67(256'hA0085AE4EB728C520D767E6386A2CFD23015239361EC87AB2C3841075AAB9099),
    .INIT_68(256'h9B6B4935F03DC613A305F69EFA75C047908A6C3D54B9373A87B30B0D1230C8C4),
    .INIT_69(256'hD16B1D3FC7F526AA32405CBECFB17E7CB1E6B5010003FAD12F6C4963AD899ED7),
    .INIT_6A(256'hC03F900012FEB874097E7CB9F73C529394E37376D389A77AF51F41368D293421),
    .INIT_6B(256'hBECBB2E6E31BB232B1B3ABFF3D6B9B7263C51A6BE0A3095800BEC1CC1AAC6C8B),
    .INIT_6C(256'hE7CA8A2D70ED4B694E843B9B3507870319425BB39A7ED7C5ADFB6352AA8361F8),
    .INIT_6D(256'h98582678B7DE7B9983875102D30791768AB4DAE2AD995458CCC6774F89DC34F2),
    .INIT_6E(256'h16DDFFCECEDEF40E7BB21973A0A0D8D4A17C850D14CF2C50F6DF9AFF42B3A244),
    .INIT_6F(256'hAB1FD50D1C06B2E4863EAD69CB5F59E6E724B37E33FF0B2D4A9371A25C06098D),
    .INIT_70(256'h9B0D27A1D83224E6B6BC2AC828AEC9E56850863C9C41C63D67BA044159133C1A),
    .INIT_71(256'h7484C30AF53B88103731B3D141A4BA99C0CC1F8CADA8C5FABA5BF717C8C46E77),
    .INIT_72(256'h6125BDDC425FD4F1087F0B3082B9519E896D8C3AF343B6488007DA6E8EC1D840),
    .INIT_73(256'h20FDF9E9E09E726B24C4067B00504B30D2DEF8CA1F9C896A1D532E1CA3292127),
    .INIT_74(256'h1E738CBC8302CF752299E23FD47EA4ECD13D91BAECAAD9DC1756101756F87AF4),
    .INIT_75(256'h6BCBEF8C52380A4EA1AD3852121106563DE781FDE38089153462C56354F88C0A),
    .INIT_76(256'hE0BCBD5C87163B9122EEB3B923FC903DEBCAA61F22BC5D5CB51B7FCA79D601F1),
    .INIT_77(256'h885C66C046F606B8998370E298A0C36C7E26EC9D4D191F17BBF680B6D6556DD2),
    .INIT_78(256'h948CEC8B0AB2A1A6FADF7BA7B25522FE3336ED84B80511CA4C858BB54C45E30E),
    .INIT_79(256'h4BBBC64C3EBB700DEEBF0169BCDFB49579835943D5B63C9938484C29C8C6A0F3),
    .INIT_7A(256'h2DAE2BC0E1519F4D2A4475827AAE427874A81A17DD2BC791EB74145A5A8B2B42),
    .INIT_7B(256'h5A96AB1F3C350C4CD38F69FAEBF9B6639E7DE844879A312152A54C7565DF1FCC),
    .INIT_7C(256'hAD8CAA32D511B3F48AB91E97E98FBA29E029BED1F0DD4D8D90AB5541962CFB37),
    .INIT_7D(256'hC9AD1A73E21699CC27CF1BAD35A20229416C4A3AF1E4908BB7378888FB120B79),
    .INIT_7E(256'hEF04578C82E61C66000D979C24ADB782F1F4FEDF3C6E8EDF1EED120265040019),
    .INIT_7F(256'h7749C0A5BF50210A9428522A7A6C6124C87BDE635386BFB6B498C3393EBC92F7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized28
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h60C7641D259FE9D4A45C40DE2BEB5DDF0C904322A89492937C4B8AC21A5191A8),
    .INITP_01(256'h406E94CDE2F05DEC6263361B491F31066C7D481FA9418C8A3E8FD845B8D882E0),
    .INITP_02(256'h7D97214CA0214C49BDF96F192B7A829ADAF4B553B0D76C0037E816C5C7B39368),
    .INITP_03(256'h3C465942C5B610DCC24975B7657FD76F731FA36A3754FB83F9284744B9ED9871),
    .INITP_04(256'h76B232520C7F5CA35E6DD223A3E1F75776A5B1D41A2C7FD3CB625FC3BC1FFCB5),
    .INITP_05(256'hCACE4C3FA8F7D2DF4BEA9DB5A17D3244DF4AC769E7BEFB75DB3EB9391CACEFB5),
    .INITP_06(256'h07A2E181417A72886978A7D8F0B131153EF7744936A884D24F30976586881CFE),
    .INITP_07(256'h87C480EC39B12F9940A126F96AB1E2A9B352CC7369DE3A775CC48AE232601526),
    .INITP_08(256'h4D031B181E40DACD3EE44534156753807394F095CBBDAC969750829D1B357081),
    .INITP_09(256'hB7831B99BFA30F9052F26B5F70FD9C1C1047C03EEBBDEA2CF8E729E9D8199E80),
    .INITP_0A(256'h8475C84B576F6A18EF239B5221D0D4A88E90E2A2061E627D93D77E43D2639FF8),
    .INITP_0B(256'hE6B0B5C05DDC639D790B1AF960F0711F6FC6817BE019038834CB3587D87CE55C),
    .INITP_0C(256'hACC50938F1B342D7756D69F37BF0E34E0F6FE2775541DAECBD07AC0FEF5B62A0),
    .INITP_0D(256'hBF3CB0365DF5A4FA4462772F780DC026FD72CC57D0D00783FCAFDB92023EB479),
    .INITP_0E(256'hB1A23FE0D864220CF19D9E5AD21784183D8F5AB0E7C12EFFAE096FBB527C1017),
    .INITP_0F(256'h046F92AD01407231B240818BDE57B1FE8B46BDA174E0A38D69DAA5848636288E),
    .INIT_00(256'h4F85135BEA7AB7523659E3E39A3A3B5ACE7355241969AC9AF0A8B1AEC24E574E),
    .INIT_01(256'h39D312D7865CC70C1536337F353620FD5B913439242B4E07ED9EB08D62F270B0),
    .INIT_02(256'h7E77B46474F3757155076876BBE2B8DDAD4A9C1404651E75C95454EA8EB9DB7F),
    .INIT_03(256'h1AC0D8D0B743E5BE18A46DF047923E0D841D91C1768E6B8DB175C2BA81ADFA24),
    .INIT_04(256'h7B30E462D4FC73A24971C6BBA00FE3A4F8455AE1280A40311EEAEE34006AE599),
    .INIT_05(256'h3E830B6E7BD57E15DC6A05E757ADC47CAADF35D41B3D6DCB4E643CA9CC75BAD7),
    .INIT_06(256'h11D1E7EDCAF8D0D267D23BD6A0E109CA6137328F6485B00C05E6F62DB3BF1B14),
    .INIT_07(256'h652DD2CF39A514B26CAAD976B54E12F1374D00AA899CF895632053F278D8BD0D),
    .INIT_08(256'hECE024348C4E6D1E26DEC95C3C9D135541E363E52FC5F195AEBFFADEFB3B513E),
    .INIT_09(256'h71A8B37439C27C39FB1726A254D57598D3EF4C5AED643943F94F499AD0A7CD14),
    .INIT_0A(256'hCCD99E6E5F910513E4B5A9CD3D379CAFC22C33362CF66A0219E5B7E096BA5887),
    .INIT_0B(256'h8479B78A47EB0455032314876C560648D423265EB67009AB2A7AA9DC32056315),
    .INIT_0C(256'hD2D4FDF3B66D8A542E12C3FC2EDB8B130350BF4DF6C3B59CC0691C2DB095FB30),
    .INIT_0D(256'h094AF85F45EF9673BBB4DE1FD5DA8FC523DA81287B6C38496811A8CBE5C3B52F),
    .INIT_0E(256'hECCD2EEECC0DEDB3720A75557F0FC9237242867D928070012162BA81B8F8BF0E),
    .INIT_0F(256'h306B78EC36AA22078D90BDE1DAF5DBF60E7ADDCA78C4AE03A35341F82DBB1C54),
    .INIT_10(256'h0669A4300A65C9DB7F538EB488C6320F88100EE7AC0341CCDF36BACCC67DD121),
    .INIT_11(256'h9B202329BA701EFABB915582148249ED802A1D9EFB824CBEFD8D59165D3730F5),
    .INIT_12(256'h93121B48A920AB11EEA1EC4F71B3F2EFBBD5F1A32D4374EFC92A1A450FDB37A6),
    .INIT_13(256'h059DD3B8EA6ED690F53897EEF031A8D0EB73F487E8698C5BD8FA8525C7B07689),
    .INIT_14(256'h798BB31A311D92478C3EAE76DE8EDE3ECAF5BF40B8E26D80BF856AC68BC067A9),
    .INIT_15(256'h38ECE4283A900DAFEB9CFB6C9A5E91C9681F8AE6E11C00E471F0278E0E082AED),
    .INIT_16(256'hA11AC152AD328CC16C165519F8EECBA340E438F9DD55B7553A994A085640504F),
    .INIT_17(256'h6F519EC81F235A47441EA7912E97DEF18DE81FF6A06F8974AC89849A8F9DE8C1),
    .INIT_18(256'hCDB8A66EC37C84C310927B6C8710DB77568F8D984FE91AC8CBFBA8EDF5E01619),
    .INIT_19(256'hB5E56D608B98635488DB2103B992DFDDCE144E2916FAED0A383DDF4AABA22167),
    .INIT_1A(256'hFD29D0AEED32C29892DC1EA912301FA4AFBAF3D0BC0DDA17A97A53B5036DE49F),
    .INIT_1B(256'h59E9F56245F5B7D9A0D0787870AB2B7EF91D108E0ED0EB7B5AB65CBE8B8122A8),
    .INIT_1C(256'hEFE5C889318A5183A99F9210A8B2F5743A3E1AAE9CA7D0046DEDD5C233F98D89),
    .INIT_1D(256'h2544E6F4480554B1EDE3FD539A352EE16ECF411B7A714330614ECDAE6E1C5E16),
    .INIT_1E(256'hEA551661BEC284B0087981446995AC8EA6668A6A087C5857B7F2E0D1311656D2),
    .INIT_1F(256'h0137AB85F7DE4E1FD81AFCC5BC16001654E4053010DF939C9269224C3336C6EB),
    .INIT_20(256'h3DCF373A0BE58FC1ACD86B71BCFC09A11FE328A88FF1418EA28DF13D61A2A3C5),
    .INIT_21(256'hF6CA94CFCAA1765C0C1629709C0618DC00F7C5AC206E3F88F302F5AB30168FA5),
    .INIT_22(256'h2894785101C64CF1AF546D6328F5017CACBA94E63B18B93EAF4AC7C08435445A),
    .INIT_23(256'hA87D7FCE98FEA98647E8A9B54CAD6BD830537E2502B884774C6975CB2BCD7706),
    .INIT_24(256'h536CB6B09391D50F5EBFF4F0FFDC6437DC0BC1A02B544DCC99F2BB662E0D6F53),
    .INIT_25(256'h98391935CA0B93F09E40C150FB657A29B1D369B8FBACA5FCA9235F4943F95E1D),
    .INIT_26(256'h7C4B6DFFDB199CE387E80A4348E8AEB4E73F39DFFA4A27BFA4EE6193D0461742),
    .INIT_27(256'hEEC47C6DD16546B7AA0CCE480EC79CEC961598749F21C899210C9B65B5631447),
    .INIT_28(256'h4456ABBDF0FBAFA0E8C0118E420BB7DEE0AFC354B640C8F97C918BAD98C5319B),
    .INIT_29(256'h0DEC53333C47E8704E8E88A0C809EF147EC1114CE39EA494F2E15B0862DB3A83),
    .INIT_2A(256'h4B05064F568F48E4630F829F53FCD6621FD2F03E15CEF078BB6AE8BEFB44E6CB),
    .INIT_2B(256'h6036592ECF8FEF26E60B41CC057FC21D1C603B6AEFDA5F7D93A8985A2E6FAA58),
    .INIT_2C(256'h42D8ABBF8469CD69943B9F4EA1C48ACEDD75F25A3ADF4660659C63B836D6D2C8),
    .INIT_2D(256'h1265C3E53D946F251778B347509CA2276119E248694A00B1B6F478218248F589),
    .INIT_2E(256'hA18B4646EC129AB583D5D70C907209DB48DF71E83835632A451F07E467BEB45D),
    .INIT_2F(256'h073CCA35F303E2E4949A32B4E0E052F722FFFAFE610A2B4D94D277B777E0C366),
    .INIT_30(256'h86DE60FD2952D4CA21AA8FFD6E81D38A92654C6B1D5927BF45773D38B51F99EA),
    .INIT_31(256'h5E23252DD4586DA8CA1BDDD739AC59D8FEB6C674D646F2A292A49C456DA172CD),
    .INIT_32(256'h3127B7FD2AB66AF280703DBF79775095F79585BC98F8CAFF4869B0E9BFD75E82),
    .INIT_33(256'h6870FEC33C899BC78A731BD4BB38630BC65C5C1BDBC6E9F367125C995ADB7ADC),
    .INIT_34(256'hDAB584E10CD54119B53BC5835D76060470174B257789C46478E36F39440BFF5F),
    .INIT_35(256'h6ECDE412E165687409631AF022E84113129B5CDBCE502C89C2DF4A3CAA24EA40),
    .INIT_36(256'h1A59BF07375E2750C1669A206636D0D317B9CE0DDDF38DF85D1B33BB0C0793AA),
    .INIT_37(256'h129A5D1E0B131B56C41B2A079EC2C3CD41EC77609E1ED91B53DE1BB034056EC2),
    .INIT_38(256'h794BAA3E53E2312EE2C960967BC3BF09FB33A79EFE1386397072516042113B67),
    .INIT_39(256'hA82EAF2181EFB3B4D6CD4DC62D0303DCCC14F2855E58144B3A7B2A4D609B98BF),
    .INIT_3A(256'hD864ED56CAC2E232AFD473C722F5507AA53AF11A5E39D3C57563D3CD5BE9043D),
    .INIT_3B(256'h46A179238B53649A8AA184034A602876C26F109F6E82BE19DD176865237380A6),
    .INIT_3C(256'hFE842EDF2B805F099D179F7337713441719A5C562A8DACC98A0730CC0D0B56EA),
    .INIT_3D(256'hDA0B3FE9245F60FC28F92D3BE3D9EE77A5B7AF1B9F83279EB1618B370BE0A7AF),
    .INIT_3E(256'h15D1C4555494CD6134F8115794C1D9ED886644CA5A1E7067A4786106412BF723),
    .INIT_3F(256'hC7130087F08075CAD2E9F5E2B804BABBE4EF4253B3D6BF89EA296C21CD844B19),
    .INIT_40(256'hC66A78B62454A65F26A7F1BA780470D936380FDBDF12F62BEF42390BAE734120),
    .INIT_41(256'hD6BAAE4794C89B7095F09E96BF7E4CB527A44B37D288854E44C22F39B7800D68),
    .INIT_42(256'hAF3DE465D5526542E54B8A3D931C4A3C89E6A5B919C7BF06D5C35869652DB073),
    .INIT_43(256'h596038D3B6E8BDB48F41135406C5E26A23A0641A8FB11EE53AC43AB332A2E0AE),
    .INIT_44(256'h837C8B2B5383184CEAC241355B675042CD0D874FACB4710D28BE95FD6B04DB27),
    .INIT_45(256'h536913682AE7D98CBBED2A5D1F1932A7503DDF7A98A9AAB175CF767DD9C9C6B2),
    .INIT_46(256'h0A842D6CDD55150269E07920724D615001F5ACC79B426AB2A74F3D3E8889B109),
    .INIT_47(256'hCEF35CFDED9B17DD55D2931FFA5CD62DF08DCABC150F3C156EAE21EB6438AFD5),
    .INIT_48(256'h0DC7696CB74981367747E897587467EB2EEDC2502F2920B4BF910AC8F018F2B2),
    .INIT_49(256'h16F129A55D1063FDCB81AF3D6EE1A383D4206CDFFA66BE41B6801A27B626FCB1),
    .INIT_4A(256'h23205C4D59F1400D8210D7DDEF660854C3068DDA0D21EACCBB16943279E830B8),
    .INIT_4B(256'h3438F340E6C5ED47D7623B384E4956201B72F4B78F0678434E157815B781CA44),
    .INIT_4C(256'hDFA9753737C4899BE04A0B54572988EE625E26A36CFD89C04035D691C64C4339),
    .INIT_4D(256'h5E33DC273FEB08854CB71CA939E71609D5BABF2C1825626DCD32F17E10AC9F31),
    .INIT_4E(256'h8986D3FE1D5436087A522F44CD770E9B5D3905E59799A279C39C642BB81AB69A),
    .INIT_4F(256'h948281DE88814E48E6AA765BC2E5CDE4E84861CBE87692831DD408EEB69DA073),
    .INIT_50(256'hE2BDE109ABEF90012028082282A5E8F16FE53787D11D51BEEFDC576BA4120A77),
    .INIT_51(256'hB072A1D6FCBE73129F0222CEDEE3F24A9CC0A054119EF91A174642D456A8E50D),
    .INIT_52(256'h8C8114FC476B0704F4A60ECF2F7D814E8F57065A3B8E8BF2DE893B92D9607CFD),
    .INIT_53(256'h6122D820CCC076963B044659AFB8E133D01501440A5D318FCC953FB928DD1198),
    .INIT_54(256'hCB60B353422DE632CD6E7E5CF5965E4D461E37E5BF6332B0F7D1EDB74038E32E),
    .INIT_55(256'h9B5B680C1138500B9BADF0C69E8B2273E60398DDD57D41E31C7B4B8B8BDD42EE),
    .INIT_56(256'h7AA2294F6D9D2BB81D1E7A00097D07A434052705C9683C63570FE4A491C4CB9F),
    .INIT_57(256'h1AEE916F3DCB503C4977CDA260B706C45BB6922F2918F40B1631DB659F19B699),
    .INIT_58(256'h90D6DC807241A79EA454573F5124B72E4F4F04DE1371C409CBBD695D7A51CD9F),
    .INIT_59(256'h260D8B55BD55EA69520A530D0351AECF96E891215B0D5CDF68E997F19DC97A82),
    .INIT_5A(256'h9E960BCCC5ECD67772461FEA7CAFE39FB88671E1930A9828750EC02B0D2F915A),
    .INIT_5B(256'h192F0E3097455B0D1B0F7E2DBE3692DA1BA47B27357719B300E729B4C314A339),
    .INIT_5C(256'hE50A767FF621130A73C4A6E46A4DB592CF9698E1A41A0398B90B5B153415C586),
    .INIT_5D(256'h5F95E3971C17B180A8DB50E129D5B068A4B730FD1989E6EF5F2D500113504538),
    .INIT_5E(256'h0E5B2ADC5B6C51E27169B5CBF3F16A5480ACEB0EFA7772D282863E8F4A870CD3),
    .INIT_5F(256'h4CCCE1A68FD176333EEF1BF94C690CABCC5E315727239A46671A8623B5A2FB28),
    .INIT_60(256'hF19F546AB772C38CA373244BD307D673D46A44478757C232099ECCAD8EC482FF),
    .INIT_61(256'hC1A672E68C92156B81BC9086CA340A51771E2D1E6375CA5D2365B5EB249FE2C7),
    .INIT_62(256'h436D295FE35B9AFC4E1784C912699A8A914E5C72AA17BFE0FE0D0A72904B1278),
    .INIT_63(256'h88B82423F580816EDA2AD8AEA25970C5B07B46438448B05FFA02FB13F5E9E6D1),
    .INIT_64(256'h60D5442BE4C06CD028720D3A010F2AFFBAB028AD0823C245130901846D538F0D),
    .INIT_65(256'h9F1B59BF23E1FCE8FB19128787EDE8B59C6054D0276FF3DC75E7719D8597A77B),
    .INIT_66(256'h82BE11E6B01C278EC229037F8ADA29DE5705B04A234FA0D57F4C29A2F72D1216),
    .INIT_67(256'h9CA5ABC035F716E38A18A6A475D98E9AC1A678298AC54FB7189B7576FD7B3B57),
    .INIT_68(256'h8E1F37AFCDF3BEA9DEA2D3D0EAA7CD8045933A39D2E163B5CCC5F252E5BACAB4),
    .INIT_69(256'hD6375831CC23CC5FE96BCAF192A61A25B385BF6A11E0DEC4EFE20C88C320356E),
    .INIT_6A(256'h1366D07C843A56C3B2B30437F45351CF673E4E832FB96E3934346A512CAFF99D),
    .INIT_6B(256'h9AC819BEAB603943AAAB1641DCEC1CFE510D34C8294779D8C3F9F10CB34B1EB0),
    .INIT_6C(256'h4800FAE16887A3432AC4140847FA8228CD8BF020BD01AD617A9986DDFA1AF077),
    .INIT_6D(256'h4E256E4948A4E0FD627EB90DB6498BD93B56421ABD18C232D211D4D3BD637509),
    .INIT_6E(256'h40264F036FB74E01A75FA372FB61B8046A0FA5A005E7312E5E606655AC1E4841),
    .INIT_6F(256'h19F07519B71BC73F5CF1CE2113075A1BBD08DFE17814A00BFC4C6C6D5DB6427E),
    .INIT_70(256'h98CF1071E8749529C01F4274C1456A7D6F7FA429CEFF43F049D35C659C3284DC),
    .INIT_71(256'h7E31718ADB05FBF55665D6C8730FCE60F1B999C5E81FE88CC37EB93D33450B5A),
    .INIT_72(256'h2C0AF6CA9D9F92C5B9E6D4C115D2162A2E8EE2BBAC9F6DF726458963097DDD6A),
    .INIT_73(256'h62F3FAB4734445531FB2FCFA6E6F5B4AEC99BF97EE4C8D0CD2AD596AFE33334F),
    .INIT_74(256'h9C74DEA4A9A7AC79EFC268D108EF7B3A0BBCB16955441D4CC471C195F1020037),
    .INIT_75(256'hB94B5839EDB358ADF381167375CC171F611F094771D28ED576FC792E8CB0F264),
    .INIT_76(256'h53F7236AC365D6FC8036D87F72186A11CBB4B5D6EB7F570D4C916ADAB031ADD4),
    .INIT_77(256'h1F9F0ADC351B7F94EF16B735C5E4DDCB47755771D6B564E784B51FA9B847FF43),
    .INIT_78(256'h267C1CD5EBCD9BDDAD72C814528AD8DA4D99915F1715A628249F339975BC6B37),
    .INIT_79(256'h7BC182F257D8DF99C2E6C292AB2D1089442A3F4E5D8C49A9FD4D31DFFC8001D9),
    .INIT_7A(256'h8E33ABBC42BD7355C6729CF9277BE6C16846982B2F56BD93C159BE7C28B62AD3),
    .INIT_7B(256'h124DBF7B0C3E2B6B6D9CA4692EAB6FE61C163A97445547DA19556459BB363D64),
    .INIT_7C(256'h5069D4E5F9A58E900C388335091DD3FCD63B82B3BBD390F25EED8EC5F1DBB155),
    .INIT_7D(256'hAB1B27EAF9835F44142E744AA50ACD23C0AF0B983E11CB7679946514804CEB2F),
    .INIT_7E(256'hBABE935D3F64D424E4760781C291691040AA99F33530C3806B6D1DAC6FB7A987),
    .INIT_7F(256'h2C28D62E2F89448C61136DA9C7054491EE423DC7E8B7A4BB1A07B8E7A4E0850C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized29
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h8D0D741708859158110B75AEBE5B529F72D778AA92FBF4BF76D635239D2DEB47),
    .INITP_01(256'h99E4E0CDF45921900605EFF0CD2936505708B187CFE779C86EEF10B3447384E7),
    .INITP_02(256'hB270232BA8BCA88D963A4015DC822E199389BFC07217959BE76929459C4D05AE),
    .INITP_03(256'h21075E28087DC446FECFF9278BF6FE992381811CD04778D2104A67036C1AF71E),
    .INITP_04(256'hED6FF5D03CDC1BB4720A8F60144B9982A43A081ACC9E16339B9CECC9EE4F6D60),
    .INITP_05(256'h084B0F3F3486730DEAD466104493222AB09FA172F6F0718B65408DD1C2F6565E),
    .INITP_06(256'h9C01339EB22734A4030AEF3381A3B4FB5A6CA94E397E486D63D44B883564BC3A),
    .INITP_07(256'hFCEB6B17AD8941A4E80D8587934E6A47BCD4C0ED37DF53A1F6CDFC2E21D4441D),
    .INITP_08(256'h479EF7F91DB3EEAC6FE22FE981A5733E26195403F900DAAB603DE0A5E7A05A10),
    .INITP_09(256'hFEFD3568D07E267B3D14FA64BF950E404146F58E315E08E9105D0AB0F218C235),
    .INITP_0A(256'hB23AC7FA5975F3B7DAA3D6AB953100CC0347C7EE6896522E263F025A9CF9C05F),
    .INITP_0B(256'h97CB3A12EDA618056C3E0BE919AD7F37BB30371344C27371D57E582912E7436C),
    .INITP_0C(256'h2F791881F833A25C9B807DD39871137DFF404BC16316A9A92A2943CB9BF8D722),
    .INITP_0D(256'hC290ED2E15EAD324525DEFFEEDEA73174DE31C6329BF2D3F00917CCCA1B2130B),
    .INITP_0E(256'h1F03B5FF292A97968DA95A4E490D197A07B8953AF147269AED236AFFB9A93E68),
    .INITP_0F(256'h79E6E1F9CFCBA0EE27541CAF8FA4C923019FB4A1A37B3A414379C82765ACF15C),
    .INIT_00(256'hEEC06B84200D1EF8825D2E434FF8E6F9E15136E43444B96DB954F22362AC47FA),
    .INIT_01(256'hDB0E54616A26506268AE987CAC0D267A71C2CE11D003F15D089AEECD7855A76C),
    .INIT_02(256'h75B8120789AB0ADAF0813A729A9065469719F83D19F82E6A3349BC349F44276F),
    .INIT_03(256'h9C713F2DC7574373A6F8E8C8BFA35D3D806FC6530C0C9C7C6287DF6E63078C90),
    .INIT_04(256'h5A29ED227842FF330C3B38CB6FF49AE522F8871264B49F8CE002E1B59B4C9D94),
    .INIT_05(256'hE2E3BDC16C798C81161E6D75EAA603CE1A5C9FE21F2F4C916E87A130ED5DB5D5),
    .INIT_06(256'h0470560F86DA43CAEA581876556E2014A990B5B85EBB1FAC5A5ACE495B7D2DBD),
    .INIT_07(256'hB849AB1779CE6C32934D8621DD818E2B08F5C7E95B9B98EC4FA18E050412BD01),
    .INIT_08(256'h27CF2F43EBA88EC7402A5E2ED28F3BF44C284B396EEB341D68D4FC6743274F65),
    .INIT_09(256'h795D91F9A53DEFA56B65D54F79CD528D3BE721451E36343910B2D5A1151A50A4),
    .INIT_0A(256'hB3596308E0E827CFAE864321E45A878D8FD4AE65B3685C2CC150B5E712969644),
    .INIT_0B(256'h484890AD4C83CBF1739A22A2B7F935995C3FDFF2EA23B0B19697ECB5055C6481),
    .INIT_0C(256'hA045E15BC1D37754976A3003E248060D5E8496C1162103FC9B23FA0164F975E1),
    .INIT_0D(256'hDF87AE0D9DD98E1418AC18C9C5CB04BF35295BD6BDA6AC313101B280F50F4ED4),
    .INIT_0E(256'h38F7BCB3727F1735AB97EE8FD299C349D6A78D51A9DADC5DB7AFA2010DBB2CAD),
    .INIT_0F(256'hD723A15EE0EAA5D2BE42D645BDDF671A9A1AA42F7753252324190CD402E6D412),
    .INIT_10(256'h65252B1BD51AD525D856216FD1A8BA20374102F50A52BB3A2F968051ABB2233F),
    .INIT_11(256'hCD75229F2232DFE02C208DBCD33D62D6A9D74CDFF7263F4E4C7B8D5EF1603440),
    .INIT_12(256'h90A5C1A5613726EB6CC9B0DD5A9501DC598A011FC67A41B30BA0EA5D03C2CB55),
    .INIT_13(256'hE8055776D3FC64614B7E8C3D90EB92EF57784CE8CFFC25FB5FA6E1A38772F5E0),
    .INIT_14(256'hDEAE85C0569D89E1BC05DB33F2D8757326228943F3116606A2FC975EBCF27D5A),
    .INIT_15(256'h306CCBB4049EE524AFB544B61C2E66A14F3D02954302916E4E12F21030559635),
    .INIT_16(256'h76CF9E8302ECCAC0BC9441DC2E52AD4125CE336188B10E130904A58B64E0365D),
    .INIT_17(256'hDA74AB60911F5871B3A8C08F46E3348D4BC849A93FE2341447470C90AD44FFC1),
    .INIT_18(256'h8CA9E577E90D1FFDF2B0E660A60C9526B87C40E7755EA41B1758D5ECB11D5DAF),
    .INIT_19(256'h41EB00C60C0EDE40F5AA3F5B510F7348EFDEEF50F3DF71FA2B2BBE802C7855BC),
    .INIT_1A(256'hAC649E76D0A37169759238328BAF26D2313123F1F129245412D70AF72B60BDF1),
    .INIT_1B(256'hF083C4B264E719E3E308E43E6BC737CDCF56E76BB4B29E86BD34C3DC6C880C3E),
    .INIT_1C(256'hE38339CB694708CB919AC9D9E416645D1EDD96342A720C81A6EDAB1BEF0C6794),
    .INIT_1D(256'h82821A55CA335DCD8FA1E86014D7A869B0F765628D9B14BE6743D3186100B904),
    .INIT_1E(256'hC783A0BA0F9AB152F71FDAB1A174935436882F2ECDA88AC673A3745F7ECCCCDD),
    .INIT_1F(256'h9397D7059D421D8855EEC4B16CA1F27BC7BBC90E7DC9A2B728EA530F09CD2460),
    .INIT_20(256'h6BD1B4E5A61C149FADF532FDEEF13DC02624973F24C0B50CFFDE6C5A1A583EEE),
    .INIT_21(256'h931E962225325B8F043A5B199C23D5933BF631B0BFF7458AEDBE26EEF056E04F),
    .INIT_22(256'h64358D72F4D98B20E9B5F8193A518E0F2E22C6B1B84ADC370CCC74983DAEA1A9),
    .INIT_23(256'hE22D10331D35DC950AFAAAAE59F2BDA6B1A7D7ED9F0BE09A90198E635FB5ED78),
    .INIT_24(256'h3F9032D648229008278B09915601ACE22DDB5D655C5E4F1A5882F22D499D8EF0),
    .INIT_25(256'h76111FC162FB0A3335191571E6467213195B5E4143F2C4C5F7B1863F82075F26),
    .INIT_26(256'h6716AE98EB37273F874A5D53B65B434535135AD00BCE28044C36F6B70AD6969F),
    .INIT_27(256'h8062718A6CC5B7E081D9B3BB990304CB14D1ADDE89AE9E81CE536612706DF58D),
    .INIT_28(256'h29DE154690E4EC55D90421FE306584F6B41DA39C7463340E5CC8E10D0C3E5759),
    .INIT_29(256'h7D38BCA47C1FEBF1131253C61D9750075D303A9A89784722D64DB6398F5ABE13),
    .INIT_2A(256'h8414A9262CB75ED10BCD53E18DB2ABB95B342D12A2DB277FAA819926974D1BF8),
    .INIT_2B(256'h70D87701E9DDBA87198C2C20DFE602AD2153128F9304C5FF036A66D565643DD1),
    .INIT_2C(256'h13008C760FE932BED714CE7AD4A2A64C2B05173C2B756A2F26EB8F79CB624736),
    .INIT_2D(256'h270F1175B645E4BA9920E90823D5D5CC1B9620EC46098715FEAE634F083E05D7),
    .INIT_2E(256'h4687D1E59C1717FAD3CB7D905516C711CBCA37535C108D93520F154ADE528436),
    .INIT_2F(256'h026589BDF184384484970265DADC8D779637526B7A0FB5824E4F95C5075265C8),
    .INIT_30(256'h6770FFA96D7067EE9D852E45F55596FAC4C0703DFABC829B706D553A306ADC6D),
    .INIT_31(256'h805C740594D8039A3368AE899499904C3723C14B58F6314FBA4D57C1ABA53416),
    .INIT_32(256'h4B0610912E6B641167DF1CD68B9C1DC81515ECD1B6DD9ECA9FEE41745B0A76FE),
    .INIT_33(256'h0297FAF5BD9B986BB43217A9A34316220CA4228E3ECAB2D7E17EEDFD933A8AEE),
    .INIT_34(256'h788641C4DF0CFD5215D715EB2E28F4158BD6274A416D2FF59F502BE2E192A7B7),
    .INIT_35(256'h2B6F2EF24FE5D2C5E688E4BE381F5A1C5241EC1149676F047E9846F2FF3EE810),
    .INIT_36(256'h2FDC3BF401A9F69367A754D5D6AB98D2EC0AFA9FEF8D881DBC39C84DCF9F5ADA),
    .INIT_37(256'h7365B5316A11CAED0BF9C279DDD1CE07C9607A78229487A39A8940B89114CC16),
    .INIT_38(256'hB6B1399DB39002E2A6CE1B75024D52C8F21B2F3C9865FA6F4FFB060C68C5B942),
    .INIT_39(256'h99B274FC348B6ED3511BCB7C02030374F10707D601B1279D74BE84E21AAC1532),
    .INIT_3A(256'h7E92E8AD6791044AE572C80A1F2FEF06065671326E238D9847B8D0A48EA895FE),
    .INIT_3B(256'h2E2491CAF36CC905E45871B31948D7FB027A17771FACB25DCF8768568C3868C9),
    .INIT_3C(256'h175F16D23A8E2F5C5C990726F264E0EA343A436AED40B65C4A191A3A3D4D00D3),
    .INIT_3D(256'hF45AA173557B1FC79BCF54A92A876CA7BAF7F1ADB6B4FABD1B8DE970ACFB7455),
    .INIT_3E(256'hDFACC7C6BBC57576290B2603E35F0E966FA8E316F35B96241CDEFF19B2840ED3),
    .INIT_3F(256'hCF0DDDD4C99C0333714C381A1C28C3E0E87C6476A2247EE3050C0BA263BBFDF5),
    .INIT_40(256'h3FADD4362A57196CF26A9EAD30DAEF7EA24D3D1FD8D42B9CF02FAB8091DC5D93),
    .INIT_41(256'h70E18F5DC6E6B7BB8FC1400C11DE40BCE3CB28DF55C37ADFF8D8B30B1C6AB177),
    .INIT_42(256'hB81E212F332C7E77F4C2687B35121C7115A7526410CA93A2DB8287EBB59B7379),
    .INIT_43(256'h06DD9DCDF65F3B4F3CEAFCB680FBA4A8697FB82921E050E6DCD306320C2CFD66),
    .INIT_44(256'hD200D3421679FCE938E8E00A01E18C530237BE9E355AA3E21A315C9E6A7538A6),
    .INIT_45(256'h876DEA28B86ED3E83FF5F7BFD1AA3F8347A3147E35D266A92005B352C26DB744),
    .INIT_46(256'hDAAA033400A957012535AA19E15132CE8C7798F5C3CC9B45457A2E4700992969),
    .INIT_47(256'h035BB96EE53BAFC1544A111D8370D44DEE626FA79898EEE0E54B08199B11A9D0),
    .INIT_48(256'h9BDF83BE1EAA1F8961310C556A8E5B3566B670BFDBD88A792BF23DA55F2ED376),
    .INIT_49(256'h57DF3E12E5905C5B288779AC72A59E45D0A114BEBCAE139593259CB9142B871F),
    .INIT_4A(256'h6E3799E569779A0670EEF7D093302799FAF35C566491B028844ACD414BCC3EDD),
    .INIT_4B(256'hCC2E063CD715C805A692BC65ABF75535CF4874CD7DDD59B1EA6281D601426F11),
    .INIT_4C(256'h87F195E8430848284CAB3D128CA1816383240A94FE0A40BCDBD831860C767DBE),
    .INIT_4D(256'hA20D59CC2FA7ACDA60F1AD2456AC6678084F3DC98A3D8F053B795E9D68309FDD),
    .INIT_4E(256'h9F33297CC0043ACFD272827E951646B79869CB1B8BE2E6DF35C797EADC7EC256),
    .INIT_4F(256'h855279A6667CA1BA10D745C26469C404E4E1E8616F21246CEE788E87E3D6DFCB),
    .INIT_50(256'hA309BD5BD0432DD814E0EE512716807F2EFCDBBAFBC726CD3EF8FC5EBDAB3A55),
    .INIT_51(256'hC0B7B980B811C9968270E891337541943E974EBAC3A6873A14BC72CEB90A7B18),
    .INIT_52(256'hF0DDB652A979A51893C2782B8B38A6C151CD19125068A6A84E8C8C3AC4E06695),
    .INIT_53(256'h1CF8EB5E34F76AA679416A21E638C61C8F0B46697AE9A135790E1FB1784A89C9),
    .INIT_54(256'h37D2EE351911332BBFC18411DBD0B4C3BD67EEC52E3FC782D00EC26D9D68141E),
    .INIT_55(256'h26D8465E3D357693D90C47DB36FB6BEB1FC1BC46CD8162DED7696AB9D7BCE1A0),
    .INIT_56(256'hA30CA0404B861ED580A89EBD9AB80A2A47940FE76EF654BDF2E8DB582611058E),
    .INIT_57(256'h596BE088493F1C431D07C438F5A04D7A0DAD2B7BBEC8B0238D935CCBA911E078),
    .INIT_58(256'hF1EA8F35EFA885103B28CA0162B13A79429B3CD26F35F0B2CDBFA5C8DFBE6696),
    .INIT_59(256'hC2A83E662F21C7C1A64BC2A8DC5C4DFD86A89032111235AF5D1F1447F1F68FDD),
    .INIT_5A(256'h07035456857CC6F06023D9FBAF2C70722F1AFA4ADFD5129700B139CD343BF6A5),
    .INIT_5B(256'h2A5A6195496C8AF73C089E5202A5C7099FA577A18D220CC3037AC43FE2F28FE8),
    .INIT_5C(256'hE97B0201F80F90A575DD4B9430ADA0D65BD755A057390D000D7D3CD5FB9428E4),
    .INIT_5D(256'hBD29895A9EBD1679977B945BD651E3379C332DD74E230633B93EFB8A5100F357),
    .INIT_5E(256'hBED35FD3B4EC9597035E6B1291D3F50AFE41E4844502F2C33DA0F8D56878C1A3),
    .INIT_5F(256'hFE8283B27D70430C000C651976C46A0E068FF67502D5A0455F6EDE74CAB83AC1),
    .INIT_60(256'hD9B2EAFF2A0B1B20E883E0ECF3ED44C40BAE71FBF575ECAE62D3410B3204F6BB),
    .INIT_61(256'hD4E81F96A7AD78D5514F26C4B2A133D24DDACE196CE29225927FC926C54E0AC7),
    .INIT_62(256'hC7A398D88A58D06CA6E45FA715DB628ECB0E9EDB27647B92DB3F27A1F40B7303),
    .INIT_63(256'hDD5761AED51351F21AE712ADAAA2FCC4EB9E667AA4A1F312BD933DCFB2F4757E),
    .INIT_64(256'h0302DA052E614B5A721B642CA5B378BDEEF9DC28AB27CAB441D37D87A8B7BF66),
    .INIT_65(256'hCA32FB2802C1FEDA85F515B963C3D9024D69DB69B4CB49A4424EE8375CA4ABF4),
    .INIT_66(256'h14EA4C1308FA734429E058DDF0933F1A588B4AE701CC6108588DEAB3082C1295),
    .INIT_67(256'hE8B8FB1FA2C7819752AA103A516B49559CE77BA4F11C3BC0A80BA86D2F557482),
    .INIT_68(256'h37CDDF4DCEA3026D76F42E043EDFEC4920B1CDCCF7AAC5EF4A8F6E6A88162BB9),
    .INIT_69(256'h5A822AACAE318ABE070AF93FFD6A5FFB10CF8211A1490ECABF94EB8A31C3E1F7),
    .INIT_6A(256'h2CCDEB543EB1C6637768B99C972A6E35072B45DC5AABFED91FC6DD4AC2721028),
    .INIT_6B(256'h7D955AC1CA469E5DDE3A8B3AC8BC33FC7D4ECF29E6623A8D2CCCCEC94AC9EE91),
    .INIT_6C(256'h1D864D4B424AC2E5500C03D8B371B095CF1E4C329A8C1D76226EE90D4FE4117B),
    .INIT_6D(256'h7676B4EA760CDED1BF2C37BEF2157BB6641B473ED4B865AEDCD9D53630225435),
    .INIT_6E(256'h44DD192A80D54BF27B68F99A653851456DC0A8186BAB30AF151FA466B7C56969),
    .INIT_6F(256'h52B2FC1C1C1F0D332FB53D58ECA9C002A31F236BBA56640BBA925EF74F583A5B),
    .INIT_70(256'hCE0FE1C213B589D188F2C5C09AD04FCCA73760F57E1570AE3DFF8F5729078907),
    .INIT_71(256'h4A7C6C0A4F473CA60B675457D740F638C66D1F5C0FAFA2F5EA8D021375834156),
    .INIT_72(256'h4CA70E728BBD10C80075CEC13BEA58ED0CDEE07789ABF5ED60C128F18CAD9562),
    .INIT_73(256'h47E3E2C4DB2A6C826C61BBDDFD7A180253F79D2151151C6747BD24BDC27D522F),
    .INIT_74(256'h218444FA200DF75DF3C7D40B52AA5F7FCCDAD64629361D8EC18357494A9A39E0),
    .INIT_75(256'h0A733FF2FFAAAC465D53CDE83AFA5B2ABED497CDEBF665974D30CA1FDF611748),
    .INIT_76(256'h0186870BFB760635691B428C2B0C3A3D64D3E42F26ED66A46DB5756B2465A81D),
    .INIT_77(256'h67A95016275EC9F89BA80C30BE2537BC1E28407822E5CF01402ECADE36D3DD7D),
    .INIT_78(256'h8319A5A33B1C6F4A2F775469D32D62D4E98F7E1D6AFC0F19DA498D7109A1DDA5),
    .INIT_79(256'h7B0B996703BAD39A94816ACA078886358861D5D69D8C91C4E28B8174A9C1DA92),
    .INIT_7A(256'hC111B9BA4E7E368A4ECEE6CF107D442E86C2893857A65A104ED6B616836866DA),
    .INIT_7B(256'h35BE79C52E36896DF29EEDE1070E2AACCECC34C53DBF5D373C6F3E101C7FA811),
    .INIT_7C(256'hE21B9C832F989F4493600AA1E4A42FB752417854916F868FA98D9DEDFDA9700B),
    .INIT_7D(256'h9C559BBF91B7149DA6EDB992533724BF741E52BF2DE28A15187688EA9A6E1381),
    .INIT_7E(256'h3386E15B40BF2935D041A68DEA8863C001558A8F25BF73B2846846A96BA7860A),
    .INIT_7F(256'h479B09CC1FAD091362D1937853EE03470502F76199FA6BD03B330386D6852564),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h82395BF64AB257417F4365FB7FAF0EEEC4802931C81929B02F1449CD6554007B),
    .INITP_01(256'h3A4D183BE9F2EB9CF6F9C238D17D0ABFFFD61A28ACCF90BAF80E893ED14F2817),
    .INITP_02(256'hC0C2678B939E4CD07EF66F4DD411323D7ED27C4DC14AB3927D4B39964CE46D04),
    .INITP_03(256'hCC81748162CA2166B0AD1726FD5F646C54F7DCE48782AFFAE4C0D225312F944E),
    .INITP_04(256'h631CE91CE19AD9DA43E77C54A27281691C7615959786D40AA00BA972421C9C2B),
    .INITP_05(256'h299644D4E611A4EDA2449A754C79F41A792F46E01A24CAFF2EC1BE432CFCD529),
    .INITP_06(256'h48FDF52F6F2D4D05F5E5352AC5423192D044DF69B593AA42310F097ECF624F90),
    .INITP_07(256'h07A11B5EF756C893BB74E774A1AF5EFB9EC41CE3E7F8B62842CFC6B1596B6ADC),
    .INITP_08(256'h0DAB350CF09A03FD800D82708BFB13AA23A204C67D5FA232C22FCB6164C1D68C),
    .INITP_09(256'h97E8E530E41349B6ADC363CAAA5CF399768F60C9FB44377E92D5A05591AD08F1),
    .INITP_0A(256'hEA850870140A0D70B03359FBF3E967B77F50087902DD817E346C002E5D916FD1),
    .INITP_0B(256'h46831544158807B2FBD295B0872F5BC0B40F8A363AC10CDB7F8552EF6C9CC7EA),
    .INITP_0C(256'h9ADFAEA64A8566DFE5EEC286A4D0D2040C02DDF5AC93D6CE9138C50B45CD6A53),
    .INITP_0D(256'h76C95FD3FF86B497752C0136DE6AD8E5EC30B0133DD204594439431EB607D688),
    .INITP_0E(256'h5C8172FD0645FE8C683F6C8284059A7FBE8D42092B1E93BDC4B7D39F30236C66),
    .INITP_0F(256'h07F5729E5D7D58719ABF58EDADCCBA8D109CA640FC511F8202F9DD03F4A10732),
    .INIT_00(256'h635F8A1082C47417203F3B8520B75FB5E5CE5E382796265EE6940F146406EF7D),
    .INIT_01(256'h221C098DF5510A532CC6620F574554A2BB74FAAF7456B2F83F8097BCBCA5DAD3),
    .INIT_02(256'h2690098FDD8D6368C04A6F124E371B807128BA287BE4FDA4DCA7A08F5F76E588),
    .INIT_03(256'hCBE48EA0F4EC40D61452900B032D5C84979EF74FBF7613DCBD53EE266E1BE789),
    .INIT_04(256'h563FA215503AD4B8DD292D70CE3A8ABDB08695FD91C8A16E57ACE9C5E0DD64AC),
    .INIT_05(256'h8EB634D44635879191800052B44DCA8990673C0BEF646D879C266650B26C002A),
    .INIT_06(256'h187A7DE69F1D67697AC2DC57DD0330B0471DF90C650C9C2615D9D41A897AFA6D),
    .INIT_07(256'h50418EAC655A02E858ED2F2972E58352199F5CFEE7AF71E157C7B3D12B188239),
    .INIT_08(256'h629B2BF5286FE5E84C1850EA0680DA7C1C74AD597432E6AD5DB4909E68EF5A92),
    .INIT_09(256'h640A71EE5EBE08F0C5FA7B0DF2EBAEA5E675E2A3635DEFC3EF17BD40F08F46B4),
    .INIT_0A(256'h1AAA772C6BF3C83D0074C1EA2B492BC2D8EE390AA4FF4566BCC5DC36BAEC3179),
    .INIT_0B(256'h6EFF5A9E2D08F9B2822ADBE47D7A611F13A4478A06CAA36D5AFD97B31AB64D23),
    .INIT_0C(256'h2FCDF0BCC5FBE58004BAF769D81F71DBD4B28ED2544925B1A882439F52E05D97),
    .INIT_0D(256'h2D00F48765DB497D24E175F69D264C234B12F78D3FD786B81E608E486C51D5DB),
    .INIT_0E(256'hB2FF24CA38A9E5D2D8328A625C82B7D7B7A227FEF95E60599B9FE9CC3B79158A),
    .INIT_0F(256'hC51CDC129D6C42F6DEE16067FB46846ECFF7DF75DAEB695F0970013B9D46EA49),
    .INIT_10(256'hDB77F7734AF3EE699A3DA5C99D6C43B51BFAADBD98211CF88B879F376011F92D),
    .INIT_11(256'hABEEC0295F0F7E0C45F067B3140F8FBC5670848B96B4FE81CCD6EBA17AD925F0),
    .INIT_12(256'h69F529F742C9CA4235BB11ED8E26573623EEF0398FB959CBFC5E36A88CD649EE),
    .INIT_13(256'hA006DA8235C19BA1FFB369EFD8674FED4CB0523CD19B3C88EA7A379EDE929366),
    .INIT_14(256'hE37C36BC4B3835A577B1A5005A963625ACA2C1AEE471221C781BCB993D536320),
    .INIT_15(256'h7F7B47C3AFD4DF84667C4DD543CDD32F79E1762B7818F0BCE141BA59E5851C32),
    .INIT_16(256'h933AAC1372945543EC11D8099B50AA0340460EBCF44D40D3F5AA20A64D4E2A39),
    .INIT_17(256'h94DDD24A0DA69A50C40228A07AAD64721438CACE83D276B48C2AD3177EE866B4),
    .INIT_18(256'h033AFB6C915F28E4EA42AFB59D9989A451AEE60BACFC09CA79B120E48FAFB85F),
    .INIT_19(256'h757B015402A55AA45CF55C3CFC406C739748EE1979B92E5F6B64823848167824),
    .INIT_1A(256'hFACC5568AF9393C0C5378338CF8EB15DC6AA835D849F70F0B5E89BCC4D78ED60),
    .INIT_1B(256'h43F17F58DACE111B3C711F33F6CDCC441C50BE8D2BD3C1546AA4DA3091D9F1F4),
    .INIT_1C(256'hDFC1E48B11F57AFD15EDB6EE9AD47F036A3E492E105890CCB1E40B71B6E5CA64),
    .INIT_1D(256'h434D36A24E8617A363037D0A6ACA0A3BD7EBE7DBB6BD462072B79CF31AA6FA93),
    .INIT_1E(256'hE0E578F8B54C075A9BDFB20F9D85306DDF8A72A9119AF12F55AE5216AC87C46C),
    .INIT_1F(256'h71365DAF637B417A014A9B246BAF8559F16700F45B477721616A7DC47C8EFCE3),
    .INIT_20(256'hE912F0D17A56DEDCDAEF7C11B2E0444CD9B7AB97C25FD2CADF542ED8885EFA53),
    .INIT_21(256'hB0E96880B8E8B470DEC9C1CD943EB9C5B4E1BF5F3B364C296893DDA9B2FDE6A4),
    .INIT_22(256'h9F9EF1F5548EC2A275DDA3FD882E68DB7D1928203DF64086CC24A41F9BD187E5),
    .INIT_23(256'h61534F9599C13D453E08FC60C0BD945ACF19FB6A8D051FE6C8E1969F6C683346),
    .INIT_24(256'h34059FDE813AEF013F868686BA4194D605DDEBA5E796D6B2BB63547F481FFAE0),
    .INIT_25(256'h8666AAFCCF2666B82F67DE442118BE04BCE3C626D761505C680B187DDD1C2A8A),
    .INIT_26(256'hB8D7EE0DF62D479BDCA9C1C1085CCE240F9C49724ABA4F80D5C34C533D2B9F1C),
    .INIT_27(256'hBA11492927EBB0EA9075630FA3198DF415635755E1BAAD8A293745A21A95E04C),
    .INIT_28(256'hE479B14B11235B1F979DFA8840090C8C29CFB5331E38F072206CB85C4DB38B4A),
    .INIT_29(256'hF0DB32B54E521A66B813C9ADC4961B173584D2BDC10A7D04E3A843F87E32A203),
    .INIT_2A(256'hC26B3EB4FE50D002DF98C59C533FE8E1C183D94CB01CAE5BD1E5868A3DE47D07),
    .INIT_2B(256'h2EEF5EFF7FA01835CAAEC954B55A3E7F645FC9085E151388137DB2F2AFF26186),
    .INIT_2C(256'h8B2503F331A6768F3119A47E44DE02B2E9B1EF6920CB8D21E8AAEADF228F56D8),
    .INIT_2D(256'h0F2177EDEECFA36EFF75B329B529600E5B33E4B8A169F725D2408D2047526530),
    .INIT_2E(256'h7EB7C93D23A5F61E7F7186D84FCAD3E186C32ABF2377EC4F5BD3A0C3A3A0BE97),
    .INIT_2F(256'h838684283C6CBA6A8FA48F8E5F23CE54B013B990C7E5807B3554DC02485B015A),
    .INIT_30(256'hE49D53F720BE252BFA304D73FC477BFE8AE137FC4E24A6B87F83F7FCE2DB21C3),
    .INIT_31(256'h93C4BE0FFAFB5CDAF955B19DDCC33133A739F0FA8E83A677348F0884409D103F),
    .INIT_32(256'h98F0A701D79D8E8E6C8798E19B385563160498FC63BFE6F33C57E9235EE9680E),
    .INIT_33(256'h0E9D29D1A3E3B5EDDA534603014E7B3F51C4F39019E60A794C4D8B272314E5A6),
    .INIT_34(256'h225065F63BC01441CD97DA1E108FC5352260988D43E2A9D72703F93A3D8579F1),
    .INIT_35(256'hC812E36C424948BF041B2EF3905012DB0CB84008D6D561366A1B94CC9B70E35D),
    .INIT_36(256'hDB20927B28AD2729204DB45B7BD691AC8A6EFB17FAC8BD09E4702FC21DA909A5),
    .INIT_37(256'hF61CBAF27BCD61400606D38054821D40331E0237B1296EC423CCB767951B7062),
    .INIT_38(256'hD3EFCEC08399CAF2CB7AC42275BA1A3744B43029B705366FA6BBEE6176FC2C43),
    .INIT_39(256'hB6329BE5295A4B2B782B5BF601F6EC549532F2B499C6E1BD84DBB3E591882BF8),
    .INIT_3A(256'hF0F1D9FCD2FA157BC442F6EDE65851184785D592A3030BF939C258180E301156),
    .INIT_3B(256'hE96487FAFED7450EAB198057346048A3000C1D0259425EAA3580D48414702019),
    .INIT_3C(256'hD176B60DE361AA2A8A041719DBFA5D7D5EDDC1F7D0DB669AC41828E06084CC0B),
    .INIT_3D(256'hC1F9D68543457A88297AD98B0F3E17FA957580FD4398697B6F9C143773E9DEA3),
    .INIT_3E(256'h533DFB045F56BB78D797DA30CDC842930801291404BA54B01FB1D798BBE1ECA5),
    .INIT_3F(256'hFCB7A4BBBD4C46D3328E17A792698CF02EB39D72FCD388BA25EB5C8A88A2D16B),
    .INIT_40(256'h7FD269AC1419F102952559E9EC77E06031DE2499F59B4310499921C3DDE111DB),
    .INIT_41(256'h0DAE7A2B8DFC1B4F024A203B64E3D5671DD43D5BF30B6B13DEB2EA1D04E80428),
    .INIT_42(256'h597FC2662DC25BFA344C98CCF78994E6E4DD8FDE8696DC5957D81D27D399D610),
    .INIT_43(256'hEFBBF1AF8011AC39C34D619E42ABF74B5DEE05C7151DA2436A37430CA2049622),
    .INIT_44(256'h8D9A2A16BDC35B5876A679DF0F3F0B4CD49B6F2DE52EBF0B3784A4969B09F2E1),
    .INIT_45(256'h6AD63351734C85A1D2B2CBE1BC6197B51CB4E1F1885807EE6B69B26AA4BBBA0D),
    .INIT_46(256'h9F50CA311DD9356355D22BC88747FF3E21FDB5EC329DC2BDA84B8670F6D20CD6),
    .INIT_47(256'h2006890D588250B1B875C3934195AFEB92BED0880F68E2862AB2A37156B410F9),
    .INIT_48(256'hF0EF2D747774FFE3E54F89164442E87282789113D09A5192B72394D4B81ADBE6),
    .INIT_49(256'h50EA962ACB6785A66D91F010A15C73323452F97E3768D0008848D24BAFAF2FCC),
    .INIT_4A(256'hA280135924E80893A86676CB28856E65D57F8414473289EEE42EB4A89F528E81),
    .INIT_4B(256'h8A801796395281DCD2523633327553D762CC69186C713FB64529AEC0F979EDBF),
    .INIT_4C(256'hC0EE007218178B067FA1C6BA7D1401168C834463E988A85A5A7FA27E407D799B),
    .INIT_4D(256'hEE40DEA9CFE84AF151A3A43B36EEDEC041D1ADAEE9814ECCEE859F9124F2CB60),
    .INIT_4E(256'h1F05F66EFEA89B9B3937F52F6858C9451B7295397452DDC1C8E9A0FC440824FF),
    .INIT_4F(256'hB6994C299FA84ADF6C83DA334AE3FE7D722AAA6AFA1EAB71E9BD17134C0C198D),
    .INIT_50(256'hC28E81E9D6EC5EE2C73D27743F5FE80440121B5E23D8CB2AB21010975C0ED2D2),
    .INIT_51(256'hA51299DBBBFAAB78670A13D629D9A40CC09D3850949F62CFC26DB045650EC026),
    .INIT_52(256'hE8240F28605D5B470E7C04DAD12C141DF20689316BF145197D3B0886E4B59D65),
    .INIT_53(256'h6C9CB494CF8DCC349F827B4BC38B2FF642DC5AB2E353C7B13E4F31BB51F4F0CC),
    .INIT_54(256'hA6467ADE9386B4D08A622242571660416ED5CC26484397B6406C6FA07B25E397),
    .INIT_55(256'h67C954D02F0613AFAC2B0CA9FDBF7371F30A8A093C1D4A222072B9B92959D1C0),
    .INIT_56(256'h215953EFDE95A378425AE7ECF85F4F6B041D842BD4830A799BBA9857624E1F54),
    .INIT_57(256'hFA127D22951476203949E3B85E29E16B6B3112573E4A293308D1427699AE6378),
    .INIT_58(256'hFCC1CA3D210E2134E576E92E4F633ED21911D7CFDBDC73B977723A59DD14F978),
    .INIT_59(256'h534C62D3030364884B95B1AF09A0217DAACC2FEAE9212451376CF753112C8216),
    .INIT_5A(256'h5C394D9A2DF901BE9E780840293D6DDCB35DE10B499BB8FDB93AC82BD12A08AD),
    .INIT_5B(256'h80407344B343464C43CF55CF31398529820A53E6A5F14C12D4C1402A761F5F8C),
    .INIT_5C(256'h6A696CA0F1CEADE2491A245D8BA852049F12235B77C429B6F9C18D9BED294042),
    .INIT_5D(256'h1CB266E3924A16F2FC2A26B4360CA904C43402F50DE2B032F59BD53658D9C9DB),
    .INIT_5E(256'h2A61F4FEC6041434F29EA8E7AF538BF74326678ED12C88DCA1C45458E15B38CB),
    .INIT_5F(256'h57D406BB7654300EA67C0467E7D239021275AB266CE8B4EAF08F548DD3EBFF6C),
    .INIT_60(256'hBF3283CD7EC2BCAB58C85003D35D7CF6D2144F0B4D016D8A25F71695C7BDD27E),
    .INIT_61(256'h9B17C3662583AC8814D1ECB06B220DB0DCAEEEE5E0B4005D636308CF2B5EF2AE),
    .INIT_62(256'h39810F984A91B21AAD24859A5CAC709A64266B74862524E4DD3ED68D4109DBEC),
    .INIT_63(256'hCE9E360E47AE29ABB3ACB116429164F7FE0FBFF214452923B7ED1F53ED8E9972),
    .INIT_64(256'hB1D8D99AFEEB312CB1BF827D498835BDA1B67B0C63FBBAB42D6EEF3BA4C7B0F0),
    .INIT_65(256'h34865BF9F0FB6C7751B88849529FF682271206D05D077F5273C652CD16152D33),
    .INIT_66(256'hE0B9181AE0E9C5E3349A01CC83046C84F39913E72B7864DF5D5AEB806992C1E9),
    .INIT_67(256'hE886A6B74DD63BCB1A82204B4C8E8C8079823DD60039DC99B2ADCCD03F19474F),
    .INIT_68(256'hB1C1220A048EC5C0B1979F3EF83D506E9699EBF17AAC249385DE8DFDC9B605BE),
    .INIT_69(256'hB0FDC99140ED4C88EA33F5D53F116739796624288E76C643FE78BD4E5CE981AC),
    .INIT_6A(256'h02B037D594559C859DBAB0B12975C168C1E309328292FB835BFCD47A5EDEF52A),
    .INIT_6B(256'h7D922E485B806238354F9FD6B414BEA54EDF2F58DC3EF4D9BE317D0AECA4031F),
    .INIT_6C(256'h9B4D4F89F324FBC3F605E937FA05B56884B3D01901ADE5DA5E7DB723239EBE3D),
    .INIT_6D(256'h4D8775F2AF48E656A8216FD71B58C87E910868B9E881BDC769BBA8D342B91378),
    .INIT_6E(256'h2DE5AD006FB71B2851F3E72FDD156E41498AAA425A6197FBDDD4A8F82707D208),
    .INIT_6F(256'hBC9212F5F55D4B33FA5F7E3B0FF79AD0433F92B73D654773491612339DD72240),
    .INIT_70(256'h81ACE93B9C7A25E018EC423B3E1A6C63F6D908378EC9C11577421F2E0E42FDF6),
    .INIT_71(256'h7D50A689108CD4096A302E7ED4B3F9A0DF198B6D4E88C14EA9703A97AF12FC4B),
    .INIT_72(256'hA3A21849819716D663E857F23A7AB80C8A30F05F486BCE8808E65490B4E683C7),
    .INIT_73(256'h943ED2D717B19D106541F581B4094E2DAF43F1EB9F087ED197D57A7309494B34),
    .INIT_74(256'h61502FE6E838941DC72E4CC87439F455BD83A29A3CFE88A146C142324049A12C),
    .INIT_75(256'hBFB68FA1ECC01DB707C9A411217730A717231EEC09D3DBF3794D214C68623955),
    .INIT_76(256'hB885BA3481AB5197531E7D5BE873054BEE2EA0A98A7F1409E44D22FB20271DC9),
    .INIT_77(256'hAD65F21D997E9C3705FB1DE46A54EFD31A6DB0D1B856D607F39B85F38591156D),
    .INIT_78(256'hB65B43692E76025266EA58CA4629AAE0FBA721B6F99CE2B0EBD1BCBA73BA2920),
    .INIT_79(256'h851C69F67F3B1437082D8A671942B155F4B1652771E4F72FC926EE1A0B237C0C),
    .INIT_7A(256'h4C9DED2E265305C50EF58577CECFAEDE365324C380ADC15D9064EFADD8482BCE),
    .INIT_7B(256'h6CFEF604471DBA7C30B03151BBB3F2A36B8E7132F1078F25E0FB34FEF12F2BD1),
    .INIT_7C(256'h43B06C3B6DE5D240B08AC9C0E1821DFA37F4990ED70ECCD4B94DEE65CCA82E54),
    .INIT_7D(256'hEBB077EACD1017236F29677E91F02E3D3AA2674A297748A16F00BCF79568CF82),
    .INIT_7E(256'hB3536EDFAC5F5529F64397D1EB0011B702B9A1C75D1687CE285B21615CED1AAA),
    .INIT_7F(256'h4DE85F49D523B671EA6B30F2E0FD0006643F804A2F009A2D34A0E6BDCD5E2725),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized30
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hA6C47A7482CA952ECAA0EDCF2923206926F5F6B7D7B0747E5474E19EAB4816F0),
    .INITP_01(256'h4ADCEA664023C9668A0401FAD876F6F9C86EC7259A32ACBCB9D68DC419906CD2),
    .INITP_02(256'hF2FFE4292C535655785B6BE501BA66F30375C07A829763C4E0BD5E36E1177EA8),
    .INITP_03(256'hA66D6B27D3A1FEE49B821B10228D44159B948F581D1516CC4CF350684A1D9384),
    .INITP_04(256'h24BA2C7168B4B56105B79760F474A4694557347C7ECA75E7663E92D2D739B6F7),
    .INITP_05(256'h6E1209AAABC53C04DC302FB50E4BA84ADFED3584F1491D6EAB6DAAFC3B8849B3),
    .INITP_06(256'h5C38CF7172127628562B90691528459957A1BA5081009E4540B1884789D9E458),
    .INITP_07(256'h76B1A5C9464D657C5570CE6CD72C44B2F3BC8AECB6443E36205F59495416D676),
    .INITP_08(256'hB825E1738C65020416284D805084BCB30650DF1BE0626A5C57DA2FE1A915F9DB),
    .INITP_09(256'h6CEB48B95A367267BDA0C0036D4F5DCD60D009CFE5980C44AE36BCC13BDB68B0),
    .INITP_0A(256'hB4D7DA2E4D8B3104380B7F34942F73873DCB9DFB6B198DB8EEB8EF335929BEB5),
    .INITP_0B(256'h99A595A686E9806AE21273A774A7E88C8E7C9CE9FF8638642F3C0332D80D30BD),
    .INITP_0C(256'h55B532344DDD286B1A3C7F0C2C3499E27F4E0D72E14C4A3F0619AB173C8AA1C5),
    .INITP_0D(256'h4550282BFDA7F7942ECF69ED8278B79A145FB8FFBD904581B32859641C55AA0B),
    .INITP_0E(256'hD846C0CE6BBD0877FF48E99646D3266AC0BE4E9B18D36E53B05E16DCDECB09F2),
    .INITP_0F(256'hC008DB83DCE42DC6C0919823A596D8C3FF51A15604490FE15A19333C17101365),
    .INIT_00(256'hFDF65E80C5F26DDDC605815F65A2F18387790D9551F9C95D50F8C765DB6BE5B7),
    .INIT_01(256'h670BF6929C67E58FB8E9CC6A2221597A4EAE75D6DF1684A1677EC947AA09949E),
    .INIT_02(256'hF9C7777AFC51C4F383446E38395516892A1F71DB102AE0204A7686CC0D31E2A3),
    .INIT_03(256'h9A06FBDCD68501BBF76833A32DA4C5FA21B4D07FD97E5676C7471BEB4511F33E),
    .INIT_04(256'h7D7EE9F33DE6DA25CD8D5D8D9AD0B92A20F703E785EC03524D2AB8E56522B21F),
    .INIT_05(256'h8A6B670A629C87882C3E1FB7AA5582AC73D9A9FFC8DE41B6DF17EB1D6F8C8504),
    .INIT_06(256'h15E3BBC8A6F141026A2AC7EB42DC9B875F6D0B597FB4A1C9B6420E098AF70685),
    .INIT_07(256'hA50D9596D35876A030C85D8503B0B32AD28F4449C6BE6A8AF01C4D324C7BED9E),
    .INIT_08(256'hCC96F121F4B2B3E5F0657177FEE69E5ED6DEB85DFEA824169DF722E435979C08),
    .INIT_09(256'h6AC7A1F3194D97E5FF036E99906F06713FFE223115C5526EF18EF29C5B6CB696),
    .INIT_0A(256'hDE2BD40298B8A8704C510ABC94FAA8E7550F0E2BA8EF795315BC860FA62E748D),
    .INIT_0B(256'hCF07B8EE2CEA673AE7EFC6D5C6F3AB2D29393639CB2938F190C20B1D4B28138E),
    .INIT_0C(256'hB3DE52A132B153ED74B8AA7F6E42A9851DAFDE28644BD03BBF9E546E079646DA),
    .INIT_0D(256'h804B8783E311B4FF6060CB1FB7891E1F98A4840CBCA7E51DDB36702E8F51473F),
    .INIT_0E(256'h07B8D6EC805B74B8B974DA21EB8F358B22602BEE86C57F28E1F019D85EF250CB),
    .INIT_0F(256'hBACDE1E0EC5898896BD54F9F18ED8BBAF3B1C09305357453581E926ECD8B21FD),
    .INIT_10(256'hA7C2984A030B10EBCA36C506A533A375966C55C8698E6486112AE26C42B09421),
    .INIT_11(256'h19AA394C6AAB0327076DCD336E3288FC3BFFB5326F4C40E4B116C7A63B525128),
    .INIT_12(256'hF9D3B37CDFC8B3E4972B1C7123B8AE099C8582FD1A1098BF89030A0B6F0F5975),
    .INIT_13(256'hEEDBD08CE3635212836046F15104D72C7B2690031CC788C476DBC9DECDD6E61A),
    .INIT_14(256'hAC0DA7CEDB95AA921B888592F8A5CDFFC86CBFFD229E8420001449A642042CB0),
    .INIT_15(256'h1540E25BA7BDAE8FBC937CD581F3E00A9987C19BB9B545A2631765FF9E9F0D60),
    .INIT_16(256'h50BDD41EA0EB198737B255435CACDA1FB2E583E0ED473A79DD77EC210B101A50),
    .INIT_17(256'h27997B722BBCC12D1C6665307AF76E3716D6CA2F9C12544FBF98239EB59E6A05),
    .INIT_18(256'h51A0236CBB400A6AD2CA4F291B2A0D5D20587507A551CE7C2E07121A5249ED22),
    .INIT_19(256'h13C6422107B5EF9E8B613F70E335706CCF352CA777F0F10ACBC72DFB3BD6E563),
    .INIT_1A(256'hE9E2C7A7DDA30B253EA52A9D04C03FB596327D066D0159FDD61C25AF9B3EE141),
    .INIT_1B(256'hB3EAF5A0974DAE1E5862123621AFD1234B317C66A9537E1589526E2373C0FD9D),
    .INIT_1C(256'h46B313EDDB36572DE055C7894AB7C5616FA22D209C9B69651B72E737C41C069E),
    .INIT_1D(256'hCEFB241E767DBC984A235657A88CA28089CD540E9045786F5F21CD8BF0973325),
    .INIT_1E(256'hA6E2532A761476AC989151C53ECDB6B4E09DE76C00725FC706C517540CFDE398),
    .INIT_1F(256'h29CD33F66C98772935BCA4B896DF9EA6A03D47EF5F17EFA30BFD7882ED6C2387),
    .INIT_20(256'h38C09A78AC7F20360C027AEFBF1DC3E32FCDC474F188C1588DEDFAD7E81AAF53),
    .INIT_21(256'hD25118F36226A098E5131388AC1C1E33F0B7CCCD0EBAC98984BCDCE94D5BDF0E),
    .INIT_22(256'h00DF8925225BC0B4D4151DFB7D489B822714CFE2D18B18F11114D4DD74D0E577),
    .INIT_23(256'h8D4280A9E15C4F07F8F0B696F1F7FFE255C5DE386393A06C87113481B5807120),
    .INIT_24(256'hFF2E5E6CEF23AD9985E68320F4E7EE1D8D27F8E581C41BA4F427B1B046395D08),
    .INIT_25(256'hE6631F1EFB28DEA10D47568DD4386665D781407FBA5972376CDFB2671BEBB420),
    .INIT_26(256'h5EE80EF87B58EA0818A50A2C01E8B78C5D3EC4CD16517005A887CA1652B8092C),
    .INIT_27(256'h3AC0F306F7D705273D13B2DEA4B83945D60FB2FAEA9F4A23768A0C1BD7C176E3),
    .INIT_28(256'hA4F4BFB562407EADB569E206694268E00256C2DEF43D2F5CBD2248E939173203),
    .INIT_29(256'h1EF4ED19938300A56A0AAD9F0AA19919641F09450AC2A4F6CC763D09BD096AD8),
    .INIT_2A(256'hE2807EB5D530355D92A7D1909C59CCFFCADB8E0DBB125D6D94DC0E70DB05699E),
    .INIT_2B(256'h202BCF28D9C01BDDF920981586D2FB768AF15BB0ABF3FF8D64A2B76606B5D4D3),
    .INIT_2C(256'h7FCCCC582420630512093A1A6689771C35CAA4937D81E306271CECA2F56533DB),
    .INIT_2D(256'h2F939F0395A4FFAFCCF21EC7C23B087625B19929081E1758364ABB27D2FA2550),
    .INIT_2E(256'h56B1B372EC58528414F9A92B56CA688140378BB31A39063A1B14888C96D4102D),
    .INIT_2F(256'hF92240ED1E59CAB3079731E8AE30475DDDF70447EA3EC78F7305BE5D4CEF14E1),
    .INIT_30(256'hFAB705FE48A210A4C5CCE09B4CD4C002D7AFEF93E5CC159329A1DF62350ACEEA),
    .INIT_31(256'h9B9DE34ECAC2FA7DF7EA4C95365F30EC62D1F2FCE7095ACAAA960449F1BC6842),
    .INIT_32(256'h6FED53F612119358471FDAEBEEE9FE4CB820C1FCA2CE00A8CB8F808E5C1E11C2),
    .INIT_33(256'h992BFE4405FEDE483A765CCBD4D7870CF83ADDCCAEC66D1A646B194A01C3CDCB),
    .INIT_34(256'h6984C45041D5709BEBD7576525B066763D7CDE5EBA9F98A4C412331E0094F108),
    .INIT_35(256'h79CF8F35E8AD754D8578CB225D585C6AF853D0AA02319B7C9CE8094742CF366D),
    .INIT_36(256'h05338577C192BEC65A5F424F5BF4D57AB2A797846680499526D4DF7604512C4B),
    .INIT_37(256'h74C93CE6CC403A6167042DF00376A04C0754DAC98EE885DF48A171A335B2B4CD),
    .INIT_38(256'h5341BDCBCB08BC8B6A2B40F0257FFAD11DF320EAE49802086857B4111C87B4E3),
    .INIT_39(256'h29616A1B7513AE5756B47DA5CF24DCC8B540412517DA84C221096D1E65201E37),
    .INIT_3A(256'hE26AC8C376F6B9AB16A85EEB961951A68CDB208E8FA056E38EB1F644975422BA),
    .INIT_3B(256'h18C0F3A137388FBAB97969768F5FB827EE36E5889FE16E7D68D3552BFA518225),
    .INIT_3C(256'h2638800A253574E07E3BA7F3E6339E7334A79269B70D46A37B5D2C99A51F432D),
    .INIT_3D(256'hC7524C2A45E8298F5D350031218132BCE019937B209CE82DB89D7113C4660DB0),
    .INIT_3E(256'h2123D4984E3B504C5EFE44383118280FFC775A0B96ADE633B6D021B2BA1E583B),
    .INIT_3F(256'h063CAB801074C06EB3440569FA53A4638597D8EF09EE308B445F91F9B64C1404),
    .INIT_40(256'h04899A0F998D88BEC883C9CF286394FB470C18C2C09A6973AEA2526BD2C0B77D),
    .INIT_41(256'hD7DD311528B4641FBB0DF77F0B9A26D56D7A03692931BC8E7EAC3C6DBF68D238),
    .INIT_42(256'hF0BD9E642C96A77C0BC60DA9F4E8A882A30F4B3C9383269818F3564056033B10),
    .INIT_43(256'h50CA6D4F17976EA4951738831B609B01D1F5AAB722D8E942C9D4AD8AD681DB34),
    .INIT_44(256'h8BC1AB89C1B616356E819B555D062858DDAA003410B7F828214642FE58BD1D34),
    .INIT_45(256'h581E2B86DE74E0D34E93F400AC9BC33D32F1CE82B08546DCE8219E5A8D2BBAF0),
    .INIT_46(256'h0ACB15D0EBF99D5C9F02AA00087F509E0912BC2572F39C6C8DD73B388B2CE211),
    .INIT_47(256'hC1D4E1B1BEAE9298D899E6EFDC008BB426434BFF595BB932376286C5A8C0B95D),
    .INIT_48(256'h1FAD92C1744907FC394A31EBCAC3FDF213F27330D9EA0978DCF6EF69D8DB3D9C),
    .INIT_49(256'hB9A9C0BC6646495AE1E2CCD73DE97681373932063A3BA4D511A0057769AA4216),
    .INIT_4A(256'h3E592658546C482B87190D4AD1F0919ECA411C0F17C22B098BB4240C07D2908C),
    .INIT_4B(256'h62A3CFF11238407E2E7AD3D54FAE14A80B6E3417589E239B077DACA56C672B3A),
    .INIT_4C(256'hF3FC27E3B75DD5D19677C2413E576BF0D0E1232DB640A413F41CB737430F62AE),
    .INIT_4D(256'hF3D4967A305D0953E1AD7473E45AA05DF9479DC6FE10FCF8EDF785B4B326B0F8),
    .INIT_4E(256'hFEAC832F7307419AC7DF78CE307A371BB02E2897BCEAB31DD9B21ABB654A1C62),
    .INIT_4F(256'h350973DE678EBC1133C201E59258EF441BDA59164410D33F6588B40559AF43F4),
    .INIT_50(256'hD34131A08D1C82738D366C22B56C813A84991660F79414C4EDC308E556CD2ECF),
    .INIT_51(256'hBEA31E3A59ED22C8BEEC2BB9FCD97EE76E9C126C715A583A6667739C95EF8170),
    .INIT_52(256'h9A87A602BDA8CC15BEB602610B0E2909C97D2F0993ADF2EE8FBB00AC93B608CA),
    .INIT_53(256'hEBF5A40EA9F25F7611A2C419FEBC2F4347B5F1AD22E198C03900221490C3DE93),
    .INIT_54(256'h989DE74BC2F9C6AE7CE78550AE781B147E2BDF0B3EE93762C32CF99D94C36456),
    .INIT_55(256'h6BAC3369E90DC1922866B98134A19310A88CFBA455CC3C702DCCAB582378A433),
    .INIT_56(256'h2D5C25014E45CD2B2B4DDFE4E97D100F2FE24960A050F552EF59AB7EC6BE007B),
    .INIT_57(256'h1F3CA4B49764AB02195AE2501E32F837266179AAA736034717ED36A035575C55),
    .INIT_58(256'hFCF9235DE07A379EDACDDEC7EB84AF1FFD78ADE3754143C4F4F72E40257ADE91),
    .INIT_59(256'hE28035E5119997A238804152321F42068C35A290FA445933548BEE357ABE70A3),
    .INIT_5A(256'h86C83C7DCA047F5E189F3BD25AEB57C70AF486D896F21FC9785F4E5A571CF651),
    .INIT_5B(256'hE52BF7B1747CF96E19CB41668FA7E35D68A03340A313565DD2F77DF50F93EF1B),
    .INIT_5C(256'h742A7447EF36C4330CB36A2C546A014278B2341333004BAF0C2FFDA559BA0C5A),
    .INIT_5D(256'h09A52F92A959D89EA7FFE460E7E17678F178A6616C009A29DD35CB1459263AF8),
    .INIT_5E(256'hDBF34F24EC3369A4358107FE274C2D34CB350372240CDB6D4CF3D849F1846D6B),
    .INIT_5F(256'h0DB37AE079A9C003D0FED5C02EC538AFA07E56100E1544F241364CB49C69FD7D),
    .INIT_60(256'hB56FC92516C90B6B5F49A331ED1A80FE541FB108507846A38A93279097E3D5CE),
    .INIT_61(256'hFBEF46B7455264D0CC816F02B142A1766D07BE2F910752C1E9D5FA92B119EF6C),
    .INIT_62(256'h01559B4B2D9A341032F49F2B70CE2DDFEBC01CF5D8A6136FA0CC47CADF27CFBC),
    .INIT_63(256'h76061F326CF2290CE1DA6DF14B7DFBF1E7FE49E7AEB3870FDB929C1022558AF6),
    .INIT_64(256'h61447E03B1A7649D3CE5772661993EDB5C323E2EAA098CAD2C80F5CC7AA4D7F8),
    .INIT_65(256'hF18CE64087F792C621507A38F8197BC5997FBC55EB20E55669C21FBD3692E471),
    .INIT_66(256'hC14B93030B21192E69A68943CB51992C1CADCD3B0F584DC0EB15967A3A19E5D0),
    .INIT_67(256'h7F075E802B14C2ABFADC71ABC861273F7514947B3A73E7EEC8BE111CE12E081D),
    .INIT_68(256'h85998C0FCFECF097A63134A1D43AF7F469CA05829BCDFA942894FEFBD849F1DA),
    .INIT_69(256'h595486A6D964488270371B7A7FDE759418C66DE9F3B849080745A80D6A8992A2),
    .INIT_6A(256'hDBFEA37CDE3890C56ADAE6DC730C1534EFD67825465A21A3B614345DE9803AD7),
    .INIT_6B(256'hFDE8C721B8E0F55D4DBDC18893AA5E5239825E446284DC159BF076EFB41EDCFD),
    .INIT_6C(256'h4358457F48A74ED9EAB2F2B85C029453FB15AA120CC46CDDB4B8E87CAB579FD8),
    .INIT_6D(256'h5EF8B811D7F42CF7EFAF4138EA733051838A2DC0E88324118CDA6CDB5CEAC50B),
    .INIT_6E(256'hEDCAB9247123C35D024D1AC4A108AF682F566945715AC57FC42D301EDCD6647E),
    .INIT_6F(256'h8EF23BC595FF5B8F4F68A15835E2269AE83A0122DB3BCA0C4023A9C00453B3D5),
    .INIT_70(256'h588E57C81C19D967A928E56BBC24804DCE39988747EBBD8808968841FF35EAA5),
    .INIT_71(256'h58178AC91AB1B528530C63C6329F74C228F5CBF5DD34CB1F51461DC18F20E89D),
    .INIT_72(256'hF6E0978253A1CEFF082E53D0BBDE3094A378D1CF3F2BE57AB7E07096EF19A07A),
    .INIT_73(256'h11FA54201C11084B9797ABDCBDD6C735D8DC02BE68D59F39776C73898BA455A7),
    .INIT_74(256'hC9DC2351C4C91B63D9C6032A878EDAD802D5874101228DB7FF40E57578D5B1E1),
    .INIT_75(256'hCD3C5060DA2ECA3623950F7562653F80519956F58C9490A09538FFB38B108350),
    .INIT_76(256'hB1721AAD57FFB53B92028EB6CF6CD0303330063C441895DDBF232B5A23064D56),
    .INIT_77(256'h1C7A364989224EEF6030DE9623E6EBB858D754C958C50AEBEC7E954CF03DAE61),
    .INIT_78(256'hE3D032D11CC0511478247222BBF381EF4963A33951B17384883D2B100BC3B236),
    .INIT_79(256'h516791E1DA14EA69EE888F0D14883B0B1E4A31D16532B0A61AD7B97DE8EAF921),
    .INIT_7A(256'hBBF7D25092AD6B149AAAACA0D7C8B24CB95D2A740E75B5F1AC8D0F8B96AE95BE),
    .INIT_7B(256'h3FA5D767442E565F8C5109F7F79089358C83C22D028BCD896FD1DA63EA76679F),
    .INIT_7C(256'h33CFCE0B75E2BAD15FF1C1D1115AA180825F843C61C243B2EB98CE5ED002DEC2),
    .INIT_7D(256'h60CB66CC6FF773D7121AAA69BAE7CBAE4B12D31A855EF582B5D47AE46F38302F),
    .INIT_7E(256'h2352F7DECC51CBA679F7ADA934E7C64E4865883370BCDEF94BFF7965C6961F0C),
    .INIT_7F(256'hB58877DE5D2355341FE02E4AE457E9325C106CE90CAFD7B580445736777A5421),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized31
   (p_15_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [70:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [70:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_n_72 ;
  wire [8:0]addra;
  wire clka;
  wire [70:0]dina;
  wire [0:0]ena_array;
  wire [70:0]p_15_out;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1610096A011B284B4629707C71194B230F0C0A201F4B47484E4B35715B683F73),
    .INITP_01(256'h346E0367526E79186C56725B336F6C25087E63064A1B1846676D62480500744D),
    .INITP_02(256'h5F394151554F4E536B383E1A4310377A712B6527663972327669587D0C2F216A),
    .INITP_03(256'h3B32246E704A5C091822312B497408404A353E5F122534600E153C04023E6244),
    .INITP_04(256'h415A08134A50692171434B0B5F7C366F520A6A2332426C750857094259500C17),
    .INITP_05(256'h0C545B7E01116B4E765503563207705D214F21265D02317B542D082939473F26),
    .INITP_06(256'h1138172B44613B29245B3E440E717F2C0F1A4F550E37352A0F2464080755101C),
    .INITP_07(256'h522501603A34121A732A722B153F6A54112F312C036D3A45243648077F6C0B7D),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hD0B74921025462394F1DD761A8D452FB48C58EE7C20387FF2A7E11473D1F75A3),
    .INIT_01(256'h19D91DE1A42473976107D48EA25CE6F5EE5BEAE4B58D814CA1F08221D4D66430),
    .INIT_02(256'h31ACD8F0A74B2077D809412D6DA92970464938270ADD191F7895959A68028C26),
    .INIT_03(256'h44ECE42A90C4B823FB83E981A6EE53B6A90280138B7E7F8F95E5943830DFE225),
    .INIT_04(256'h88FF16C7B10EA543153EAC00BF2BACDB928F75B5C7DBE19C6A840F13619CB22A),
    .INIT_05(256'h8C0BE12214C10E72B6D30E3E9AC039CC81BB021AEB6C96DB1E8CA641E40CE655),
    .INIT_06(256'hDB682E27A678134D4A2318DD3BA7919B5F053D7833B080E157F2AD1BC11AA840),
    .INIT_07(256'h1E8B5ADEC4C6BC7B5B215D82D1B483D252A6543AC16F78B7E1C6C89067F55F32),
    .INIT_08(256'hAA45D5FA51542F86FEED0C9ED2A3EFB07ECE27EBDA972E0D542A7E911643D01E),
    .INIT_09(256'h4B5BFC0AD005FC1941920BAAF2F735851B8B53E0B8F2F154081DE689CCD8868B),
    .INIT_0A(256'h244983C2F1EA2E6B670683B13716EA7EB583F098930535AAA5C1897A8DCE7320),
    .INIT_0B(256'h7BBE456CFF20CC98673C44618A7371F82A79AD1BBB50893ADF5ED0AE89A5BAEF),
    .INIT_0C(256'h7E27308143D0C0BCEA262E3CD0FAFA5749D2E13BB7A3E1CE307C254D0FBB298A),
    .INIT_0D(256'hEF4CB1EF838E4FDBC5697B3DE0E43673FDEE180B3D2F9A4037F69A983F3BE111),
    .INIT_0E(256'hA38E2EB4BAB31E6DF595E23CDC1869F24C93BEFEFBAFF0609A21E97013968DD5),
    .INIT_0F(256'h61D0F6F3D36DA9041108D9B17B32ABA2481E70BA33BEB795859409729726ED45),
    .INIT_10(256'hE8B87E7D0E1BB3242996A240F7306F4314720DD459D237E4C2198C2AEB35D5B0),
    .INIT_11(256'h54DD104C7CDFED747064ED58D3016FDA10688D0F898AF3289C4FAFBE1DBE0B6B),
    .INIT_12(256'h2FC83615EEDA5D4C8997E73CB81CE03B5BF5F9D8B59EFBEDC6425202E0B02842),
    .INIT_13(256'h65C74D79C5E9435F07D1EC5E93C8492E07482B4F2E780950549A8A9522403974),
    .INIT_14(256'hB7B6B2A04C33B59F2E93AF845A102EC3C64A010DD0C7B556096ABEA54A257CB8),
    .INIT_15(256'h8D0448C78AA7D69E41B8D961BE5A024A10C606737A4CFDA659B1FE1155E7B3C3),
    .INIT_16(256'h4F80405E53EBA024C0935C20A9B1517B4C540DC737183EB216108A668454E0D4),
    .INIT_17(256'h625456D73D7724D822F2A4C23BCCABEE99AACF337E8CCE3D38606D78F9612312),
    .INIT_18(256'hB57ABE4A93B0716CCEDF8F631117046E84AC455AF1128FA42B092E5EF911F7FA),
    .INIT_19(256'hF4C9BF5A11AD2656874BF7DB3363FBFF4A57CCA7CEE652363F2B3A21BF45C26C),
    .INIT_1A(256'h716566487000D1A9A9D23A134917E6A0E10DFF16A6C97944B30BFE3DAC1EB696),
    .INIT_1B(256'h1B6CA30C1F46B2DE6F6547DDF71DC7D9B10B571B53F74D24B5765ECF79849663),
    .INIT_1C(256'hDD84FE2D2392A0DBB435325EE0B4B0669AAC059084F76FDC0C661952062A1C69),
    .INIT_1D(256'h870DD75B8D7A780540E5A6160F61514D49CDE6CC7B3F77AD128B2401AB76E9A1),
    .INIT_1E(256'h76F664C5A3D7936F76E496CD11C5B1BF650CE8CA504A5AA4E926B86763B3BB58),
    .INIT_1F(256'hC63A600BCAC7C325B677DADF8247A41EC5685CBAD3450075DAB39DF89FF4F32E),
    .INIT_20(256'h0024C8E4A8589CEFEE2ED88E65779DA2EB3398DE627C9A3872F97D5A42FD8F3E),
    .INIT_21(256'hC1447D2D65004ED3F0FDCF0A4FD391F716FB99F6B6A8A2B4D4A7AD0381EF7C1E),
    .INIT_22(256'h89F6B66C5E2391825634C7F8CE31C56D9F9E24BD0F5E9439D354C2D604C7E4FE),
    .INIT_23(256'hD9867E72FCF8D70F8E4A9159AB6DE6387953C5B382AC0CB7D86AE29F869E4A8F),
    .INIT_24(256'h24E9624CC9ECDE66866C1EFF61CB86C61EE37702FD7C48D365686F1FE3461EDF),
    .INIT_25(256'h0AF9A6E39B8348F473D2245D6BAF29D06CBA4C11824429B92C83145B71B14D2D),
    .INIT_26(256'h1A41760191530E1F17CD62881A525DB76982C45E7BA220C2B3608B5F0F6596B3),
    .INIT_27(256'h54B8DC6E12D7F98531F40BCD18531A9F01726F74F8FACCC5E82A5516D1242B2C),
    .INIT_28(256'h0E1C9320E034EF7FD0F51C956296D0183D60E7A90F4ABC061F9EAFC2162850B3),
    .INIT_29(256'h1A7344C3328DE5B4C2B85166BD717174C4AFCA50F6076740B8D0D51FF9B9EE83),
    .INIT_2A(256'hC66C340A34C4CEAEF23B343D7FF8C492120EEF4D08FBEEC86B587396C836C7BA),
    .INIT_2B(256'h99E0C5A057B1577A1DD29214C7804D6A553C376F60502CAF6F7FD07859A2893E),
    .INIT_2C(256'hCC36DF72E3767DFDA1E54E0B54B1165D8AC11BAFB3FFD82DFBCD1280E4D0D44F),
    .INIT_2D(256'h9692F33E601EB84D7B176EFE0269235327A9F80118EA7E516CB0186F46155F1C),
    .INIT_2E(256'h13D23542649F43336569968A846E9ABEFA3400BBE743FD85E443FE794BF24949),
    .INIT_2F(256'h6A8FFC407014B654A653ABBE0C19A2C3F9BED7765F6F68E615DADFD8C2F19628),
    .INIT_30(256'hBF55D63F11582878BCF33865ABEBC08C9D931B595AD4CB4BF67C0924A21BD94F),
    .INIT_31(256'hF737D20DB8BB83A35F8BF2730EA67E34E4E16B4040EF5C747DBB46CA23072B48),
    .INIT_32(256'h6CAE8A2F4E1A9FBC26D3CF154FADC851174022BAD3EFF8236B30831A35FB0017),
    .INIT_33(256'h93B727745920806472C13B012CC20B2F44CE0BB9F2FC8F7B3645668EFA8EEEB1),
    .INIT_34(256'hDFDB31CA049F6385937E9716E6CD3E07F27C45328EFE1AB53D83DF3371E564B0),
    .INIT_35(256'h8907B0391EF274C30B68719414F0D2B40383A74B1A808B3B52AA1FD86A03ED23),
    .INIT_36(256'h1B849F0774983CA126526DA0560A07A18B6EE880E74788D83CAE578FEDCB1D15),
    .INIT_37(256'h9EFA03B1FC93B79EC869AE2747791788148390AA7D1061A04FDD484B772DC38B),
    .INIT_38(256'hB8E1482FA3FCBFB9B44230C0C97354D39B86E8DF496C8D94D06E25635FE2D073),
    .INIT_39(256'h3BD2D80EE10AA0CF5DE07D1D810DB54F917655766A39DAF3FB741285C7766445),
    .INIT_3A(256'hAA098272FDD9A0FC0A3C1F6526F6F6F4AA2303F833E26C879A50C01FCF9E60FD),
    .INIT_3B(256'h34E9CF35D31A64C32DA5A9479F73BA7E68500391D54BDBFC9CD725E57A7C413A),
    .INIT_3C(256'hA883036814CE777B2A42148C1E0A88FEB297891CC0213A791C834FFC5CA07015),
    .INIT_3D(256'h9D11FC976EBA2488EE882A903977B186AA94F273F811186353210A399A77B0EB),
    .INIT_3E(256'h321641C3C8C157EFA5CB4F89365577A9080DEB8511B8F5B9736F4BEA649D02D0),
    .INIT_3F(256'hFDB179EB3AF4B9329A78B2AA9198139B2DA683C2F16D133BDC7EAD8598306440),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({1'b0,dina[62],dina[53],dina[44]}),
        .DOADO({p_15_out[34:27],p_15_out[25:18],p_15_out[16:9],p_15_out[7:0]}),
        .DOBDO({p_15_out[70:63],p_15_out[61:54],p_15_out[52:45],p_15_out[43:36]}),
        .DOPADOP({p_15_out[35],p_15_out[26],p_15_out[17],p_15_out[8]}),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_n_72 ,p_15_out[62],p_15_out[53],p_15_out[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,wea,wea,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized32
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hC0B3963DC4AED1A2DA9E88F4BC531ED015E5E764976B23336E878AE460990010),
    .INITP_01(256'h7C1E02CFF9D8DF894349D1D79066B187B2B592AA774989941313BB27FEC0570C),
    .INITP_02(256'hCCF806CB964313849C5E34DB326C419F3319B17136AD559490A92CB5309D9A19),
    .INITP_03(256'hA137BC30A6B2EBC355AA4D197D14C4A15CFE558E31292C90E54B57710601FF89),
    .INITP_04(256'hAA163826CB1DCB266C1BCF2BFA42E76A91CE842B706CCBE2618A2BFA6B2F2FF5),
    .INITP_05(256'hCF3BFE2E1CABFA8B9DCD13DCDB30E76EAC35795B12ECF5E88648D98953566A72),
    .INITP_06(256'h7642689F6E6F50F7EFCBB0F6D274F5A1A0F626E04258E8B8869350F492504732),
    .INITP_07(256'h27C52F815A4DA135A854E69CB642BE365AFEDC6FF111E2C3269A4BF362A4160B),
    .INITP_08(256'h094894B747091C3AACBF627570A2A54D11A5A2E2604E2694F8700CAFB57F0FB3),
    .INITP_09(256'hB2B1635AE70CF32B3C8FF63147CD283417A7DA1C04DEC49DF062F7A958248CB0),
    .INITP_0A(256'hD24C766E206C7B32619B62AAA091A818DB13C5BE432B0BD85DCE22F273842B16),
    .INITP_0B(256'h027653DB3801538060340A8792ECB8EE1B3EB2AB7EF0ACD1AECDE082FE6167E0),
    .INITP_0C(256'h140453E7EFE868C2353B06C6DDBF0FBC1D55DEE596D6629A86B15FD814322380),
    .INITP_0D(256'hA759F2337F5CD7C9183CACCA096BEE3BDC144DAF5AAA17EBB7F39E1021F60EB7),
    .INITP_0E(256'h93FB7A63AC2F65315B949C9CBFE1F121C03B872C3EDB9E99DDEF668A6A64100C),
    .INITP_0F(256'hB2EE36E5F7093CE57E94D24679C69F493F13A563FCED9EA07B22198924708B05),
    .INIT_00(256'h1ADF8E174843F485C7CB88BBBB227E912179F6DE6C36E3A0462BCF013210AE4A),
    .INIT_01(256'h3FD6AE7048D682B4EF4EB0E99FB8127835A598763B554E6975D618CD242A3D41),
    .INIT_02(256'hC79B8A8F931223A1B8BA13DF9C4A62FBFF30159C51B093A011353BE6D69DE944),
    .INIT_03(256'h92D7A33CE495C730EDF64843D4BB6B768B85ACC4663DD803EA8A7D4BC358A3CE),
    .INIT_04(256'hD9E7BC628A286312B513781AA944C424EA801A073483D0B97B4C0E76C3FC0EB1),
    .INIT_05(256'hF0A91AC98C0CDFE86170D10691A7CE7F0D5F6390C65DF331466434710E36FF1E),
    .INIT_06(256'h3AFE04191443D7E17D806C38941DF899785C27576094E5CC988117BBF38B86E7),
    .INIT_07(256'h9883B0F71AC37D39287DBED00F5BF9A152F53BD810F88E47B5AB0B190C15D82E),
    .INIT_08(256'h2FD5376EF8A7EB7E6DF09C3A4E45017FE7681C82144AD20B5BD7C97B277A1F5A),
    .INIT_09(256'hD350C472270AF1793D1BEF3D206A2271D3666E89C2B0D5A7EAD4A68E93CA5D68),
    .INIT_0A(256'h158877458FB2D7423F0724A12DCFF2B1D4B2A5060BF7FFD87CDA16B41B8818F1),
    .INIT_0B(256'hC80CF64050395A73F036BD2E2DF2CC452721178162D8AC8D22405FFBD1EAF38B),
    .INIT_0C(256'h9744E0C956D2619149F8520F4AC205DA8B273BCE96BD39A822B5E271E555DD65),
    .INIT_0D(256'h004E95270719ED5927933F811CB322D2792420E13D9DD7B640564570182064F8),
    .INIT_0E(256'h934339E2B008908059419BE03C8C1631C35D075A8766668D72C39C0B42C68034),
    .INIT_0F(256'h22C22F45F80E5C26757326C530FC1F1AEB91331BD9F9E3ECBA3F54FB4873472E),
    .INIT_10(256'hA0FB503FAF564FA4578C0900CE20EA4487F8C91423C2E8B780C04C63EDB076D6),
    .INIT_11(256'h56AA2F214719C4BBF0843F754E2F639953E6F49DFA75C9C4478023544FEBD90B),
    .INIT_12(256'h89DED555668E216F0E0D7EBF108A82F0690981AFBD24BF457E61FA7722637062),
    .INIT_13(256'h135FC61CBB00912270E993789C03E36E55E9D889B7B1F601A4ABF4F852332C17),
    .INIT_14(256'h78007E2576D5B888CD4EC54130083E21FC4D048C68149847301015FFA0257A77),
    .INIT_15(256'h227A9251A1902E364BD0AE29214106E41A87804BD60CC1A2EE17A429000F324A),
    .INIT_16(256'h8CAA6883396CC7FD44A73D3A15AD72FE42FAF1A13DCD6A6CE0FA31908ECDBBBE),
    .INIT_17(256'h409C4C59FD806F2C1274B00A7BBBA2F3CDC233383115B6B42860A4D6B51C9926),
    .INIT_18(256'hB4FABDC843AEA6C4C015F48E2E440669308A1496B11917010A340A8612CE215F),
    .INIT_19(256'hB981C4B74354BE7F280F458298AF5FDF21DA00744B3F9894B909160C052338F7),
    .INIT_1A(256'h8D90C4D312C529019F1B481A3E66A5E08503230DF96B2285DB805F3BCB458903),
    .INIT_1B(256'h1F6978ABDCD2866500A2D524A89354FE945872F4859421236D5CCBB18F9FD20A),
    .INIT_1C(256'hD0B31A2F5C3CC5FA775A916E9ABDB2A284CD8C72E08712351CAC7AEB5B89E0B5),
    .INIT_1D(256'h8F6B1792E370483A5B617C815FB73FD6B583BD91DB4AA495B0187BDD80CE140A),
    .INIT_1E(256'h8399309AAD80405101FF8F821E1045C8A9A71F55D0E344A02AD8361E9D525F3E),
    .INIT_1F(256'h90E060B6BC9CC4A2D801C7B951243467A362FEAF7D2100A92CD0CFFEEAE65EC7),
    .INIT_20(256'hEA3E248ABD3EC7056D9A9F19364B9C83589B5C2A14AC28C51AE0E1A191C951DC),
    .INIT_21(256'h92C484D7CB4FE189F0F2F3E2966B3840C4727165EE8698E4F8409DE89E7F3042),
    .INIT_22(256'h7CFF11082FFE53959CC7F018C2C05BEF513216B1A70D0C6551950CDC44D1EFFD),
    .INIT_23(256'h36AF2110CD499D87F8D5234BBEBE76EB1D30131AA3D45C1B22126D03F2618495),
    .INIT_24(256'h8833AD36339BCBFFC956619CFAE5FD39BE57D4127BBCB16CAB830ECD950E1B85),
    .INIT_25(256'hAA523A90D109C321CEF47901174FD76D739B013575DA0D51E525A13768B50EC1),
    .INIT_26(256'h806FE6E15EA2009BD80B19796D1E3E26F43471D393BE423EAF3470A6C540165C),
    .INIT_27(256'h9B3998DB2C7B6BE11AC3B7C4BB60E7A142F995AA03FF7042BA9EAB3BEA6A5A85),
    .INIT_28(256'hA0B7020EF68F128515C8D54C8BE82901740F79E22E050B189FAF584038461734),
    .INIT_29(256'h760D7F9014B2F36DB2D718A4D56161783270210F009D84A5081F7535B665EB19),
    .INIT_2A(256'hB2E045DCF5FB0C9DF1B3D8F37E6C6AF9E4736839157DCB7873758F0D0056675E),
    .INIT_2B(256'hC7D1B05EDEE4C17D9452012927BED1FE6EF8C1090F0002846A691D516A576F52),
    .INIT_2C(256'h5A9091F6306FE276968E5F75A0ED1FB64DCEEC9FCC3D6B787ED5985878A4D492),
    .INIT_2D(256'hB31913CB2935D54E536759F2227659D43FB055A2A27AF2B87602A3A49AE16B9A),
    .INIT_2E(256'h6E73870916A7B82D5F333F7BF4B24F4417116A310AA8AB399EAF049AAE46D08A),
    .INIT_2F(256'hF8A5CAAA01DC3F90E81F7D08EE55C6EBBEA7FA71B23B5A30211317D5B851084B),
    .INIT_30(256'h38990C60B7E9564E25356DA0FA71CF8FDC5A865BD7625530E2F5AC56DF150EA6),
    .INIT_31(256'hFBBF50F37C32E5B0E5426B8079E9BE3DDB250D3D009E66BFB3012E5127C838A0),
    .INIT_32(256'hE40A84611765DE5E7DAFF4D89205A47B6DB44485C1F2D2A588CCAFB3B2308514),
    .INIT_33(256'h6501B7A6D0941FB82AB9642EB9A0DF1CA9F0ABE974C03C1B4BF8DC0AA923E886),
    .INIT_34(256'h9E1099F78AF863FCDEAF4B1EFC23DAD0BF04EB851EB9D095BC6C8379B3B4F0E3),
    .INIT_35(256'h5956FECB5B96C018A982BDACC6C3307F47D38789FD31DB3791B71E3E4FB2B707),
    .INIT_36(256'h28FF7E6AC7B307F70FBA5F96908C9FB2BB5FEEB8695A7FF818B7A8FAC40EB660),
    .INIT_37(256'h89096FC79F893351E245BBD6A8DD88D04505586C1C3C3A0BA3332562A5A71821),
    .INIT_38(256'h4614956B83101CBBBA41D70E0979BA7D9402FDCB4089D696A2CCF93237414B87),
    .INIT_39(256'h0EFD568348027B36464231B261FBC62B683A7EEEE7C7FB6D7BFC0DB486BF9381),
    .INIT_3A(256'h51D78BD860BABF1839C095FFD6F8DB2564555721119BCA190C8DA3445836BDE6),
    .INIT_3B(256'h46C378409F23ECF008ACF067FEB8054AAED13FF7B6A530F3F214AC65FA4E6DC5),
    .INIT_3C(256'h8A94EC20D7B0BFF80A37A4E277EA87D98229D771A706F7AB144303C1EDEBD9B8),
    .INIT_3D(256'h358DA7ECF60CD0678473F3E0A415802C47CB02C223571609383B635CD1F386FF),
    .INIT_3E(256'hCC5CEAB2FD3E2EE407BA53B4F6C279356EDE61DF5C53ACA2B4A65D90FB060808),
    .INIT_3F(256'h625C3CA1D62D2D26D72A295F3FDAF129C2E015EDDCB09897FA4369F41A06C1E0),
    .INIT_40(256'hCC508124FDE3625EB1733E6836BD156A4C14C1151C0564C8146E5A95AEE4DE5F),
    .INIT_41(256'h5B725BA888BC70CD3E141FF357202103F887D7B6F72793C68BEA1F8003BD3DBF),
    .INIT_42(256'h66AD2CA37A4806BEF52A54A01ACB332AD1C84B46F3FD51DF74246C83C975F444),
    .INIT_43(256'hE956152F360F86673B764C25BEF3097E280465CDFB82A2BC5228CB7E50614248),
    .INIT_44(256'hB49DF1725B6625807DF400F930FA0E7C24F723D9BB5D942D4E02E968F6327F88),
    .INIT_45(256'h130DF59F049535900EA81C0511B77500E11C2D948BA1A965120732C3D19E051A),
    .INIT_46(256'hEEEA3577C4A78344BC98120AACDB5314CEB86550FDBAE4098A9DB68065DE1B4D),
    .INIT_47(256'h94669D7E4791DE012D0B213A0BF5F35DA1FB09B06D62827DBB142223C04E8985),
    .INIT_48(256'h4A1744C6031871D42A22A88795D313AE59FA790CB895E779F4B8F68869EC1601),
    .INIT_49(256'hB5EBAAC8C13F5CD3E11EEB8DF0D517BDE075E0BF69E665414BB7DAEF97045570),
    .INIT_4A(256'hE1E271830D7C1689D791B26A893455E25AC62847BF440E6CCCC9B691B24B7553),
    .INIT_4B(256'h99A0229EE3AAA051E908213A01BFB8F613A8E9A538A0F52F13F13239792B38C9),
    .INIT_4C(256'hBF4875BE7BBA1ABC356137C0B167DABC2C3F6A30E4F48146187C6A44A6E9A13E),
    .INIT_4D(256'h0AD0EF188420D70D974546C815B670FA48FAEBB500962E7A2481E821D38BE8AE),
    .INIT_4E(256'hBF31EDCEB3BFCF17E5542346E3E8836010ACCA8D51FF2E583653D54C75B22AA1),
    .INIT_4F(256'h8F5BB4749310148E37C4173A9D7889514A7F29C6FC93A157D77B189382016194),
    .INIT_50(256'h293D8F0DE164F34A76F050F4FC20399789216F0EDC5959069B984CA88F5C1352),
    .INIT_51(256'hB9AEBC9030A38007062DCB83705D07DD775B13E32642476E6E8253DD3A3EE07C),
    .INIT_52(256'h65576C304F7E4B459147DE4AFE94F3E1C12470780F20FA874387050126269A6A),
    .INIT_53(256'hE80BFDD29CF98D6BD7ED14C4167A9C5CFC0430DD6265EFE51DD59843451931C1),
    .INIT_54(256'h3DBA8502FA303E22F532BAEE78C5374775ED032AE73AC1E706A16382EC376474),
    .INIT_55(256'h854A6CCFA29336D3611516E43E9E19B7842F4A3CCBF93C7C9F02B3EC87C35158),
    .INIT_56(256'h58C39C2804B142C00F481BA1AFB45488E5EFCF15B450877F95FCE0B5138C4F99),
    .INIT_57(256'hF0C04D967A6E7B36D18CC35585424AD4ED1BAF5C47A482F6B5D009AE588BF699),
    .INIT_58(256'h7128AF605895884D30AAC431670975CCD0F006A8C1B36BF1E170D26031E964D0),
    .INIT_59(256'hA06B7552463BED232BF2AB397AA7D0E241A786F8E24004AF3A497CC5562BB4D9),
    .INIT_5A(256'h9FC27FE3AC77834337706352864DB3A3EBA2951DC0C407575402CCCCA642A2CC),
    .INIT_5B(256'hA8EAA96006B4116E778CA61BC37282B3BF355C93ADE0B878D05735CF378C1F2E),
    .INIT_5C(256'h61EA5F49352244B1C2F49C1DCDA058C20EA9C5A0D3D0D370C86E82382C36B90E),
    .INIT_5D(256'hE041F1CC0B45F6A32880BC9C4CD41D2CD7FD0FB78F880A55F60A4DBA231747CA),
    .INIT_5E(256'h6496BD903F153020381F7D1BE0F62A0E029978C9B27BE33AC1D940049361A5A9),
    .INIT_5F(256'hE90120B836DBE260984D361F546AD6A2EBF7AE2F78287D395C85F76C7244229C),
    .INIT_60(256'hE421D7392CAB50C05CD776E14D47E47142D2D1BDC2D96DDB08C8EF5ACFA3D35E),
    .INIT_61(256'h4621B3DBB8BE467D0C4BDE5F08C09546C77BEDB426DF0B3B3B7A89B999392FBB),
    .INIT_62(256'h292C6CE429091399C8DF269D718001BA9048A60986462A237BE88FE3533200C9),
    .INIT_63(256'h48A185B0D702F23CDDCF71D9E335F1C26CD3B10EC675AB63639FDD0920588C3B),
    .INIT_64(256'hDC4379E5782604602429238C705B3715B0D604AA97BE99472B45402B3045BCA6),
    .INIT_65(256'hC1B079659963ADE57CE83AB0A2EA710CF03FF17518EE5334448E6D20026B5DC3),
    .INIT_66(256'hEDFEEC238523157F0A22BC4AE3866D0404195FFEFE7CC328367E34E0FC8DDB5F),
    .INIT_67(256'h4CD0C1DAE0B47B18C364A1031E1EBA19A8F795E208E041D274111F15F2BA89C6),
    .INIT_68(256'h0269AE4CA67B8D42C308B5BA1C6CA691E6570B62B23F8CCD994C313FAF52B747),
    .INIT_69(256'hCD18C337AFED1EF7B984449CFA47AC38D67DD66256A4DC078267E66671B85FF6),
    .INIT_6A(256'h08B86379D2A8196379D03248C1DC78D24298FCCBE628B9858F83B9CD1A438FB7),
    .INIT_6B(256'h20B018F622A04DC16D9B0D402F7B952CAB2BFE344E7DE6B8144DC84AB00EF6C7),
    .INIT_6C(256'h6E2F431D1F9D9477A2BBDF6EDA3F0E674ED1D2950FA1EDC628C1FBF89CC171ED),
    .INIT_6D(256'h844790EF0276F7475703DA7028F96558C944521BF1FA89DE0790AC39F774B651),
    .INIT_6E(256'h7BA2B3E1AA0BEBB1A2333E71C1BF030E0234F361F75E51EA0F5AEB3375967556),
    .INIT_6F(256'hB982460DECAE6E1209B024B7DDFB6016A200036716B1362B975DD8FD60F94628),
    .INIT_70(256'h7AB10628666051252E72827E4E511F9AAC0229B8762F69A3C24B187E566CCB5A),
    .INIT_71(256'hC317AA9B85F4D18279E6EB43841B30DF1A1A4B4B472C109785D31F2B4CD2BED7),
    .INIT_72(256'h61B9BEE6ACD234C14C6713A63EB5C053BD5AE762804C447C30D8E6E29593E354),
    .INIT_73(256'hE8D8CB68FE331CAEED0471AA2B335825057CC2CD77A58F4D01260407869145C0),
    .INIT_74(256'h3B1F02B15B97F6887A579933A071630826A5127DD8603EFECDD50E2DB33A7E92),
    .INIT_75(256'hE30DB136D82AAAC7DEAC93A3E82E59D244E84FF5C2BF9060199AF181270B438A),
    .INIT_76(256'h68D6BF630B9376749D013CFCBA18A6C1BE0BEACFD522CFECC4D5745CFB2F07D6),
    .INIT_77(256'hE9403310ECE39501F90BFE90115B7CF6C2F6AE8AE11F05D50DD0408E9EBD9861),
    .INIT_78(256'h779A4D252FCD00B726CA9B55155DE37246D9348C41E67D18B0933C9E8EAFBBEE),
    .INIT_79(256'h7B000AFE91E97BC51677659A1BB4711E1B2FB1E512DE13C8F59B182DB4D1FAA4),
    .INIT_7A(256'hEBDDDC48684F79B7863784381DBA8325E78C14F6A8E038FD629D76C2FE7D9770),
    .INIT_7B(256'h8769C1C07CBA13AA4FE9673163E846752E5C27D28CA74702A81B6E94C05122D6),
    .INIT_7C(256'h238EADEE9DC6BEF3A0F455868BDCFC350835F5C212519CD8645762D95CCFC5EC),
    .INIT_7D(256'h967510CDC796F2296E96763A095C223D4F38CC54FAF706FB7B91D5231C8B6898),
    .INIT_7E(256'h8B0B08CEAC298DC989E8907EDC6D58F98C3AEBCE9F01A1183769FC1553F658B8),
    .INIT_7F(256'hA7B5D19C861D76D2C2BC2DF52BD19A34FAF6836E7FB67299CEDA06E59EE75C22),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized33
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFC9A2E83CE21DB065A3B2D30A94D5718E180A070991FB5E8D0C2B874BAD5FEA3),
    .INITP_01(256'hEC781D37BF5AE7690B03F9F796D87E39D414CBE7D92DB1A8F3E400897F79D88D),
    .INITP_02(256'h5C862B243C5336E6B415F233426E6FB0C85B8B816F879FEE4E02B9A166A92468),
    .INITP_03(256'h08310C40FA694477C9D759FC4188D1FEE54CB676443F658FA025FEACE0AF6250),
    .INITP_04(256'hE1BDFDFE323ED7E86FB5C8542E2E5ED24C7CD6DE5A9FF6FA9AF700A1F40EE2A4),
    .INITP_05(256'h30ED16ACFA055336B0BE9071477B8EB475BE3A025D795E52A8F923507446014E),
    .INITP_06(256'hC157825756A07561A4843924C4564CF9D4664D7A1746BA6CD5118FFE4467C7E7),
    .INITP_07(256'h9750BBD8B6759DE7817A345B5B4DB52C26AE2A3409C8B8EC280ABDFB265F292F),
    .INITP_08(256'h30EF93C717284099D372B1FB50B6C7A619E41625C7D015BB65886A099FAABE9C),
    .INITP_09(256'h12E180CB78A78CA3E687EA030A90722EEACF3252639EDEF44670E5F2FAEC6F97),
    .INITP_0A(256'h5044A516567787295C2CDE8FC0AB49B12F9EA7BCF6A35B3382DD049E1DC4399C),
    .INITP_0B(256'h644BAFEF20A012DB0E537AAB314E096E0DE226D7B05C09D48BC91B8D7E7F8F40),
    .INITP_0C(256'h55D516226440F2FFFBE38A0DFF3184AD7A01BFCE1732EF768C4F11D266354549),
    .INITP_0D(256'hB6338E55EA6794370AB446EB7D58707387D48FD6C8EDCA63A58F4DF6B53CDFFD),
    .INITP_0E(256'hC73E603ADC5A1C62CEE6C43133329E018E3C2D1D5A1755AE2811EB8030F0F0CB),
    .INITP_0F(256'h51402E9385B86177E9CCC42A67EC4BE27731791945680DC3E3FD3DBEEE263C2D),
    .INIT_00(256'hF9F903FE7FA1C4F90B611BEA513B692C992F76504EE9AF620F642861E7BC319B),
    .INIT_01(256'h448CE555B46CCC6D64E61FEB6F19815A916428E60822F58225C4DC39FF558312),
    .INIT_02(256'h787C538655888446907768897B20C3C6BB20BB124D129DD452B30FBAE4127C6B),
    .INIT_03(256'h70B26BDF556CF283B2F087930910BA2E6F7BCC13B36377D2897614E6B4CCD214),
    .INIT_04(256'h91B60889A4D90053A64598F82964BA82A0EBCD31D73876A74A5F2BEBF0465BA1),
    .INIT_05(256'h5CC970E0F2CE0EACB2DC14C9260C1F472A5D04C5C1471AC105D555A79FD97710),
    .INIT_06(256'h419058720C8E712913B4A4230C133C9FDB2F278107AB11BB2DE15C1D594C3435),
    .INIT_07(256'hC125A92997A7F77D3BB558BCDFAAEE87471CF828BE96F326BC6AB31FFFB4D20A),
    .INIT_08(256'hAECFEB168A01310F3F9FBC0A7782C15E1BA073753FE73CB6148A539EA02BC520),
    .INIT_09(256'hDE3157EACFABA6CCCD89C719EFC09C42DE4132665620224249CA51F6B65DF3F8),
    .INIT_0A(256'h636E53B941AC140F836E781E93DA31E554B8C2C9542E35D2155346745BA8B321),
    .INIT_0B(256'hC57DDFBD8EFC26142337A339123A59BF20218048D8188A61AA19DE296BA7A17E),
    .INIT_0C(256'hC8FF67D7563456659E8BEE8C908E9A507B679FA9C81505D6F5B1E454A637FCBB),
    .INIT_0D(256'h2F96D2CAE902E7D879FA3A675C446E33416D4FF9812BF27B35BC7D72BD102F82),
    .INIT_0E(256'h56DE165BCBCD6CA30148A258C02130F274C21EAB6E37C0CA631A42DCDB34D53D),
    .INIT_0F(256'h1F95D443F09573DE75A3099410F1ED669AE0CBE3BCBC84E84BA3AF6AB2911066),
    .INIT_10(256'h82558C3B6C13DB3AC124A42599E340CAFBA37DA2BB14BDD09FBACC754A498372),
    .INIT_11(256'h2D5EFE65608276130A55934738A5600CE862E1BECFADA2062E570D9ECC577669),
    .INIT_12(256'hE7CDD48B8FD8D6E8F0A93445CBFB4CFAF51F707082099FFE8DAAD47F0DE434D2),
    .INIT_13(256'hFD001225ADFDE6EAD9559AF9C5C851710E008DF21F79CE60B68CAB1667E3D6B4),
    .INIT_14(256'h056D09B0F7525E4B48FB7E5A058DF191E905D9DCB8006A0A63658101940329C4),
    .INIT_15(256'h5F067187C9B284201D4DFCFCC13C899CB9C302F1CCEB29FD464C0E6F2DEBC590),
    .INIT_16(256'h9B14467E50492A2CA1BA62DA7F42CA716F584ADFEB5748D6FD277139E54F459D),
    .INIT_17(256'h7FA85CD0562F010E3511123E3D7E48968AB8D9A4E66E0AE5028342B28E4F4FD8),
    .INIT_18(256'h8790468475942CEA86BB847D956F2D1F300843C1827CBA0241204C19ACAD7C99),
    .INIT_19(256'h9AA00722A872403D164209D2741ED3518795ABDE0514D39BFB4052362AEFB1AF),
    .INIT_1A(256'h5480EFD23BC01BF132F7C973E99D455F17D32D3CFC7563A7348B24D76C88EFCE),
    .INIT_1B(256'h97132CBF9C7E8061DBB46F957EF47AA8D730F428D2BCDD2E9ED44B5E34063305),
    .INIT_1C(256'h13E2EBBE06B68A3097B89FD781E6651B27251C4FC1DA4DF285065C42B1B6D471),
    .INIT_1D(256'h66D8A49A168BFEB025B53CF180F1C4CCF5DE8E1D31F31AB34B42B58CDBDB9799),
    .INIT_1E(256'hE18F77A175B0FD6C5B47E8C995A1ACD673E6232A4C9A4D1CC393E981E546DDD3),
    .INIT_1F(256'hA41DD1603B03EC9659F7B1045CBD044CC381CC1677EB2571E4A21AC6B7DEEF09),
    .INIT_20(256'h653B6626AF1B560C58768603F42EF63E1AA9125D9B9A783BE0EBEAE797508763),
    .INIT_21(256'hC47245EC33BF350B0B5E2381E861D91E2ABE31E506D9D588181AA9D29A151E7C),
    .INIT_22(256'h35A85440335BC67A6FC55B091DE9731D217B5627395AD5417ED5F20AF6AF932B),
    .INIT_23(256'h3221130ACAFCEE90ABA652EB6B8FA2C32B152F09D8ECF4FF9A21F58103722FCA),
    .INIT_24(256'h8B0C42310D85BCF9828B6E8646FB1F10E73691DA153767B9DDAE88743CADCD92),
    .INIT_25(256'h0DEDF695AF79AC46E004CE251151916F41EE3E046B0E3639014A4171C481AA2C),
    .INIT_26(256'h2DB586079CA5D6CCFDF0DA7EEEE8EFB5C3F4879756A8AC1B72B2BED0EB7AC123),
    .INIT_27(256'h1AE86DF6C7ECE6BF08A16420A53FC2D8BC66565D0349D8E1EF9215CB436D85BC),
    .INIT_28(256'h4CA8CEB25CC39E942351EB51E8740011DA11C8BE77F18BB591C5587627656709),
    .INIT_29(256'h90EEA1D89C09AC801E342C2907A98479FEE8773A2C5D5A0F4C64B0954F792602),
    .INIT_2A(256'h165EA54EB018E5C3CC26C8A6536646723E83F1B43D8E66A850B66D7AC74E7D88),
    .INIT_2B(256'h846A3CC591C7B13E83762CBA5D4F4DF0298624608301F5E4F15DBD2B97A45473),
    .INIT_2C(256'hF84BE32E4D0AD2490D1B64E20605A0BBE7D90118A978E91E021B423BB7F40B4F),
    .INIT_2D(256'h7C2A91A2BFC91B14481EDEF03ACF4E7FAD970196837ECC9F1ECAF93DD1F548F7),
    .INIT_2E(256'h837E17396A8C91F1FD0B91134BA511317D88D5BE68FA6408A633C32537603F69),
    .INIT_2F(256'hF667745885A185BAB055946D360C41718C1F0279E29FC3150E470C815F486605),
    .INIT_30(256'h15B17C07010A207F9CB2156A8A088DCD0440F91DED02D8638D85EA13759EC8AF),
    .INIT_31(256'h8FE15233A15AE372A7459A584BFCD29B7D257E7A86E3747014E6977B14554128),
    .INIT_32(256'h7EEF82E9A7F6334779507527E1C69401CFBAD2DEDC89A20CB747A831D82C7E3F),
    .INIT_33(256'h145C60140E741280DB086ACCD7731275619004919B1070DE2954E90FD1E2453D),
    .INIT_34(256'h0302FAB8B0A55511457D06C9C1E12BABEC4CD6C2D2EC1114D4917C42818CF1B7),
    .INIT_35(256'hD444E785F9857D2D3794CFE50C15593695F1B529DD2C15D3992AAD1D55A752A2),
    .INIT_36(256'hF24120FE52147E4B1A57B54EB9AADA4372A707360DAEFB512C6D05968A19C7AF),
    .INIT_37(256'hBD1B5ADC3D5D973A902A8A80D25D300739191A97C242FB86DCD7ECEF363D5366),
    .INIT_38(256'h24857AAF6D1604D7BDB0601B1A409BC666BECF2E8A41E7EB11A5014F44DEDF7B),
    .INIT_39(256'hDCA08F6BCD97A99A3D6A53EF75BBF600A1F523BDE21690BCB305C00B0D085ABA),
    .INIT_3A(256'h92D8CEA4682E554155367AF8C90324FA2B9A7D1E4BCB03CE5CC49291430D2506),
    .INIT_3B(256'h9E4D0E3AE48C5A68EC8AB5E14FB9F3678291FA6E1F44A924A23036D6E3627B5D),
    .INIT_3C(256'h06EA840D35C4BA6C98C1807A362DBBB39C8F7441FBC1ABC7EDFCB717E40ADCE2),
    .INIT_3D(256'h27458EB62CD47552BB54EE3F4E73F3F65061DA919BB846ED8E0A279655E4B99A),
    .INIT_3E(256'hBE0D98D8F8E07B2BEAD319085A89F6FD8158C9ECC542C2F7BD6DA1F84062DBC4),
    .INIT_3F(256'hBDE7376451B0FB128C2F42DBA44E19825A96E8367E1D9E06F4E63D1FA37D6D09),
    .INIT_40(256'h86F5B9502AC9900384B459F30B702A469C736F5638C0BAB51BA0CD8AFA1CC17E),
    .INIT_41(256'hBEDF69FCD7A138B47EA4F00B7D5E7E9E5502939B372494E00A2CD9A4E37376C0),
    .INIT_42(256'h7C78ED17CFBD8BD89ECE833E0AC63E73930A8D6F371351360B4271EB7F1CFD58),
    .INIT_43(256'h42BAC50CE892495A0B8B9816E06775242BF7B64475CF3502071DC90E56A5ED70),
    .INIT_44(256'h45B5E56EAA525F0154F1468D1E857798430F365191A5E7D221B90D974F49A1B3),
    .INIT_45(256'hFEF29605552EB197159A5A7B021041DBD5BF72DF8CB42828CF970B5E092553CB),
    .INIT_46(256'hFD7C2E04C7CD37D6C6CA5B87C64B9AD4CC80C63B48881BE14EA3B4A680F1431E),
    .INIT_47(256'hEF5FC2497A6B57F9CC0D0691778D85910F293DC88B9B87F1D5A577AC3EBC98AF),
    .INIT_48(256'hC86FDC119F9F5A32CAC27784757ED6ED9F9F1090DE6C40618299FBC6CFE20D05),
    .INIT_49(256'h35A277DC606C21B05912BDE256A82B9F055E4A6A45BDA2D1677AA2AFC2EF017A),
    .INIT_4A(256'h998118A9D305EDA5EBE697239F4D5BE35F5D9D2FDD1924249178F62FE5BFB2D3),
    .INIT_4B(256'h56D228B42705634643C7D043A95B6E8CA167B33842A78EF0706EBF3718E3C288),
    .INIT_4C(256'h54E05740B67BC0B4886EB80CB7E3DD615A04C49FAC167D5A9B9D453CC8EDA77E),
    .INIT_4D(256'hB8F90835DF4F6759BAA023C048C07F1BD84A126AEEAA9F398EA1AF02A5C62CED),
    .INIT_4E(256'h69351A5A58B9C7843BB8F99FB7BDBD416644967469A703B14D455F99AC18D0A4),
    .INIT_4F(256'hD9FF18ED262E18AF0566C3D513ADB6EA211FFA92355916AEB56EFBCA75C9CB03),
    .INIT_50(256'h6FB155274525178C0F57FAC0178C3E1147B55CC4B0FD2BDA46AF5256C06FA72A),
    .INIT_51(256'hA081B08EE0F61A1C46FC15A5ED279FE17024C3810C2BC64E0133128C4D488E1C),
    .INIT_52(256'h0A5537D8ED237107D13AD26B67D4FC2D43BEB19973AE0858C1809CC1779BDAD0),
    .INIT_53(256'hA69CA600D32008E77F7D9186BBC07B36007C6070DB7BA8A2E799349E4F4103DB),
    .INIT_54(256'h1E06694C41D6B10F5012533A50ADDCA55833E35C129180FA9D194DEC670392DD),
    .INIT_55(256'h465B83693026D6EB3D5968F286849D571D2BD8AA3861DAF1F962C767119AB292),
    .INIT_56(256'h234EC5CDCA4B180260CC1D95AF926A53366A0A788C24E55E09B2059AE291EC48),
    .INIT_57(256'hCE3CAC4CD1A64ACC2D490C938622F2E52033777F5D152C5A04DF3ADC48B8756A),
    .INIT_58(256'h564DE7E326275B81720FD8295141784FF1B2093F17BB8A52EA864F23A4516401),
    .INIT_59(256'h4373296DB3AD45F37924BC8CA8D412CA5B38511614193FD281285989069A6459),
    .INIT_5A(256'hD16FC73058397AE7F11E6BFFB78C13957EE00365856EB1A819CB00BD347C917C),
    .INIT_5B(256'hEBE3ADFD60F6033F0CEE08FF58895F07A3F94A4EFC32D367A10FB9537697A243),
    .INIT_5C(256'hC7580E0149910A100F94E4DE6AE4D10A20BAB69E7CAD6CB9D5C04C06795C4C87),
    .INIT_5D(256'hB8D1F6B51CF516A5EA6C7059EBEB7B41FC310FE04D589C1732F0A27DDE11E9C9),
    .INIT_5E(256'h12D55F84FE5DE02573F1A3D23AA9C92C79EE3D684A9937BF1D3DF29F23689FB2),
    .INIT_5F(256'hD29EE7041DA8FF4156869FC414DC62E28678B4A09F66B3232EB85B2077824F12),
    .INIT_60(256'h40A8C1028030488454B194D103160B4F96DBB02C3E20C5D88A317137EE866D6D),
    .INIT_61(256'hAC9B14082E3AF642BF7114BD30BDCA6F6953393591ACCAF0926E40EEE3105DE6),
    .INIT_62(256'h100EBF355A6B6DEEC3E5CA4518A683F0D3C6154E43C46AAEC3E3275E01EBCA03),
    .INIT_63(256'h6EE3B76EE95AAFBF82FCBBEB15ADF630F7B08892E4CAA77E4128337F9A91D89D),
    .INIT_64(256'h179E8A2B723BC92245CAECB46EACF1819CF91F75BC5987FC22FC0D738BB15587),
    .INIT_65(256'hC07FAE29D258CA6F2C446DE3A1C9A219A859935F0A442F3E7984428844391763),
    .INIT_66(256'h4DB2FE3918F17AE3A5CE4ECA6A83AF1A5A6A0D175A18AE76464B18D28D44259D),
    .INIT_67(256'hAA334C32A5A1F934C117B83C53AC54E59EEE24C672E367CBAE8D1A4B01FB60FB),
    .INIT_68(256'h507ED3D383C66EEFEB6BD3B17366FE5E5A1D079DD41E3C51FB95EC991EBEF445),
    .INIT_69(256'h1ACF6C51D9E31C9D53EA55F49632DA66528B9485DD3FCFDF7FB8947EE25DCE4A),
    .INIT_6A(256'h9436D78D39FE91DB4FB0A125E4AAD17E949CF2E0F9A9405B9F233157E2C9E596),
    .INIT_6B(256'h5169F0B8CAB55B7ECB57AE08BF2A65CA277E4F07CE5880D8A12C592F6853AF80),
    .INIT_6C(256'h018743D5C9B1E1E7FE822456D37AC177704E234CA821139B3954F0DD941B4C72),
    .INIT_6D(256'hBE73CA65D9775BAC6629275CDD277E18EF498B2EE651C2DD43E6639AE6A021AC),
    .INIT_6E(256'h31F79DFD07EEB6E192AADDCCBF394B05414928DB047269F3DC4C5F3F6C50C076),
    .INIT_6F(256'h29EEF48ACC5F3EC1B78CC207010B3303D1790C5A31641F7B30E9E7A8F8C4D200),
    .INIT_70(256'hB7FF69C6A30EDD8CEA86F2E965CF34C112CBF96C95ACBCB93447753DB8BAA6D5),
    .INIT_71(256'h38C3AC4C73494CF67F4D9694DD879878638F8F0C01D0658054F6BB22536B35F7),
    .INIT_72(256'h8CE6C5831D8FCE2989D2AC7204D813954C1757FC0AAA91B8AE7244821945AE9E),
    .INIT_73(256'hCFD8A2254D7C143A605BF3E815177932714EEB57DE878764B383C12F0F091AFA),
    .INIT_74(256'hE9ACD5E9CEBD0B39206326AEEC96B8E520762733D463172A946AA85307262B84),
    .INIT_75(256'h8C3A83328ECEC0CC0F9D8615178129A0F525F6185B0BBF73EA3B12182A14B925),
    .INIT_76(256'hB9CB218B9AA72A0B443DB03800CD31118C817BBAB331F1122FDF588B00264060),
    .INIT_77(256'hA52E220A18DFE3D824366D0C57ACE5C3E48062D926DB205FCC24770E9960D298),
    .INIT_78(256'hF80565AD3271C76022ACACEE9D0944A467B1ED60C797047F86281B671D15E693),
    .INIT_79(256'h583C92E919D9F08D008AC1B4030C0AC75C676882E39962FADE308821DF99416D),
    .INIT_7A(256'h13A536D8C2D0B79EC871E03BC95A99BF781D2ECA667151AFBB8AD2187CC9957F),
    .INIT_7B(256'h3748831BB4A0CBA95321E8608338E6525F6C1F4A214A07BC3B35104C137C2AA6),
    .INIT_7C(256'h56B63DAABA80568BEC62D5E99BF96D6F35670D7875CCF083B36A42A9E76E16FC),
    .INIT_7D(256'h01339CA877B19479C19C9034E0E1B65DAC355FF66A819A4148210EA3B6694AEA),
    .INIT_7E(256'hA2153EC1ABF7D0A9486E08375D70C7448E2D439C5DB8EC29E9DCF25D725280D9),
    .INIT_7F(256'hF9139C4BDE6679C46D6FA84A98AB9022AB800D3E196881C95D224534A1C063A7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized34
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    ram_ena,
    clka,
    addra,
    dina,
    wea,
    ena);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  output ram_ena;
  input clka;
  input [11:0]addra;
  input [16:0]dina;
  input [0:0]wea;
  input ena;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ;
  wire [11:0]addra;
  wire clka;
  wire [16:0]dina;
  wire ena;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h5114405054150504554500000451511010140551001510040441415010051041),
    .INITP_01(256'h0411411044154405005541501141515014041154000000100501150441050404),
    .INITP_02(256'h5400441410500545145050144155154100001511154404551010454504404450),
    .INITP_03(256'h4401110441110554101011145451544414444114155404500415015010401141),
    .INITP_04(256'h1014000145144510144405015511105401150004155504501445411515441500),
    .INITP_05(256'h5140441005511010100405554410414451015444404514041015101540114011),
    .INITP_06(256'h4554110451451051040045051005050455550550445014151154101445101050),
    .INITP_07(256'h0511111014111415410445011015514100055144540105004541410050051145),
    .INITP_08(256'h0500504410401540150111144051144054140514410145554545010111501540),
    .INITP_09(256'h4140050555114111110541555441455505100150545515551100515054014005),
    .INITP_0A(256'h1540111441014541544001010455154015505454101154415154450145454551),
    .INITP_0B(256'h4440041555555041540011010540405455550551400405005155551151011500),
    .INITP_0C(256'h4144015011511005505505440010541554451415145015150545451040551544),
    .INITP_0D(256'h5101055144041040050154500050141454405105404151050441051141014444),
    .INITP_0E(256'h5044045541540511000555155501554505011404015451150555555555144550),
    .INITP_0F(256'h0444454104041101150555510554510144150040400141114441445111415550),
    .INIT_00(256'hD96C7215D5BC0CB3800292680F2CF90ED786713B29B07C9823B828FD5C50DF84),
    .INIT_01(256'hB7071008F7950566F7B5EAECEB6A834442000B52E129641CCDD03F93CBD784D8),
    .INIT_02(256'h98EBD6877046A684BAB3A26D7A2F7C3C96B4C0D7A0A4A30B52C7765BAB7C58FD),
    .INIT_03(256'h5F52226DB866A813AEE0A2F8FBD4501083976191984A2D964C9CAEC89837E57D),
    .INIT_04(256'h81FB3BAB03700D08F185128FEC4F31A7E3B36D83571EAD046FA70B2C26B6B278),
    .INIT_05(256'h7E9669543E935E0A0A970819C0F33E1394EC5BE290603BF0B70E15BF98E9F001),
    .INIT_06(256'h04C97B4508754E342CB9F67813D08B78637A7E79F1A0072E137445D9A50B51DD),
    .INIT_07(256'h7CE2DCF632EBA80A62375F4002D7E0D7F2E76F805CACBE12E145B631738813EE),
    .INIT_08(256'hE387D4FA0524247277DFCF15C1ACAC742FF8CBFBFDB5F22705E6252E1B638104),
    .INIT_09(256'hBC1BB9999719A081311A569709A516CF5B5AD5BBDE778C15D80FEC9DA6D0314E),
    .INIT_0A(256'hB37E62CEB111E6D429A8BB056471D30D3B8AC30E6D8D9E56CCD982FC7C3FB4BB),
    .INIT_0B(256'hF83F1A36904B8BD8CB06F167451F83B71B2620F005B4EE40888CCDA57ADF9998),
    .INIT_0C(256'h7576C8CD91AC8958C6140330197028993A37AC08EFB56D74A9C94BAD361F9F27),
    .INIT_0D(256'h0416E548D5591BDC08998F04883364168C8362AE6531CAD714AEFBBFAEC2D0FD),
    .INIT_0E(256'hAB02648359EF0A911121BF6C3E7F86E3C1D496F1A8883103230A05F2584F75D6),
    .INIT_0F(256'hC982AF928723A0109B81BD523ECE9C7096E14D64C4230394DDD431774127C60D),
    .INIT_10(256'h1D6C68C00DF533E8CD6B7B6CCBE8DE1B678DE956CF5EDAB0C12C1A72D8363210),
    .INIT_11(256'hC4E4A19BD037ACE1956AF137544C3EC6C9888A94E855D767B4896E8DA5F192DB),
    .INIT_12(256'h088504AF6A0B5B7E7D2F85C8BC335E4EDFC7E4EABDF4370754C5B68C77698149),
    .INIT_13(256'h1EB140F8924EF2203C8E6A3D277EFAA0E92568379A998B2A8CFAC595C164F1C8),
    .INIT_14(256'hFDDB325022E69167E3E993F8D5B3EDD82F460150BBFC4F6DB071D32CF0B373F3),
    .INIT_15(256'hBD8FD3B1DCDAE613B1EC241BFEE4AED5FE16D537DE8140BF9A18DE25F252D03A),
    .INIT_16(256'h70C2B2B3035B9DCFD506A4506A262832DCAEB005142736DC60075420D9489039),
    .INIT_17(256'h3FDC031838EDE94EF8706C5CA8289A18DB7C6E76CC245FEA68DDC854DF43AA53),
    .INIT_18(256'h46DDE8876583A230D031371AA5648F6FBF894FD1A655047C76F3A1384B273500),
    .INIT_19(256'h7CC8731E62249637A0BD0DADB46476D95D232AAEC0937905425CF48F5E43C491),
    .INIT_1A(256'h2BD7848FC01D8B8980023A5274A0B115B2DF617A4B4E6074E999E4BBEA3FA5C1),
    .INIT_1B(256'h37AD6B1968B8F4B2031016EDF04440E37E3E16344FFA2136F991ECB762164C48),
    .INIT_1C(256'hBE7FF8D90AA0CC5B7897936A5150BCEC0D62717FA76F9BB7171414A332E4838F),
    .INIT_1D(256'hBED381F4D0CF18A976B5832553DF9A6BBB1102B94D5B2A104821949F2BF03281),
    .INIT_1E(256'h62E56E3B7E301EB511F0B1662CC60CCAB98F4B3F138A56316BA4EF1DD323C6B2),
    .INIT_1F(256'h2C5B785A0FE523C776C5553B0ACDDC5674FACFFC868A9C8752A2F26255B074F9),
    .INIT_20(256'hB4A57C2F637075C2CAFE2E8A5C38FA0DC234D5B04DBBD74167C940F78846DDA2),
    .INIT_21(256'h5549DBCE72C62ABC6A88980C9D66A0750E10CC4EF7456537E6A5566C5BEB2660),
    .INIT_22(256'hD3EAC8480B3D5549565F6D05AB8D823B0D3E6F6B119173764F0FE53979B65EFB),
    .INIT_23(256'h0D672707F5092C8AE44201C608A4EB18054B7577E121D328B20CC5F5AC834995),
    .INIT_24(256'h2C989AE568CED9AB2BC29A6FB0DC9CB19078FA4D056F813A1776366CFF6A2309),
    .INIT_25(256'h93ADB81BAE8280150C36E16252642B064001DECC2535CCAD9D65D4D3B3572359),
    .INIT_26(256'h414AEDC3F63864B55C9CE56CF8BC1EAB9876365125DF965C0CAA115D9263B319),
    .INIT_27(256'hEECC341590478B1DA8C85F7447CE49127C29E52CF326DEDDC40E4251A9721EDA),
    .INIT_28(256'h8673C562470997C1809013C4A266CDE190241937AE5E29FB48C074D55C9D8E20),
    .INIT_29(256'h8055FCBB53ACCC010894286985196880AC70BE3564BD950516B364B9723FB178),
    .INIT_2A(256'hB5394E94489794ACCE6DD66BA71D04B92D6D9910C5EF7821F3B4A39A781336D8),
    .INIT_2B(256'hFAE2CA5E7BDAA5C1F15ADC5BB1B09951057A8ADFB8DE8517B22DDFDF5C7FC1B6),
    .INIT_2C(256'h9655B180ECDA878E8610E5D6122696BB3830A40E306AB1C05B720FCD7CCA939E),
    .INIT_2D(256'hFF1CC8C4350188673A33510B29976686619314DAEE616274AD9D321BC33F2A34),
    .INIT_2E(256'h59CF25DE739E8B12986748DD793AFD43A775763DD4164D616C6586D2B38D88B6),
    .INIT_2F(256'hF47DB2A242317550DE666D3EAE63ADC4E130489C51CA6DE88F210D759EB1801F),
    .INIT_30(256'h7AF36885E91967DE9B468801226B4AE3E505F80611B91E2FB495216AAB5ECBB2),
    .INIT_31(256'hE4293EC4A3C20E6D8C810CC0EC9E30CF5752B3356B65325BF62C61C893E9DBAA),
    .INIT_32(256'h07EE805E9B12DA935334E732E10A9BB0844BF5FA22AA677F22DAE4FDCA35ED6C),
    .INIT_33(256'h2C455A7D92625AFFA45325C28A271612BC6EACA9AACFF63FB78B1B5E07A84462),
    .INIT_34(256'h1DFD326F4E32DD0401CF673719A127520C08E77742B943E5900ED75EF6263B28),
    .INIT_35(256'hC072C6CC84991BB2922BD66993B1DFECB1EA99239347D39429CBB2F6E900FDD5),
    .INIT_36(256'h08D7B61A17A8A4C9072B079E7EF2C06D5020951CBA5C9A905ECFD221F3E97C8A),
    .INIT_37(256'hCF0659AF2FAEB0FA72895F63957417AF89F5035102ACED076FD18EA521FB8918),
    .INIT_38(256'h418CA4AE4CC01105029D0D95C5789C71BFC5643592EFABA22A00C8AF6BD90C1F),
    .INIT_39(256'hE1E6DF23C0286EE2A4803EB867FA7D08A5654DB93D8ADA04720BE81CFF9F320E),
    .INIT_3A(256'h6EB48D909D9A2B100BA46C5788E281F2C144432884EF0A2291B3138D63B447E2),
    .INIT_3B(256'h33AB3B2AB51EAA08BF6DC158FA974AF1304B5497F58760AF8ACB40B43E7268D4),
    .INIT_3C(256'h6DDEDA43320C7426CF044BD53BF50AAD3E9B130A4FDA39B4478977A8D38DC7A4),
    .INIT_3D(256'hE63D0C5DB5F271170CB0E13DA6FFE13EB490A8493037BAE6DCC5F8B2612A3BE2),
    .INIT_3E(256'h18B8FC49B6EFACB6CF5209D0EA023C153514F2A2CA71A1A84725F3D3404CC438),
    .INIT_3F(256'h134E99939AA16A555B61CB279EA807078CF6FAA7770FF363D868EE6B932A77BB),
    .INIT_40(256'hC3C9CD882CDAB90325B4ABC94131E1C32C480F72D78CDFA8BACCC5B6B1DE2E1E),
    .INIT_41(256'hE2A8065CAEEAA07BCABAC708BE090953D52E582C6967EC47AF03F441EF2010E5),
    .INIT_42(256'h5CE81E5CE684885718DE8BF7C594CAA227D7FA2B56A84777CDC8EBA7E88BB377),
    .INIT_43(256'h67418EC66F6E7C8F6275011E05CB391577E7CE5055AE9B8357C7B24E288E7B73),
    .INIT_44(256'h7A1F0EF71DF22F3332B7F28CBBAC2B84956E865A2DF7180D869918ACC53593B5),
    .INIT_45(256'h62539A5A55590BCA1A2B5312F6DA737DF4E7A81B53F041E8375059D1A169E8CF),
    .INIT_46(256'h8BE558AEB45CFF5BBE52052E08F594D8453D1B371693AAC2921EF47E494CF796),
    .INIT_47(256'h51E55C0E2CAA4BF6E6E299D949E1F79A985EE6D90B70FE3684D00C5F8CA6E447),
    .INIT_48(256'h0689C947004B0E91D8E76C4E9DD101D9040E1E25AC40BF358BE6D333ECCD8A00),
    .INIT_49(256'h3F70E331C7640DE27EDA28F1163B394C3879E36A8C11DC0B593EAC2765D2D4D9),
    .INIT_4A(256'h6DD770EDB4B9B08BF069E14578F927FAC74B99F106B2AC425B0B66BB149B87D8),
    .INIT_4B(256'hAC841E3450399B635AE40AF6F4B0880A16456152A0FAE42A03936EFA6BD6369D),
    .INIT_4C(256'h5E4412C0FF1CA780A4DB6F5DC272778BA157E7CC65DBE50A881BF0876794403E),
    .INIT_4D(256'hCA26E2AC5A5B01E0BA510CD20D1BBD62C8FEFB4FC19ADC8B6E79F19B4952C0C2),
    .INIT_4E(256'h8F20F8B3D2FF88AAD0CE0F9A3EAB33250D89A8F8665E5063FABAE4F916AC81D1),
    .INIT_4F(256'h0D5241CB4E044D0BF3974CAD664C7A80D1D7299442F09B3E279EF9BA6E5F011E),
    .INIT_50(256'hDAC2146EB5F3B999E0562E332150245F9EA0DC11DDC53EF83CF4A63BE432CEA8),
    .INIT_51(256'h83BA92C1204BB6A38678EBC82BAF80ECB979D25FF9DE7BECBFC387D222C12B71),
    .INIT_52(256'h7E9DC09B9431844507CCA72741510B191C140E326F409F7CE968AC90D747FE76),
    .INIT_53(256'h7C99323E690600C62B91377B433850717C77920B554C3B13D070F22922B33991),
    .INIT_54(256'h0310A10F3E06EF0224F2486ECF8B3ADF627ED863717EE1037EDAB9BA7C41FF3E),
    .INIT_55(256'hE68A6BC0F6942C5C55962FCA720DD1215064ACCDD5FA99BC731593CFA57A234A),
    .INIT_56(256'hD3643B2777A51FBAAB72910EBC6AEECFA40BC491AB41CD906C1AEB62294675C4),
    .INIT_57(256'hD56B11BCC1F4F6D51E1A43F97CC82333FEAB46040D173B159B51143485D50660),
    .INIT_58(256'h76C7DA6E3217AFB97481EDE056C2DB7F34E12F7DBA5DA780B6A5556D80CAB218),
    .INIT_59(256'h749573BCA4BAE7CFE61F34D40B6546A232123363C39438D83A553F4D4B12901F),
    .INIT_5A(256'hE19D7DCA8976A2C4EAFCC7C5AE3C6209B284B227F6D71947EFEC84C903E4E502),
    .INIT_5B(256'hB6CE6353BDD543965DB108449DC091503E0D17C14B912B63E62737B6DFA95E5F),
    .INIT_5C(256'h8E462BD45F66DFD5B8B8081DE5D7182A082A948F527DBCE05289FBCBBCF44B31),
    .INIT_5D(256'h257E762EA2747A6720D620E56B7C190B3BA1A374FBF39EA205AFA7A74ABD1D80),
    .INIT_5E(256'hC5AC0003084FFD8FF5093A17B7D99FEC0F2958553DD3E4B7141F3971F42967A7),
    .INIT_5F(256'hB69B1FC028C3E0F65E94BC53B3B029666CB3F9FD9C3A055729A470DAD8C3693A),
    .INIT_60(256'h7301266D713928F1EF6F16443158CCB30B09A1F5A6284D1571B32467AAF191ED),
    .INIT_61(256'h66821A95F32910E2924FD231CFAC846A838D585B4F472C17B161FEB0CF0995B8),
    .INIT_62(256'hCDC8C1DA7D9CA9A9211A60C0A49173210493B085F0C71289091DA72DC2F76E7E),
    .INIT_63(256'h03CD74D27C6AC0BEF07F4122DB10256A8E61F29DEB524DB8430F24AE3363CD64),
    .INIT_64(256'h1C7BC89CA19874BB6DA999F0B882359F746B893F770D40D4B8EA55DFA2549416),
    .INIT_65(256'hB5E275AFE704D8B44BCC2930C3A14BEFF7F2B69E08D6DC78E860D48ED71995EE),
    .INIT_66(256'hB5F484D94D0884A17772D1052C7B047392D188CCEAAD0F72D7B9F2E0CDBE615C),
    .INIT_67(256'h5AA1D557EBA968B5BE9F85CBD04877DA11402CB46F4BA54223B2BEE61EE5ABB7),
    .INIT_68(256'h28185308E243599AE0C73C0E8B69C69FF8EAE0DE34805EDAA57BDD3FDCDFA367),
    .INIT_69(256'h9326A6159A45E50EAA7432F4C468B9BC56814785C59B774558ED01B9E6C93DB0),
    .INIT_6A(256'h7645CBD67CF3A2F0D734E7745E8D8B2D6353761A0772F8E4B7C4C0703C845E47),
    .INIT_6B(256'hF02A9A2622B5DB6400C722F467BB9EA8BA657238C7F319290332F371F2C74462),
    .INIT_6C(256'hFDA2940623B21A356DF6E61797E16F6D10F6776B6780B4844BD1470CC92EEB23),
    .INIT_6D(256'hCF6B66E9271285063F4DB435BD5BF0FB08D513930E5946B7D02A80995A822AD8),
    .INIT_6E(256'h3B596688A1E5EBF32E6C48076E651BDFFF6B178069FB4594427E5844C06AC1CF),
    .INIT_6F(256'hB00D91ABB6097E47DAB28D09279884723CDC88E829DA0C2EFD57AF08ED6AD66A),
    .INIT_70(256'hF945EC65EED63A879DC95D374FBEDBDCFBFE5F8DF6128748C4960AE8F3C81826),
    .INIT_71(256'hB09343124D094C0CD6CA030D55B8A626137762D3083C00F429F66F3B0638F76C),
    .INIT_72(256'h04C067C345A14FC2D415D9241F29BC14E24EAAD7A03C54A54E53E5ACD7DD289F),
    .INIT_73(256'h41591E737CAFF78F510C1C74B658DB2C0AF11E71969DBF190A05397D6EEA9B0C),
    .INIT_74(256'hC5F3CC37D65C218C0AA41115B29DDEB11DFEAC53310A046881FD75B65B29EB36),
    .INIT_75(256'h5B1D937ED6083BFC82334B83E479DB5B09B85188C55CC0E7B53411960A1F6318),
    .INIT_76(256'h8B8B94F44D3726CBDC40FE0D1192BFA37B9ECDF3EED5BD9972BDE0C1CBDDC34D),
    .INIT_77(256'h69449D7374BAF1373793620B07F5AA8649CD48BD13D9D6308573C897A62C15A4),
    .INIT_78(256'h69ACC1D248ECFF29554CFE8CD58813394611968B15A4560784193FD43F6FA2A8),
    .INIT_79(256'h6491BD7C04F99F98518D12E47758B86DC4C182E7AEEBB8D19B382226D84EB608),
    .INIT_7A(256'hA13620C22DA9223120DB9CC5D38D7C26563A497D50182B6CDB38A4E8B0868063),
    .INIT_7B(256'hB88F0EB03E731883FD375D57EA9D5CC989D6DF4B26FD6B2FEDC806B9E136F46B),
    .INIT_7C(256'h2B3C45D0AA4445A392D13C6601A70705DD403B72C209CA3DDE956354511FA874),
    .INIT_7D(256'hFBC2D4C6DDC9CE885C85F0BA94D7CAC7DC9833A5798C4C026DBF1047473D104A),
    .INIT_7E(256'hD11A70D158BB860459E3F8F5452F5BE5021BDEA29A8E7C24901C479277A65891),
    .INIT_7F(256'h7CACFB3B28B62AD00E7B874B76B43E15B69B7CB2E4A17253E70E199C3B4ECE35),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[10:0],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[11]),
        .I1(ena),
        .O(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h77F4E40652B46DD0C2D43E691B878EAD339B0D2540577AEFC046E0C6788425FE),
    .INITP_01(256'hA7FC19C946428196390AE1C58861ECEDA50BD974A1032A5F09C08C4E3751BED8),
    .INITP_02(256'h5E8731E21FAC9570FF8216E1BAE777FA73FFEC603F0480EE9D20091136054B7D),
    .INITP_03(256'hD27AB21552F7FD67C0D6B220FAC68A812C643BC2B92B91C05BBC1523FDA03FD6),
    .INITP_04(256'hE90353AFB99598BB11785B5EB11667989C39844E77C02DE6FD63C158578B1D25),
    .INITP_05(256'hA4F80CE8129ACC0F77E3B3A7D5588029AF8515DCBD0FA74234747E323DA55E50),
    .INITP_06(256'h4EBDD2A80655398F25BC438BAF6CFB76181D265D90F8567645CE8A403648535E),
    .INITP_07(256'hF5084D645395D9E188285CD4D0CD5DC87BA0D7065C1175598D4931EEDB5BD8B6),
    .INITP_08(256'hB4778E1A8867F0766D70E13F0F52BB1F94B22249570C8454309F588CFD5AFF85),
    .INITP_09(256'hAD2A512B746690F5A88D3AF2B01B958BB072C518DD4CAAD4D352D880179CC856),
    .INITP_0A(256'hC8982C880C1086BB7C6930990D12F11B84257C4065200E50B32A5EF71074F6FC),
    .INITP_0B(256'hF44BA407C538587364749DA23FB66362FD28318BCA2574F4795DFC8E9598692E),
    .INITP_0C(256'h4EC83652CB15FF7B750FF11703A68C4A5B5B4DD3BE25B4357B7A591E8EC6E3B2),
    .INITP_0D(256'hDDC0FF5EF659A95A51E60987704F4126F813C683E2EBF114DE269DC80D84A1B7),
    .INITP_0E(256'h587426208A4B3407E0C8F7DF4559B89B2319987BCD6E9138826213FEF184B5E4),
    .INITP_0F(256'hE84FA3A9CC47BD191D5778937C2DB7724BA432101343D86839AEB1BBCA7319BD),
    .INIT_00(256'hDB90159E75255D39A2726DAA486741390019572C8A83DBC8FAA3F3003FE4F698),
    .INIT_01(256'hDF6B1ECA3E3EA0230640F81A25537A05E58543BFF7F35DCB50CC426AACA3DFF6),
    .INIT_02(256'h6C7706A31666221312E4D8B2E6EF41740FC8F84C7C79F1F2442634F7A35BF2E7),
    .INIT_03(256'h35D8BF1DEE0B9E7E9046491EA6ABE75BCDB98D6B7EF7A76F0571475EC52945D8),
    .INIT_04(256'hA9000C9E243A6E0A13C982613247945A18EB241BAAA605EF557F5B40FD03E281),
    .INIT_05(256'h87A4C9666DABFC3921111FF41B2B7D026A88B5E01889B3520C5CAC2E7AEBCE06),
    .INIT_06(256'h92BE43EF8482A180CC35CF5D1232307425388E091514D1C64A23B96237E504E1),
    .INIT_07(256'h461A6706483184069FD41F4F333F0826BE02141886B3FC9BD27AD0DF24A07344),
    .INIT_08(256'h228447DEF4F524A423A540934526919A131BBA162624AEEB98D675D3853CB06D),
    .INIT_09(256'h6295628FBCEBAA88661A7821129ADF6386A3B6316D7639EE521ADEE010286A47),
    .INIT_0A(256'h5D25F2B16E9DD552C5E7C600A121DA953EFB12A11108D9D60CA74DA7778F2A46),
    .INIT_0B(256'hB6D631E5976B56812A0916A03390BB1BBC3F27D3ABC4D683AB14A5A3FB709644),
    .INIT_0C(256'hD253D12564EE9FE3229963E8C94ACC492DBFD29D022AD3D2D3A1F4D3976555FE),
    .INIT_0D(256'hDD76449ACEA56AFE410AFA69A75913D9896BAC9831F833929B657AFAF1F16055),
    .INIT_0E(256'h1A94DEF91BAE23526D5D5CDC2115F61C8044A8293D6C72B57354F185ABF786AB),
    .INIT_0F(256'h0BDDB89BF95689C49361EDBFD4753E7868E2E8F45116015A4BDFDA368F646F52),
    .INIT_10(256'h2B44713E4BEBB11AA00B27C5443FD1DD55E5C13E9E37FEAE20FBC9DA3105D613),
    .INIT_11(256'h4E4295F6DD5A78D2B50680D159E8C0D47369FF9BEB618D15EF481F6F18C6FC21),
    .INIT_12(256'h8D51D38B5B1BAB21A59CF67196817C68BE95C1424EE17E8CF367F9E767643E4B),
    .INIT_13(256'h1A1097F5013A30C26CAFB50A393E1415090D9994A3629BB30DFD265734D06253),
    .INIT_14(256'h89864C6174285BFB619C7400D8A04DF08D358741EE4C19E9C8B268EF76A852C7),
    .INIT_15(256'h1FB2B35A53DFD36FF4CE346B433044CB5D449F65A2A631D81C45DB2829C148A3),
    .INIT_16(256'hF4FB60BB126E5C976839B98669F0F68A05C63E9D1AAF1FB6CD64C5E8E7107525),
    .INIT_17(256'h4CF7BE679069C37157F818ABB5D36F395969D16580D1EDDF5F5FAEBDA76E01C3),
    .INIT_18(256'h6717B7C725C4BF8945ABA97C9520262AC89839E7F243A7981B2829F67DAB3E83),
    .INIT_19(256'hFB5DAB1C5A41EB188A431F57A283FBB9BD3016B1CFE7557DE90039AA8D92FA90),
    .INIT_1A(256'hCDA080A808332D3966961078D818436B43666450ABDAD8AF7520B195D92070F7),
    .INIT_1B(256'h9946E774A5F339CE57C386E5F5D5DF06E6BAEA27313D106AE758115AC19A95EA),
    .INIT_1C(256'hD5D3F3540B975BE2BB0F2448E4FFF14A2673617BD4B9ED3FD9DEF94D61272C8C),
    .INIT_1D(256'h3ED22F5C6D07611AAAB994C82E36AF96A6A2480E73451A539DB010D60076B71A),
    .INIT_1E(256'hAE44B63AAF305C0A72E0BFDACB8CCCED101F63F92DF43D3A66811E9189B5E8BB),
    .INIT_1F(256'h659B0AF371B92BCC1270A16B825C5A4D4A923A16E928146063305D6B58752B37),
    .INIT_20(256'hBD513CC15353C26109C9AA87C2F5A20E937D7E36D96D1BAA3BB7B4011DDEF10B),
    .INIT_21(256'hDE0381B504B7B250B09E29A9438AEF987E84DFCEE5AD35B11DE3C118A3D115E1),
    .INIT_22(256'hE6A9E07E489E458F2A91058BD152066DA2A35F5205E836546DC8B17B2EA79384),
    .INIT_23(256'hA189483BB454C6738E7544CD29C5EBE7243E23C001823F950538EF59F878CE90),
    .INIT_24(256'hF9DA79CC38C3EB7801952BBBBC13B8C1D19AB494885A967B12ED94313A2B7643),
    .INIT_25(256'hD4853EA768F7334E9D2CA409E5B9F78748A1A906E79B8611E6143ACBAE0063A0),
    .INIT_26(256'h9E6E492E8D201FA112FCBC78AFAE2B620CE66314B6DA23F1EDF2C4B50B0111BF),
    .INIT_27(256'h13C1C09BA8A02186C1F924D71D0B3AB14A8A951B925C4F04B4D1E4EB322438C2),
    .INIT_28(256'h44A0931BD80F8E3C33AD81A5CCBCB46A220F5C37C3230A3A375BC515770BA99B),
    .INIT_29(256'h9DEBA4467D153DD38626E7D2C2D5F41A2F98E1E6EC903D7348478E1C52D89308),
    .INIT_2A(256'hED11C27B8C2F3449E0F6D3A590E94860FE810F598BD5C27953B5FC50E2698C3E),
    .INIT_2B(256'h13D58C9B5F7DDA99CED5B14AF339A6D61C7CE4E5F878C7263B45F603E9FCFFC5),
    .INIT_2C(256'hB13B6BFBB723701161E869221D299FC3FA77C0E208847C0C207763256BE9808C),
    .INIT_2D(256'h59A816D2BC1109AA4973A4E72A9330356DEEE386E17B517A02A9C71BD025DC5C),
    .INIT_2E(256'h55DCC13D6B21829A1F178286AD7F97AD93ABAB6AA44EE55C72F7B6DEEEA0C42E),
    .INIT_2F(256'hCC1482F03BABCFA66AAE485CDAA9FAB9CFB942010009B9F2FA6FF9F3B4ECA702),
    .INIT_30(256'h9C2BFD1CE28EBF8C0F127DCAEACB334E201CB58A6D8F58F30770C6017C665AD4),
    .INIT_31(256'hA0F323D5351F6F830AA3CB946A92874066BC5565FE0760BB80B6BE1138B286C3),
    .INIT_32(256'h2876B311288ABFE04B113299EFA413092AFD1B48649454C5FCFDB6ABFB165EEE),
    .INIT_33(256'h320D8BCEC156B9F708D9DA63AC27E5B7C1F2E928D775A6263756854EC3183171),
    .INIT_34(256'h34E6C226689876BAB58856773772312324D2E5571A0C26B3782CDC0771E485AB),
    .INIT_35(256'hC28DF023B3AD3DA91322777FE9971C62407C1A56BF528BFFE91988F02D481973),
    .INIT_36(256'h269B265C0EA885B4A7F665690AA8C9C392938844DB5B14C3F2AAA283EAEC4E09),
    .INIT_37(256'h2363476BEEFC0BDE628B7063071A74DA22B12B8CDC108BECCF7429F7965DEA58),
    .INIT_38(256'h8F6B6FBDFE14C38AA9C89143DBE3EC2C3A98703ED181260567B1F955DD5797EF),
    .INIT_39(256'h2DCBC8A0F3EA8CA2B83C7038A6E64A6C8D113E812C0A15FA9326C1AAC0BA8023),
    .INIT_3A(256'h63E76A474FD452584F4E0EF53AE3D8132CED06ADA80DE4016733D6968E61748D),
    .INIT_3B(256'h7387FCA47CE5200E9B82C6AF041F68C97D25D0352920B71A28BBC08598FDC0A1),
    .INIT_3C(256'hEF5CBC7EAC4741F6748403FA85A12593082F8945930DD40451774CA7882AE9A2),
    .INIT_3D(256'h5DE2BFA7EBDA2A01C212FA383FAA54F774B4E31CCB537E1CFB328CC6E37CBE18),
    .INIT_3E(256'h989C39CBA5CED9AE85ECC69C24B2D183CA820EE8F2DE69CDBAB8EB148F5ECFFD),
    .INIT_3F(256'h0AADF0426D74E3C57BDF2F98B0AB9F4A0FE5AB27074394FE4D383352F75A72B7),
    .INIT_40(256'hB8FC87AD68765E2E317D21266A7CC023E34FF0D358C4E6B4B0BA79080F0AEC65),
    .INIT_41(256'hDB65926BF5A152221DD8542933BAAADD03497EFE673A76F6C740054A54C39FF3),
    .INIT_42(256'hC007E93BCF163A6971BFB24B85F5F9097D3B0E5A49FF0FCD72BCBB02030D159C),
    .INIT_43(256'hAC9B62CFAFFAFB60DED50BE7E9241385A039E8D5C764A1272F668E7570F172E2),
    .INIT_44(256'h0D8636898FE81E79D24D7D41871105BA3BD611B8B2CD4A25187CA44C566BA9AF),
    .INIT_45(256'h67DAA0315885A8EF95624DB7465038CF3FF0F6EF54379186853BB33800971C43),
    .INIT_46(256'hCF17F3C368BB17130F63056C32A52A31A5D9065B29D0F352770D662ED7A099D1),
    .INIT_47(256'h19F7BD5DEB9D011E42F0E6EB87658A1BDAEB80C05EAA53F97B08D3BCC0BAA359),
    .INIT_48(256'hD10DDF14E27EEC5B1A2E4AB9EC4A883A05BB708BBF97112BBD3FC1147D9A28F1),
    .INIT_49(256'h027B332AD94A66F355AAE70AD019C5C5341046953865F724C8822BCA9F3732B3),
    .INIT_4A(256'h50407C111944069AC3C17B0D8DDDEA9B9C47EAB9FD5991C8D069D30F548DE470),
    .INIT_4B(256'h8342ED26D1EBEBE85A0EAA7ABD9A0F41379CA0D8B804D9871B5C8B2AE70694EE),
    .INIT_4C(256'h7E5FA012A9611C007560D8D0A9F2898E2110FA25396A0DEAB62B0080DEA51FDA),
    .INIT_4D(256'h8F408F73AC3917B66D8115D67CB53703013D215D8D044E630649B8F27E27E1CD),
    .INIT_4E(256'hE868E7A5F7A4DF8FD3DAA511D192740BF02F9BEC7A1ABE356753C6A7213D0A12),
    .INIT_4F(256'h1EDDF5FAFAA0EAF96A1C0D07C605EC7C3BA71D1F587F64D922F2228A6884C1F7),
    .INIT_50(256'h274467DCEF269735087F1F67633741E08B382A75A424E213861BCADC9CAC5CF2),
    .INIT_51(256'h732193BF7B7CBD6C287518ADF8A31FBFD2F157563A0709760E73109C0FEDC7DF),
    .INIT_52(256'h8D9BE2D20251CA19372C52874F02AF23388E648274CF57C3D459133451651348),
    .INIT_53(256'h642843E90D8989CCE5F7B8146978F35A1912A39CC71ED16C14F090C07DE439F5),
    .INIT_54(256'hF01E4493203DC7ABDE85C895E31947FDFBB05B58CDC50D7605784A0155395003),
    .INIT_55(256'h397691B32AD3A7FB800F92019AE3DFD65BF089EC0340BDC6001CCBCBF7C5F277),
    .INIT_56(256'h5118A4F2CA0B261F6A8EBF5BD3950D867A977751552017DF67D4B24C44A603EC),
    .INIT_57(256'h3C85B9F3FEB6112063710F91178ED07D61A0D4F2D761C75AB22DB957055390E4),
    .INIT_58(256'h752153F94905C7FD9CED482D2614DAEC20AC17D6651207D096156261FC13D4EA),
    .INIT_59(256'hAC3255E1FC872FFF6FF0591136A001044957B652F590D41DFFC26125C2FB2274),
    .INIT_5A(256'h162400CDF6AABCE2E6187DCE41297920914278BB956390F09F3E3057EA81140F),
    .INIT_5B(256'hBF6C14C43137AE6636A3AB329480237B1D846A6E17F99241F40F597ED80A0AFB),
    .INIT_5C(256'h251DAB3C596AD80E898D3AA735F5EF2D2D4735F5F46B3A01DA5AE12475B7AB60),
    .INIT_5D(256'h575E7176EB8D5CE07393ED200174510831631AFE39F896D5D0F7AA5C203447EB),
    .INIT_5E(256'h7B86486A1F69A8ECF52D913A37DDCB8490C322EE333F0EB4CA3EFB2ECE271A15),
    .INIT_5F(256'hC6E192C8159EE825CDDC7EABEB9FA63374145AEE254EE6A76FCFA33DC6E576F4),
    .INIT_60(256'h5337916628094C2C0D0B692A4A257E95028D03773A59F344108F77C8E6C803AA),
    .INIT_61(256'hE5A44C93F6C4ECBA9F8C19EB73666B380A63EC1E954F4ACDC3904AC81A0105A6),
    .INIT_62(256'h8C7AA5724EC50F65E3E802110FAA6C526F882624BE0D927C9A30BFF486676202),
    .INIT_63(256'h724D66D3489566224A842F51950443E0B033C9AE5FDE3544E522839649515144),
    .INIT_64(256'h2EE5266800FB7B5D5A8C788D9A58A23D0EBDB7A0ED9FC0B44B2802A18C07878A),
    .INIT_65(256'hCA9ECF2A5394B0B6FD84D1035BB4A270F9F09814C1D3C1B5BC4A6A13153C5AB9),
    .INIT_66(256'h9E448EF08F18FE7314BF3E502B5C6B7FEF2BC0FF5BCC0A44D5B72514B2F3C101),
    .INIT_67(256'hAB43B2C7D79FD887049E9565DE25C25B600857FDC422B8E4470ACC3C4337D9FA),
    .INIT_68(256'hC405E50DAA530AF85012A682804D2A4607A9297FEFF4E3CCB747B7C67C777166),
    .INIT_69(256'hA412B8809C44D2965BD6D608EA886E34F692F4947D96917F4DDC4F231C19DA84),
    .INIT_6A(256'hBF3CDBAE6BA38DE793732091828B554F88ED79DFE43ED482BCBC82FC4769FCA0),
    .INIT_6B(256'hEEBCE00E8407AB6015A75859E4F279BBC9A0E4B7E703A3DD56BAAC96F64C2299),
    .INIT_6C(256'h528E257FCD614C1DC4DB24A37CF4A543808A207FCCDF217F7D8CFDC0DC131A88),
    .INIT_6D(256'h5396F472465E503CFCA12010A9578AE0C3338A4256A9704A3B60F4F16B2D454A),
    .INIT_6E(256'hEB936D4EB0A0690F3E04711661D4050D00251F85203078BFDF086046740E57E6),
    .INIT_6F(256'hB88EED3E253A0ACF1DA83341225BAD233709D9EEA4573DD86DD185ACBC155661),
    .INIT_70(256'h0DBDECE14E46744C79BA4849EAA401ED501018F1F3A390E6DA922EBA0924BEBD),
    .INIT_71(256'h48E4904568AE9AC5847230C8233AE1F2F80773426D352D968F6FCF6CE821F7F5),
    .INIT_72(256'hB30E2A831517D8AE1FC38222138B9CF68EB8E3F2893B7566CE20E4014C93CDC6),
    .INIT_73(256'h8BA0541B5467EEE12AFC2E3BA0C36E83998F245F2123A9F901FA4956A428246F),
    .INIT_74(256'h86119FE1386AF25549C6162D86F5390BF5DADFBDE4C6D51AF6EE09886CF6F75B),
    .INIT_75(256'hD812D619EFF05B4695145CC2219012E9009621ED1DF162851AFA317847CED4E1),
    .INIT_76(256'h4A9C15C8D60A958605862D516E4ACC428395EE9E75EAE36C771A1C881CBE2854),
    .INIT_77(256'h4BC983A1526B9B60A07D6886875549C6995C6CED6254AE2D3F430D6F248BDA19),
    .INIT_78(256'h209F00C6B6F1B97DA30444A0F4872D5BFD7E278FD91EE61F006DEA11C380A748),
    .INIT_79(256'h6D73ADDEF7A904DF02B0A896057CD2383A2562BDFB16F3F05595DB1D77A9BA54),
    .INIT_7A(256'hAB46C691014380B1494E00F2DC7FD2358DA31816AB13FE49B41852DF8987033E),
    .INIT_7B(256'h53EDAF3CFCCEFFB2BD8CAEA0AFCAB524A5426C7D02F54A67E195DFAB1FAD45DD),
    .INIT_7C(256'h1D17B48D2AA67B22AE944235DAAACC101FBB8F8D84532F10F27B8B1425E382A8),
    .INIT_7D(256'h41298CBEF0B534B8CA6D01F430E033359A99AD124265DD1FE82DE3E9072005C4),
    .INIT_7E(256'h1047AF58685956478FBB39C8AC3C58C8560637C37E96F888B64B34624520BE3C),
    .INIT_7F(256'h4A3067B1FF7B608D2CBB917A745FD5015543F34FFC636355A3FD2DB581711821),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h18E4EBB9FF8E2AE5E13BEB06C5CF727D8336024B5A9854F1365093762DA1EE43),
    .INITP_01(256'hF2F5A662B3C412F83DE63991A13BF1D525600BAFC69E93EE46A51447DB91F80A),
    .INITP_02(256'hF6527F612FDA013CDC59E3CAE0DA7022498DA822CBCFDEE31B6A77C02CC7A55C),
    .INITP_03(256'h8F01BFF057F25A00A55771B2727F570BAB53D913E6CBFD038EEDE441E1ABE5B9),
    .INITP_04(256'hCE1617B54F0B274DA08629BE64E439F4DDB1907C7C4C8214675A0E04A85FC26E),
    .INITP_05(256'hB9FA0F599A45267391AB403B6B08EFE153B3896AED55AF46E80DAE869C0A2B03),
    .INITP_06(256'hD6A8E5B2C5A8D9BAB75F643353DD8E19471DF9F850E5ED4198FCCD49CFF54271),
    .INITP_07(256'h0606F33F95158258F569169E11776CA79B54CD991552D7C6B07B0B8367A82DB9),
    .INITP_08(256'h8CF5D62AC213FD728E9D327572D6CA44C29B38D4260278912AEB47DA37691CC7),
    .INITP_09(256'hC29046076B6470132A50C24E59730EE378C325FF8449A8E15C23CF59DEB698A9),
    .INITP_0A(256'hBE6135781D0A4FBC2C336C92E291CDB08DAB33EFA0DCA0AEF5E4C63851EE614F),
    .INITP_0B(256'hD777D036ECDFD8DF40D68865D8EE5ADF3D0B80B803AB06BAC071C9EFF08ADDB3),
    .INITP_0C(256'h60776E2964B4FFF5D82FF7212E4E239BC0E3E222805E152E3DDB9156CB4C5C5F),
    .INITP_0D(256'hEE3EDB1649164BBBB68CE670239916EC364B682CBA8636C487475CF005C13493),
    .INITP_0E(256'h63DE00A7D91684779E984506CC2DD166DD02B5613D698F1346930E0243CA0010),
    .INITP_0F(256'hACD0CFF1C1982B6145EB65047EDC86FDC711F562BD987A4AAD30B6F405590E17),
    .INIT_00(256'h9FE3B4AC68FDF44C61A0434E126FA70D0746CF048DFBEF5FFAA6A4DE63C5B853),
    .INIT_01(256'h3FF6F6931282BEA1EE9289262F0342D768FB63F317200191E1E274022AA8F568),
    .INIT_02(256'h33F8CA6106DCD1490679FF88070A285560C68D2465B88F0DCEE6899DE104920D),
    .INIT_03(256'hCA69C8F6D61100E1563C8FB547BACED5203A8AB45FA875DBDC11595B275C8909),
    .INIT_04(256'hA3A0D8E417F29463BA070917538A7A4F9E8F2768A4485494657151378B5423C7),
    .INIT_05(256'h1808EA278EFDB610233680AEBDFEF115CBA9677D6F517589BAAC13A6A398D51F),
    .INIT_06(256'h7F075F44CA599094A4976D12B3732E83320C9F4762DAACB696E561DAFEB9C55A),
    .INIT_07(256'h7786CA55D578E3AB6009A3AFA6E22F92A7107E30A3F62B42F097D0E33A5E42CF),
    .INIT_08(256'h222BF30E6A14683ED7B50744A6171F5F1AB413AB2A5EF0646E65228820840C15),
    .INIT_09(256'h9F1ECB2453518453BF2C0BA79BB39C65278C637D990743CF8849B8E93BF4A62C),
    .INIT_0A(256'hDBE9B53E5B2CD8861C03C6A1C9DA88BBBE464718EE229C5B0F728D674197ACDE),
    .INIT_0B(256'h23B84117D9D32BDE17978640C7B78CD38853236DCDF98C0A33F76B0A1F3C77DF),
    .INIT_0C(256'h99FE32F66D702B96AE716073C30377EC55D9F91BF8AE5B2300D289D6D1377F0D),
    .INIT_0D(256'hD670AA9986488D41E9F3B7F0F6D7078948F92229A208A89A19F495D2FEB8BED8),
    .INIT_0E(256'h395D67B54EC9F837D87A45EC1620FE33D8BAF2CD4E01A20F4F2496E808B17F65),
    .INIT_0F(256'h13EF09DD53513980E5E7316451DC55C6C19CB765C70767E6327F76BB91177B11),
    .INIT_10(256'hF4452C5C9AC860015BAE6BCB4379358E3F9CD43E1751BC7ACB2700946935BD4D),
    .INIT_11(256'hF34103841E6F414E9EAC4E85283131F04CF0A7C054AA14278B76C985E1D63B22),
    .INIT_12(256'h2B7A54C2819BB41F86D71F198961B54C89663D263887163F7B281D236B0996EE),
    .INIT_13(256'hDE218839B658D67D86AC677A1444AFF6679B4B05585942647B7F7226FE8494D5),
    .INIT_14(256'h60F939A1D474E7FFDCD52AD1A3DBBA790E49EB164367BAA0624A6067CA40596F),
    .INIT_15(256'h8C90F250E53C1BC41BD44A4F9007CAEBE167BEBA74106708946E1A4E428B8918),
    .INIT_16(256'hC190DC63FE3A3B3E34C20DA576AD0C8F840E3137F337B142BC1312AB39CCE2C6),
    .INIT_17(256'h44618F51E8DFB1D9D3F8196E181E71BC7441DACDB8FF0A46F44F9153469D8917),
    .INIT_18(256'hE7A4E52E1C9A2193C17293FD6AA649C33B1A2DC88846491196383FEA3496145F),
    .INIT_19(256'h150109A6AC14AA9C56211612DB219C8F3DEA3331E63D6560967586760B0F3449),
    .INIT_1A(256'hD5307520563125585A3E5FB017A8271419D8F9B510DAD454ECCA2D66EC47A53D),
    .INIT_1B(256'h85CC2951C226F0C1995F79ECDCDEC7E4AA73D35C9C57E8464229571C64C02214),
    .INIT_1C(256'h7819890323A515510B735D8F3A1807156E7B2806F4E6F667E7AE686CAEABDF4E),
    .INIT_1D(256'hF5A02AB9A54C4AE49145DA3DB5905058BBE03785BB76A12D7777AFBD23A65514),
    .INIT_1E(256'h50B7A479E15184B2B2573083B1A4A04A95C603827ABEBF79301043AC0FEBE475),
    .INIT_1F(256'hE73D9D466A4E1B3D770D618569B027E54E7F18B28D349CE17BDD7A8FBF390894),
    .INIT_20(256'h245F632F764235EC9B9F2337F9F8C8033650A66F9E0CB1614C8DA4D05BA1E901),
    .INIT_21(256'h1665C78FB91FBE3CD89C7D91ADF177D0D2708EFCA7FBB557249D7EFB8753B9CE),
    .INIT_22(256'hFCAC3D1B96A2996A97C5D184155182197FAFA27BDDBC20EEFB4BB1B9D6DC222B),
    .INIT_23(256'h3C62AC3B968941FA03DF9977F5A63F1FA521F7DFD67E7F1CC989EEEFEEE764A3),
    .INIT_24(256'h972AA48B8F6F8417B8058E7ECA904ABB006E1CF649FCB7B173174E2EF56385C5),
    .INIT_25(256'h82554D3F57E6B24BDDD4C38863CE06162BE28CFCE9D26432ED0CE9DBF1A3AA0E),
    .INIT_26(256'h9E0D557CED07E6B9B711368666C64BDCC18AAE1997B9EF1876E179306565A107),
    .INIT_27(256'h4864AF78A80F34D484FD712D058B79D49802AF155BE9567DFE071D95219DE1A4),
    .INIT_28(256'h9E024125A742271481749EA90E5FF88356DF359B7EBA6AC9A6D6DCFD3874749F),
    .INIT_29(256'hDD202A4DFCCAA33115BC9D2A911EA7255C130964556881125B4DECE27955ABE6),
    .INIT_2A(256'h59DCE1BE16EF2D45F92910C721D1E413AA8701535C1D0C27636AD24A5BA627EE),
    .INIT_2B(256'h35E22BD68472AA16A76F9034C70B42446035C34735B01C7E64C29404212FEFC0),
    .INIT_2C(256'h56E54E23A783E4C43F57E46387F0D5C28F691808294116755D4841DE587E5866),
    .INIT_2D(256'hFC1DA37B5DE2590E405E442906D1A3C68D111912F82627EF29BA52EA28D061AF),
    .INIT_2E(256'h6823CEEAC53F848063EDBDA596396EEBEF5AB5DFDC7E4D54DF272CEB34800A92),
    .INIT_2F(256'h3FB71AE0891050581A3AF2D3B64F7661CF297CF12099C043D2039BFBB1288065),
    .INIT_30(256'h83B765D0D45A5748BDEBA4A18FE3E02DBF49CC23FBB1EFF12911C5661DFA44F3),
    .INIT_31(256'hC107E31ACEF015D0583B6E4CEFC5051947AF76DDD1C8C78360C7E0D97DDE26E6),
    .INIT_32(256'h9B547FB0EBBE0B6ECC510F853B633F606ADA19276BE4EDFE6FB4AC80930FE14E),
    .INIT_33(256'hC40E6714EFE9BE859D6A62FDC600095B5DFABF0930C7DB342290AC95A2E04627),
    .INIT_34(256'h2D2C3B8D4A876FAE85E98DCF98DA24AD735A658F59654632896191A7BA946AE2),
    .INIT_35(256'hD3ED61C641EC2E4CFAF1B631B677B3C60657437147838E30F5AC153B49305878),
    .INIT_36(256'hAE265907885C9EAF86E4158BC4332239ADF8E3DADC9998D04A2A5C9252DD0074),
    .INIT_37(256'hDD9E76F1D0C5EEE8B1B975E0AC820E8223F6E1D50FEE013553543E4C53EDE857),
    .INIT_38(256'hCAC3B172ECF8BE96E280B80962B32B3BDA968C3F9A76FC974A26F0568AAD2B1D),
    .INIT_39(256'hD89D44D173A6E6543BCA7F88AE4E562EE2F5A64E52AA26246E0B62F89274E4C0),
    .INIT_3A(256'h4A3CC621518CEAA02ECFA1CB74B80F7F757F450343680CC23695A711AB7E47E9),
    .INIT_3B(256'h5AE6C2E5CC3E7799567AB76FA3BCB5CD81D188A676C37AC3A8FD87D8642ED439),
    .INIT_3C(256'hD40B7D6B3C91F6C05E7A9529533005A912F2874B44BEE05E56CEDF0A2554EABC),
    .INIT_3D(256'h3A41096A5A022E88D96E61B5CEA9A788A1C0C77904AABEC9C205386C8E1170AE),
    .INIT_3E(256'h4DF6C671477E25E3DF21B293F3F791B97E6563260B3222B22708225A731E9DA6),
    .INIT_3F(256'h03FBB7D9193571BBE47D50CD99F74FECCBB96F99376D54EF4E0CBAEC93FAC2E7),
    .INIT_40(256'h1C09541FC2EBE7F60DEC15FF1C24A1252CE49103A9726A0723DC865C512151D7),
    .INIT_41(256'h9F6B776B709DA3700142A48B14360752723ED9FC48B19CA9F7635A727AC8E0B0),
    .INIT_42(256'h370B8A7953DA5F3678D1A24F1F65B50DBCF87B2D42E46543B3814FCCCE92B6BB),
    .INIT_43(256'h9EABDBBF3EC7B934EC4D3466F6DEFAD824E010CD08EA5818591A9C8C9DD5E7EA),
    .INIT_44(256'h3076896687436BADA4C27EA6361DEE224EEE00242F7E734ABA39EBCD0F482BED),
    .INIT_45(256'h1C6B2A3EAE43105501622BDFD8A6889D85A9670E03E0E6F5225064C43094C0AE),
    .INIT_46(256'h061B7B298F08ADE8769F1298D946EAC3EDEC071F16EE552735E7791E33AE579A),
    .INIT_47(256'h3E8279F9D8DEBD987D69254214F89D89F2ED25C8D27C419DEAC9424736B1823B),
    .INIT_48(256'hEF0DED79EAB833FEBB775D2D68B7DE90D4B2AC41A0CEE194116EFE1A8152660A),
    .INIT_49(256'h92AE0F61C90A166D021340CFAFC1BBA55111353EE90A4C8BD149EAD49ECC5BBF),
    .INIT_4A(256'h4B31B16A8BBEDC0061DF6A996C4D1567780F2D2A9AEA282926C855A2B4A5706B),
    .INIT_4B(256'hBA69EFE0464C78D0596E3B63B9D9C147339F2760F1C5F0E8B99C766B7FF1D22F),
    .INIT_4C(256'hC5632EF2951752603D8905ACC72F85DDD811C3DBD55A35736DC7740716DBEBCB),
    .INIT_4D(256'h92CEF170AE24D6BA2730B23ACA1D4F2018DB2EED514CD7428EFE06898A4127E4),
    .INIT_4E(256'h779DFB27D6885617C45BB15DE51DC4DFB22A788848386B6DC207AB9064F2A645),
    .INIT_4F(256'h321D4B965B7642D7C6DD3302F1F1B9B0E0876544D573A0ECF51BE7E26A9D0DCB),
    .INIT_50(256'h0636B5B90FAE70754B1043373784169D552B5C25A8E62C27BF5D1E3BE5713923),
    .INIT_51(256'h213922C3DF560C76CA5D1C5592C4CEFB6C76BC1B545C0099A5C84A0A09DFEDAF),
    .INIT_52(256'h50DF6EFED3C73BA052640CD003F212882155C1332001F5EE3FD9F96412FA39EB),
    .INIT_53(256'h5AE966C2A5D6FCB917386B85AF08AE401EBF89F321A9AC0C787FFA4736303A7E),
    .INIT_54(256'hC09128DDCCB9965604D537F75292F0D855A59FC5502D536FBC1150FE4F626243),
    .INIT_55(256'h5429B24B9909854041F601C6F503C55BE3D6BF7815A9B55944C88651EF1A0785),
    .INIT_56(256'hF9728AA457E5CBB5D85564550A4432595E9D984A22F5165F8E34622A00951B58),
    .INIT_57(256'h5A4868AD3CE6FDAF8DE452E889D05C0C3DF957E13BD0A48EB89120A1356153FE),
    .INIT_58(256'h80401620DB3AFC607E050D0FA75AFAECD2CCCA8468F4A491E9E6E2C2B71490EE),
    .INIT_59(256'h14C233DDDAB95C8194826C7245EA295ABCF3707FF7B7FB46632B8CD0C26D33A7),
    .INIT_5A(256'h4DA78599A1DCAC3090CE0E61CAEABFC74EE9DA5AA7CD97D1A0AA2B0FF93CE21F),
    .INIT_5B(256'hBC63D51F5BAC906ED469D48B89D0BA868DCBCFEC96CDE0B01FB2B87997E8CC54),
    .INIT_5C(256'hCE22D91DC72B7B51EE8C80CA247DC77D46184EFADB67C60ACBA2EBE2EE61CAC7),
    .INIT_5D(256'h431A5FF9C3CB44F5F3D5C58A3A8E6F88530D924CF25D16ACBF881E99BEF496B3),
    .INIT_5E(256'hE425C194FD262F80B15A7D975D48BC30B695DF2A9A624DDB725EA67C42790E20),
    .INIT_5F(256'h37E4500451F6F6F017C57E43663B31A011037C0365B53AA24E5337B2DBCC0F66),
    .INIT_60(256'hB135FBA25A119D2EB4F061C8140D4E46A583E7763D98486EE7A90AA444BF5D1B),
    .INIT_61(256'h60EFFFD03A1D8E43EB8F3A4AF65C96A5119F3F65DD4CDD8BE92615620D2B7AC3),
    .INIT_62(256'h641C2513AECE623C4D40E9344A8039008008F90178DA3296AA73D5BE1A5EBD7E),
    .INIT_63(256'h8517B693A9A5D35ACEF9D4B221AA9671661C688AE849A6B8FF1A2C75BFD6E47D),
    .INIT_64(256'h8016D01CA24C9317107AC6CE41930FFF37E80CF1841EE64855A7C803345EABF9),
    .INIT_65(256'h0CF0771670CFF6DE636203E46149D85A6D2E7CB72A36EF087C21A7165B8735AE),
    .INIT_66(256'hB18867F43E5EBCBB032D60CF03075073CAF97E2275CDE2AE374BD950382E64EB),
    .INIT_67(256'h898C2A64B81361F9D6D4E5BF547E876AB81832651073F826E6B24606C52D0429),
    .INIT_68(256'h5D230B95A03EBCC20F1B68DA37841D61134772FFCABC03318FC0E0311B15EFE8),
    .INIT_69(256'h5DA27410010C45BD3C34E721BE74CE02903E2EEBBA79B57F8F4931C8ADCB7BC3),
    .INIT_6A(256'hA4E7DB9A7494C908E0972DA899929202C2DC45C65DB8B8DCCEECB8D8D72DA4BC),
    .INIT_6B(256'hC3A0F2D0DC30234F3B109AB02BCB6DCD8757D8CFD039532ABE62B6BB31451DBE),
    .INIT_6C(256'h2906B4ED7C43DD319605E905173BDC8BCD53EF3E1C741E284F19AA1F6EBF0A96),
    .INIT_6D(256'hB10CEF2182204571D9A755A38A39A8A908D396FA31938D2D5EC453DEFC83BABD),
    .INIT_6E(256'h6CA45A7FA84FE75F720B85D682009A7A19AA6DACA1262181D77BFD7C9AEBCCD0),
    .INIT_6F(256'hE36E01575D19AEAC4A02B4A90125CED10AE23A72B6BDAE54042D27B5C5E6D8E1),
    .INIT_70(256'h958011FED45C8F5465AA2B92843E0B31628C3434A699D3099DE98AB05859643A),
    .INIT_71(256'hD4D335494255C28C98461ABAFFE1D9150D027651D8FD9C1E5BFF4E19760F3AEE),
    .INIT_72(256'hD973672C604AD7D81CA528A24599A0C6C9EB170D77A453687A083B63DF1FD47B),
    .INIT_73(256'h45E294EB3BE51C874DEB417DA62279511FEC0BE53DD92A6EFBBEBA12E40A5515),
    .INIT_74(256'h7256188374FECDADE1D0F6FBDD7F9EEF8BC86FC9C5EC34EC3BC7B82477982C50),
    .INIT_75(256'h1D4C9AAB3A88C099EE71BDEE8C6A16EBD39568FD605D47BB145EB84170920B81),
    .INIT_76(256'h878F9E66D0E4A00F53FF87FD4D6B5B3A291FC605F6782CA6C64AC3E7FDC8EE62),
    .INIT_77(256'hA9D5ADF24844AD90EC028FFEBD6F56596441F34CACB6AA9DEA4F2D77580C25DB),
    .INIT_78(256'h39DECB511965F4A0CA1FE04010E318336870A9E1EB1E5AF1287574A446D0064C),
    .INIT_79(256'hBD861F625EBD7514F5783F752CA2305F54BE81E27DEBE6C8F493F9BB18DDE3E1),
    .INIT_7A(256'h06530CB6716E5CA4ABA868F4CF8132AA5D0E0B0327027C50349E605FBBDD14DE),
    .INIT_7B(256'hA74AC03E5910FC76FD267EBEA9458EE468E55567B127B9CF358D1A8CD61C292B),
    .INIT_7C(256'h75D2DB9F04F71AF268FBA2EA3DCA1B16A488DB33A4FCE0DC4D069234435BD784),
    .INIT_7D(256'h9F21A50CE239017A0C696A3BCAC9816A4D232AF2C8342CC20F94FFA83743D633),
    .INIT_7E(256'h6F8B11446ACF8B8B95535B6FEA46F638159655607B5740C2CF572E56A25A2559),
    .INIT_7F(256'h6EA9F864239FB2AFF720E7369493CC19C86ED19C55C788A137CE20D907DD361A),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized6
   (p_115_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [71:0]p_115_out;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [71:0]p_115_out;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hF91A13455734F5718C06B6C534AB45DFDDA44D67771E55B3B0570ADD00633B23),
    .INITP_01(256'h518969C8FB8E4592F71C46484C3F8565A16E6FB3B06F4A2D886570FA06844989),
    .INITP_02(256'h5A4423C28D0BD2FEC3AB9334E1980DBC4CAB94A1F19AFA9BEEF663B8D627DA87),
    .INITP_03(256'h9258DE6DF4D550FCAC08CB12EA629AC8209F6DD405E9208D266D532067D8711D),
    .INITP_04(256'h429CAFD44DB1A6D43DAE7A4CEF0F09220D442C24DFAE9EE31D72CD35125C4606),
    .INITP_05(256'h999EF204F3BB71675311314930E38258E086F8C2CF1D2FC68AFEE3A757C4C7E7),
    .INITP_06(256'hF74A8F011FD2CEB8263D08B67D34F3E575956819EF980B7CAF30D1446443AB55),
    .INITP_07(256'hC6FA811FF20153A263853D4718BBCCA54D1E06735139AC9F828CDF2B0ED5E0A7),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h6495695516A40D6BD1866B14D99A84DC68CC86923A194A0111B4497FCBB56686),
    .INIT_01(256'h10E2C957D886F96D8B8D1BFDC6623C036FCDF168599D40247B8E85099EF24EFD),
    .INIT_02(256'hF9E5F272D0768A4084DB849FB3D9FAB43208F9146C40AC1E29528A7A3D6E03DE),
    .INIT_03(256'hBC8F24BB92B87B9F35D8E256FA2670CE24F1F8A17DEFFABCF55F11AF6FD811EF),
    .INIT_04(256'hE52E70685DA30F788B2E41619DC607CDD15DEBCE83609D6A02DB602495728C04),
    .INIT_05(256'hB655B69A7A0E9AFC6AEBB0E074DFB4344A6CA3F723E114A736A54292CD568E37),
    .INIT_06(256'h62903B1693694357D77BF1EF7FA88DB4B5D9C71FEBE8D7F640B2FA10FDD560C7),
    .INIT_07(256'hB5E0BF9A1957C3D1701A1A3560BEBBA1866714A2C66E245FE5DC9186E50DE935),
    .INIT_08(256'hA78E9A60DC9D2F5BC59D627F716D526A041F3DBCE81F7CB8FF6A9841523440DA),
    .INIT_09(256'hFB17BF6A8F155338A6DFE3AA92CF073CA1C855CE592E558901023C9E6813744F),
    .INIT_0A(256'h69F06CDA309A73CAE31E9CD94E4175628BAB5B6AD9699FFE940940A82BBD72B4),
    .INIT_0B(256'hB8525C50901C73DA460BB7FAD6EC442D67D2DFE26721F62A0900E7D89EDA4DC5),
    .INIT_0C(256'h162A3AD36FC56AE6BD42D15CA73AA17F1FDC2B4C427C5245BA31401DA70DD2E6),
    .INIT_0D(256'hBFC9D6FCBED62829E9CDACA7D7C3A4575A66EB5A49C50EFDF566FA94058B24D1),
    .INIT_0E(256'hD7901ACC4A4A646D7C5A6C736452FC1313249694A27998694DE9D49E77603FE3),
    .INIT_0F(256'h4F4138AE9A259E8E48DE992940863E26E1EA8415D2DD628A94ABBC1FF3C125DF),
    .INIT_10(256'h5B079D06F4D1E50074086445ECF6FE3460DA3ADB268F09B536FCAB26DA07ED84),
    .INIT_11(256'hA02A5FE03501CA380FF2225DE1140AFAE45A0CB0BB69513A6A5BF78D0C441D4D),
    .INIT_12(256'hF59D616CB6F0E7D31EEEC4DBB5F473DD810604410DEDE252FD6870099107EFF7),
    .INIT_13(256'h8B320C27A246D69912A83B3BE6B98CEE49FDDC0673AFD214060D0D22E0D791E7),
    .INIT_14(256'hBE1FBBBE4B8C019DDFA113771023EEA29ED0B98D606654B2C7ADBC4C4507842F),
    .INIT_15(256'hFB0A4D1B7068AC7C70734A1460C0222E13978156AD6A1482AB6AB7871075FA03),
    .INIT_16(256'h4D1A9DA2E4A4B72DBF47A470836A222303F64E1B4D95F707F7B7FE82FCB6677B),
    .INIT_17(256'hED4063014D3F780DEE916823DBFFA06C87CF87532041C05C97FB218E29978D31),
    .INIT_18(256'hC3BEA2C32C19FCB931C890E29E8543637084536D5F320D282FC52423AD1FEFBB),
    .INIT_19(256'h1DF6B61A29695150806F1B85C0FD8CA968A15EE989DDB308E88DAABAC21AF6D2),
    .INIT_1A(256'h0AD948D7BEA11D33A25DFEFC8D779F121371C314CD6B50997A6F56CCDC56DA43),
    .INIT_1B(256'hB177D21C6A3D9E0BE57D093FF998221E11CD2BAFE90C3FB453EEE80BF13B95ED),
    .INIT_1C(256'hE5F1E534D385483D80DB668690376E969BE222B6011101C4E407B1A013EA5216),
    .INIT_1D(256'h23FC864699E865A8B76B8C1150EB4B1A3C3688D806C3EE1924A68DBCF0FC4450),
    .INIT_1E(256'h7C0C2828FB49568BA78C12D3D384A7D2592028CDF4C8DD2916778B2B0471BD03),
    .INIT_1F(256'h4773284AD08C537049AC9E200C774889D37B2EB753992E63C468D0C8EEAC31F7),
    .INIT_20(256'h59F5F53D67AD1533BE7E0A450F8627BDF50D4F331CED8B2B67B05F3F5A886486),
    .INIT_21(256'h88B47B31A3A7EDAD6DA26C1A718586E3256E7F348E453C55A26ED33BAAD59C30),
    .INIT_22(256'hAD17827E346D6D2A08F20CC03BF3CB9B236D2FE391560A2FA5C1A22DA8AC75F7),
    .INIT_23(256'hE45E30D96F1F7A71D693C6E8A874C9DD7B47E84A18BF33200C9F203B26866C01),
    .INIT_24(256'h0BBEF43ED8DE95048BAE875469A111C47B0D43505855223B6E8E83DC6203FB75),
    .INIT_25(256'h80A34592D7456225722CF464027DB09018DE94A37D2676682DCBE4332BA786A7),
    .INIT_26(256'h8D6E02E50787BBAFB1D874ACDF8F64B121A79E0B09BB57615CD52F8034E8E62F),
    .INIT_27(256'h4ACB0BC664603741ACF02337A700D29F21D2C4202706C5AB6214719050964C4C),
    .INIT_28(256'h6186E9EA5B61BA6181A950E96E2F294235E95E5E6824F0402DFBE2266E1F4B50),
    .INIT_29(256'hD92A0004D02E838B1CCFC67FF97AF9D1FD6021217D91AA148DA83789CAAB09EF),
    .INIT_2A(256'hB44E75F38925A47C1F18A13B49EC0CC7870E5D92FA207F29CADAD94C7421FB04),
    .INIT_2B(256'hB11ED16C2AE08A0921846A35FD256C45ED621212DD26FB1281BB1B4FAF8491D3),
    .INIT_2C(256'h0EA0BCD59CD915F9D9A4958349F03B94BCAAA063A9824368AFCBDFD78F24C3F7),
    .INIT_2D(256'hCD95D54A2A11189D4C4D0212283B374A1330AB793786C48A5056D98C745664F5),
    .INIT_2E(256'h20B98FDF46C7B92AF3F914A634CE9A6FC67EC156F8545B1612AEFB16E5A1C4BF),
    .INIT_2F(256'hCB5820CF425EC6438EFC01003EF13C3E064A336D7B4A2DE62CEB182291E44BAD),
    .INIT_30(256'hE236588898539AE9622628A5069A0712ACF661BD40253B8EE42449B6F4F966BF),
    .INIT_31(256'hAC7864BD0B040F0FAC1F021B052C53EF464CBC5E1043A767B44118F4CB25D9D9),
    .INIT_32(256'hBFF4CED7C94048C82C3BD2452AFCB56E5CFBDF2E97714A26C44E7C78EDAAF77E),
    .INIT_33(256'h94E14ADBC0F1423363E8D8944CC89BE04482466A4EEEE5B46B495164EFF3D362),
    .INIT_34(256'h60DAE47212435A7F7C5D1F4731C8F78AE4852AB2A95BCB73D51D7F13821D881C),
    .INIT_35(256'hCD5AF7C129B96EE42B35841E31CE0F11D8CF6923CF2F75D118558EFBCCCA6832),
    .INIT_36(256'h1CF3B192ED17A9D085BBC43199E4403B5FCF07FD5186AE469A2612E88691D859),
    .INIT_37(256'h60FCA1A6805B5A2251B6BA6FB550749A388EA1EC1E48211DCFFC6999C6885387),
    .INIT_38(256'h833FDAE45F28B0662123865BC31697955104DD0168084F84BCF3D25007590891),
    .INIT_39(256'hB1D49048CDDF78DD3AC9C5E13CDF675AAD9278EA5C0C55BF14B80B376359287A),
    .INIT_3A(256'h007AEADC97F3112A8706A6F095C0FB239F65E8F59EF4A719812B26350533827C),
    .INIT_3B(256'h8FBA5BA24D25BE7993BE359B1E301254301AD72929E60ADFEE76B86C21AAAA27),
    .INIT_3C(256'hBF816F7C838F1BD8C9CE84323068D3507693E59EF3C60883D3252E51D5BBB62E),
    .INIT_3D(256'h9074959F2EE33CDA6B2F0605C9FF965E29A6906B51C87DA06176F9D9B2DB429A),
    .INIT_3E(256'hCBF3E7BB232DE812C5B7A22D98AE5E37745D164B0DFC430F05A386EDF08B643D),
    .INIT_3F(256'h42EEC4DA167E22E7812ACF5417B904A552CC0C4A146B62C4CA92CAE6811832F6),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({p_115_out[34:27],p_115_out[25:18],p_115_out[16:9],p_115_out[7:0]}),
        .DOBDO({p_115_out[70:63],p_115_out[61:54],p_115_out[52:45],p_115_out[43:36]}),
        .DOPADOP({p_115_out[35],p_115_out[26],p_115_out[17],p_115_out[8]}),
        .DOPBDOP({p_115_out[71],p_115_out[62],p_115_out[53],p_115_out[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,wea,wea,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1184B11FA784F09F04B991029B259E20B3602770E8744E2E213F3499E4E9D08F),
    .INITP_01(256'hDB0090C4D974AE772B016EDD77E4D57298F8D38CED1663E2279E8ADB765D600E),
    .INITP_02(256'h1B9132070DE1F4949CD2084187618939BC210996F126EF5BD5A72F5BA415A432),
    .INITP_03(256'h3188A92EF0C46B64751475088FFD363718EFC8D749A424CE646D89558BAE8E72),
    .INITP_04(256'hE1117A65AAF923C8E85A1000D271D11F935288D58943629398BD81CF5427E0C4),
    .INITP_05(256'h61C0A7B1C555E67E0B50625406859CDCA1193EC8578369F9319EC9741FC54D80),
    .INITP_06(256'hC478734981136C1CFE1220D7F30F64CC3C116CD8498315E96E8EFA2E8144E029),
    .INITP_07(256'hBB686857A008EA4F7CE45E5CB4B193E217E43A1D0B0ADD54FAE6A9A32E05A9C3),
    .INITP_08(256'h9CB22AEEAAD04D594C8809E4579DA08E07AF9CC1133090F6855BFC99A4C0A0A9),
    .INITP_09(256'h76E004026EC28C566F90C08383F155665955588BB545343F354E0C19539BA9FA),
    .INITP_0A(256'hCACC4A13245E646C31A25D3A385FE4212A274DC33516F6285C6C97B3AE0A5897),
    .INITP_0B(256'h8D654E368C2CC996B8CC0719AABBC54F117E9D2114DBD94EA3B69581EB8FC53C),
    .INITP_0C(256'h5457CCFE1B8E992609FACA5B96B78A078B52ED48F6263122831F87D3BFA3712E),
    .INITP_0D(256'hF52EEEB89AB5B76348DBF0EDB8DC89B23CC56B41AA0D326F09CF6C14303BA9F3),
    .INITP_0E(256'hA1EDA5A36A51F1DE8646F32BC3DE0347621F2F81D0477604F8F6FE6410561E02),
    .INITP_0F(256'hE4A38FD81112D58E281372C32F1DCB34A5DB9772513271893F3BFA16A1C8E16D),
    .INIT_00(256'h3E7061BBC9A910647EFD97AD6DEE2F2F989C0B248C80D9E1C3244A0A51E9D0A3),
    .INIT_01(256'h652244358170BE008B3A8F6D12EB62E6AD4228B442DFDC99B5FD3F736669A67E),
    .INIT_02(256'hFBB6090A98E99E84879C105C5349DA7C8B3081B481068253BF60749A7B77CF15),
    .INIT_03(256'h5323DFF654FAAA14F1A4C3CC468E2B713F1702FB43BECE100A526ECB1F9E4F92),
    .INIT_04(256'h4F4EA4BB68CF0A8985B9118A06CA44DD96A4113920D059EE4CF4CE877762D516),
    .INIT_05(256'hBDC3E907EFDA5DFB8C8E80363B5B6224B7EBD6405ADA84F2F3B96007E727E1EA),
    .INIT_06(256'h7BA1E3E13FBB23BA02040FCA983FA80A86DD3897A8C74FF0BAE0E09D35384CDD),
    .INIT_07(256'h1438705AB4E7A07186622DBBF8228BDD71FE28E6182741C4A71C7FAE565ED969),
    .INIT_08(256'h7075C442E9271E6DBF7683BC77B726BFBC4FF8EFFFB7EA2EBCB11F452B7A4D31),
    .INIT_09(256'hAFECB2FFB805E632E2CCA07BE6FFD73035DD378FC6135FA3C1C7360E5EDCC990),
    .INIT_0A(256'h28005131F9980FBB24A0158D002C5B2A13FDDE9CEFE2980EA2C980BBC9AECBA4),
    .INIT_0B(256'h29B1D12D4B65AFB54FDFC05221B77D4099B8A07B978843B3F23E3BBF6E2A8CDC),
    .INIT_0C(256'h76FD321CF2E572D369EB8B926AEE0807D34CAD75C4ADBB33A05EE14B87FB55AB),
    .INIT_0D(256'hE66668925A5B739EDD09B7A980E25525CE614BD56FAE9D19E2B4688DA38D2ACF),
    .INIT_0E(256'hBA806CEBAFCF48B65CDF6643A61E62E182402288543DDABA39EF78516F0E9FD1),
    .INIT_0F(256'hD43CEB36014DD00ECF1871ED850CDCD91D736063274D6485D1213A92B27C56CF),
    .INIT_10(256'hCBF53377FBDAAEDE8D8B1541DEB2BEFCB83202C7083D2B6DC61996BDB8C7B2D7),
    .INIT_11(256'h7FECA71014193A6DC7E10539CB6D5CB029D607A5BDBBDBA70DDB742D017B1F65),
    .INIT_12(256'hB5B0453DE6FBE86D5F71140DD2E6F36E72B50B401D0619C1A8D440DA43B273ED),
    .INIT_13(256'hB5A291C91DAB412617CC67F7BB90B687806FD3C958E255B120C755644F98EDAD),
    .INIT_14(256'h65E7097FF0E4FAA5C1C6B956E1D329B450D8D0B9176A833750A93906DD05F90E),
    .INIT_15(256'h1CF940A113FD6D06F6822DB8644CDD752D02B71ACF2C4AD4FDAB220208D21D3D),
    .INIT_16(256'h75502DF4DF917104BC2827682BA350B0CE9C61EF3CA12A981DD068C07F214A05),
    .INIT_17(256'h4040D38F1826CB4B74FCC318ADD3636F37614F17817A71DEEC59A87A0D7A8694),
    .INIT_18(256'h011BDFC22BC0D34043998B470822114A6FACB5209FF6FC4B3BC359D5DD8A70D4),
    .INIT_19(256'h0CB30EF7E4ABA6FCD566563801862DFED2536CD039A8BC063A58BBC3880D1464),
    .INIT_1A(256'hDDC4BA4742AA9E710D2BCA5FE41533CB581B6C6DC98C4C0193BF3C96BE91A141),
    .INIT_1B(256'hAEF0A226A16A1417BC1EA1C97D4E79BE68616F8CCC9EE468993BEAE03926B63D),
    .INIT_1C(256'h56D6EC72B303ABCF2367C4BF48A06B70B5249C432F77A2392ACD3B1BC71905BE),
    .INIT_1D(256'hBEB53A56BA877C09E57A6D953E6057E8756207B5CADFA46D0A60DCBA8642E54E),
    .INIT_1E(256'h22944CE77975025CF1705F4EE4B742C6B93B805024B1D87F2DC2034582CCF875),
    .INIT_1F(256'h485A34571F99EC111B63EAD6240026D395B0CFC32FFCD4BF33CC79C1238E0E06),
    .INIT_20(256'h762B34BB7DED0879151E0C804FD7ED0E4B965EEEE0853DC4C402098EE48341E5),
    .INIT_21(256'h5140888201014869103B27B03CF306128990D3A5883EDBF47DD2A6BC95186B06),
    .INIT_22(256'hC2DDCCF8B6A5A806098581C49908868FE3B702869E80F2B2B648FECFFCFF97C6),
    .INIT_23(256'h13CB190B14425E9B29CB1F6FE2EE4517B695757308F5D7061EE6B398F6D6BCD8),
    .INIT_24(256'h8B56B18AD7693381BB2FD1246D7B03B57E49D80F971F59BF88672B1F569BF01C),
    .INIT_25(256'h572E8D762051A0A0B537FF76D9CDDFB7FCFF7E16DD6B81DEBBD87145EB4A90BE),
    .INIT_26(256'h1DE339662CF72B09AD3934A52762D96A09A62975DD31E982056D07B8112937BA),
    .INIT_27(256'h3E2E67E7ABCDB9A2CECDB52657A127BB8385CC5028BB11A34B7F5D1CA23D2067),
    .INIT_28(256'h054DEA2791011E7652236F6811709BF61E04A1F5CAA47EC123D7A3FF99A2CA9D),
    .INIT_29(256'h7D6D5B8227D0AD373615FE2C5622C139878EF2A8B95D02EEFB98F949E901DC5A),
    .INIT_2A(256'h68D95482CE4A30CA8B4C136EFA06BFDCF243E4BCCD7B3FF8177AE8D8FBE1FE10),
    .INIT_2B(256'hD96F9EE299AAC61887DC19E19944FEC201F0C1FFACE1405EAA3E4AA19A386129),
    .INIT_2C(256'h97DA2482CC8D537461655B796892C9CC08870E13D320D752A46360AF74736B76),
    .INIT_2D(256'h86C04E5144ACC6BD4DBE3EDE3F7F1B1CDD10833C1155F70E9DE5F8D0FFE5D0B4),
    .INIT_2E(256'h6D660FDB387512928994740E90496CE2FE57D0E147458AB4E378C4704C863E11),
    .INIT_2F(256'h53E4AE4E49BD9AE67534BA3F77878D7A5E9DFECECFB6F841E57A73C52623C456),
    .INIT_30(256'hA82125111CB325B55AFEE9ADDA3BB21D91556494AB17573F7DE08A15E2EC53A9),
    .INIT_31(256'h6D965942498129862D51F566200C21ECE5466B4C5C1465D6BF2819A2FED8D1D5),
    .INIT_32(256'hD0DFF00C5B3A546171F475B297FA13249BFB25EC34F6A6FCD94F5DCD82E67638),
    .INIT_33(256'h3E53E85E9EEF37CFC62E0D1E09A9B61EE5D4FA68126941904D87ED3C55803291),
    .INIT_34(256'hCFD23893AE3B8062C93E9C9FAFA406501BBFD3035FD7DBFD95110ADA3342F8D7),
    .INIT_35(256'h983903812AD40A76C88C7002B32F328504274F1F3F26CAE46DA507A8CE31D8F0),
    .INIT_36(256'hCE6992335058AB802521407E39E04CAA25392798D0C6A4418A780373A76488D6),
    .INIT_37(256'hDC86C9911A50B86028956692FD2701DE16D84FCEA72542CFDCF0DBB353378426),
    .INIT_38(256'hCE0C5C747468A9A12D475629341C4B7E582EEFDDE377BBF85590A7C06F5337AD),
    .INIT_39(256'hBAEE0772BDBDCAC7F61258A4B29E5D758B17A465964B9A10A6283E7C96466C05),
    .INIT_3A(256'hB92AE0CC8E54872FEB5788B1F6423C5363A811A7701F7BFFC7ADDB4FFCD5EA9A),
    .INIT_3B(256'h3802A01676F5957C41B44E90B264FED9A05B4F67F181AFCDC9BFAF7340B54311),
    .INIT_3C(256'hDBA119EB46EA884ACB280486103450F9380429CCCF6A619B6BAB38D45B922F5B),
    .INIT_3D(256'hBFAC3386EA43E9AF80E7BA464AA770420C5F2604A132F23049B8389D0A117E01),
    .INIT_3E(256'hD4B8142FD4C68805959A4676FE064075FE8B1D55553AA260AB8589D80B43B160),
    .INIT_3F(256'hCFEC5B36CB6DC434C8BCE5FFA379190FA231EB06973C1685AB636FB308266968),
    .INIT_40(256'h2F44E11A73A3BD79A223B21FD90EF4A562053B5239EF18542AC930FE791789D6),
    .INIT_41(256'h681A580BF29ECC114E19E0718AE47ACD058B28DBB112C283AF148E3C8CDCB1ED),
    .INIT_42(256'h8DB1B83A3B849259D862AC5A6243548AA9D6BD45845A403E5144CD74077395EF),
    .INIT_43(256'h64BB3E2133DD787F2C18163F00F48FA20A00E599503D01093A1FD74A0152637B),
    .INIT_44(256'hAED9D0B8C3FDAFF0F0DEA2E9F2308EABF4557B89D072903E33756EC47760BA90),
    .INIT_45(256'hF53B084D884487195854DD0866A7946EB7FCEAD525D39A92AA2E44DE5926C1A5),
    .INIT_46(256'h5B74A91AEF58349A91B337DE07675BD842EAC517A9E195B7F65060346260D23B),
    .INIT_47(256'h5A357A6183DBB6F171623D86479CC62093C3DFE9CAB2AE87D19EC2A8D141D7E4),
    .INIT_48(256'hFB37515966E50342E66200D78CD6F4B5FDC273202400150DA8370119231E9813),
    .INIT_49(256'h4120AF8FE290FE2800E8846ABB49E392BFDA3B7EBF1B57977B1ACAAFB91CAE5F),
    .INIT_4A(256'h77CAB59E5C831D8F929CEE93944FE0BD580A5004B1037693548623B7D6B02F88),
    .INIT_4B(256'h4318B20ADA3AE4CADCBD4630832898C13479445C63F5AF01ED931E7CBF752833),
    .INIT_4C(256'h65194EBF84AEBD2ABD1FAC73EAC6AFCDA6A02050277011C202B4218BEA384F32),
    .INIT_4D(256'hA86EA44A9BE6DCFE5F01CE2ED6B7554910A2BDF9579DC02A40469908B4864E40),
    .INIT_4E(256'hE9D4FF9FAD472BBF29EF9B2FA78B621A83BB489C7FD0D9466A7F1499F6A2DB81),
    .INIT_4F(256'h2C2B3FAE35788BA381A7BE33B90BB9CFEBC06E9090014B22B7C40C9E7BCA7A47),
    .INIT_50(256'hC7D7CA52B5F34F1B72405C35036A11A5297CC0F95EB5F6D11123437B5D4E20E6),
    .INIT_51(256'hF1FFD5D8BB444FB1FF0CE935F3C19375373DFCA3B6DFE28E8F1F2BE2A671FB92),
    .INIT_52(256'hFBCDD7BA3B6F4C55238967CA19683C63EAA2ACD35F22D4206E70025D0838BF1E),
    .INIT_53(256'h15EC60C11C818BB27CD0554B1A07794CB9CAFA825A9E6469C09A7E14BFF091EA),
    .INIT_54(256'h6B4EAE2AC4405DB4AD661E18A69025D3D0B11A62C863893E27B231E97D3AFB8E),
    .INIT_55(256'hA4AD3CCCF958CB7B4488E0B2CD4E7944088CB4C571B4A192CBDB33D857F081F3),
    .INIT_56(256'hA5629D8BA9678C1331D988F6A6C84839FB0F950E41FAE96F4FFBC9667662E7CF),
    .INIT_57(256'h8C2F102F061431AE727883EABEAF9844D11CD8A033F238AF34B7F1D4FC26081C),
    .INIT_58(256'hC5F168BEECA6F48B61BC7267D6D53B6BFD4EC6C363447050C25AC961831D7363),
    .INIT_59(256'h829447BCEBD3C13FE9760916C9C690CA0302A1E98E60268D8BDE98A97CE8B0D7),
    .INIT_5A(256'h03B3A9820BA78C5BA2CF910E6E308644E2EE4E649C827BBD962978F7D4C00AFC),
    .INIT_5B(256'hC737729250E5E900881937C50D6BA24055BEEBFCF0266D9C7AC6D96DA4989CD8),
    .INIT_5C(256'h90F3BFE398BB5068A5E9ADE8DECCEA07001EB728D39A7C747B27FC6A73A9D4D7),
    .INIT_5D(256'h3CF013CF7F6A1C5AA747F996BA6302AA671A5EE6C8F6CC633EB664497C103160),
    .INIT_5E(256'h390BBEA64F64F393CE2C0F577D0619E2843C64CDBB7269B7B10C01A009CFFE1F),
    .INIT_5F(256'hFED274F7EF6BAB67C3AC1D1F00840448700E3D0F7616839CE96791CED5030D95),
    .INIT_60(256'h7215963A95FC7F305974F74CB7E41E7197DFC8CA1E46BEB3CA54CB903DEF79C7),
    .INIT_61(256'h785FA7A1B36D549C6555F051EA5E5E9261C7B5406348436AC746980F80DEFC55),
    .INIT_62(256'h385A73650A373E3C14B9656D78F3E17D4DD6546B3311BF4592B2724E87DE68A6),
    .INIT_63(256'hD476DF08ED81C5D3B8E1671B3A99144FC5FDFFADD0E7EFD5734A3E22629D455A),
    .INIT_64(256'hCA5CDE262D42D17E90B250E8EA609BBB317DF45B1E676CDED5D59AC28521EB74),
    .INIT_65(256'h38BC8F2E0F03957F7B94B869528F5B92E024BD5ED6D939D651479C0938E9C488),
    .INIT_66(256'hEEF5DE75F2B09338D179CECBF7A0B12C68BD38FA44B49B782D2EF41F5D04CC3A),
    .INIT_67(256'h1F51B3E8A8651C415DF9EDB8FA6CFB1517B6BB88C773F0280D416CBAF8FC5FF7),
    .INIT_68(256'h73F6839E2EEF8A195AD8083F419FE7DEA7C6373D5693E0D43ACE9936BB444C8C),
    .INIT_69(256'h08795C0255A60F45FCD4860C6F393C4BCFEFCA72BDEEC2E75724206EADC84A1F),
    .INIT_6A(256'h35C4DA45BCA6DFA825BB97D18E2866F2F1A6F55A230676BA29EC53343A8E68EE),
    .INIT_6B(256'hB329C08E40866CF30090ABE0539CDCFB450292B8BA073D2F08B0B1B088B23FCA),
    .INIT_6C(256'hAF05E719748DD267954FAA578118B397538996A2C7EAD3688D109A0FFD47AC3B),
    .INIT_6D(256'h52252B3E482D52BF1E0719B9CDD82C68F524A0A67F0F2CC2EA3A4B56834037CB),
    .INIT_6E(256'h095BD5A7171D98A0022B20C4403A375556F52618BFC9D8F824A5511BFEAB7CB2),
    .INIT_6F(256'h203C89F03A4338A72AC1C7CE0C8F38035AB14F2CDBDFD78A09E14161BB2050C0),
    .INIT_70(256'h180CD6D50439D37D5B684C2EDC72D0D6F9331630004F59BD2A650AEEFE4E67A0),
    .INIT_71(256'hCFF9CC045B41380D4B3ED1BBBFFCF591F242C3BC331FB840F550E9EC9F95A177),
    .INIT_72(256'hDAD9C42028CEDA806460759B9960E10A9D963DBB9C2A446F5D033E1914C96D4C),
    .INIT_73(256'h86ECFF8123502FA568AE9FA7363DBE4C9943A0F1DFB5CE9376A398DDC6A9C20A),
    .INIT_74(256'h7F2A83D23307F2B1E08E1F515E102558FA60B1B883465DDCBDAE0FDA06EBDDD5),
    .INIT_75(256'h7C1E6D87676506F2E8A3CAEF2ADD317B2875725D3A77987B1D52401F18681A6E),
    .INIT_76(256'h627EACD47AFB68DE5FC6976CEF3B034CAD8F7390165E72617C111B68F81C38DD),
    .INIT_77(256'h721B9049D661B36318EC57760CF06A55B21E32E938728C0BA2F220CC6F865CFF),
    .INIT_78(256'h3EDB84516363B18D1A74CE52A2A4114A636955E2CD203B1E4095A7988360A174),
    .INIT_79(256'hCA48F3269AAAA8C437AF73BC80F0FB0813C438163D7EFDD12D07BC17D1B2DC2F),
    .INIT_7A(256'hEA6BA50E13572D9D58F483807413F9769A4221B28DA1C2A27D8187BF9C6C5386),
    .INIT_7B(256'h8CD595840BF62129C744BB1EC5CF10C0EF6B28FF0331B72560FA08D8252D5193),
    .INIT_7C(256'hB853635717000B7E94E85D7B6AC3BBDF5108E4812DEC6EAE703A1DD9B60BD5DE),
    .INIT_7D(256'hA591F7D1AC49FE3EAABF55FF6394137DDCDABE92EA3C32360E5ED8CB4564F9DB),
    .INIT_7E(256'h8D415E51C591862F4BD20DD354240727A398D4A97888B31E71F8C6C3D6101ADF),
    .INIT_7F(256'h4050F7834A1E2D5772E6F3018C8824D92DB558C70BA14FC84943E425F459E951),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h02F2BC0BDA95B6D7FABDF4F0E61B6E48315B8E871C806F270414DB1F81BCE70F),
    .INITP_01(256'h0DF34252A6831F3DD44D6B821E5D97C6224B6C5E0144B1D67730760189BB5C3B),
    .INITP_02(256'h19601BE54905E6E1DC31DBAFBC978DCA1ECB64CEBBC6E572C2F35B2D2F1DBEDE),
    .INITP_03(256'hB9ACADECFF94C507347B04EA112A49BC38A57DA99011B381153C26034B9583A1),
    .INITP_04(256'h48674E01E66441D9DFADEEAE183BF4854DEEA5C64BA49651DF0CA66B5B9D3B56),
    .INITP_05(256'hBCF096F97413D312C84AF822C79D29D9E702664DD10787F35E0DE7C33DE8D46C),
    .INITP_06(256'h26DFD186A7B7C5B4E1D6FAB9508912006C9D4FE0B4A438E532E9D805AD04ED60),
    .INITP_07(256'hD3E1A7E1FE8DE9F7B607B51D49EE9595CEBD27DB511796907E2D752CEF363CF5),
    .INITP_08(256'h58117E6BFA117BD2D5B7CD4E78667241C45F6EE635462D483A86DD45C41D1EB3),
    .INITP_09(256'h3CBFE9C2FD69C52B310C5C4D5C89144E829D05A4B08E28699A6DC8B2AF86A9CA),
    .INITP_0A(256'h76C1BDD2DE11113A489A8D73ED82F3416B21A142076250A932443B89DABDE243),
    .INITP_0B(256'hBEA7F4998C8873DB61E2872D426A53014C408F602A21B369821E89E7A579F2EB),
    .INITP_0C(256'hA4EC69FBA58635D4E83A13585E436B93C067C324F4F00AC7C1068431E6C2FD75),
    .INITP_0D(256'hE50F0711992B586054926811124309E8C376C02F17EF37C8E2C66C3C95123A90),
    .INITP_0E(256'h8A38CEB24E7A3FF9E057521899AD3E90180594676C0A7A058009A1BA900CFC30),
    .INITP_0F(256'hB0C14CAFFB54356F16A62322E1421A4EF311A26474A700C56E2F57ED04901F5E),
    .INIT_00(256'h38DA4A902355EB179C9159DFE17757F5859C7035CBC433204F6CD508A6B327FC),
    .INIT_01(256'hDCF25F170980A4F7680677C3729E5562AC42809B30CEEC26B3913AF6DD62C9BD),
    .INIT_02(256'hE1B496F9699453AA5DFA0E3DA4759813B0108EB85D5143F595E07271A6317136),
    .INIT_03(256'h987433C317CC9B1C80063D512FFCFB765BF426906E9ED1101F0D29AC178B65F3),
    .INIT_04(256'hC020A3AD4AED86C8F6B229F749A42A6B4E2D6994D8C32243AFFA4BC2A256C1E7),
    .INIT_05(256'h3C3A5FBFF6B522746F8A5F3D34787FD84EBFC77D45F14CEE18E3610D5B49B8F8),
    .INIT_06(256'hF1A3223D61B2A17AF80045BF60BB64D83036C39B2507A8A6E6BF8405C1B75B97),
    .INIT_07(256'h114F4349DDF8F9162E5E8038E03BB3FA91F3C0E5C7216DB3CFFC85C5B953AEE7),
    .INIT_08(256'hF7E5D446F800A179565676188A60AB2BEC0B2A40332A97F24EF63B1E0F11642E),
    .INIT_09(256'hC6DEA172A6E7D044DE826A8B0ED56B8B6AD92FBA43720BCD0EB88E7C0618EA18),
    .INIT_0A(256'hB567A44507365080CA84EFB301F6A6CFA47C0E452A344A3905BF786612ED8492),
    .INIT_0B(256'hBAF7A3F256AE6C1FE1D1CE48F8CBE5D8B84C156F9125A123C23E81486CDECB3D),
    .INIT_0C(256'h860C8251D90B6D2BC2417476E8E205A0B26BB4EDBEFF520DA46E3250E077E14D),
    .INIT_0D(256'h5F0ECC584EED8D7E7C9A2FAB116D23120B8C3BE21D580C0887424B71C4658F04),
    .INIT_0E(256'h8EF4BDC12F380EF0F316824FFF16E8121A06AED9CD84B70B5BA023056293F4EA),
    .INIT_0F(256'hF8CC603C3B90E3B8359F86C7C22E083AEAF9361FB21C96C844F0B563ECCFBA8F),
    .INIT_10(256'h55C1A69908FB1DA6B277467DA298E3512C26911967470C6952C3580D034F6BCD),
    .INIT_11(256'hC7DF0F8F430BB0AC20F0912602814FBC42E33FF4ABADA2A85A18A9FB55BD5C45),
    .INIT_12(256'hEC6C64B6C45D25ECB9072B46CE839E5E09C3B1F43A26F37B40A38CBB639004B6),
    .INIT_13(256'h2A868E72CC1A33A07969884D2965723BC88219146648FFFE7A1FE090F00D0C12),
    .INIT_14(256'h6EBC27527750C758A74F69DB35C2A74588AA21D8B0F83779700A19ABDB7F345C),
    .INIT_15(256'h154F3BD5B6949D647722BF10F35C609EE1822ACC174BB015571112437CEBB555),
    .INIT_16(256'h7C5C66642F249C7C8B402D6B76B9AB624FA3F6EF18CEDED5FE7D6EB2A1E06610),
    .INIT_17(256'h41158251F4DA6A0400DB7930FF3E7B65106DD6991F7C61941575AF730A8E53A7),
    .INIT_18(256'h21EC680C79F0722A69BCE948A3BB512D0754FAE23EF23F5EA3E39C37C2C335D3),
    .INIT_19(256'h4378405B56336EEA434B2D22BF93DA741B2DF19F88AFF46848CF84BD48BDD7E9),
    .INIT_1A(256'hD7FC17AAEE2A090CC7ED5F799FD26DD99F9472C829B7CD29F96CCB7BEE660868),
    .INIT_1B(256'hCF54BD0BAF459423C4D72D4676C9E7CBF1810B1F747A2183F1601CF3A620E7FB),
    .INIT_1C(256'hDA416D539C59F84D6567AD6021694FA5D725026F7F522EAAA2B897AADBEC6583),
    .INIT_1D(256'h53734D1E242793D6AEC5BEACF0BE747D451AF7096EEEAC3AB046D00376FDEE47),
    .INIT_1E(256'hEB7CA9DC5C5EB692531FDAEA78B12DD5E82608337272FA2ACE0E072E483FC76C),
    .INIT_1F(256'hA299B1E9358182960182E1D551BEDF4E7986D5F238CAE6EFE14393182C923DCD),
    .INIT_20(256'hFF92FB2A71FC89D20164060206AEB3EA4C518A3953300A2CE4785D6A75272C33),
    .INIT_21(256'h4BD8FDE4DCAE87A660453D561EC77CCA79B50B65C735CE23F1598B508A7423C3),
    .INIT_22(256'hBD85955A3B3936099F90F51E2A0CA8CB1F7B5CD52BDAA82D7BCB13D6F32CD5E6),
    .INIT_23(256'hAED926B2D3889852DF3649A324764ACA6B70F9C82EB160DC47E11E82DF4E8EE2),
    .INIT_24(256'hF839FEE57785684B2BB203C772ED592F44735FC8177AF28866B3C05443605741),
    .INIT_25(256'hEF7D43FF72ABBD994D0BB82DD6D752C21FD880C164E4037673B3FFBF2A09CE84),
    .INIT_26(256'h3FA84F01E4729AD0ABB7B0256C0CD30472F971EEB912F07C6F3E579AFF48F2B6),
    .INIT_27(256'h3A07DE527860A88B23A124A3B70F0081054A65EAFDE86F991678AE85D9884296),
    .INIT_28(256'h6BDDC378BA7781576DE3C95F40BD16423490E129DB71EE4639CD11F51954D133),
    .INIT_29(256'hAEC4FC98AFF8291CD6950D5581AE6EA1CC19BF05C9E9F463B37ABD760C45E390),
    .INIT_2A(256'h7013111D5C8C206EA179E9C7ABE770E607C809356AD9921B7D9184A5F562943A),
    .INIT_2B(256'h4E042680A3F28CDB015D381CE2DD3F5A225D3E40CF65DF2631CC7E3AF617DED9),
    .INIT_2C(256'hD9921330F9ACD09DCAB369E301A4F09527A55BE4E263D5DD5CED01BF9DC7C7AC),
    .INIT_2D(256'h18E5089FCD1BB12BC7BAF25705F7D498310D7F270F2F94F1DD49C0A0FABDD507),
    .INIT_2E(256'h6B867C9DE8B86C9DD6C4673F119AE0E9C0E05DCE7CCEE20C6FB709084F071754),
    .INIT_2F(256'h498AC094283B8D151BB2772481583A95FDA1DEB2F95932DC51094E664B7095AC),
    .INIT_30(256'hF18025EFB1671CF12B15A881A79378B2003F14A3855A46886DC693125A10DBF8),
    .INIT_31(256'hE6D8512A6F42C8281ECB0F7E5AD1C8D792B4924599C6E6ACDA654E0F7B1D35BE),
    .INIT_32(256'h76932B672B5FD1439C65BF6B8FB19B3CC4BD33937BD025A9AB5D055E9C875591),
    .INIT_33(256'h08F850779A5BDB540C26E15B989062A713BB9764F63D74D4D3BE52C8C31C5B26),
    .INIT_34(256'h5426A3EF0E37A6F968D6AB2EDA1FD1140105CEA61B6F2A2A255DA19ECA62D000),
    .INIT_35(256'h2179B6E8BA270EFFD312872BBE18E10CBA64C80F6048CD62DF8E65716611ABDF),
    .INIT_36(256'h8A399FE45669395C10C18D2855806922526FB63B3B13610D105FB8E759333F34),
    .INIT_37(256'h56E92E55BD84B95BA9BDFEED66EFB9C1C5D91D754B820DA51FFC60C26E55EFCD),
    .INIT_38(256'h7577DCA1DE0532170B8D260AD70E2DCE51AB5094F261D65A2C2864F0C38C491E),
    .INIT_39(256'h1CDDD7807C5869E59C0A2CEB3473BC19895E53C953E47E705D980E29369948F0),
    .INIT_3A(256'h6B0ED3771A21FF4BE3E3E30BA282DBAFF77B645FF83715471E2FD42204EA0E0B),
    .INIT_3B(256'hD73C80A0E3036E7E9B35B19D060CFA11E960DF63FA86B19BD4CB586D750C27C7),
    .INIT_3C(256'hD7D69FBF5864EE610048976285B2A7E9C1237C1091B5C1EA5823752C76BB17AE),
    .INIT_3D(256'h0E638D1FDEACFB4F828F9894966A5BC9574E192A72F028111D1DE49FA536179F),
    .INIT_3E(256'h23B24E5BB10B1F98847F8880D2150E8F64ECA1FB11B67DC04CECC4B56582DBF2),
    .INIT_3F(256'h291CF1B36609283E9C6C2275A45F6B8359A3F3FBAA754BC3E7D475708B5B72E6),
    .INIT_40(256'hA8CA60C7E1E9022D07E7838922CB198F048FBAF4A27B12ACBB9BFBF2EA49CF6B),
    .INIT_41(256'hD43CDF871A4DC401347D8289A4D77332D9EA17F205C9A02517C052A04F13847A),
    .INIT_42(256'h832987A746F5041D4A477301314A4CB812C34F078F1222BF765AB2FF6214C107),
    .INIT_43(256'h031F2F436B41113B8BA484315B6E90E904559652401B28D17B0C44D69BF78CC3),
    .INIT_44(256'hBA65C9425FD8654DC74CCDFF1F224EBC740A6FA23807FE73A59DEA90715B4352),
    .INIT_45(256'h832D38AF906D52E3C916C808952A6EBD4205168F12B398B0B326C99D684DC01B),
    .INIT_46(256'h55C83683AE2BF7CC8CCCE54CC08BB3C98F6FC52FA403D64E1B30DFF90CD8633D),
    .INIT_47(256'hFB4A88630CAF52D1184C06067D0972D7260930BE7849CD6A5D8CA938F1E2B165),
    .INIT_48(256'h5965D95A5AE36F0238652C49B5AD041020EC8A489B5F5E62CD0A372FE8AAEE65),
    .INIT_49(256'h2DC93862D4C75E1C35DF79B818563B88404019BEA56274729EB23FDED1784BFB),
    .INIT_4A(256'h0E191E993E471D8622DDEB614041F9F17DA2D2191206F243AE37F752C4049F60),
    .INIT_4B(256'hDC4DB99FAEED65E16B01A1367C9C301AE052A4926AC8ABFAB42423EC99D000B0),
    .INIT_4C(256'h192CF7BD927BF92D681A9A703CF70C53E00E21077352FB17A31CF225A6C86FBE),
    .INIT_4D(256'h40E75671C7EA3D21B51E2ECFD8A4C10532E7FFFD11215D1B3EA6841E89A389D0),
    .INIT_4E(256'h27EE24B2F468EDED27648419847F2E7AB10B900F9F3E0F0A74D57E458CF3553D),
    .INIT_4F(256'h8B6DF4F05D4DE596FA47388FA83C71BF6190D7CF420F00603AAC4B3AEDE1425A),
    .INIT_50(256'h38757C78D9E4D47CF30470AB75AD8FE9C52ECA059C3A4C146C98EAA43D978876),
    .INIT_51(256'h59B295545D72C644F157AD935115D77A961AFD53C1138F225C26BAFB09CCA788),
    .INIT_52(256'h8C5526F6CF170E9303F874D681B5CADD10E96F5F656F7B475D14626360F6755D),
    .INIT_53(256'h16DA393FDABC15D50648C21CF82A43648039B5B6DD509A1D880C7BE3A81433EA),
    .INIT_54(256'hEFAC1B6A8C1BA43B18AD771F3CAF8D67DA5F2AD6C2AAE59CDCB8731B5AEB9F4C),
    .INIT_55(256'hBCCD2C79FB930D7A236593196F5F6070C303C67A4DF240DFD0266FE36E0414C9),
    .INIT_56(256'h1C414513C3BE52B0987D7A8EE0985E08335F51E09BE3262375101215DE4070AB),
    .INIT_57(256'hFCD9A25D3438229D6FFA950F468ECDF104D87524E33DDB1EDE4407B7EA6494F0),
    .INIT_58(256'h6A2A9D4DD336579835B5F137AFEA886EE8C94283005FF6D87A394CAE8F98880D),
    .INIT_59(256'h06B36A07E85126BBE27E7347F98A97390BD4F945D55FB2B963A8E47708ED9F95),
    .INIT_5A(256'h26505C61A9805440C5E00B3F44BEB8299F061F7C662043D44F72A50CC856EFE3),
    .INIT_5B(256'hDABEFC5F4513311C8440ADF22FCC68AB433A45102C099F8CB8E578E072A66F0D),
    .INIT_5C(256'h01D9BA00F8EC2D9D248AEE83F129DF4F2262EE01102DEA97B40B02A930AAB561),
    .INIT_5D(256'h54B21384E04FBEC4D2BB7AB3EF95DBCB0D4D58E9915F3AA901E950AE3EA67721),
    .INIT_5E(256'h224AFD0939288FF62D8944002EE4AD0D2284F07D8239F69447CC76A480D8D79F),
    .INIT_5F(256'h0496B41499067B5917E8BA2159A768505229232BF5F7D2FFC3EF1D64E78E68BE),
    .INIT_60(256'h895D96CFE0BB2C2C5F43221E301165D91CE4A12D8B7B52416DA5C338B18E2716),
    .INIT_61(256'h7558ED07AA880B04952DCE8F7337F4B37D90DB5D9952A1250460399FECE79FF8),
    .INIT_62(256'h8B0CA9CB8B4BF8E6D6BDCA55732DDE2C564B0BDFB079BF227011D539EE8314F9),
    .INIT_63(256'h67600E0AA0943BE7184AA9DAE2865849D601DA068AE535CCB51901428FCA5D24),
    .INIT_64(256'h1642B27CE0E148C3A1843E57638A374C399072E309947C35241EC403E466680D),
    .INIT_65(256'h1D4681227C8ACE053769E7D42C6625C1E13DF3FD729C1B7884E46A4602267AC1),
    .INIT_66(256'h75625BE7B5D4EDB5606F26D9B2F61AF390191A06EEC0D1E4D2C05ED2EADD6F6F),
    .INIT_67(256'h402FB305B648B01E3144D212A3A39A855D458B7A35E13F6C9C59DA4C1679CD45),
    .INIT_68(256'hF687B98A197B8D458B08C50EA2B25CAD60C4FBE6D555E1625B038835B0D498B4),
    .INIT_69(256'h51EFBADB7C374BB7299E343934BFAD524D2D2D2D9C0A629723898E81CA911929),
    .INIT_6A(256'h9A1EDF97FF7D03C7111736DD49006C77224926F2933D000F354E44F19219597B),
    .INIT_6B(256'hB88E8031E78A59A5C634554C9FAC452403E4264ED837E700691C34E7325B45D2),
    .INIT_6C(256'h4D16E92BA87AA10E0D63D0BD3182A58519E3FA518E5FDC28C4A05FB99461FA86),
    .INIT_6D(256'h6211E823815F17B5C3296DEECD3D4EBEE88EACFE903F7D740BF01CD56AF74997),
    .INIT_6E(256'hE0D77ABFDE18C484EC05C9C45AFAC689330D4081EF1D868FE2C5EA0E0E576A35),
    .INIT_6F(256'h0762D7B04C9813C23B5C170DEEC4958A96E4E038C98A8D7D850BF1ACB24EF212),
    .INIT_70(256'hACD5EF3AA143E57DB70FD9E07CD940313023C1177999846A6D03DEA53DF8C30A),
    .INIT_71(256'h995B4AE6A7BE4FC3A7B171DCAE12E872A431CB01ADD46FE72EF821A29460A08F),
    .INIT_72(256'hEB0EDFECA0BD087E65402C9F7F633ACA0BE8D8ADA5B580D3AF309398D8FE5B30),
    .INIT_73(256'hA3602CCFAEFDCC1F14D3875930A54AEE10331433148C2FDE20ACEA6CC52F1603),
    .INIT_74(256'hEE4415A63F8DF448C9B1838F3DE5238DA85D445E31F701D216C9B0647AC4B25F),
    .INIT_75(256'h5296C8E2077B43AB8DBD5D33D4147AC1799FA6CD3261D92D9C48047C682416E7),
    .INIT_76(256'hA04034EB21655C6E385559DBB1A773F430E8C6627924B417B04C463D40A2AD8C),
    .INIT_77(256'h6B0A0E03B99C180CEA895FAE9CC03A34D494E20344ACA04E05CCABE01802244D),
    .INIT_78(256'h4797208D4F6A75841D6D665A7A75548DE4A70ED8F671EE43A815E2ABD75BD992),
    .INIT_79(256'h97B3BEED22772587F0528765608AB3F9662F2DD1967F55BC8D55764613340100),
    .INIT_7A(256'hCFF9827DB0328BDE4EC7C83B5B94F4FF44D1433575C3D87B6641D0421B0D8C65),
    .INIT_7B(256'hB007FB8ABF9F89835018978C0B1D23FFE5C336153C921782DC5CC822C4188DB6),
    .INIT_7C(256'hD45495471FBC688740E890EE22466557DEA912DF01F026D29914B335CE69B0EE),
    .INIT_7D(256'hB5167E183332F27FAE0F0031F7F51318C7B4F15F5B83A104B683F299F6AEDDBE),
    .INIT_7E(256'hC49FAA37BACA462B1F8B1FB001E0F6793180E80C2345CE9E54E78D88BB638EC7),
    .INIT_7F(256'hB5CD761FAFE7877F386E406E62D82606A300BF8FF23CCFC2BC42E74059CC9AC1),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_pong_blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input ram_ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hB2A8B9FA447B0DEC452667C6DC2661E3953711F2989112686F22C3C3AE07AFDB),
    .INITP_01(256'h4803510155F1714DB926E7F4CE360A35EE2059B6373796556704FBC11A9FE275),
    .INITP_02(256'h8CE94567A5F05C6C3196D710ADA7FB94EF823725692528E2E830BDAC6D8296A9),
    .INITP_03(256'h38C2A0BAFE9CA6F198868D39E8D7D81972BF4C6D6FA2BFB7126165DE532ACE78),
    .INITP_04(256'h4A6E700A5734A12D0857330D4C741F772471D1946ED07313EC1CE08CD725D8AD),
    .INITP_05(256'h76EC0A810B404F241E3E10B306846688BBC561EE3615CD8961E23EEE7901AA17),
    .INITP_06(256'h178C6FE09BFBAC28AEBA95909E5FB4FC1C2EA7BE4794E8BD7A3C2B4961B50454),
    .INITP_07(256'h60A728AD2992130BB454D4BD074A3DEB8BF4C686D6DFE178EFE6263901860022),
    .INITP_08(256'h0442638161FFB99D6FCFCBB433D7EDB5EA595F01FB77507FCC79407859E4AB45),
    .INITP_09(256'h8C2810601FF558E9344018102A1855C5EBD67A57E814047469768888FF1AB6E9),
    .INITP_0A(256'hADD5402168FABCD6C7551437944C0AEDB75C31E322F226363434C13C3296AD1A),
    .INITP_0B(256'h353E153DF11B47D14BCB80AB076B1236D88ED5CB754DEB3B0AB89B53C228F911),
    .INITP_0C(256'hE1DCCD22E825CF9BB9C063D85D436FA39D66A1FF63996574CD1DC900BD5C4ED9),
    .INITP_0D(256'h29E5CD4F6BF5C276542123419733DCB28C4E9DDDD92547BA0987C03C18E29489),
    .INITP_0E(256'hD78C5E214E60385D1E6785FDDC6E903037C627209B82E069F426296991DAAEB8),
    .INITP_0F(256'hC4CFF8F2DDC4D7A87E81AA45A5071E41C7E17D48447F71F736F4739E7BEDD7C1),
    .INIT_00(256'h30CDE9C6D012145DA0893AEAB2412A378D914F4582ECCCF8EED124B73DF44B68),
    .INIT_01(256'h4940304FCB4239263419A237E250BFD88669F514651511AE5F8EFF20512D62CE),
    .INIT_02(256'h5F5F36226AB9DE7ADE299607953C6FDD06CF224A31262BEE30088B7A95F46DEF),
    .INIT_03(256'h556B818244B1B79EFA369B5B1380BB3B88C5B3E480E99560693A00A767F17A1E),
    .INIT_04(256'hC2E16404411FC4F78D39E9003D3BCBFA1591BB2F17ECE53112D306F5E18DE1A4),
    .INIT_05(256'hCFCB489C090B5B8F0AA380302607D1556A0FB8D9BCE8EABB4B552754CC758FDC),
    .INIT_06(256'h44CB23FDCC70E9A361EA6D9FD576B709E72E3679327A76E7319FE32C61699E5E),
    .INIT_07(256'hC9032599B4960DE16B00D4FB556E39F2863A3B9334FAD2C7F6B476FA45625B83),
    .INIT_08(256'h35B7DB6CD8761BB03751B05C2BDB31DF5360A1601269E4CBC1788346E4C4A8B7),
    .INIT_09(256'h2D7118FA70E9AA7B3CAB2979676006E73B850E560500BDD6B2683906F1EB60A7),
    .INIT_0A(256'hE891F58E38A563C408559F25C49094A65E881495240D3EB6DEF007161688E0E9),
    .INIT_0B(256'hBB1D034DD3FF52167A86AFF71247FD1F863807FD2FE7EB82680A33EEC16B2DBD),
    .INIT_0C(256'h5F06D8B33654963A087B25F397524D1F33D73E4F0E456EDFCACFBDA8F0B033AF),
    .INIT_0D(256'h9A0FAA55A717FF6F2C8FC50F02FBC2427EFCBD3BB583F8330B4076D823590495),
    .INIT_0E(256'h91C6112069F13721D80711CA2845E40678EF8A2D84F39665AFDAC0E227F56639),
    .INIT_0F(256'hB43BB8B9117FEAC85BEF761532BED71B0815A5C0547771602C59F7E5FA9DBEA2),
    .INIT_10(256'h770002A6D54CE00117AD712BCEDE8643C9A1E52F740970246CBB1503ED9D6278),
    .INIT_11(256'h593996DCA045A7F7173C2EB551BA1D131B3C77B627D2849B72BD5B6BF551E40E),
    .INIT_12(256'hCC932481A63578EA77903866AAF7D3F590984071BC1B74D36066D3762D722156),
    .INIT_13(256'h1CFE91BF76149B090003273FCDE071E460B5CAA83A3D83A87CD83E9C6CD346A5),
    .INIT_14(256'h76CD14BE36C0C5C61F0FBEEA3CC3217F02B7ADFC5143AAE092B4C2B48F4F4E5E),
    .INIT_15(256'h2AAD7AFE7192339817E6ECF8430220B3580C6806C1F106BBF910D582250CB5DC),
    .INIT_16(256'hCFD69FFC939EE8A86C35C0CAE7B61DB03350507D856C71A03CC117600FC8C07B),
    .INIT_17(256'h53F755336632850DDEB195E9BF02845863FA9609DFECE2BAE61D11AC73A0833C),
    .INIT_18(256'h8A08778037410AB14A1CD5F92380A8AF6DE5CDD893EFEB32BD0B8355EB9B7C9A),
    .INIT_19(256'h49F173029B618CA337B5878B95E561570A5DDB593F6C16FB44DC5215C76860ED),
    .INIT_1A(256'h03AD8F8D8E35E63B2D4A06960B56365A28F595AA54D5B70B92F843FBD805240D),
    .INIT_1B(256'h3C51E07DA4B61D20541B80455B945CCD3C228E78B1086FB6D656940752792C78),
    .INIT_1C(256'h6CF0F1B933603431934F1678E5E59B84187D66E6A0A48CB7EF91642DDF5D3013),
    .INIT_1D(256'h582A498DC42F1443FBC1C040A83B4813CB2E169A4E07BE71E593B89406ED0C1D),
    .INIT_1E(256'hB42551564E6CED57E7E1FF3D5D7AFD113431E70C0E719F4B0691C33498592213),
    .INIT_1F(256'h56F7B502E491945E04F7D2E2ECA6A0DF4590636EA7F74381ED799802D1C79080),
    .INIT_20(256'h1ECE08D7BDD4ABBE91E31E10AC4BCC0B118C21A798A1EBE130ABBEC6C2B50521),
    .INIT_21(256'hC254C0C894A13668B2590D5042FB13A355F1F59C4C6395C85184144DF7E8AF74),
    .INIT_22(256'h1E31C93246D4B8D7DC9BBE3FBD2DE207534E9FB39B5B51031AA8A655F5AB9335),
    .INIT_23(256'h3E3CB427D573E355D962FD9161315EE3FB77D69B93A41A34C494F299B2C8EB90),
    .INIT_24(256'h9A4B939E8E48D940D40AA8145E7EDFCACA4B4FD6C41500BF8D047720EE43CAE7),
    .INIT_25(256'hCEEB9D3FC4EF58D1AC1107C27B109980841830129E8A86D5D948375FDDC3995B),
    .INIT_26(256'h02474E5BBBF8100B2BB33894D71D0FB93A2B243D061B10CE50CB96D7AB6D0F54),
    .INIT_27(256'hFCF8516345163472E7EF15E72B68F6C5091F8468D39F4961CC8957D3401A26E5),
    .INIT_28(256'h8211691028CFDAA088AA1ACF23E01C8F6A883D7B2CB8AC63B7F28CBA7DD7C6C5),
    .INIT_29(256'hBC081E4309BE410A03065E00E82B6458ADAE89F9033F8D5CA237D9E8400C8DB8),
    .INIT_2A(256'h36EA86D19E07E85069DA058717B2A192D6B42E4918D7778BE3EA35475346E221),
    .INIT_2B(256'h21998AFDC6751AF7C8F5C3889D9235B82B637CEC0A74CC331DAE840C00A50EC6),
    .INIT_2C(256'hCF7F923DE0326992DA8D81BEFBDB8CB625BDBA7CB075490800AC1DA141F9BC30),
    .INIT_2D(256'h14BE89FF11AEAA63C8BE09CAA6605E55CAA93717D4D547350666F14986AD73B7),
    .INIT_2E(256'hB130A7150AE392DDCCE5043226B9E954678C3F6394B622E649AB9B5E2FBB67D9),
    .INIT_2F(256'hC578D436B7FDFB1E2C18AC2D13B86B2184E912A661AAE90086785F9FBC43E09C),
    .INIT_30(256'h3BB7D327049B021E2F7EF7E3182DC1016932D1F6CDB2924602833CD9CA3847CC),
    .INIT_31(256'h59D268581844D81F81275F8FA77377B15E8155A1F8E1F291CF67D099AFD02C55),
    .INIT_32(256'h541EAB0580A93B31FF6A4E973002B1BEB2A8045BDEBE58D636352AC21725090E),
    .INIT_33(256'h13E731368BCFEB97E75CE2DDBDE90E6A62DE05AF7EA509359867F4BDDE246CAB),
    .INIT_34(256'hF86989B84A6B7292C6826E7A683BC43422DF710DB2C10E99C301943B81CF6719),
    .INIT_35(256'hA07BF93D368B68628E99001E37AB396A375E7DCA3BBB788196B608C7ECD18D28),
    .INIT_36(256'h7E05A354D45717693664F5347DE935A9BB4D35E545274D5EAE2FF3AAFFDC0839),
    .INIT_37(256'h2AFAE40DBEF3BAFB37541CF3204B1D4606957C8A01D7184486A810D0BF320482),
    .INIT_38(256'h9B071F1505815925E57AA7F122735712E4AFDACA5F5E93C92C6900AF3353D53E),
    .INIT_39(256'h56715778B5D676A105F410B0421D4E59F203CD8C29568F556808F9101BBE6921),
    .INIT_3A(256'hFB384819B726B0BBDC54248C8614578E195299F6A3A8906C24705A599B7EBCEA),
    .INIT_3B(256'h7A288CF5494BA8646EEE1216DF65B615C3BDDA2BA8D888962FDF45122AB86033),
    .INIT_3C(256'hB3157469CB6426B0E58B5D451B1E2AE5305947B5A867E08B6E747494D5ECA320),
    .INIT_3D(256'h0456825F5F118F776942EF0E8F6594671654C8A5188833081C4A06B83209B72F),
    .INIT_3E(256'hD8D6FB2973E149ED068CA969C873B98F0EDBFEAACCE00517A99F5DEF4857DEF3),
    .INIT_3F(256'h2E6F4D7E114EC04D8280751AADCF7795734C5134CD753DEA13C87B31040D31EC),
    .INIT_40(256'h35EBE06CC080A78789BB9B819D6AB7979DEE5FF5616E87F9B482801D09BBE393),
    .INIT_41(256'h40906533F0FD62757316F23AF44211D972AA70E71FFC92DD7C9A4FA3C0743FEC),
    .INIT_42(256'hB2CA56436A58CA348555B9797952F40EA876C8AC567FF7E91542E8526130DD45),
    .INIT_43(256'hED99F0A925DA776A41F0F9BA095454A0FE98BE7328EB3DE86EEB6EAE25C1B810),
    .INIT_44(256'h53936130F916AA46178C71A2C1E2D0096A691FF231E7AF67E68A63CAC68BBBA5),
    .INIT_45(256'h12116BF98B1ABDDDE1F8C5063DCD999F1F4936491B1DAFFF454473FB8F50E487),
    .INIT_46(256'hB1F29DDDCA5018EBAB143B73465D077FD41C0B73386B77E69677DE32817DFDDC),
    .INIT_47(256'hC873FAA63344F34475C4B5BD1D55CBE3BE935FD78F36CB384B5D800B1EF52CD3),
    .INIT_48(256'h850928E11731E023C9EBC868AE95FB2B5CD8C376C08927E8B81113F93A1D0483),
    .INIT_49(256'hD2CF856D7E1E41838B3FB4C378C1D03ABB8C8A5823607ABFAC8B7C9781583693),
    .INIT_4A(256'h93B49926D3F2F681C08EDD0C33BF4EC4480D66A389D81A55B9F9B153F4BB57B1),
    .INIT_4B(256'hE75A4CAABDF1ACDBEE42E5D30E6CC7E77232B051F530766A9A873A2DC7F87E18),
    .INIT_4C(256'h7681102B26C47C2E7BB40D5EF91B4D1D2AA271D77A170DFA730485DE4B4A42C3),
    .INIT_4D(256'h9B2CB4A345B9F48B12511F484842535B46559FC6C5CFD074B108CA87B810A527),
    .INIT_4E(256'hDEB2EE020215BA6C9FD4C88BDA60308F02ABB2C59DFD052A0B6186CFE1328935),
    .INIT_4F(256'h851D1A28725EECDA5132AEBE844C87218C3F2216AC3D1C0E116D9C7352874B3C),
    .INIT_50(256'hA71DDC11DFE83890FFB4DCB32A8230792BBAB316B912A7F62A79F684BAF50D9B),
    .INIT_51(256'hB22CA064FD0DF446569185E307B53D81355DC4FD8E98B86A33AABD34F859BA9E),
    .INIT_52(256'h8AB8E17C0998A3BCBDB7BF2AB5DBB11EE76A7872FDEDEB16AC5C362439957DA5),
    .INIT_53(256'h61B1EE0AB4300591DF7123EAC023CE8226884835EACA75D1D5FBA1561E368DA0),
    .INIT_54(256'hD97308E863178C6CBBF0B89ECC5B294459195D9325F8CE483081BEE3374E9C31),
    .INIT_55(256'h053C994063E455570781FCC8C3EFC3E2B5006B29928FB208867EEAC21E259DCD),
    .INIT_56(256'h352CBD92AFE20050B75A52F5B8FA98CF1F0207FD81F39040A135FAB33802D1D9),
    .INIT_57(256'h9F37D5DA97684189A34FF04F4D0B568028563F1ADDE313C887295077F2381423),
    .INIT_58(256'hDB9F860631249B55C7B1566E760ADF7BBDB58D630A8F1E157B694126D2542FA5),
    .INIT_59(256'h85E48675EE1661719412ECEC22A6AF58F3EA459BA42AA9490B8E7834853C40B9),
    .INIT_5A(256'h0EC8780C6BC564F73F6991B65AD02CA689ADD10B67756B7B9D8D6DD1AF474389),
    .INIT_5B(256'hF05E1BD0C25E3598CF7E3E55479473B2DEFF1FC56811C84521D1E9BE6F0270BD),
    .INIT_5C(256'hE2D70D42AEEC80491775746FD7A77C02ACEBE68ED1AC25DFA71AE99AB6928D14),
    .INIT_5D(256'h5332D1D3FD2C5B0B9EA470F9FF19E8192CCB796FFB6F76AF2B63CB00D3DB4DF1),
    .INIT_5E(256'hFEE224C667B38A2FE3F73FE94F7B266545AB7B9D82572B97BF7403D4737EA36B),
    .INIT_5F(256'h06BB774F22C7F544BD02D9A08A3EC4EC8C44F264368FCFE7CC07D33161134BDD),
    .INIT_60(256'h53AFF4A277B63F8FEEE7A38F8FF811362E6AA9EB98D6296E2B5B44E62AACB129),
    .INIT_61(256'h57745616078B1AAA2CDBB397161186FAB9A4B66993355C411D939AD0D321ECEA),
    .INIT_62(256'h469DBCE8F8726BDA21F49D213CA4277A6F0CB60659E941A794D79546B1963CB6),
    .INIT_63(256'h8C901007A5CC65B6F289F8F7411637B265B67D4EA7B4753A2CF77221C3A3F973),
    .INIT_64(256'hA949AF0DE646338D210982173EE3171DA73B566EE20155C4DB289C28002BE372),
    .INIT_65(256'h824FC349CE68773F12E9E2E9C661B98E9A9BD0722BE9F09109F95D6D352E6316),
    .INIT_66(256'h095018DCCDC01A85E5BB493AFCC8BBC8F8D68163F36A6FBC89ACAE2EE6A28BF8),
    .INIT_67(256'h19ED991ED54B291B5FD9831A8FDEABFA957D7178855C2F73B0ADD284E6552453),
    .INIT_68(256'h9FF4706E4321D1F3BD92E692A129B195AAC901DACAA9254138DA25BA65F0CA98),
    .INIT_69(256'hE95F441B30BB804B7817F9562464FE06AACEA50365D155E8B234B49F214A9F76),
    .INIT_6A(256'h697D600728AAF89F248817DCF8A1201489CBE158D5F050D2F976FCAF8EC96F20),
    .INIT_6B(256'h5286A5821A680C2303E610EE61950225DC9E0ADCF78623196AAC8C26D5077D2C),
    .INIT_6C(256'hEB0378F6AEDE3E5AE120A23743252E9804A9DF92E04DC3D620BEA47E78001DF8),
    .INIT_6D(256'hFB634AF16B8ED2DAA9B5D65989707066A9601F4EDA39AA8514B73D874B115FFB),
    .INIT_6E(256'h41E31AB667DCE4E77364A3E0F2D0CAF2DEB15D603C5E04A9A0601EF6C9BF4227),
    .INIT_6F(256'h21ECC20907AFEBB0CBB95001B8A4EA718E7BDE5E31A60B4C0BF55A4E92C185A4),
    .INIT_70(256'h4705B7F395ABA6D22FFBC21DAFCFDED68DCB18C74BFDD64B7B7941C7F340DBB4),
    .INIT_71(256'hACD17B04C003283FCF56F8759857726A893C03AA9735CEAAE31002CA46F3EF38),
    .INIT_72(256'hF984D6928BA8D7AD4B3EB842720404D76D899FDAC8CB42E8F210A86DC634269A),
    .INIT_73(256'h65A441CACA74D04A321F451A406EC674960151E78DF23EB904928DA206038E8C),
    .INIT_74(256'hAB83902963297E9C47AF05BB607F3436F2A35944AAB897E4204E758F83B05D58),
    .INIT_75(256'h948F8927306BE8DA0F9395BB3ED31A13C72EE99988AAF454CA7C0462579DE85A),
    .INIT_76(256'h561CE3CCEC3965DD5635F7A47CC8D94CDD6170D225715DBCA71E579DC6F187F7),
    .INIT_77(256'hFA8CDD5E1E4F84576A5DB47DC4BEFFA4F441F8B737D85F9591AB28EE8C2D19DB),
    .INIT_78(256'h4A3FE07F4377378671776F07012A73834501CE89FADBE9BB0F248F9E8923F056),
    .INIT_79(256'h69CBE5A3507FFD7C0AC6D5767205EDD23A7C0B8C484E30B9095DFFDE1BCD7A82),
    .INIT_7A(256'h2C2B3072CD2B8B151035D90817E15CB92625EBF1833C1C889EBF93CD6BBB4D40),
    .INIT_7B(256'h266E458EE619750D1D670E0B1019C7BB38985EAFA26CF1D242E18FC62CDDF58C),
    .INIT_7C(256'h7666CC5843B833059252DB2378E2E067D382D76DE5F3BED3DA8A105E3AF22CD3),
    .INIT_7D(256'h82482BE9F9F86E390A2AD9EE61BC24FD6CEC71C03A8E2F2225799DC43CD6BD2E),
    .INIT_7E(256'h37B0B2CCBB0D80A99F1469319A192A9F746CAFD4F557CFDE63A7E0502290AD66),
    .INIT_7F(256'hA20B7297D8928EB737818EA3BC8264DA717E383231BB929835A7D16E78517432),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module weights_buffer_pong_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [511:0]douta;
  input clka;
  input ena;
  input [11:0]addra;
  input [511:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [511:0]dina;
  wire [511:0]douta;
  wire ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "12" *) (* C_ADDRB_WIDTH = "12" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "36" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     73.154872 mW" *) 
(* C_FAMILY = "virtex7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weights_buffer_pong.mem" *) 
(* C_INIT_FILE_NAME = "weights_buffer_pong.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "2560" *) (* C_READ_DEPTH_B = "2560" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "512" *) (* C_READ_WIDTH_B = "512" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "2560" *) 
(* C_WRITE_DEPTH_B = "2560" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "512" *) (* C_WRITE_WIDTH_B = "512" *) (* C_XDEVICEFAMILY = "qvirtex7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module weights_buffer_pong_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [11:0]addra;
  input [511:0]dina;
  output [511:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [511:0]dinb;
  output [511:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [11:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [11:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [11:0]addra;
  wire clka;
  wire [511:0]dina;
  wire [511:0]douta;
  wire ena;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[511] = \<const0> ;
  assign doutb[510] = \<const0> ;
  assign doutb[509] = \<const0> ;
  assign doutb[508] = \<const0> ;
  assign doutb[507] = \<const0> ;
  assign doutb[506] = \<const0> ;
  assign doutb[505] = \<const0> ;
  assign doutb[504] = \<const0> ;
  assign doutb[503] = \<const0> ;
  assign doutb[502] = \<const0> ;
  assign doutb[501] = \<const0> ;
  assign doutb[500] = \<const0> ;
  assign doutb[499] = \<const0> ;
  assign doutb[498] = \<const0> ;
  assign doutb[497] = \<const0> ;
  assign doutb[496] = \<const0> ;
  assign doutb[495] = \<const0> ;
  assign doutb[494] = \<const0> ;
  assign doutb[493] = \<const0> ;
  assign doutb[492] = \<const0> ;
  assign doutb[491] = \<const0> ;
  assign doutb[490] = \<const0> ;
  assign doutb[489] = \<const0> ;
  assign doutb[488] = \<const0> ;
  assign doutb[487] = \<const0> ;
  assign doutb[486] = \<const0> ;
  assign doutb[485] = \<const0> ;
  assign doutb[484] = \<const0> ;
  assign doutb[483] = \<const0> ;
  assign doutb[482] = \<const0> ;
  assign doutb[481] = \<const0> ;
  assign doutb[480] = \<const0> ;
  assign doutb[479] = \<const0> ;
  assign doutb[478] = \<const0> ;
  assign doutb[477] = \<const0> ;
  assign doutb[476] = \<const0> ;
  assign doutb[475] = \<const0> ;
  assign doutb[474] = \<const0> ;
  assign doutb[473] = \<const0> ;
  assign doutb[472] = \<const0> ;
  assign doutb[471] = \<const0> ;
  assign doutb[470] = \<const0> ;
  assign doutb[469] = \<const0> ;
  assign doutb[468] = \<const0> ;
  assign doutb[467] = \<const0> ;
  assign doutb[466] = \<const0> ;
  assign doutb[465] = \<const0> ;
  assign doutb[464] = \<const0> ;
  assign doutb[463] = \<const0> ;
  assign doutb[462] = \<const0> ;
  assign doutb[461] = \<const0> ;
  assign doutb[460] = \<const0> ;
  assign doutb[459] = \<const0> ;
  assign doutb[458] = \<const0> ;
  assign doutb[457] = \<const0> ;
  assign doutb[456] = \<const0> ;
  assign doutb[455] = \<const0> ;
  assign doutb[454] = \<const0> ;
  assign doutb[453] = \<const0> ;
  assign doutb[452] = \<const0> ;
  assign doutb[451] = \<const0> ;
  assign doutb[450] = \<const0> ;
  assign doutb[449] = \<const0> ;
  assign doutb[448] = \<const0> ;
  assign doutb[447] = \<const0> ;
  assign doutb[446] = \<const0> ;
  assign doutb[445] = \<const0> ;
  assign doutb[444] = \<const0> ;
  assign doutb[443] = \<const0> ;
  assign doutb[442] = \<const0> ;
  assign doutb[441] = \<const0> ;
  assign doutb[440] = \<const0> ;
  assign doutb[439] = \<const0> ;
  assign doutb[438] = \<const0> ;
  assign doutb[437] = \<const0> ;
  assign doutb[436] = \<const0> ;
  assign doutb[435] = \<const0> ;
  assign doutb[434] = \<const0> ;
  assign doutb[433] = \<const0> ;
  assign doutb[432] = \<const0> ;
  assign doutb[431] = \<const0> ;
  assign doutb[430] = \<const0> ;
  assign doutb[429] = \<const0> ;
  assign doutb[428] = \<const0> ;
  assign doutb[427] = \<const0> ;
  assign doutb[426] = \<const0> ;
  assign doutb[425] = \<const0> ;
  assign doutb[424] = \<const0> ;
  assign doutb[423] = \<const0> ;
  assign doutb[422] = \<const0> ;
  assign doutb[421] = \<const0> ;
  assign doutb[420] = \<const0> ;
  assign doutb[419] = \<const0> ;
  assign doutb[418] = \<const0> ;
  assign doutb[417] = \<const0> ;
  assign doutb[416] = \<const0> ;
  assign doutb[415] = \<const0> ;
  assign doutb[414] = \<const0> ;
  assign doutb[413] = \<const0> ;
  assign doutb[412] = \<const0> ;
  assign doutb[411] = \<const0> ;
  assign doutb[410] = \<const0> ;
  assign doutb[409] = \<const0> ;
  assign doutb[408] = \<const0> ;
  assign doutb[407] = \<const0> ;
  assign doutb[406] = \<const0> ;
  assign doutb[405] = \<const0> ;
  assign doutb[404] = \<const0> ;
  assign doutb[403] = \<const0> ;
  assign doutb[402] = \<const0> ;
  assign doutb[401] = \<const0> ;
  assign doutb[400] = \<const0> ;
  assign doutb[399] = \<const0> ;
  assign doutb[398] = \<const0> ;
  assign doutb[397] = \<const0> ;
  assign doutb[396] = \<const0> ;
  assign doutb[395] = \<const0> ;
  assign doutb[394] = \<const0> ;
  assign doutb[393] = \<const0> ;
  assign doutb[392] = \<const0> ;
  assign doutb[391] = \<const0> ;
  assign doutb[390] = \<const0> ;
  assign doutb[389] = \<const0> ;
  assign doutb[388] = \<const0> ;
  assign doutb[387] = \<const0> ;
  assign doutb[386] = \<const0> ;
  assign doutb[385] = \<const0> ;
  assign doutb[384] = \<const0> ;
  assign doutb[383] = \<const0> ;
  assign doutb[382] = \<const0> ;
  assign doutb[381] = \<const0> ;
  assign doutb[380] = \<const0> ;
  assign doutb[379] = \<const0> ;
  assign doutb[378] = \<const0> ;
  assign doutb[377] = \<const0> ;
  assign doutb[376] = \<const0> ;
  assign doutb[375] = \<const0> ;
  assign doutb[374] = \<const0> ;
  assign doutb[373] = \<const0> ;
  assign doutb[372] = \<const0> ;
  assign doutb[371] = \<const0> ;
  assign doutb[370] = \<const0> ;
  assign doutb[369] = \<const0> ;
  assign doutb[368] = \<const0> ;
  assign doutb[367] = \<const0> ;
  assign doutb[366] = \<const0> ;
  assign doutb[365] = \<const0> ;
  assign doutb[364] = \<const0> ;
  assign doutb[363] = \<const0> ;
  assign doutb[362] = \<const0> ;
  assign doutb[361] = \<const0> ;
  assign doutb[360] = \<const0> ;
  assign doutb[359] = \<const0> ;
  assign doutb[358] = \<const0> ;
  assign doutb[357] = \<const0> ;
  assign doutb[356] = \<const0> ;
  assign doutb[355] = \<const0> ;
  assign doutb[354] = \<const0> ;
  assign doutb[353] = \<const0> ;
  assign doutb[352] = \<const0> ;
  assign doutb[351] = \<const0> ;
  assign doutb[350] = \<const0> ;
  assign doutb[349] = \<const0> ;
  assign doutb[348] = \<const0> ;
  assign doutb[347] = \<const0> ;
  assign doutb[346] = \<const0> ;
  assign doutb[345] = \<const0> ;
  assign doutb[344] = \<const0> ;
  assign doutb[343] = \<const0> ;
  assign doutb[342] = \<const0> ;
  assign doutb[341] = \<const0> ;
  assign doutb[340] = \<const0> ;
  assign doutb[339] = \<const0> ;
  assign doutb[338] = \<const0> ;
  assign doutb[337] = \<const0> ;
  assign doutb[336] = \<const0> ;
  assign doutb[335] = \<const0> ;
  assign doutb[334] = \<const0> ;
  assign doutb[333] = \<const0> ;
  assign doutb[332] = \<const0> ;
  assign doutb[331] = \<const0> ;
  assign doutb[330] = \<const0> ;
  assign doutb[329] = \<const0> ;
  assign doutb[328] = \<const0> ;
  assign doutb[327] = \<const0> ;
  assign doutb[326] = \<const0> ;
  assign doutb[325] = \<const0> ;
  assign doutb[324] = \<const0> ;
  assign doutb[323] = \<const0> ;
  assign doutb[322] = \<const0> ;
  assign doutb[321] = \<const0> ;
  assign doutb[320] = \<const0> ;
  assign doutb[319] = \<const0> ;
  assign doutb[318] = \<const0> ;
  assign doutb[317] = \<const0> ;
  assign doutb[316] = \<const0> ;
  assign doutb[315] = \<const0> ;
  assign doutb[314] = \<const0> ;
  assign doutb[313] = \<const0> ;
  assign doutb[312] = \<const0> ;
  assign doutb[311] = \<const0> ;
  assign doutb[310] = \<const0> ;
  assign doutb[309] = \<const0> ;
  assign doutb[308] = \<const0> ;
  assign doutb[307] = \<const0> ;
  assign doutb[306] = \<const0> ;
  assign doutb[305] = \<const0> ;
  assign doutb[304] = \<const0> ;
  assign doutb[303] = \<const0> ;
  assign doutb[302] = \<const0> ;
  assign doutb[301] = \<const0> ;
  assign doutb[300] = \<const0> ;
  assign doutb[299] = \<const0> ;
  assign doutb[298] = \<const0> ;
  assign doutb[297] = \<const0> ;
  assign doutb[296] = \<const0> ;
  assign doutb[295] = \<const0> ;
  assign doutb[294] = \<const0> ;
  assign doutb[293] = \<const0> ;
  assign doutb[292] = \<const0> ;
  assign doutb[291] = \<const0> ;
  assign doutb[290] = \<const0> ;
  assign doutb[289] = \<const0> ;
  assign doutb[288] = \<const0> ;
  assign doutb[287] = \<const0> ;
  assign doutb[286] = \<const0> ;
  assign doutb[285] = \<const0> ;
  assign doutb[284] = \<const0> ;
  assign doutb[283] = \<const0> ;
  assign doutb[282] = \<const0> ;
  assign doutb[281] = \<const0> ;
  assign doutb[280] = \<const0> ;
  assign doutb[279] = \<const0> ;
  assign doutb[278] = \<const0> ;
  assign doutb[277] = \<const0> ;
  assign doutb[276] = \<const0> ;
  assign doutb[275] = \<const0> ;
  assign doutb[274] = \<const0> ;
  assign doutb[273] = \<const0> ;
  assign doutb[272] = \<const0> ;
  assign doutb[271] = \<const0> ;
  assign doutb[270] = \<const0> ;
  assign doutb[269] = \<const0> ;
  assign doutb[268] = \<const0> ;
  assign doutb[267] = \<const0> ;
  assign doutb[266] = \<const0> ;
  assign doutb[265] = \<const0> ;
  assign doutb[264] = \<const0> ;
  assign doutb[263] = \<const0> ;
  assign doutb[262] = \<const0> ;
  assign doutb[261] = \<const0> ;
  assign doutb[260] = \<const0> ;
  assign doutb[259] = \<const0> ;
  assign doutb[258] = \<const0> ;
  assign doutb[257] = \<const0> ;
  assign doutb[256] = \<const0> ;
  assign doutb[255] = \<const0> ;
  assign doutb[254] = \<const0> ;
  assign doutb[253] = \<const0> ;
  assign doutb[252] = \<const0> ;
  assign doutb[251] = \<const0> ;
  assign doutb[250] = \<const0> ;
  assign doutb[249] = \<const0> ;
  assign doutb[248] = \<const0> ;
  assign doutb[247] = \<const0> ;
  assign doutb[246] = \<const0> ;
  assign doutb[245] = \<const0> ;
  assign doutb[244] = \<const0> ;
  assign doutb[243] = \<const0> ;
  assign doutb[242] = \<const0> ;
  assign doutb[241] = \<const0> ;
  assign doutb[240] = \<const0> ;
  assign doutb[239] = \<const0> ;
  assign doutb[238] = \<const0> ;
  assign doutb[237] = \<const0> ;
  assign doutb[236] = \<const0> ;
  assign doutb[235] = \<const0> ;
  assign doutb[234] = \<const0> ;
  assign doutb[233] = \<const0> ;
  assign doutb[232] = \<const0> ;
  assign doutb[231] = \<const0> ;
  assign doutb[230] = \<const0> ;
  assign doutb[229] = \<const0> ;
  assign doutb[228] = \<const0> ;
  assign doutb[227] = \<const0> ;
  assign doutb[226] = \<const0> ;
  assign doutb[225] = \<const0> ;
  assign doutb[224] = \<const0> ;
  assign doutb[223] = \<const0> ;
  assign doutb[222] = \<const0> ;
  assign doutb[221] = \<const0> ;
  assign doutb[220] = \<const0> ;
  assign doutb[219] = \<const0> ;
  assign doutb[218] = \<const0> ;
  assign doutb[217] = \<const0> ;
  assign doutb[216] = \<const0> ;
  assign doutb[215] = \<const0> ;
  assign doutb[214] = \<const0> ;
  assign doutb[213] = \<const0> ;
  assign doutb[212] = \<const0> ;
  assign doutb[211] = \<const0> ;
  assign doutb[210] = \<const0> ;
  assign doutb[209] = \<const0> ;
  assign doutb[208] = \<const0> ;
  assign doutb[207] = \<const0> ;
  assign doutb[206] = \<const0> ;
  assign doutb[205] = \<const0> ;
  assign doutb[204] = \<const0> ;
  assign doutb[203] = \<const0> ;
  assign doutb[202] = \<const0> ;
  assign doutb[201] = \<const0> ;
  assign doutb[200] = \<const0> ;
  assign doutb[199] = \<const0> ;
  assign doutb[198] = \<const0> ;
  assign doutb[197] = \<const0> ;
  assign doutb[196] = \<const0> ;
  assign doutb[195] = \<const0> ;
  assign doutb[194] = \<const0> ;
  assign doutb[193] = \<const0> ;
  assign doutb[192] = \<const0> ;
  assign doutb[191] = \<const0> ;
  assign doutb[190] = \<const0> ;
  assign doutb[189] = \<const0> ;
  assign doutb[188] = \<const0> ;
  assign doutb[187] = \<const0> ;
  assign doutb[186] = \<const0> ;
  assign doutb[185] = \<const0> ;
  assign doutb[184] = \<const0> ;
  assign doutb[183] = \<const0> ;
  assign doutb[182] = \<const0> ;
  assign doutb[181] = \<const0> ;
  assign doutb[180] = \<const0> ;
  assign doutb[179] = \<const0> ;
  assign doutb[178] = \<const0> ;
  assign doutb[177] = \<const0> ;
  assign doutb[176] = \<const0> ;
  assign doutb[175] = \<const0> ;
  assign doutb[174] = \<const0> ;
  assign doutb[173] = \<const0> ;
  assign doutb[172] = \<const0> ;
  assign doutb[171] = \<const0> ;
  assign doutb[170] = \<const0> ;
  assign doutb[169] = \<const0> ;
  assign doutb[168] = \<const0> ;
  assign doutb[167] = \<const0> ;
  assign doutb[166] = \<const0> ;
  assign doutb[165] = \<const0> ;
  assign doutb[164] = \<const0> ;
  assign doutb[163] = \<const0> ;
  assign doutb[162] = \<const0> ;
  assign doutb[161] = \<const0> ;
  assign doutb[160] = \<const0> ;
  assign doutb[159] = \<const0> ;
  assign doutb[158] = \<const0> ;
  assign doutb[157] = \<const0> ;
  assign doutb[156] = \<const0> ;
  assign doutb[155] = \<const0> ;
  assign doutb[154] = \<const0> ;
  assign doutb[153] = \<const0> ;
  assign doutb[152] = \<const0> ;
  assign doutb[151] = \<const0> ;
  assign doutb[150] = \<const0> ;
  assign doutb[149] = \<const0> ;
  assign doutb[148] = \<const0> ;
  assign doutb[147] = \<const0> ;
  assign doutb[146] = \<const0> ;
  assign doutb[145] = \<const0> ;
  assign doutb[144] = \<const0> ;
  assign doutb[143] = \<const0> ;
  assign doutb[142] = \<const0> ;
  assign doutb[141] = \<const0> ;
  assign doutb[140] = \<const0> ;
  assign doutb[139] = \<const0> ;
  assign doutb[138] = \<const0> ;
  assign doutb[137] = \<const0> ;
  assign doutb[136] = \<const0> ;
  assign doutb[135] = \<const0> ;
  assign doutb[134] = \<const0> ;
  assign doutb[133] = \<const0> ;
  assign doutb[132] = \<const0> ;
  assign doutb[131] = \<const0> ;
  assign doutb[130] = \<const0> ;
  assign doutb[129] = \<const0> ;
  assign doutb[128] = \<const0> ;
  assign doutb[127] = \<const0> ;
  assign doutb[126] = \<const0> ;
  assign doutb[125] = \<const0> ;
  assign doutb[124] = \<const0> ;
  assign doutb[123] = \<const0> ;
  assign doutb[122] = \<const0> ;
  assign doutb[121] = \<const0> ;
  assign doutb[120] = \<const0> ;
  assign doutb[119] = \<const0> ;
  assign doutb[118] = \<const0> ;
  assign doutb[117] = \<const0> ;
  assign doutb[116] = \<const0> ;
  assign doutb[115] = \<const0> ;
  assign doutb[114] = \<const0> ;
  assign doutb[113] = \<const0> ;
  assign doutb[112] = \<const0> ;
  assign doutb[111] = \<const0> ;
  assign doutb[110] = \<const0> ;
  assign doutb[109] = \<const0> ;
  assign doutb[108] = \<const0> ;
  assign doutb[107] = \<const0> ;
  assign doutb[106] = \<const0> ;
  assign doutb[105] = \<const0> ;
  assign doutb[104] = \<const0> ;
  assign doutb[103] = \<const0> ;
  assign doutb[102] = \<const0> ;
  assign doutb[101] = \<const0> ;
  assign doutb[100] = \<const0> ;
  assign doutb[99] = \<const0> ;
  assign doutb[98] = \<const0> ;
  assign doutb[97] = \<const0> ;
  assign doutb[96] = \<const0> ;
  assign doutb[95] = \<const0> ;
  assign doutb[94] = \<const0> ;
  assign doutb[93] = \<const0> ;
  assign doutb[92] = \<const0> ;
  assign doutb[91] = \<const0> ;
  assign doutb[90] = \<const0> ;
  assign doutb[89] = \<const0> ;
  assign doutb[88] = \<const0> ;
  assign doutb[87] = \<const0> ;
  assign doutb[86] = \<const0> ;
  assign doutb[85] = \<const0> ;
  assign doutb[84] = \<const0> ;
  assign doutb[83] = \<const0> ;
  assign doutb[82] = \<const0> ;
  assign doutb[81] = \<const0> ;
  assign doutb[80] = \<const0> ;
  assign doutb[79] = \<const0> ;
  assign doutb[78] = \<const0> ;
  assign doutb[77] = \<const0> ;
  assign doutb[76] = \<const0> ;
  assign doutb[75] = \<const0> ;
  assign doutb[74] = \<const0> ;
  assign doutb[73] = \<const0> ;
  assign doutb[72] = \<const0> ;
  assign doutb[71] = \<const0> ;
  assign doutb[70] = \<const0> ;
  assign doutb[69] = \<const0> ;
  assign doutb[68] = \<const0> ;
  assign doutb[67] = \<const0> ;
  assign doutb[66] = \<const0> ;
  assign doutb[65] = \<const0> ;
  assign doutb[64] = \<const0> ;
  assign doutb[63] = \<const0> ;
  assign doutb[62] = \<const0> ;
  assign doutb[61] = \<const0> ;
  assign doutb[60] = \<const0> ;
  assign doutb[59] = \<const0> ;
  assign doutb[58] = \<const0> ;
  assign doutb[57] = \<const0> ;
  assign doutb[56] = \<const0> ;
  assign doutb[55] = \<const0> ;
  assign doutb[54] = \<const0> ;
  assign doutb[53] = \<const0> ;
  assign doutb[52] = \<const0> ;
  assign doutb[51] = \<const0> ;
  assign doutb[50] = \<const0> ;
  assign doutb[49] = \<const0> ;
  assign doutb[48] = \<const0> ;
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43] = \<const0> ;
  assign doutb[42] = \<const0> ;
  assign doutb[41] = \<const0> ;
  assign doutb[40] = \<const0> ;
  assign doutb[39] = \<const0> ;
  assign doutb[38] = \<const0> ;
  assign doutb[37] = \<const0> ;
  assign doutb[36] = \<const0> ;
  assign doutb[35] = \<const0> ;
  assign doutb[34] = \<const0> ;
  assign doutb[33] = \<const0> ;
  assign doutb[32] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[511] = \<const0> ;
  assign s_axi_rdata[510] = \<const0> ;
  assign s_axi_rdata[509] = \<const0> ;
  assign s_axi_rdata[508] = \<const0> ;
  assign s_axi_rdata[507] = \<const0> ;
  assign s_axi_rdata[506] = \<const0> ;
  assign s_axi_rdata[505] = \<const0> ;
  assign s_axi_rdata[504] = \<const0> ;
  assign s_axi_rdata[503] = \<const0> ;
  assign s_axi_rdata[502] = \<const0> ;
  assign s_axi_rdata[501] = \<const0> ;
  assign s_axi_rdata[500] = \<const0> ;
  assign s_axi_rdata[499] = \<const0> ;
  assign s_axi_rdata[498] = \<const0> ;
  assign s_axi_rdata[497] = \<const0> ;
  assign s_axi_rdata[496] = \<const0> ;
  assign s_axi_rdata[495] = \<const0> ;
  assign s_axi_rdata[494] = \<const0> ;
  assign s_axi_rdata[493] = \<const0> ;
  assign s_axi_rdata[492] = \<const0> ;
  assign s_axi_rdata[491] = \<const0> ;
  assign s_axi_rdata[490] = \<const0> ;
  assign s_axi_rdata[489] = \<const0> ;
  assign s_axi_rdata[488] = \<const0> ;
  assign s_axi_rdata[487] = \<const0> ;
  assign s_axi_rdata[486] = \<const0> ;
  assign s_axi_rdata[485] = \<const0> ;
  assign s_axi_rdata[484] = \<const0> ;
  assign s_axi_rdata[483] = \<const0> ;
  assign s_axi_rdata[482] = \<const0> ;
  assign s_axi_rdata[481] = \<const0> ;
  assign s_axi_rdata[480] = \<const0> ;
  assign s_axi_rdata[479] = \<const0> ;
  assign s_axi_rdata[478] = \<const0> ;
  assign s_axi_rdata[477] = \<const0> ;
  assign s_axi_rdata[476] = \<const0> ;
  assign s_axi_rdata[475] = \<const0> ;
  assign s_axi_rdata[474] = \<const0> ;
  assign s_axi_rdata[473] = \<const0> ;
  assign s_axi_rdata[472] = \<const0> ;
  assign s_axi_rdata[471] = \<const0> ;
  assign s_axi_rdata[470] = \<const0> ;
  assign s_axi_rdata[469] = \<const0> ;
  assign s_axi_rdata[468] = \<const0> ;
  assign s_axi_rdata[467] = \<const0> ;
  assign s_axi_rdata[466] = \<const0> ;
  assign s_axi_rdata[465] = \<const0> ;
  assign s_axi_rdata[464] = \<const0> ;
  assign s_axi_rdata[463] = \<const0> ;
  assign s_axi_rdata[462] = \<const0> ;
  assign s_axi_rdata[461] = \<const0> ;
  assign s_axi_rdata[460] = \<const0> ;
  assign s_axi_rdata[459] = \<const0> ;
  assign s_axi_rdata[458] = \<const0> ;
  assign s_axi_rdata[457] = \<const0> ;
  assign s_axi_rdata[456] = \<const0> ;
  assign s_axi_rdata[455] = \<const0> ;
  assign s_axi_rdata[454] = \<const0> ;
  assign s_axi_rdata[453] = \<const0> ;
  assign s_axi_rdata[452] = \<const0> ;
  assign s_axi_rdata[451] = \<const0> ;
  assign s_axi_rdata[450] = \<const0> ;
  assign s_axi_rdata[449] = \<const0> ;
  assign s_axi_rdata[448] = \<const0> ;
  assign s_axi_rdata[447] = \<const0> ;
  assign s_axi_rdata[446] = \<const0> ;
  assign s_axi_rdata[445] = \<const0> ;
  assign s_axi_rdata[444] = \<const0> ;
  assign s_axi_rdata[443] = \<const0> ;
  assign s_axi_rdata[442] = \<const0> ;
  assign s_axi_rdata[441] = \<const0> ;
  assign s_axi_rdata[440] = \<const0> ;
  assign s_axi_rdata[439] = \<const0> ;
  assign s_axi_rdata[438] = \<const0> ;
  assign s_axi_rdata[437] = \<const0> ;
  assign s_axi_rdata[436] = \<const0> ;
  assign s_axi_rdata[435] = \<const0> ;
  assign s_axi_rdata[434] = \<const0> ;
  assign s_axi_rdata[433] = \<const0> ;
  assign s_axi_rdata[432] = \<const0> ;
  assign s_axi_rdata[431] = \<const0> ;
  assign s_axi_rdata[430] = \<const0> ;
  assign s_axi_rdata[429] = \<const0> ;
  assign s_axi_rdata[428] = \<const0> ;
  assign s_axi_rdata[427] = \<const0> ;
  assign s_axi_rdata[426] = \<const0> ;
  assign s_axi_rdata[425] = \<const0> ;
  assign s_axi_rdata[424] = \<const0> ;
  assign s_axi_rdata[423] = \<const0> ;
  assign s_axi_rdata[422] = \<const0> ;
  assign s_axi_rdata[421] = \<const0> ;
  assign s_axi_rdata[420] = \<const0> ;
  assign s_axi_rdata[419] = \<const0> ;
  assign s_axi_rdata[418] = \<const0> ;
  assign s_axi_rdata[417] = \<const0> ;
  assign s_axi_rdata[416] = \<const0> ;
  assign s_axi_rdata[415] = \<const0> ;
  assign s_axi_rdata[414] = \<const0> ;
  assign s_axi_rdata[413] = \<const0> ;
  assign s_axi_rdata[412] = \<const0> ;
  assign s_axi_rdata[411] = \<const0> ;
  assign s_axi_rdata[410] = \<const0> ;
  assign s_axi_rdata[409] = \<const0> ;
  assign s_axi_rdata[408] = \<const0> ;
  assign s_axi_rdata[407] = \<const0> ;
  assign s_axi_rdata[406] = \<const0> ;
  assign s_axi_rdata[405] = \<const0> ;
  assign s_axi_rdata[404] = \<const0> ;
  assign s_axi_rdata[403] = \<const0> ;
  assign s_axi_rdata[402] = \<const0> ;
  assign s_axi_rdata[401] = \<const0> ;
  assign s_axi_rdata[400] = \<const0> ;
  assign s_axi_rdata[399] = \<const0> ;
  assign s_axi_rdata[398] = \<const0> ;
  assign s_axi_rdata[397] = \<const0> ;
  assign s_axi_rdata[396] = \<const0> ;
  assign s_axi_rdata[395] = \<const0> ;
  assign s_axi_rdata[394] = \<const0> ;
  assign s_axi_rdata[393] = \<const0> ;
  assign s_axi_rdata[392] = \<const0> ;
  assign s_axi_rdata[391] = \<const0> ;
  assign s_axi_rdata[390] = \<const0> ;
  assign s_axi_rdata[389] = \<const0> ;
  assign s_axi_rdata[388] = \<const0> ;
  assign s_axi_rdata[387] = \<const0> ;
  assign s_axi_rdata[386] = \<const0> ;
  assign s_axi_rdata[385] = \<const0> ;
  assign s_axi_rdata[384] = \<const0> ;
  assign s_axi_rdata[383] = \<const0> ;
  assign s_axi_rdata[382] = \<const0> ;
  assign s_axi_rdata[381] = \<const0> ;
  assign s_axi_rdata[380] = \<const0> ;
  assign s_axi_rdata[379] = \<const0> ;
  assign s_axi_rdata[378] = \<const0> ;
  assign s_axi_rdata[377] = \<const0> ;
  assign s_axi_rdata[376] = \<const0> ;
  assign s_axi_rdata[375] = \<const0> ;
  assign s_axi_rdata[374] = \<const0> ;
  assign s_axi_rdata[373] = \<const0> ;
  assign s_axi_rdata[372] = \<const0> ;
  assign s_axi_rdata[371] = \<const0> ;
  assign s_axi_rdata[370] = \<const0> ;
  assign s_axi_rdata[369] = \<const0> ;
  assign s_axi_rdata[368] = \<const0> ;
  assign s_axi_rdata[367] = \<const0> ;
  assign s_axi_rdata[366] = \<const0> ;
  assign s_axi_rdata[365] = \<const0> ;
  assign s_axi_rdata[364] = \<const0> ;
  assign s_axi_rdata[363] = \<const0> ;
  assign s_axi_rdata[362] = \<const0> ;
  assign s_axi_rdata[361] = \<const0> ;
  assign s_axi_rdata[360] = \<const0> ;
  assign s_axi_rdata[359] = \<const0> ;
  assign s_axi_rdata[358] = \<const0> ;
  assign s_axi_rdata[357] = \<const0> ;
  assign s_axi_rdata[356] = \<const0> ;
  assign s_axi_rdata[355] = \<const0> ;
  assign s_axi_rdata[354] = \<const0> ;
  assign s_axi_rdata[353] = \<const0> ;
  assign s_axi_rdata[352] = \<const0> ;
  assign s_axi_rdata[351] = \<const0> ;
  assign s_axi_rdata[350] = \<const0> ;
  assign s_axi_rdata[349] = \<const0> ;
  assign s_axi_rdata[348] = \<const0> ;
  assign s_axi_rdata[347] = \<const0> ;
  assign s_axi_rdata[346] = \<const0> ;
  assign s_axi_rdata[345] = \<const0> ;
  assign s_axi_rdata[344] = \<const0> ;
  assign s_axi_rdata[343] = \<const0> ;
  assign s_axi_rdata[342] = \<const0> ;
  assign s_axi_rdata[341] = \<const0> ;
  assign s_axi_rdata[340] = \<const0> ;
  assign s_axi_rdata[339] = \<const0> ;
  assign s_axi_rdata[338] = \<const0> ;
  assign s_axi_rdata[337] = \<const0> ;
  assign s_axi_rdata[336] = \<const0> ;
  assign s_axi_rdata[335] = \<const0> ;
  assign s_axi_rdata[334] = \<const0> ;
  assign s_axi_rdata[333] = \<const0> ;
  assign s_axi_rdata[332] = \<const0> ;
  assign s_axi_rdata[331] = \<const0> ;
  assign s_axi_rdata[330] = \<const0> ;
  assign s_axi_rdata[329] = \<const0> ;
  assign s_axi_rdata[328] = \<const0> ;
  assign s_axi_rdata[327] = \<const0> ;
  assign s_axi_rdata[326] = \<const0> ;
  assign s_axi_rdata[325] = \<const0> ;
  assign s_axi_rdata[324] = \<const0> ;
  assign s_axi_rdata[323] = \<const0> ;
  assign s_axi_rdata[322] = \<const0> ;
  assign s_axi_rdata[321] = \<const0> ;
  assign s_axi_rdata[320] = \<const0> ;
  assign s_axi_rdata[319] = \<const0> ;
  assign s_axi_rdata[318] = \<const0> ;
  assign s_axi_rdata[317] = \<const0> ;
  assign s_axi_rdata[316] = \<const0> ;
  assign s_axi_rdata[315] = \<const0> ;
  assign s_axi_rdata[314] = \<const0> ;
  assign s_axi_rdata[313] = \<const0> ;
  assign s_axi_rdata[312] = \<const0> ;
  assign s_axi_rdata[311] = \<const0> ;
  assign s_axi_rdata[310] = \<const0> ;
  assign s_axi_rdata[309] = \<const0> ;
  assign s_axi_rdata[308] = \<const0> ;
  assign s_axi_rdata[307] = \<const0> ;
  assign s_axi_rdata[306] = \<const0> ;
  assign s_axi_rdata[305] = \<const0> ;
  assign s_axi_rdata[304] = \<const0> ;
  assign s_axi_rdata[303] = \<const0> ;
  assign s_axi_rdata[302] = \<const0> ;
  assign s_axi_rdata[301] = \<const0> ;
  assign s_axi_rdata[300] = \<const0> ;
  assign s_axi_rdata[299] = \<const0> ;
  assign s_axi_rdata[298] = \<const0> ;
  assign s_axi_rdata[297] = \<const0> ;
  assign s_axi_rdata[296] = \<const0> ;
  assign s_axi_rdata[295] = \<const0> ;
  assign s_axi_rdata[294] = \<const0> ;
  assign s_axi_rdata[293] = \<const0> ;
  assign s_axi_rdata[292] = \<const0> ;
  assign s_axi_rdata[291] = \<const0> ;
  assign s_axi_rdata[290] = \<const0> ;
  assign s_axi_rdata[289] = \<const0> ;
  assign s_axi_rdata[288] = \<const0> ;
  assign s_axi_rdata[287] = \<const0> ;
  assign s_axi_rdata[286] = \<const0> ;
  assign s_axi_rdata[285] = \<const0> ;
  assign s_axi_rdata[284] = \<const0> ;
  assign s_axi_rdata[283] = \<const0> ;
  assign s_axi_rdata[282] = \<const0> ;
  assign s_axi_rdata[281] = \<const0> ;
  assign s_axi_rdata[280] = \<const0> ;
  assign s_axi_rdata[279] = \<const0> ;
  assign s_axi_rdata[278] = \<const0> ;
  assign s_axi_rdata[277] = \<const0> ;
  assign s_axi_rdata[276] = \<const0> ;
  assign s_axi_rdata[275] = \<const0> ;
  assign s_axi_rdata[274] = \<const0> ;
  assign s_axi_rdata[273] = \<const0> ;
  assign s_axi_rdata[272] = \<const0> ;
  assign s_axi_rdata[271] = \<const0> ;
  assign s_axi_rdata[270] = \<const0> ;
  assign s_axi_rdata[269] = \<const0> ;
  assign s_axi_rdata[268] = \<const0> ;
  assign s_axi_rdata[267] = \<const0> ;
  assign s_axi_rdata[266] = \<const0> ;
  assign s_axi_rdata[265] = \<const0> ;
  assign s_axi_rdata[264] = \<const0> ;
  assign s_axi_rdata[263] = \<const0> ;
  assign s_axi_rdata[262] = \<const0> ;
  assign s_axi_rdata[261] = \<const0> ;
  assign s_axi_rdata[260] = \<const0> ;
  assign s_axi_rdata[259] = \<const0> ;
  assign s_axi_rdata[258] = \<const0> ;
  assign s_axi_rdata[257] = \<const0> ;
  assign s_axi_rdata[256] = \<const0> ;
  assign s_axi_rdata[255] = \<const0> ;
  assign s_axi_rdata[254] = \<const0> ;
  assign s_axi_rdata[253] = \<const0> ;
  assign s_axi_rdata[252] = \<const0> ;
  assign s_axi_rdata[251] = \<const0> ;
  assign s_axi_rdata[250] = \<const0> ;
  assign s_axi_rdata[249] = \<const0> ;
  assign s_axi_rdata[248] = \<const0> ;
  assign s_axi_rdata[247] = \<const0> ;
  assign s_axi_rdata[246] = \<const0> ;
  assign s_axi_rdata[245] = \<const0> ;
  assign s_axi_rdata[244] = \<const0> ;
  assign s_axi_rdata[243] = \<const0> ;
  assign s_axi_rdata[242] = \<const0> ;
  assign s_axi_rdata[241] = \<const0> ;
  assign s_axi_rdata[240] = \<const0> ;
  assign s_axi_rdata[239] = \<const0> ;
  assign s_axi_rdata[238] = \<const0> ;
  assign s_axi_rdata[237] = \<const0> ;
  assign s_axi_rdata[236] = \<const0> ;
  assign s_axi_rdata[235] = \<const0> ;
  assign s_axi_rdata[234] = \<const0> ;
  assign s_axi_rdata[233] = \<const0> ;
  assign s_axi_rdata[232] = \<const0> ;
  assign s_axi_rdata[231] = \<const0> ;
  assign s_axi_rdata[230] = \<const0> ;
  assign s_axi_rdata[229] = \<const0> ;
  assign s_axi_rdata[228] = \<const0> ;
  assign s_axi_rdata[227] = \<const0> ;
  assign s_axi_rdata[226] = \<const0> ;
  assign s_axi_rdata[225] = \<const0> ;
  assign s_axi_rdata[224] = \<const0> ;
  assign s_axi_rdata[223] = \<const0> ;
  assign s_axi_rdata[222] = \<const0> ;
  assign s_axi_rdata[221] = \<const0> ;
  assign s_axi_rdata[220] = \<const0> ;
  assign s_axi_rdata[219] = \<const0> ;
  assign s_axi_rdata[218] = \<const0> ;
  assign s_axi_rdata[217] = \<const0> ;
  assign s_axi_rdata[216] = \<const0> ;
  assign s_axi_rdata[215] = \<const0> ;
  assign s_axi_rdata[214] = \<const0> ;
  assign s_axi_rdata[213] = \<const0> ;
  assign s_axi_rdata[212] = \<const0> ;
  assign s_axi_rdata[211] = \<const0> ;
  assign s_axi_rdata[210] = \<const0> ;
  assign s_axi_rdata[209] = \<const0> ;
  assign s_axi_rdata[208] = \<const0> ;
  assign s_axi_rdata[207] = \<const0> ;
  assign s_axi_rdata[206] = \<const0> ;
  assign s_axi_rdata[205] = \<const0> ;
  assign s_axi_rdata[204] = \<const0> ;
  assign s_axi_rdata[203] = \<const0> ;
  assign s_axi_rdata[202] = \<const0> ;
  assign s_axi_rdata[201] = \<const0> ;
  assign s_axi_rdata[200] = \<const0> ;
  assign s_axi_rdata[199] = \<const0> ;
  assign s_axi_rdata[198] = \<const0> ;
  assign s_axi_rdata[197] = \<const0> ;
  assign s_axi_rdata[196] = \<const0> ;
  assign s_axi_rdata[195] = \<const0> ;
  assign s_axi_rdata[194] = \<const0> ;
  assign s_axi_rdata[193] = \<const0> ;
  assign s_axi_rdata[192] = \<const0> ;
  assign s_axi_rdata[191] = \<const0> ;
  assign s_axi_rdata[190] = \<const0> ;
  assign s_axi_rdata[189] = \<const0> ;
  assign s_axi_rdata[188] = \<const0> ;
  assign s_axi_rdata[187] = \<const0> ;
  assign s_axi_rdata[186] = \<const0> ;
  assign s_axi_rdata[185] = \<const0> ;
  assign s_axi_rdata[184] = \<const0> ;
  assign s_axi_rdata[183] = \<const0> ;
  assign s_axi_rdata[182] = \<const0> ;
  assign s_axi_rdata[181] = \<const0> ;
  assign s_axi_rdata[180] = \<const0> ;
  assign s_axi_rdata[179] = \<const0> ;
  assign s_axi_rdata[178] = \<const0> ;
  assign s_axi_rdata[177] = \<const0> ;
  assign s_axi_rdata[176] = \<const0> ;
  assign s_axi_rdata[175] = \<const0> ;
  assign s_axi_rdata[174] = \<const0> ;
  assign s_axi_rdata[173] = \<const0> ;
  assign s_axi_rdata[172] = \<const0> ;
  assign s_axi_rdata[171] = \<const0> ;
  assign s_axi_rdata[170] = \<const0> ;
  assign s_axi_rdata[169] = \<const0> ;
  assign s_axi_rdata[168] = \<const0> ;
  assign s_axi_rdata[167] = \<const0> ;
  assign s_axi_rdata[166] = \<const0> ;
  assign s_axi_rdata[165] = \<const0> ;
  assign s_axi_rdata[164] = \<const0> ;
  assign s_axi_rdata[163] = \<const0> ;
  assign s_axi_rdata[162] = \<const0> ;
  assign s_axi_rdata[161] = \<const0> ;
  assign s_axi_rdata[160] = \<const0> ;
  assign s_axi_rdata[159] = \<const0> ;
  assign s_axi_rdata[158] = \<const0> ;
  assign s_axi_rdata[157] = \<const0> ;
  assign s_axi_rdata[156] = \<const0> ;
  assign s_axi_rdata[155] = \<const0> ;
  assign s_axi_rdata[154] = \<const0> ;
  assign s_axi_rdata[153] = \<const0> ;
  assign s_axi_rdata[152] = \<const0> ;
  assign s_axi_rdata[151] = \<const0> ;
  assign s_axi_rdata[150] = \<const0> ;
  assign s_axi_rdata[149] = \<const0> ;
  assign s_axi_rdata[148] = \<const0> ;
  assign s_axi_rdata[147] = \<const0> ;
  assign s_axi_rdata[146] = \<const0> ;
  assign s_axi_rdata[145] = \<const0> ;
  assign s_axi_rdata[144] = \<const0> ;
  assign s_axi_rdata[143] = \<const0> ;
  assign s_axi_rdata[142] = \<const0> ;
  assign s_axi_rdata[141] = \<const0> ;
  assign s_axi_rdata[140] = \<const0> ;
  assign s_axi_rdata[139] = \<const0> ;
  assign s_axi_rdata[138] = \<const0> ;
  assign s_axi_rdata[137] = \<const0> ;
  assign s_axi_rdata[136] = \<const0> ;
  assign s_axi_rdata[135] = \<const0> ;
  assign s_axi_rdata[134] = \<const0> ;
  assign s_axi_rdata[133] = \<const0> ;
  assign s_axi_rdata[132] = \<const0> ;
  assign s_axi_rdata[131] = \<const0> ;
  assign s_axi_rdata[130] = \<const0> ;
  assign s_axi_rdata[129] = \<const0> ;
  assign s_axi_rdata[128] = \<const0> ;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  weights_buffer_pong_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module weights_buffer_pong_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [511:0]douta;
  input clka;
  input ena;
  input [11:0]addra;
  input [511:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [511:0]dina;
  wire [511:0]douta;
  wire ena;
  wire [0:0]wea;

  weights_buffer_pong_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
