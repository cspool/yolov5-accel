// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Sep  2 16:23:54 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/vivado_pros/yolov5_accel_2/yolov5_accel_2.srcs/sources_1/ip/weights_buffer/weights_buffer_sim_netlist.v
// Design      : weights_buffer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weights_buffer,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module weights_buffer
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [511:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [511:0]douta;
  wire ena;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [511:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "21" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     41.873736 mW" *) 
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
  (* C_INIT_FILE = "weights_buffer.mem" *) 
  (* C_INIT_FILE_NAME = "weights_buffer.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1536" *) 
  (* C_READ_DEPTH_B = "1536" *) 
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
  (* C_WRITE_DEPTH_A = "1536" *) 
  (* C_WRITE_DEPTH_B = "1536" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "512" *) 
  (* C_WRITE_WIDTH_B = "512" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  weights_buffer_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[511:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module weights_buffer_bindec
   (ena_array,
    addra,
    ena);
  output [0:0]ena_array;
  input [1:0]addra;
  input ena;

  wire [1:0]addra;
  wire ena;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h40)) 
    \/i_ 
       (.I0(addra[0]),
        .I1(ena),
        .I2(addra[1]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module weights_buffer_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra);
  output [511:0]douta;
  input clka;
  input ena;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [511:0]douta;
  wire ena;
  wire [2:2]ena_array;
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
  wire \ramloop[10].ram.r_n_18 ;
  wire \ramloop[10].ram.r_n_19 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_20 ;
  wire \ramloop[10].ram.r_n_21 ;
  wire \ramloop[10].ram.r_n_22 ;
  wire \ramloop[10].ram.r_n_23 ;
  wire \ramloop[10].ram.r_n_24 ;
  wire \ramloop[10].ram.r_n_25 ;
  wire \ramloop[10].ram.r_n_26 ;
  wire \ramloop[10].ram.r_n_27 ;
  wire \ramloop[10].ram.r_n_28 ;
  wire \ramloop[10].ram.r_n_29 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_30 ;
  wire \ramloop[10].ram.r_n_31 ;
  wire \ramloop[10].ram.r_n_32 ;
  wire \ramloop[10].ram.r_n_33 ;
  wire \ramloop[10].ram.r_n_34 ;
  wire \ramloop[10].ram.r_n_35 ;
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
  wire \ramloop[11].ram.r_n_18 ;
  wire \ramloop[11].ram.r_n_19 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_20 ;
  wire \ramloop[11].ram.r_n_21 ;
  wire \ramloop[11].ram.r_n_22 ;
  wire \ramloop[11].ram.r_n_23 ;
  wire \ramloop[11].ram.r_n_24 ;
  wire \ramloop[11].ram.r_n_25 ;
  wire \ramloop[11].ram.r_n_26 ;
  wire \ramloop[11].ram.r_n_27 ;
  wire \ramloop[11].ram.r_n_28 ;
  wire \ramloop[11].ram.r_n_29 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_30 ;
  wire \ramloop[11].ram.r_n_31 ;
  wire \ramloop[11].ram.r_n_32 ;
  wire \ramloop[11].ram.r_n_33 ;
  wire \ramloop[11].ram.r_n_34 ;
  wire \ramloop[11].ram.r_n_35 ;
  wire \ramloop[11].ram.r_n_36 ;
  wire \ramloop[11].ram.r_n_37 ;
  wire \ramloop[11].ram.r_n_38 ;
  wire \ramloop[11].ram.r_n_39 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_40 ;
  wire \ramloop[11].ram.r_n_41 ;
  wire \ramloop[11].ram.r_n_42 ;
  wire \ramloop[11].ram.r_n_43 ;
  wire \ramloop[11].ram.r_n_44 ;
  wire \ramloop[11].ram.r_n_45 ;
  wire \ramloop[11].ram.r_n_46 ;
  wire \ramloop[11].ram.r_n_47 ;
  wire \ramloop[11].ram.r_n_48 ;
  wire \ramloop[11].ram.r_n_49 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_50 ;
  wire \ramloop[11].ram.r_n_51 ;
  wire \ramloop[11].ram.r_n_52 ;
  wire \ramloop[11].ram.r_n_53 ;
  wire \ramloop[11].ram.r_n_54 ;
  wire \ramloop[11].ram.r_n_55 ;
  wire \ramloop[11].ram.r_n_56 ;
  wire \ramloop[11].ram.r_n_57 ;
  wire \ramloop[11].ram.r_n_58 ;
  wire \ramloop[11].ram.r_n_59 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_60 ;
  wire \ramloop[11].ram.r_n_61 ;
  wire \ramloop[11].ram.r_n_62 ;
  wire \ramloop[11].ram.r_n_63 ;
  wire \ramloop[11].ram.r_n_64 ;
  wire \ramloop[11].ram.r_n_65 ;
  wire \ramloop[11].ram.r_n_66 ;
  wire \ramloop[11].ram.r_n_67 ;
  wire \ramloop[11].ram.r_n_68 ;
  wire \ramloop[11].ram.r_n_69 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_70 ;
  wire \ramloop[11].ram.r_n_71 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_9 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_10 ;
  wire \ramloop[12].ram.r_n_11 ;
  wire \ramloop[12].ram.r_n_12 ;
  wire \ramloop[12].ram.r_n_13 ;
  wire \ramloop[12].ram.r_n_14 ;
  wire \ramloop[12].ram.r_n_15 ;
  wire \ramloop[12].ram.r_n_16 ;
  wire \ramloop[12].ram.r_n_17 ;
  wire \ramloop[12].ram.r_n_18 ;
  wire \ramloop[12].ram.r_n_19 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_20 ;
  wire \ramloop[12].ram.r_n_21 ;
  wire \ramloop[12].ram.r_n_22 ;
  wire \ramloop[12].ram.r_n_23 ;
  wire \ramloop[12].ram.r_n_24 ;
  wire \ramloop[12].ram.r_n_25 ;
  wire \ramloop[12].ram.r_n_26 ;
  wire \ramloop[12].ram.r_n_27 ;
  wire \ramloop[12].ram.r_n_28 ;
  wire \ramloop[12].ram.r_n_29 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_30 ;
  wire \ramloop[12].ram.r_n_31 ;
  wire \ramloop[12].ram.r_n_32 ;
  wire \ramloop[12].ram.r_n_33 ;
  wire \ramloop[12].ram.r_n_34 ;
  wire \ramloop[12].ram.r_n_35 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_9 ;
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
  wire \ramloop[13].ram.r_n_18 ;
  wire \ramloop[13].ram.r_n_19 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_20 ;
  wire \ramloop[13].ram.r_n_21 ;
  wire \ramloop[13].ram.r_n_22 ;
  wire \ramloop[13].ram.r_n_23 ;
  wire \ramloop[13].ram.r_n_24 ;
  wire \ramloop[13].ram.r_n_25 ;
  wire \ramloop[13].ram.r_n_26 ;
  wire \ramloop[13].ram.r_n_27 ;
  wire \ramloop[13].ram.r_n_28 ;
  wire \ramloop[13].ram.r_n_29 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_30 ;
  wire \ramloop[13].ram.r_n_31 ;
  wire \ramloop[13].ram.r_n_32 ;
  wire \ramloop[13].ram.r_n_33 ;
  wire \ramloop[13].ram.r_n_34 ;
  wire \ramloop[13].ram.r_n_35 ;
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
  wire \ramloop[14].ram.r_n_18 ;
  wire \ramloop[14].ram.r_n_19 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_20 ;
  wire \ramloop[14].ram.r_n_21 ;
  wire \ramloop[14].ram.r_n_22 ;
  wire \ramloop[14].ram.r_n_23 ;
  wire \ramloop[14].ram.r_n_24 ;
  wire \ramloop[14].ram.r_n_25 ;
  wire \ramloop[14].ram.r_n_26 ;
  wire \ramloop[14].ram.r_n_27 ;
  wire \ramloop[14].ram.r_n_28 ;
  wire \ramloop[14].ram.r_n_29 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_30 ;
  wire \ramloop[14].ram.r_n_31 ;
  wire \ramloop[14].ram.r_n_32 ;
  wire \ramloop[14].ram.r_n_33 ;
  wire \ramloop[14].ram.r_n_34 ;
  wire \ramloop[14].ram.r_n_35 ;
  wire \ramloop[14].ram.r_n_36 ;
  wire \ramloop[14].ram.r_n_37 ;
  wire \ramloop[14].ram.r_n_38 ;
  wire \ramloop[14].ram.r_n_39 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_40 ;
  wire \ramloop[14].ram.r_n_41 ;
  wire \ramloop[14].ram.r_n_42 ;
  wire \ramloop[14].ram.r_n_43 ;
  wire \ramloop[14].ram.r_n_44 ;
  wire \ramloop[14].ram.r_n_45 ;
  wire \ramloop[14].ram.r_n_46 ;
  wire \ramloop[14].ram.r_n_47 ;
  wire \ramloop[14].ram.r_n_48 ;
  wire \ramloop[14].ram.r_n_49 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_50 ;
  wire \ramloop[14].ram.r_n_51 ;
  wire \ramloop[14].ram.r_n_52 ;
  wire \ramloop[14].ram.r_n_53 ;
  wire \ramloop[14].ram.r_n_54 ;
  wire \ramloop[14].ram.r_n_55 ;
  wire \ramloop[14].ram.r_n_56 ;
  wire \ramloop[14].ram.r_n_57 ;
  wire \ramloop[14].ram.r_n_58 ;
  wire \ramloop[14].ram.r_n_59 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_60 ;
  wire \ramloop[14].ram.r_n_61 ;
  wire \ramloop[14].ram.r_n_62 ;
  wire \ramloop[14].ram.r_n_63 ;
  wire \ramloop[14].ram.r_n_64 ;
  wire \ramloop[14].ram.r_n_65 ;
  wire \ramloop[14].ram.r_n_66 ;
  wire \ramloop[14].ram.r_n_67 ;
  wire \ramloop[14].ram.r_n_68 ;
  wire \ramloop[14].ram.r_n_69 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_70 ;
  wire \ramloop[14].ram.r_n_71 ;
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
  wire \ramloop[15].ram.r_n_18 ;
  wire \ramloop[15].ram.r_n_19 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_20 ;
  wire \ramloop[15].ram.r_n_21 ;
  wire \ramloop[15].ram.r_n_22 ;
  wire \ramloop[15].ram.r_n_23 ;
  wire \ramloop[15].ram.r_n_24 ;
  wire \ramloop[15].ram.r_n_25 ;
  wire \ramloop[15].ram.r_n_26 ;
  wire \ramloop[15].ram.r_n_27 ;
  wire \ramloop[15].ram.r_n_28 ;
  wire \ramloop[15].ram.r_n_29 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_30 ;
  wire \ramloop[15].ram.r_n_31 ;
  wire \ramloop[15].ram.r_n_32 ;
  wire \ramloop[15].ram.r_n_33 ;
  wire \ramloop[15].ram.r_n_34 ;
  wire \ramloop[15].ram.r_n_35 ;
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
  wire \ramloop[16].ram.r_n_18 ;
  wire \ramloop[16].ram.r_n_19 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_20 ;
  wire \ramloop[16].ram.r_n_21 ;
  wire \ramloop[16].ram.r_n_22 ;
  wire \ramloop[16].ram.r_n_23 ;
  wire \ramloop[16].ram.r_n_24 ;
  wire \ramloop[16].ram.r_n_25 ;
  wire \ramloop[16].ram.r_n_26 ;
  wire \ramloop[16].ram.r_n_27 ;
  wire \ramloop[16].ram.r_n_28 ;
  wire \ramloop[16].ram.r_n_29 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_30 ;
  wire \ramloop[16].ram.r_n_31 ;
  wire \ramloop[16].ram.r_n_32 ;
  wire \ramloop[16].ram.r_n_33 ;
  wire \ramloop[16].ram.r_n_34 ;
  wire \ramloop[16].ram.r_n_35 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_8 ;
  wire \ramloop[16].ram.r_n_9 ;
  wire \ramloop[17].ram.r_n_0 ;
  wire \ramloop[17].ram.r_n_1 ;
  wire \ramloop[17].ram.r_n_10 ;
  wire \ramloop[17].ram.r_n_11 ;
  wire \ramloop[17].ram.r_n_12 ;
  wire \ramloop[17].ram.r_n_13 ;
  wire \ramloop[17].ram.r_n_14 ;
  wire \ramloop[17].ram.r_n_15 ;
  wire \ramloop[17].ram.r_n_16 ;
  wire \ramloop[17].ram.r_n_17 ;
  wire \ramloop[17].ram.r_n_18 ;
  wire \ramloop[17].ram.r_n_19 ;
  wire \ramloop[17].ram.r_n_2 ;
  wire \ramloop[17].ram.r_n_20 ;
  wire \ramloop[17].ram.r_n_21 ;
  wire \ramloop[17].ram.r_n_22 ;
  wire \ramloop[17].ram.r_n_23 ;
  wire \ramloop[17].ram.r_n_24 ;
  wire \ramloop[17].ram.r_n_25 ;
  wire \ramloop[17].ram.r_n_26 ;
  wire \ramloop[17].ram.r_n_27 ;
  wire \ramloop[17].ram.r_n_28 ;
  wire \ramloop[17].ram.r_n_29 ;
  wire \ramloop[17].ram.r_n_3 ;
  wire \ramloop[17].ram.r_n_30 ;
  wire \ramloop[17].ram.r_n_31 ;
  wire \ramloop[17].ram.r_n_32 ;
  wire \ramloop[17].ram.r_n_33 ;
  wire \ramloop[17].ram.r_n_34 ;
  wire \ramloop[17].ram.r_n_35 ;
  wire \ramloop[17].ram.r_n_36 ;
  wire \ramloop[17].ram.r_n_37 ;
  wire \ramloop[17].ram.r_n_38 ;
  wire \ramloop[17].ram.r_n_39 ;
  wire \ramloop[17].ram.r_n_4 ;
  wire \ramloop[17].ram.r_n_40 ;
  wire \ramloop[17].ram.r_n_41 ;
  wire \ramloop[17].ram.r_n_42 ;
  wire \ramloop[17].ram.r_n_43 ;
  wire \ramloop[17].ram.r_n_44 ;
  wire \ramloop[17].ram.r_n_45 ;
  wire \ramloop[17].ram.r_n_46 ;
  wire \ramloop[17].ram.r_n_47 ;
  wire \ramloop[17].ram.r_n_48 ;
  wire \ramloop[17].ram.r_n_49 ;
  wire \ramloop[17].ram.r_n_5 ;
  wire \ramloop[17].ram.r_n_50 ;
  wire \ramloop[17].ram.r_n_51 ;
  wire \ramloop[17].ram.r_n_52 ;
  wire \ramloop[17].ram.r_n_53 ;
  wire \ramloop[17].ram.r_n_54 ;
  wire \ramloop[17].ram.r_n_55 ;
  wire \ramloop[17].ram.r_n_56 ;
  wire \ramloop[17].ram.r_n_57 ;
  wire \ramloop[17].ram.r_n_58 ;
  wire \ramloop[17].ram.r_n_59 ;
  wire \ramloop[17].ram.r_n_6 ;
  wire \ramloop[17].ram.r_n_60 ;
  wire \ramloop[17].ram.r_n_61 ;
  wire \ramloop[17].ram.r_n_62 ;
  wire \ramloop[17].ram.r_n_63 ;
  wire \ramloop[17].ram.r_n_64 ;
  wire \ramloop[17].ram.r_n_65 ;
  wire \ramloop[17].ram.r_n_66 ;
  wire \ramloop[17].ram.r_n_67 ;
  wire \ramloop[17].ram.r_n_68 ;
  wire \ramloop[17].ram.r_n_69 ;
  wire \ramloop[17].ram.r_n_7 ;
  wire \ramloop[17].ram.r_n_70 ;
  wire \ramloop[17].ram.r_n_71 ;
  wire \ramloop[17].ram.r_n_8 ;
  wire \ramloop[17].ram.r_n_9 ;
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
  wire \ramloop[18].ram.r_n_18 ;
  wire \ramloop[18].ram.r_n_19 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_20 ;
  wire \ramloop[18].ram.r_n_21 ;
  wire \ramloop[18].ram.r_n_22 ;
  wire \ramloop[18].ram.r_n_23 ;
  wire \ramloop[18].ram.r_n_24 ;
  wire \ramloop[18].ram.r_n_25 ;
  wire \ramloop[18].ram.r_n_26 ;
  wire \ramloop[18].ram.r_n_27 ;
  wire \ramloop[18].ram.r_n_28 ;
  wire \ramloop[18].ram.r_n_29 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_30 ;
  wire \ramloop[18].ram.r_n_31 ;
  wire \ramloop[18].ram.r_n_32 ;
  wire \ramloop[18].ram.r_n_33 ;
  wire \ramloop[18].ram.r_n_34 ;
  wire \ramloop[18].ram.r_n_35 ;
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
  wire \ramloop[19].ram.r_n_18 ;
  wire \ramloop[19].ram.r_n_19 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_20 ;
  wire \ramloop[19].ram.r_n_21 ;
  wire \ramloop[19].ram.r_n_22 ;
  wire \ramloop[19].ram.r_n_23 ;
  wire \ramloop[19].ram.r_n_24 ;
  wire \ramloop[19].ram.r_n_25 ;
  wire \ramloop[19].ram.r_n_26 ;
  wire \ramloop[19].ram.r_n_27 ;
  wire \ramloop[19].ram.r_n_28 ;
  wire \ramloop[19].ram.r_n_29 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_30 ;
  wire \ramloop[19].ram.r_n_31 ;
  wire \ramloop[19].ram.r_n_32 ;
  wire \ramloop[19].ram.r_n_33 ;
  wire \ramloop[19].ram.r_n_34 ;
  wire \ramloop[19].ram.r_n_35 ;
  wire \ramloop[19].ram.r_n_36 ;
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
  wire \ramloop[1].ram.r_n_18 ;
  wire \ramloop[1].ram.r_n_19 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_20 ;
  wire \ramloop[1].ram.r_n_21 ;
  wire \ramloop[1].ram.r_n_22 ;
  wire \ramloop[1].ram.r_n_23 ;
  wire \ramloop[1].ram.r_n_24 ;
  wire \ramloop[1].ram.r_n_25 ;
  wire \ramloop[1].ram.r_n_26 ;
  wire \ramloop[1].ram.r_n_27 ;
  wire \ramloop[1].ram.r_n_28 ;
  wire \ramloop[1].ram.r_n_29 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_30 ;
  wire \ramloop[1].ram.r_n_31 ;
  wire \ramloop[1].ram.r_n_32 ;
  wire \ramloop[1].ram.r_n_33 ;
  wire \ramloop[1].ram.r_n_34 ;
  wire \ramloop[1].ram.r_n_35 ;
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
  wire \ramloop[20].ram.r_n_18 ;
  wire \ramloop[20].ram.r_n_19 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_20 ;
  wire \ramloop[20].ram.r_n_21 ;
  wire \ramloop[20].ram.r_n_22 ;
  wire \ramloop[20].ram.r_n_23 ;
  wire \ramloop[20].ram.r_n_24 ;
  wire \ramloop[20].ram.r_n_25 ;
  wire \ramloop[20].ram.r_n_26 ;
  wire \ramloop[20].ram.r_n_27 ;
  wire \ramloop[20].ram.r_n_28 ;
  wire \ramloop[20].ram.r_n_29 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_30 ;
  wire \ramloop[20].ram.r_n_31 ;
  wire \ramloop[20].ram.r_n_32 ;
  wire \ramloop[20].ram.r_n_33 ;
  wire \ramloop[20].ram.r_n_34 ;
  wire \ramloop[20].ram.r_n_35 ;
  wire \ramloop[20].ram.r_n_36 ;
  wire \ramloop[20].ram.r_n_37 ;
  wire \ramloop[20].ram.r_n_38 ;
  wire \ramloop[20].ram.r_n_39 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_40 ;
  wire \ramloop[20].ram.r_n_41 ;
  wire \ramloop[20].ram.r_n_42 ;
  wire \ramloop[20].ram.r_n_43 ;
  wire \ramloop[20].ram.r_n_44 ;
  wire \ramloop[20].ram.r_n_45 ;
  wire \ramloop[20].ram.r_n_46 ;
  wire \ramloop[20].ram.r_n_47 ;
  wire \ramloop[20].ram.r_n_48 ;
  wire \ramloop[20].ram.r_n_49 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_50 ;
  wire \ramloop[20].ram.r_n_51 ;
  wire \ramloop[20].ram.r_n_52 ;
  wire \ramloop[20].ram.r_n_53 ;
  wire \ramloop[20].ram.r_n_54 ;
  wire \ramloop[20].ram.r_n_55 ;
  wire \ramloop[20].ram.r_n_56 ;
  wire \ramloop[20].ram.r_n_57 ;
  wire \ramloop[20].ram.r_n_58 ;
  wire \ramloop[20].ram.r_n_59 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_60 ;
  wire \ramloop[20].ram.r_n_61 ;
  wire \ramloop[20].ram.r_n_62 ;
  wire \ramloop[20].ram.r_n_63 ;
  wire \ramloop[20].ram.r_n_64 ;
  wire \ramloop[20].ram.r_n_65 ;
  wire \ramloop[20].ram.r_n_66 ;
  wire \ramloop[20].ram.r_n_67 ;
  wire \ramloop[20].ram.r_n_68 ;
  wire \ramloop[20].ram.r_n_69 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_70 ;
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
  wire \ramloop[21].ram.r_n_18 ;
  wire \ramloop[21].ram.r_n_19 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_20 ;
  wire \ramloop[21].ram.r_n_21 ;
  wire \ramloop[21].ram.r_n_22 ;
  wire \ramloop[21].ram.r_n_23 ;
  wire \ramloop[21].ram.r_n_24 ;
  wire \ramloop[21].ram.r_n_25 ;
  wire \ramloop[21].ram.r_n_26 ;
  wire \ramloop[21].ram.r_n_27 ;
  wire \ramloop[21].ram.r_n_28 ;
  wire \ramloop[21].ram.r_n_29 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_30 ;
  wire \ramloop[21].ram.r_n_31 ;
  wire \ramloop[21].ram.r_n_32 ;
  wire \ramloop[21].ram.r_n_33 ;
  wire \ramloop[21].ram.r_n_34 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_8 ;
  wire \ramloop[21].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_16 ;
  wire \ramloop[2].ram.r_n_17 ;
  wire \ramloop[2].ram.r_n_18 ;
  wire \ramloop[2].ram.r_n_19 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_20 ;
  wire \ramloop[2].ram.r_n_21 ;
  wire \ramloop[2].ram.r_n_22 ;
  wire \ramloop[2].ram.r_n_23 ;
  wire \ramloop[2].ram.r_n_24 ;
  wire \ramloop[2].ram.r_n_25 ;
  wire \ramloop[2].ram.r_n_26 ;
  wire \ramloop[2].ram.r_n_27 ;
  wire \ramloop[2].ram.r_n_28 ;
  wire \ramloop[2].ram.r_n_29 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_30 ;
  wire \ramloop[2].ram.r_n_31 ;
  wire \ramloop[2].ram.r_n_32 ;
  wire \ramloop[2].ram.r_n_33 ;
  wire \ramloop[2].ram.r_n_34 ;
  wire \ramloop[2].ram.r_n_35 ;
  wire \ramloop[2].ram.r_n_36 ;
  wire \ramloop[2].ram.r_n_37 ;
  wire \ramloop[2].ram.r_n_38 ;
  wire \ramloop[2].ram.r_n_39 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_40 ;
  wire \ramloop[2].ram.r_n_41 ;
  wire \ramloop[2].ram.r_n_42 ;
  wire \ramloop[2].ram.r_n_43 ;
  wire \ramloop[2].ram.r_n_44 ;
  wire \ramloop[2].ram.r_n_45 ;
  wire \ramloop[2].ram.r_n_46 ;
  wire \ramloop[2].ram.r_n_47 ;
  wire \ramloop[2].ram.r_n_48 ;
  wire \ramloop[2].ram.r_n_49 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_50 ;
  wire \ramloop[2].ram.r_n_51 ;
  wire \ramloop[2].ram.r_n_52 ;
  wire \ramloop[2].ram.r_n_53 ;
  wire \ramloop[2].ram.r_n_54 ;
  wire \ramloop[2].ram.r_n_55 ;
  wire \ramloop[2].ram.r_n_56 ;
  wire \ramloop[2].ram.r_n_57 ;
  wire \ramloop[2].ram.r_n_58 ;
  wire \ramloop[2].ram.r_n_59 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_60 ;
  wire \ramloop[2].ram.r_n_61 ;
  wire \ramloop[2].ram.r_n_62 ;
  wire \ramloop[2].ram.r_n_63 ;
  wire \ramloop[2].ram.r_n_64 ;
  wire \ramloop[2].ram.r_n_65 ;
  wire \ramloop[2].ram.r_n_66 ;
  wire \ramloop[2].ram.r_n_67 ;
  wire \ramloop[2].ram.r_n_68 ;
  wire \ramloop[2].ram.r_n_69 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_70 ;
  wire \ramloop[2].ram.r_n_71 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
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
  wire \ramloop[3].ram.r_n_18 ;
  wire \ramloop[3].ram.r_n_19 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_20 ;
  wire \ramloop[3].ram.r_n_21 ;
  wire \ramloop[3].ram.r_n_22 ;
  wire \ramloop[3].ram.r_n_23 ;
  wire \ramloop[3].ram.r_n_24 ;
  wire \ramloop[3].ram.r_n_25 ;
  wire \ramloop[3].ram.r_n_26 ;
  wire \ramloop[3].ram.r_n_27 ;
  wire \ramloop[3].ram.r_n_28 ;
  wire \ramloop[3].ram.r_n_29 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_30 ;
  wire \ramloop[3].ram.r_n_31 ;
  wire \ramloop[3].ram.r_n_32 ;
  wire \ramloop[3].ram.r_n_33 ;
  wire \ramloop[3].ram.r_n_34 ;
  wire \ramloop[3].ram.r_n_35 ;
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
  wire \ramloop[4].ram.r_n_18 ;
  wire \ramloop[4].ram.r_n_19 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_20 ;
  wire \ramloop[4].ram.r_n_21 ;
  wire \ramloop[4].ram.r_n_22 ;
  wire \ramloop[4].ram.r_n_23 ;
  wire \ramloop[4].ram.r_n_24 ;
  wire \ramloop[4].ram.r_n_25 ;
  wire \ramloop[4].ram.r_n_26 ;
  wire \ramloop[4].ram.r_n_27 ;
  wire \ramloop[4].ram.r_n_28 ;
  wire \ramloop[4].ram.r_n_29 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_30 ;
  wire \ramloop[4].ram.r_n_31 ;
  wire \ramloop[4].ram.r_n_32 ;
  wire \ramloop[4].ram.r_n_33 ;
  wire \ramloop[4].ram.r_n_34 ;
  wire \ramloop[4].ram.r_n_35 ;
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
  wire \ramloop[5].ram.r_n_18 ;
  wire \ramloop[5].ram.r_n_19 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_20 ;
  wire \ramloop[5].ram.r_n_21 ;
  wire \ramloop[5].ram.r_n_22 ;
  wire \ramloop[5].ram.r_n_23 ;
  wire \ramloop[5].ram.r_n_24 ;
  wire \ramloop[5].ram.r_n_25 ;
  wire \ramloop[5].ram.r_n_26 ;
  wire \ramloop[5].ram.r_n_27 ;
  wire \ramloop[5].ram.r_n_28 ;
  wire \ramloop[5].ram.r_n_29 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_30 ;
  wire \ramloop[5].ram.r_n_31 ;
  wire \ramloop[5].ram.r_n_32 ;
  wire \ramloop[5].ram.r_n_33 ;
  wire \ramloop[5].ram.r_n_34 ;
  wire \ramloop[5].ram.r_n_35 ;
  wire \ramloop[5].ram.r_n_36 ;
  wire \ramloop[5].ram.r_n_37 ;
  wire \ramloop[5].ram.r_n_38 ;
  wire \ramloop[5].ram.r_n_39 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_40 ;
  wire \ramloop[5].ram.r_n_41 ;
  wire \ramloop[5].ram.r_n_42 ;
  wire \ramloop[5].ram.r_n_43 ;
  wire \ramloop[5].ram.r_n_44 ;
  wire \ramloop[5].ram.r_n_45 ;
  wire \ramloop[5].ram.r_n_46 ;
  wire \ramloop[5].ram.r_n_47 ;
  wire \ramloop[5].ram.r_n_48 ;
  wire \ramloop[5].ram.r_n_49 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_50 ;
  wire \ramloop[5].ram.r_n_51 ;
  wire \ramloop[5].ram.r_n_52 ;
  wire \ramloop[5].ram.r_n_53 ;
  wire \ramloop[5].ram.r_n_54 ;
  wire \ramloop[5].ram.r_n_55 ;
  wire \ramloop[5].ram.r_n_56 ;
  wire \ramloop[5].ram.r_n_57 ;
  wire \ramloop[5].ram.r_n_58 ;
  wire \ramloop[5].ram.r_n_59 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_60 ;
  wire \ramloop[5].ram.r_n_61 ;
  wire \ramloop[5].ram.r_n_62 ;
  wire \ramloop[5].ram.r_n_63 ;
  wire \ramloop[5].ram.r_n_64 ;
  wire \ramloop[5].ram.r_n_65 ;
  wire \ramloop[5].ram.r_n_66 ;
  wire \ramloop[5].ram.r_n_67 ;
  wire \ramloop[5].ram.r_n_68 ;
  wire \ramloop[5].ram.r_n_69 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_70 ;
  wire \ramloop[5].ram.r_n_71 ;
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
  wire \ramloop[6].ram.r_n_18 ;
  wire \ramloop[6].ram.r_n_19 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_20 ;
  wire \ramloop[6].ram.r_n_21 ;
  wire \ramloop[6].ram.r_n_22 ;
  wire \ramloop[6].ram.r_n_23 ;
  wire \ramloop[6].ram.r_n_24 ;
  wire \ramloop[6].ram.r_n_25 ;
  wire \ramloop[6].ram.r_n_26 ;
  wire \ramloop[6].ram.r_n_27 ;
  wire \ramloop[6].ram.r_n_28 ;
  wire \ramloop[6].ram.r_n_29 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_30 ;
  wire \ramloop[6].ram.r_n_31 ;
  wire \ramloop[6].ram.r_n_32 ;
  wire \ramloop[6].ram.r_n_33 ;
  wire \ramloop[6].ram.r_n_34 ;
  wire \ramloop[6].ram.r_n_35 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_9 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_10 ;
  wire \ramloop[7].ram.r_n_11 ;
  wire \ramloop[7].ram.r_n_12 ;
  wire \ramloop[7].ram.r_n_13 ;
  wire \ramloop[7].ram.r_n_14 ;
  wire \ramloop[7].ram.r_n_15 ;
  wire \ramloop[7].ram.r_n_16 ;
  wire \ramloop[7].ram.r_n_17 ;
  wire \ramloop[7].ram.r_n_18 ;
  wire \ramloop[7].ram.r_n_19 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_20 ;
  wire \ramloop[7].ram.r_n_21 ;
  wire \ramloop[7].ram.r_n_22 ;
  wire \ramloop[7].ram.r_n_23 ;
  wire \ramloop[7].ram.r_n_24 ;
  wire \ramloop[7].ram.r_n_25 ;
  wire \ramloop[7].ram.r_n_26 ;
  wire \ramloop[7].ram.r_n_27 ;
  wire \ramloop[7].ram.r_n_28 ;
  wire \ramloop[7].ram.r_n_29 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_30 ;
  wire \ramloop[7].ram.r_n_31 ;
  wire \ramloop[7].ram.r_n_32 ;
  wire \ramloop[7].ram.r_n_33 ;
  wire \ramloop[7].ram.r_n_34 ;
  wire \ramloop[7].ram.r_n_35 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_9 ;
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
  wire \ramloop[8].ram.r_n_18 ;
  wire \ramloop[8].ram.r_n_19 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_20 ;
  wire \ramloop[8].ram.r_n_21 ;
  wire \ramloop[8].ram.r_n_22 ;
  wire \ramloop[8].ram.r_n_23 ;
  wire \ramloop[8].ram.r_n_24 ;
  wire \ramloop[8].ram.r_n_25 ;
  wire \ramloop[8].ram.r_n_26 ;
  wire \ramloop[8].ram.r_n_27 ;
  wire \ramloop[8].ram.r_n_28 ;
  wire \ramloop[8].ram.r_n_29 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_30 ;
  wire \ramloop[8].ram.r_n_31 ;
  wire \ramloop[8].ram.r_n_32 ;
  wire \ramloop[8].ram.r_n_33 ;
  wire \ramloop[8].ram.r_n_34 ;
  wire \ramloop[8].ram.r_n_35 ;
  wire \ramloop[8].ram.r_n_36 ;
  wire \ramloop[8].ram.r_n_37 ;
  wire \ramloop[8].ram.r_n_38 ;
  wire \ramloop[8].ram.r_n_39 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_40 ;
  wire \ramloop[8].ram.r_n_41 ;
  wire \ramloop[8].ram.r_n_42 ;
  wire \ramloop[8].ram.r_n_43 ;
  wire \ramloop[8].ram.r_n_44 ;
  wire \ramloop[8].ram.r_n_45 ;
  wire \ramloop[8].ram.r_n_46 ;
  wire \ramloop[8].ram.r_n_47 ;
  wire \ramloop[8].ram.r_n_48 ;
  wire \ramloop[8].ram.r_n_49 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_50 ;
  wire \ramloop[8].ram.r_n_51 ;
  wire \ramloop[8].ram.r_n_52 ;
  wire \ramloop[8].ram.r_n_53 ;
  wire \ramloop[8].ram.r_n_54 ;
  wire \ramloop[8].ram.r_n_55 ;
  wire \ramloop[8].ram.r_n_56 ;
  wire \ramloop[8].ram.r_n_57 ;
  wire \ramloop[8].ram.r_n_58 ;
  wire \ramloop[8].ram.r_n_59 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_60 ;
  wire \ramloop[8].ram.r_n_61 ;
  wire \ramloop[8].ram.r_n_62 ;
  wire \ramloop[8].ram.r_n_63 ;
  wire \ramloop[8].ram.r_n_64 ;
  wire \ramloop[8].ram.r_n_65 ;
  wire \ramloop[8].ram.r_n_66 ;
  wire \ramloop[8].ram.r_n_67 ;
  wire \ramloop[8].ram.r_n_68 ;
  wire \ramloop[8].ram.r_n_69 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_70 ;
  wire \ramloop[8].ram.r_n_71 ;
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
  wire \ramloop[9].ram.r_n_18 ;
  wire \ramloop[9].ram.r_n_19 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_20 ;
  wire \ramloop[9].ram.r_n_21 ;
  wire \ramloop[9].ram.r_n_22 ;
  wire \ramloop[9].ram.r_n_23 ;
  wire \ramloop[9].ram.r_n_24 ;
  wire \ramloop[9].ram.r_n_25 ;
  wire \ramloop[9].ram.r_n_26 ;
  wire \ramloop[9].ram.r_n_27 ;
  wire \ramloop[9].ram.r_n_28 ;
  wire \ramloop[9].ram.r_n_29 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_30 ;
  wire \ramloop[9].ram.r_n_31 ;
  wire \ramloop[9].ram.r_n_32 ;
  wire \ramloop[9].ram.r_n_33 ;
  wire \ramloop[9].ram.r_n_34 ;
  wire \ramloop[9].ram.r_n_35 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_9 ;

  weights_buffer_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[10:9]),
        .ena(ena),
        .ena_array(ena_array));
  weights_buffer_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 ,\ramloop[21].ram.r_n_8 ,\ramloop[21].ram.r_n_9 ,\ramloop[21].ram.r_n_10 ,\ramloop[21].ram.r_n_11 ,\ramloop[21].ram.r_n_12 ,\ramloop[21].ram.r_n_13 ,\ramloop[21].ram.r_n_14 ,\ramloop[21].ram.r_n_15 ,\ramloop[21].ram.r_n_16 ,\ramloop[21].ram.r_n_17 ,\ramloop[21].ram.r_n_18 ,\ramloop[21].ram.r_n_19 ,\ramloop[21].ram.r_n_20 ,\ramloop[21].ram.r_n_21 ,\ramloop[21].ram.r_n_22 ,\ramloop[21].ram.r_n_23 ,\ramloop[21].ram.r_n_24 ,\ramloop[21].ram.r_n_25 ,\ramloop[21].ram.r_n_26 ,\ramloop[21].ram.r_n_27 ,\ramloop[21].ram.r_n_28 ,\ramloop[21].ram.r_n_29 ,\ramloop[21].ram.r_n_30 ,\ramloop[21].ram.r_n_31 }),
        .DOBDO({\ramloop[20].ram.r_n_32 ,\ramloop[20].ram.r_n_33 ,\ramloop[20].ram.r_n_34 ,\ramloop[20].ram.r_n_35 ,\ramloop[20].ram.r_n_36 ,\ramloop[20].ram.r_n_37 ,\ramloop[20].ram.r_n_38 ,\ramloop[20].ram.r_n_39 ,\ramloop[20].ram.r_n_40 ,\ramloop[20].ram.r_n_41 ,\ramloop[20].ram.r_n_42 ,\ramloop[20].ram.r_n_43 ,\ramloop[20].ram.r_n_44 ,\ramloop[20].ram.r_n_45 ,\ramloop[20].ram.r_n_46 ,\ramloop[20].ram.r_n_47 ,\ramloop[20].ram.r_n_48 ,\ramloop[20].ram.r_n_49 ,\ramloop[20].ram.r_n_50 ,\ramloop[20].ram.r_n_51 ,\ramloop[20].ram.r_n_52 ,\ramloop[20].ram.r_n_53 ,\ramloop[20].ram.r_n_54 ,\ramloop[20].ram.r_n_55 ,\ramloop[20].ram.r_n_56 ,\ramloop[20].ram.r_n_57 ,\ramloop[20].ram.r_n_58 ,\ramloop[20].ram.r_n_59 ,\ramloop[20].ram.r_n_60 ,\ramloop[20].ram.r_n_61 ,\ramloop[20].ram.r_n_62 ,\ramloop[20].ram.r_n_63 }),
        .DOPADOP({\ramloop[21].ram.r_n_32 ,\ramloop[21].ram.r_n_33 ,\ramloop[21].ram.r_n_34 }),
        .DOPBDOP({\ramloop[20].ram.r_n_68 ,\ramloop[20].ram.r_n_69 ,\ramloop[20].ram.r_n_70 }),
        .addra(addra[10:9]),
        .clka(clka),
        .douta(douta[511:9]),
        .\douta[115] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 ,\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 ,\ramloop[5].ram.r_n_16 ,\ramloop[5].ram.r_n_17 ,\ramloop[5].ram.r_n_18 ,\ramloop[5].ram.r_n_19 ,\ramloop[5].ram.r_n_20 ,\ramloop[5].ram.r_n_21 ,\ramloop[5].ram.r_n_22 ,\ramloop[5].ram.r_n_23 ,\ramloop[5].ram.r_n_24 ,\ramloop[5].ram.r_n_25 ,\ramloop[5].ram.r_n_26 ,\ramloop[5].ram.r_n_27 ,\ramloop[5].ram.r_n_28 ,\ramloop[5].ram.r_n_29 ,\ramloop[5].ram.r_n_30 ,\ramloop[5].ram.r_n_31 }),
        .\douta[115]_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 ,\ramloop[4].ram.r_n_16 ,\ramloop[4].ram.r_n_17 ,\ramloop[4].ram.r_n_18 ,\ramloop[4].ram.r_n_19 ,\ramloop[4].ram.r_n_20 ,\ramloop[4].ram.r_n_21 ,\ramloop[4].ram.r_n_22 ,\ramloop[4].ram.r_n_23 ,\ramloop[4].ram.r_n_24 ,\ramloop[4].ram.r_n_25 ,\ramloop[4].ram.r_n_26 ,\ramloop[4].ram.r_n_27 ,\ramloop[4].ram.r_n_28 ,\ramloop[4].ram.r_n_29 ,\ramloop[4].ram.r_n_30 ,\ramloop[4].ram.r_n_31 }),
        .\douta[116] ({\ramloop[5].ram.r_n_64 ,\ramloop[5].ram.r_n_65 ,\ramloop[5].ram.r_n_66 ,\ramloop[5].ram.r_n_67 }),
        .\douta[116]_0 ({\ramloop[4].ram.r_n_32 ,\ramloop[4].ram.r_n_33 ,\ramloop[4].ram.r_n_34 ,\ramloop[4].ram.r_n_35 }),
        .\douta[151] ({\ramloop[5].ram.r_n_32 ,\ramloop[5].ram.r_n_33 ,\ramloop[5].ram.r_n_34 ,\ramloop[5].ram.r_n_35 ,\ramloop[5].ram.r_n_36 ,\ramloop[5].ram.r_n_37 ,\ramloop[5].ram.r_n_38 ,\ramloop[5].ram.r_n_39 ,\ramloop[5].ram.r_n_40 ,\ramloop[5].ram.r_n_41 ,\ramloop[5].ram.r_n_42 ,\ramloop[5].ram.r_n_43 ,\ramloop[5].ram.r_n_44 ,\ramloop[5].ram.r_n_45 ,\ramloop[5].ram.r_n_46 ,\ramloop[5].ram.r_n_47 ,\ramloop[5].ram.r_n_48 ,\ramloop[5].ram.r_n_49 ,\ramloop[5].ram.r_n_50 ,\ramloop[5].ram.r_n_51 ,\ramloop[5].ram.r_n_52 ,\ramloop[5].ram.r_n_53 ,\ramloop[5].ram.r_n_54 ,\ramloop[5].ram.r_n_55 ,\ramloop[5].ram.r_n_56 ,\ramloop[5].ram.r_n_57 ,\ramloop[5].ram.r_n_58 ,\ramloop[5].ram.r_n_59 ,\ramloop[5].ram.r_n_60 ,\ramloop[5].ram.r_n_61 ,\ramloop[5].ram.r_n_62 ,\ramloop[5].ram.r_n_63 }),
        .\douta[151]_0 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 ,\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 ,\ramloop[6].ram.r_n_16 ,\ramloop[6].ram.r_n_17 ,\ramloop[6].ram.r_n_18 ,\ramloop[6].ram.r_n_19 ,\ramloop[6].ram.r_n_20 ,\ramloop[6].ram.r_n_21 ,\ramloop[6].ram.r_n_22 ,\ramloop[6].ram.r_n_23 ,\ramloop[6].ram.r_n_24 ,\ramloop[6].ram.r_n_25 ,\ramloop[6].ram.r_n_26 ,\ramloop[6].ram.r_n_27 ,\ramloop[6].ram.r_n_28 ,\ramloop[6].ram.r_n_29 ,\ramloop[6].ram.r_n_30 ,\ramloop[6].ram.r_n_31 }),
        .\douta[152] ({\ramloop[5].ram.r_n_68 ,\ramloop[5].ram.r_n_69 ,\ramloop[5].ram.r_n_70 ,\ramloop[5].ram.r_n_71 }),
        .\douta[152]_0 ({\ramloop[6].ram.r_n_32 ,\ramloop[6].ram.r_n_33 ,\ramloop[6].ram.r_n_34 ,\ramloop[6].ram.r_n_35 }),
        .\douta[187] ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 ,\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 ,\ramloop[8].ram.r_n_16 ,\ramloop[8].ram.r_n_17 ,\ramloop[8].ram.r_n_18 ,\ramloop[8].ram.r_n_19 ,\ramloop[8].ram.r_n_20 ,\ramloop[8].ram.r_n_21 ,\ramloop[8].ram.r_n_22 ,\ramloop[8].ram.r_n_23 ,\ramloop[8].ram.r_n_24 ,\ramloop[8].ram.r_n_25 ,\ramloop[8].ram.r_n_26 ,\ramloop[8].ram.r_n_27 ,\ramloop[8].ram.r_n_28 ,\ramloop[8].ram.r_n_29 ,\ramloop[8].ram.r_n_30 ,\ramloop[8].ram.r_n_31 }),
        .\douta[187]_0 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 ,\ramloop[7].ram.r_n_8 ,\ramloop[7].ram.r_n_9 ,\ramloop[7].ram.r_n_10 ,\ramloop[7].ram.r_n_11 ,\ramloop[7].ram.r_n_12 ,\ramloop[7].ram.r_n_13 ,\ramloop[7].ram.r_n_14 ,\ramloop[7].ram.r_n_15 ,\ramloop[7].ram.r_n_16 ,\ramloop[7].ram.r_n_17 ,\ramloop[7].ram.r_n_18 ,\ramloop[7].ram.r_n_19 ,\ramloop[7].ram.r_n_20 ,\ramloop[7].ram.r_n_21 ,\ramloop[7].ram.r_n_22 ,\ramloop[7].ram.r_n_23 ,\ramloop[7].ram.r_n_24 ,\ramloop[7].ram.r_n_25 ,\ramloop[7].ram.r_n_26 ,\ramloop[7].ram.r_n_27 ,\ramloop[7].ram.r_n_28 ,\ramloop[7].ram.r_n_29 ,\ramloop[7].ram.r_n_30 ,\ramloop[7].ram.r_n_31 }),
        .\douta[188] ({\ramloop[8].ram.r_n_64 ,\ramloop[8].ram.r_n_65 ,\ramloop[8].ram.r_n_66 ,\ramloop[8].ram.r_n_67 }),
        .\douta[188]_0 ({\ramloop[7].ram.r_n_32 ,\ramloop[7].ram.r_n_33 ,\ramloop[7].ram.r_n_34 ,\ramloop[7].ram.r_n_35 }),
        .\douta[223] ({\ramloop[8].ram.r_n_32 ,\ramloop[8].ram.r_n_33 ,\ramloop[8].ram.r_n_34 ,\ramloop[8].ram.r_n_35 ,\ramloop[8].ram.r_n_36 ,\ramloop[8].ram.r_n_37 ,\ramloop[8].ram.r_n_38 ,\ramloop[8].ram.r_n_39 ,\ramloop[8].ram.r_n_40 ,\ramloop[8].ram.r_n_41 ,\ramloop[8].ram.r_n_42 ,\ramloop[8].ram.r_n_43 ,\ramloop[8].ram.r_n_44 ,\ramloop[8].ram.r_n_45 ,\ramloop[8].ram.r_n_46 ,\ramloop[8].ram.r_n_47 ,\ramloop[8].ram.r_n_48 ,\ramloop[8].ram.r_n_49 ,\ramloop[8].ram.r_n_50 ,\ramloop[8].ram.r_n_51 ,\ramloop[8].ram.r_n_52 ,\ramloop[8].ram.r_n_53 ,\ramloop[8].ram.r_n_54 ,\ramloop[8].ram.r_n_55 ,\ramloop[8].ram.r_n_56 ,\ramloop[8].ram.r_n_57 ,\ramloop[8].ram.r_n_58 ,\ramloop[8].ram.r_n_59 ,\ramloop[8].ram.r_n_60 ,\ramloop[8].ram.r_n_61 ,\ramloop[8].ram.r_n_62 ,\ramloop[8].ram.r_n_63 }),
        .\douta[223]_0 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 ,\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 ,\ramloop[9].ram.r_n_16 ,\ramloop[9].ram.r_n_17 ,\ramloop[9].ram.r_n_18 ,\ramloop[9].ram.r_n_19 ,\ramloop[9].ram.r_n_20 ,\ramloop[9].ram.r_n_21 ,\ramloop[9].ram.r_n_22 ,\ramloop[9].ram.r_n_23 ,\ramloop[9].ram.r_n_24 ,\ramloop[9].ram.r_n_25 ,\ramloop[9].ram.r_n_26 ,\ramloop[9].ram.r_n_27 ,\ramloop[9].ram.r_n_28 ,\ramloop[9].ram.r_n_29 ,\ramloop[9].ram.r_n_30 ,\ramloop[9].ram.r_n_31 }),
        .\douta[224] ({\ramloop[8].ram.r_n_68 ,\ramloop[8].ram.r_n_69 ,\ramloop[8].ram.r_n_70 ,\ramloop[8].ram.r_n_71 }),
        .\douta[224]_0 ({\ramloop[9].ram.r_n_32 ,\ramloop[9].ram.r_n_33 ,\ramloop[9].ram.r_n_34 ,\ramloop[9].ram.r_n_35 }),
        .\douta[259] ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 ,\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 ,\ramloop[11].ram.r_n_16 ,\ramloop[11].ram.r_n_17 ,\ramloop[11].ram.r_n_18 ,\ramloop[11].ram.r_n_19 ,\ramloop[11].ram.r_n_20 ,\ramloop[11].ram.r_n_21 ,\ramloop[11].ram.r_n_22 ,\ramloop[11].ram.r_n_23 ,\ramloop[11].ram.r_n_24 ,\ramloop[11].ram.r_n_25 ,\ramloop[11].ram.r_n_26 ,\ramloop[11].ram.r_n_27 ,\ramloop[11].ram.r_n_28 ,\ramloop[11].ram.r_n_29 ,\ramloop[11].ram.r_n_30 ,\ramloop[11].ram.r_n_31 }),
        .\douta[259]_0 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 ,\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 ,\ramloop[10].ram.r_n_18 ,\ramloop[10].ram.r_n_19 ,\ramloop[10].ram.r_n_20 ,\ramloop[10].ram.r_n_21 ,\ramloop[10].ram.r_n_22 ,\ramloop[10].ram.r_n_23 ,\ramloop[10].ram.r_n_24 ,\ramloop[10].ram.r_n_25 ,\ramloop[10].ram.r_n_26 ,\ramloop[10].ram.r_n_27 ,\ramloop[10].ram.r_n_28 ,\ramloop[10].ram.r_n_29 ,\ramloop[10].ram.r_n_30 ,\ramloop[10].ram.r_n_31 }),
        .\douta[260] ({\ramloop[11].ram.r_n_64 ,\ramloop[11].ram.r_n_65 ,\ramloop[11].ram.r_n_66 ,\ramloop[11].ram.r_n_67 }),
        .\douta[260]_0 ({\ramloop[10].ram.r_n_32 ,\ramloop[10].ram.r_n_33 ,\ramloop[10].ram.r_n_34 ,\ramloop[10].ram.r_n_35 }),
        .\douta[295] ({\ramloop[11].ram.r_n_32 ,\ramloop[11].ram.r_n_33 ,\ramloop[11].ram.r_n_34 ,\ramloop[11].ram.r_n_35 ,\ramloop[11].ram.r_n_36 ,\ramloop[11].ram.r_n_37 ,\ramloop[11].ram.r_n_38 ,\ramloop[11].ram.r_n_39 ,\ramloop[11].ram.r_n_40 ,\ramloop[11].ram.r_n_41 ,\ramloop[11].ram.r_n_42 ,\ramloop[11].ram.r_n_43 ,\ramloop[11].ram.r_n_44 ,\ramloop[11].ram.r_n_45 ,\ramloop[11].ram.r_n_46 ,\ramloop[11].ram.r_n_47 ,\ramloop[11].ram.r_n_48 ,\ramloop[11].ram.r_n_49 ,\ramloop[11].ram.r_n_50 ,\ramloop[11].ram.r_n_51 ,\ramloop[11].ram.r_n_52 ,\ramloop[11].ram.r_n_53 ,\ramloop[11].ram.r_n_54 ,\ramloop[11].ram.r_n_55 ,\ramloop[11].ram.r_n_56 ,\ramloop[11].ram.r_n_57 ,\ramloop[11].ram.r_n_58 ,\ramloop[11].ram.r_n_59 ,\ramloop[11].ram.r_n_60 ,\ramloop[11].ram.r_n_61 ,\ramloop[11].ram.r_n_62 ,\ramloop[11].ram.r_n_63 }),
        .\douta[295]_0 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 ,\ramloop[12].ram.r_n_8 ,\ramloop[12].ram.r_n_9 ,\ramloop[12].ram.r_n_10 ,\ramloop[12].ram.r_n_11 ,\ramloop[12].ram.r_n_12 ,\ramloop[12].ram.r_n_13 ,\ramloop[12].ram.r_n_14 ,\ramloop[12].ram.r_n_15 ,\ramloop[12].ram.r_n_16 ,\ramloop[12].ram.r_n_17 ,\ramloop[12].ram.r_n_18 ,\ramloop[12].ram.r_n_19 ,\ramloop[12].ram.r_n_20 ,\ramloop[12].ram.r_n_21 ,\ramloop[12].ram.r_n_22 ,\ramloop[12].ram.r_n_23 ,\ramloop[12].ram.r_n_24 ,\ramloop[12].ram.r_n_25 ,\ramloop[12].ram.r_n_26 ,\ramloop[12].ram.r_n_27 ,\ramloop[12].ram.r_n_28 ,\ramloop[12].ram.r_n_29 ,\ramloop[12].ram.r_n_30 ,\ramloop[12].ram.r_n_31 }),
        .\douta[296] ({\ramloop[11].ram.r_n_68 ,\ramloop[11].ram.r_n_69 ,\ramloop[11].ram.r_n_70 ,\ramloop[11].ram.r_n_71 }),
        .\douta[296]_0 ({\ramloop[12].ram.r_n_32 ,\ramloop[12].ram.r_n_33 ,\ramloop[12].ram.r_n_34 ,\ramloop[12].ram.r_n_35 }),
        .\douta[331] ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 ,\ramloop[14].ram.r_n_8 ,\ramloop[14].ram.r_n_9 ,\ramloop[14].ram.r_n_10 ,\ramloop[14].ram.r_n_11 ,\ramloop[14].ram.r_n_12 ,\ramloop[14].ram.r_n_13 ,\ramloop[14].ram.r_n_14 ,\ramloop[14].ram.r_n_15 ,\ramloop[14].ram.r_n_16 ,\ramloop[14].ram.r_n_17 ,\ramloop[14].ram.r_n_18 ,\ramloop[14].ram.r_n_19 ,\ramloop[14].ram.r_n_20 ,\ramloop[14].ram.r_n_21 ,\ramloop[14].ram.r_n_22 ,\ramloop[14].ram.r_n_23 ,\ramloop[14].ram.r_n_24 ,\ramloop[14].ram.r_n_25 ,\ramloop[14].ram.r_n_26 ,\ramloop[14].ram.r_n_27 ,\ramloop[14].ram.r_n_28 ,\ramloop[14].ram.r_n_29 ,\ramloop[14].ram.r_n_30 ,\ramloop[14].ram.r_n_31 }),
        .\douta[331]_0 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 ,\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 ,\ramloop[13].ram.r_n_16 ,\ramloop[13].ram.r_n_17 ,\ramloop[13].ram.r_n_18 ,\ramloop[13].ram.r_n_19 ,\ramloop[13].ram.r_n_20 ,\ramloop[13].ram.r_n_21 ,\ramloop[13].ram.r_n_22 ,\ramloop[13].ram.r_n_23 ,\ramloop[13].ram.r_n_24 ,\ramloop[13].ram.r_n_25 ,\ramloop[13].ram.r_n_26 ,\ramloop[13].ram.r_n_27 ,\ramloop[13].ram.r_n_28 ,\ramloop[13].ram.r_n_29 ,\ramloop[13].ram.r_n_30 ,\ramloop[13].ram.r_n_31 }),
        .\douta[332] ({\ramloop[14].ram.r_n_64 ,\ramloop[14].ram.r_n_65 ,\ramloop[14].ram.r_n_66 ,\ramloop[14].ram.r_n_67 }),
        .\douta[332]_0 ({\ramloop[13].ram.r_n_32 ,\ramloop[13].ram.r_n_33 ,\ramloop[13].ram.r_n_34 ,\ramloop[13].ram.r_n_35 }),
        .\douta[367] ({\ramloop[14].ram.r_n_32 ,\ramloop[14].ram.r_n_33 ,\ramloop[14].ram.r_n_34 ,\ramloop[14].ram.r_n_35 ,\ramloop[14].ram.r_n_36 ,\ramloop[14].ram.r_n_37 ,\ramloop[14].ram.r_n_38 ,\ramloop[14].ram.r_n_39 ,\ramloop[14].ram.r_n_40 ,\ramloop[14].ram.r_n_41 ,\ramloop[14].ram.r_n_42 ,\ramloop[14].ram.r_n_43 ,\ramloop[14].ram.r_n_44 ,\ramloop[14].ram.r_n_45 ,\ramloop[14].ram.r_n_46 ,\ramloop[14].ram.r_n_47 ,\ramloop[14].ram.r_n_48 ,\ramloop[14].ram.r_n_49 ,\ramloop[14].ram.r_n_50 ,\ramloop[14].ram.r_n_51 ,\ramloop[14].ram.r_n_52 ,\ramloop[14].ram.r_n_53 ,\ramloop[14].ram.r_n_54 ,\ramloop[14].ram.r_n_55 ,\ramloop[14].ram.r_n_56 ,\ramloop[14].ram.r_n_57 ,\ramloop[14].ram.r_n_58 ,\ramloop[14].ram.r_n_59 ,\ramloop[14].ram.r_n_60 ,\ramloop[14].ram.r_n_61 ,\ramloop[14].ram.r_n_62 ,\ramloop[14].ram.r_n_63 }),
        .\douta[367]_0 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 ,\ramloop[15].ram.r_n_8 ,\ramloop[15].ram.r_n_9 ,\ramloop[15].ram.r_n_10 ,\ramloop[15].ram.r_n_11 ,\ramloop[15].ram.r_n_12 ,\ramloop[15].ram.r_n_13 ,\ramloop[15].ram.r_n_14 ,\ramloop[15].ram.r_n_15 ,\ramloop[15].ram.r_n_16 ,\ramloop[15].ram.r_n_17 ,\ramloop[15].ram.r_n_18 ,\ramloop[15].ram.r_n_19 ,\ramloop[15].ram.r_n_20 ,\ramloop[15].ram.r_n_21 ,\ramloop[15].ram.r_n_22 ,\ramloop[15].ram.r_n_23 ,\ramloop[15].ram.r_n_24 ,\ramloop[15].ram.r_n_25 ,\ramloop[15].ram.r_n_26 ,\ramloop[15].ram.r_n_27 ,\ramloop[15].ram.r_n_28 ,\ramloop[15].ram.r_n_29 ,\ramloop[15].ram.r_n_30 ,\ramloop[15].ram.r_n_31 }),
        .\douta[368] ({\ramloop[14].ram.r_n_68 ,\ramloop[14].ram.r_n_69 ,\ramloop[14].ram.r_n_70 ,\ramloop[14].ram.r_n_71 }),
        .\douta[368]_0 ({\ramloop[15].ram.r_n_32 ,\ramloop[15].ram.r_n_33 ,\ramloop[15].ram.r_n_34 ,\ramloop[15].ram.r_n_35 }),
        .\douta[403] ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 ,\ramloop[17].ram.r_n_8 ,\ramloop[17].ram.r_n_9 ,\ramloop[17].ram.r_n_10 ,\ramloop[17].ram.r_n_11 ,\ramloop[17].ram.r_n_12 ,\ramloop[17].ram.r_n_13 ,\ramloop[17].ram.r_n_14 ,\ramloop[17].ram.r_n_15 ,\ramloop[17].ram.r_n_16 ,\ramloop[17].ram.r_n_17 ,\ramloop[17].ram.r_n_18 ,\ramloop[17].ram.r_n_19 ,\ramloop[17].ram.r_n_20 ,\ramloop[17].ram.r_n_21 ,\ramloop[17].ram.r_n_22 ,\ramloop[17].ram.r_n_23 ,\ramloop[17].ram.r_n_24 ,\ramloop[17].ram.r_n_25 ,\ramloop[17].ram.r_n_26 ,\ramloop[17].ram.r_n_27 ,\ramloop[17].ram.r_n_28 ,\ramloop[17].ram.r_n_29 ,\ramloop[17].ram.r_n_30 ,\ramloop[17].ram.r_n_31 }),
        .\douta[403]_0 ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 ,\ramloop[16].ram.r_n_8 ,\ramloop[16].ram.r_n_9 ,\ramloop[16].ram.r_n_10 ,\ramloop[16].ram.r_n_11 ,\ramloop[16].ram.r_n_12 ,\ramloop[16].ram.r_n_13 ,\ramloop[16].ram.r_n_14 ,\ramloop[16].ram.r_n_15 ,\ramloop[16].ram.r_n_16 ,\ramloop[16].ram.r_n_17 ,\ramloop[16].ram.r_n_18 ,\ramloop[16].ram.r_n_19 ,\ramloop[16].ram.r_n_20 ,\ramloop[16].ram.r_n_21 ,\ramloop[16].ram.r_n_22 ,\ramloop[16].ram.r_n_23 ,\ramloop[16].ram.r_n_24 ,\ramloop[16].ram.r_n_25 ,\ramloop[16].ram.r_n_26 ,\ramloop[16].ram.r_n_27 ,\ramloop[16].ram.r_n_28 ,\ramloop[16].ram.r_n_29 ,\ramloop[16].ram.r_n_30 ,\ramloop[16].ram.r_n_31 }),
        .\douta[404] ({\ramloop[17].ram.r_n_64 ,\ramloop[17].ram.r_n_65 ,\ramloop[17].ram.r_n_66 ,\ramloop[17].ram.r_n_67 }),
        .\douta[404]_0 ({\ramloop[16].ram.r_n_32 ,\ramloop[16].ram.r_n_33 ,\ramloop[16].ram.r_n_34 ,\ramloop[16].ram.r_n_35 }),
        .\douta[439] ({\ramloop[17].ram.r_n_32 ,\ramloop[17].ram.r_n_33 ,\ramloop[17].ram.r_n_34 ,\ramloop[17].ram.r_n_35 ,\ramloop[17].ram.r_n_36 ,\ramloop[17].ram.r_n_37 ,\ramloop[17].ram.r_n_38 ,\ramloop[17].ram.r_n_39 ,\ramloop[17].ram.r_n_40 ,\ramloop[17].ram.r_n_41 ,\ramloop[17].ram.r_n_42 ,\ramloop[17].ram.r_n_43 ,\ramloop[17].ram.r_n_44 ,\ramloop[17].ram.r_n_45 ,\ramloop[17].ram.r_n_46 ,\ramloop[17].ram.r_n_47 ,\ramloop[17].ram.r_n_48 ,\ramloop[17].ram.r_n_49 ,\ramloop[17].ram.r_n_50 ,\ramloop[17].ram.r_n_51 ,\ramloop[17].ram.r_n_52 ,\ramloop[17].ram.r_n_53 ,\ramloop[17].ram.r_n_54 ,\ramloop[17].ram.r_n_55 ,\ramloop[17].ram.r_n_56 ,\ramloop[17].ram.r_n_57 ,\ramloop[17].ram.r_n_58 ,\ramloop[17].ram.r_n_59 ,\ramloop[17].ram.r_n_60 ,\ramloop[17].ram.r_n_61 ,\ramloop[17].ram.r_n_62 ,\ramloop[17].ram.r_n_63 }),
        .\douta[439]_0 ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 ,\ramloop[18].ram.r_n_8 ,\ramloop[18].ram.r_n_9 ,\ramloop[18].ram.r_n_10 ,\ramloop[18].ram.r_n_11 ,\ramloop[18].ram.r_n_12 ,\ramloop[18].ram.r_n_13 ,\ramloop[18].ram.r_n_14 ,\ramloop[18].ram.r_n_15 ,\ramloop[18].ram.r_n_16 ,\ramloop[18].ram.r_n_17 ,\ramloop[18].ram.r_n_18 ,\ramloop[18].ram.r_n_19 ,\ramloop[18].ram.r_n_20 ,\ramloop[18].ram.r_n_21 ,\ramloop[18].ram.r_n_22 ,\ramloop[18].ram.r_n_23 ,\ramloop[18].ram.r_n_24 ,\ramloop[18].ram.r_n_25 ,\ramloop[18].ram.r_n_26 ,\ramloop[18].ram.r_n_27 ,\ramloop[18].ram.r_n_28 ,\ramloop[18].ram.r_n_29 ,\ramloop[18].ram.r_n_30 ,\ramloop[18].ram.r_n_31 }),
        .\douta[43] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 ,\ramloop[2].ram.r_n_16 ,\ramloop[2].ram.r_n_17 ,\ramloop[2].ram.r_n_18 ,\ramloop[2].ram.r_n_19 ,\ramloop[2].ram.r_n_20 ,\ramloop[2].ram.r_n_21 ,\ramloop[2].ram.r_n_22 ,\ramloop[2].ram.r_n_23 ,\ramloop[2].ram.r_n_24 ,\ramloop[2].ram.r_n_25 ,\ramloop[2].ram.r_n_26 ,\ramloop[2].ram.r_n_27 ,\ramloop[2].ram.r_n_28 ,\ramloop[2].ram.r_n_29 ,\ramloop[2].ram.r_n_30 ,\ramloop[2].ram.r_n_31 }),
        .\douta[43]_0 ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 ,\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .\douta[440] ({\ramloop[17].ram.r_n_68 ,\ramloop[17].ram.r_n_69 ,\ramloop[17].ram.r_n_70 ,\ramloop[17].ram.r_n_71 }),
        .\douta[440]_0 ({\ramloop[18].ram.r_n_32 ,\ramloop[18].ram.r_n_33 ,\ramloop[18].ram.r_n_34 ,\ramloop[18].ram.r_n_35 }),
        .\douta[44] ({\ramloop[2].ram.r_n_64 ,\ramloop[2].ram.r_n_65 ,\ramloop[2].ram.r_n_66 ,\ramloop[2].ram.r_n_67 }),
        .\douta[44]_0 ({\ramloop[1].ram.r_n_32 ,\ramloop[1].ram.r_n_33 ,\ramloop[1].ram.r_n_34 ,\ramloop[1].ram.r_n_35 }),
        .\douta[475] ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 ,\ramloop[20].ram.r_n_8 ,\ramloop[20].ram.r_n_9 ,\ramloop[20].ram.r_n_10 ,\ramloop[20].ram.r_n_11 ,\ramloop[20].ram.r_n_12 ,\ramloop[20].ram.r_n_13 ,\ramloop[20].ram.r_n_14 ,\ramloop[20].ram.r_n_15 ,\ramloop[20].ram.r_n_16 ,\ramloop[20].ram.r_n_17 ,\ramloop[20].ram.r_n_18 ,\ramloop[20].ram.r_n_19 ,\ramloop[20].ram.r_n_20 ,\ramloop[20].ram.r_n_21 ,\ramloop[20].ram.r_n_22 ,\ramloop[20].ram.r_n_23 ,\ramloop[20].ram.r_n_24 ,\ramloop[20].ram.r_n_25 ,\ramloop[20].ram.r_n_26 ,\ramloop[20].ram.r_n_27 ,\ramloop[20].ram.r_n_28 ,\ramloop[20].ram.r_n_29 ,\ramloop[20].ram.r_n_30 ,\ramloop[20].ram.r_n_31 }),
        .\douta[475]_0 ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 ,\ramloop[19].ram.r_n_8 ,\ramloop[19].ram.r_n_9 ,\ramloop[19].ram.r_n_10 ,\ramloop[19].ram.r_n_11 ,\ramloop[19].ram.r_n_12 ,\ramloop[19].ram.r_n_13 ,\ramloop[19].ram.r_n_14 ,\ramloop[19].ram.r_n_15 ,\ramloop[19].ram.r_n_16 ,\ramloop[19].ram.r_n_17 ,\ramloop[19].ram.r_n_18 ,\ramloop[19].ram.r_n_19 ,\ramloop[19].ram.r_n_20 ,\ramloop[19].ram.r_n_21 ,\ramloop[19].ram.r_n_22 ,\ramloop[19].ram.r_n_23 ,\ramloop[19].ram.r_n_24 ,\ramloop[19].ram.r_n_25 ,\ramloop[19].ram.r_n_26 ,\ramloop[19].ram.r_n_27 ,\ramloop[19].ram.r_n_28 ,\ramloop[19].ram.r_n_29 ,\ramloop[19].ram.r_n_30 ,\ramloop[19].ram.r_n_31 }),
        .\douta[476] ({\ramloop[20].ram.r_n_64 ,\ramloop[20].ram.r_n_65 ,\ramloop[20].ram.r_n_66 ,\ramloop[20].ram.r_n_67 }),
        .\douta[476]_0 ({\ramloop[19].ram.r_n_32 ,\ramloop[19].ram.r_n_33 ,\ramloop[19].ram.r_n_34 ,\ramloop[19].ram.r_n_35 }),
        .\douta[79] ({\ramloop[2].ram.r_n_32 ,\ramloop[2].ram.r_n_33 ,\ramloop[2].ram.r_n_34 ,\ramloop[2].ram.r_n_35 ,\ramloop[2].ram.r_n_36 ,\ramloop[2].ram.r_n_37 ,\ramloop[2].ram.r_n_38 ,\ramloop[2].ram.r_n_39 ,\ramloop[2].ram.r_n_40 ,\ramloop[2].ram.r_n_41 ,\ramloop[2].ram.r_n_42 ,\ramloop[2].ram.r_n_43 ,\ramloop[2].ram.r_n_44 ,\ramloop[2].ram.r_n_45 ,\ramloop[2].ram.r_n_46 ,\ramloop[2].ram.r_n_47 ,\ramloop[2].ram.r_n_48 ,\ramloop[2].ram.r_n_49 ,\ramloop[2].ram.r_n_50 ,\ramloop[2].ram.r_n_51 ,\ramloop[2].ram.r_n_52 ,\ramloop[2].ram.r_n_53 ,\ramloop[2].ram.r_n_54 ,\ramloop[2].ram.r_n_55 ,\ramloop[2].ram.r_n_56 ,\ramloop[2].ram.r_n_57 ,\ramloop[2].ram.r_n_58 ,\ramloop[2].ram.r_n_59 ,\ramloop[2].ram.r_n_60 ,\ramloop[2].ram.r_n_61 ,\ramloop[2].ram.r_n_62 ,\ramloop[2].ram.r_n_63 }),
        .\douta[79]_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 ,\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 ,\ramloop[3].ram.r_n_18 ,\ramloop[3].ram.r_n_19 ,\ramloop[3].ram.r_n_20 ,\ramloop[3].ram.r_n_21 ,\ramloop[3].ram.r_n_22 ,\ramloop[3].ram.r_n_23 ,\ramloop[3].ram.r_n_24 ,\ramloop[3].ram.r_n_25 ,\ramloop[3].ram.r_n_26 ,\ramloop[3].ram.r_n_27 ,\ramloop[3].ram.r_n_28 ,\ramloop[3].ram.r_n_29 ,\ramloop[3].ram.r_n_30 ,\ramloop[3].ram.r_n_31 }),
        .\douta[80] ({\ramloop[2].ram.r_n_68 ,\ramloop[2].ram.r_n_69 ,\ramloop[2].ram.r_n_70 ,\ramloop[2].ram.r_n_71 }),
        .\douta[80]_0 ({\ramloop[3].ram.r_n_32 ,\ramloop[3].ram.r_n_33 ,\ramloop[3].ram.r_n_34 ,\ramloop[3].ram.r_n_35 }),
        .ena(ena));
  weights_buffer_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[8:0]),
        .ena(ena));
  weights_buffer_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 ,\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 ,\ramloop[10].ram.r_n_18 ,\ramloop[10].ram.r_n_19 ,\ramloop[10].ram.r_n_20 ,\ramloop[10].ram.r_n_21 ,\ramloop[10].ram.r_n_22 ,\ramloop[10].ram.r_n_23 ,\ramloop[10].ram.r_n_24 ,\ramloop[10].ram.r_n_25 ,\ramloop[10].ram.r_n_26 ,\ramloop[10].ram.r_n_27 ,\ramloop[10].ram.r_n_28 ,\ramloop[10].ram.r_n_29 ,\ramloop[10].ram.r_n_30 ,\ramloop[10].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[10].ram.r_n_32 ,\ramloop[10].ram.r_n_33 ,\ramloop[10].ram.r_n_34 ,\ramloop[10].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 ,\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 ,\ramloop[11].ram.r_n_16 ,\ramloop[11].ram.r_n_17 ,\ramloop[11].ram.r_n_18 ,\ramloop[11].ram.r_n_19 ,\ramloop[11].ram.r_n_20 ,\ramloop[11].ram.r_n_21 ,\ramloop[11].ram.r_n_22 ,\ramloop[11].ram.r_n_23 ,\ramloop[11].ram.r_n_24 ,\ramloop[11].ram.r_n_25 ,\ramloop[11].ram.r_n_26 ,\ramloop[11].ram.r_n_27 ,\ramloop[11].ram.r_n_28 ,\ramloop[11].ram.r_n_29 ,\ramloop[11].ram.r_n_30 ,\ramloop[11].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ({\ramloop[11].ram.r_n_32 ,\ramloop[11].ram.r_n_33 ,\ramloop[11].ram.r_n_34 ,\ramloop[11].ram.r_n_35 ,\ramloop[11].ram.r_n_36 ,\ramloop[11].ram.r_n_37 ,\ramloop[11].ram.r_n_38 ,\ramloop[11].ram.r_n_39 ,\ramloop[11].ram.r_n_40 ,\ramloop[11].ram.r_n_41 ,\ramloop[11].ram.r_n_42 ,\ramloop[11].ram.r_n_43 ,\ramloop[11].ram.r_n_44 ,\ramloop[11].ram.r_n_45 ,\ramloop[11].ram.r_n_46 ,\ramloop[11].ram.r_n_47 ,\ramloop[11].ram.r_n_48 ,\ramloop[11].ram.r_n_49 ,\ramloop[11].ram.r_n_50 ,\ramloop[11].ram.r_n_51 ,\ramloop[11].ram.r_n_52 ,\ramloop[11].ram.r_n_53 ,\ramloop[11].ram.r_n_54 ,\ramloop[11].ram.r_n_55 ,\ramloop[11].ram.r_n_56 ,\ramloop[11].ram.r_n_57 ,\ramloop[11].ram.r_n_58 ,\ramloop[11].ram.r_n_59 ,\ramloop[11].ram.r_n_60 ,\ramloop[11].ram.r_n_61 ,\ramloop[11].ram.r_n_62 ,\ramloop[11].ram.r_n_63 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ({\ramloop[11].ram.r_n_64 ,\ramloop[11].ram.r_n_65 ,\ramloop[11].ram.r_n_66 ,\ramloop[11].ram.r_n_67 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ({\ramloop[11].ram.r_n_68 ,\ramloop[11].ram.r_n_69 ,\ramloop[11].ram.r_n_70 ,\ramloop[11].ram.r_n_71 }),
        .addra(addra[8:0]),
        .clka(clka),
        .ena_array(ena_array));
  weights_buffer_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 ,\ramloop[12].ram.r_n_8 ,\ramloop[12].ram.r_n_9 ,\ramloop[12].ram.r_n_10 ,\ramloop[12].ram.r_n_11 ,\ramloop[12].ram.r_n_12 ,\ramloop[12].ram.r_n_13 ,\ramloop[12].ram.r_n_14 ,\ramloop[12].ram.r_n_15 ,\ramloop[12].ram.r_n_16 ,\ramloop[12].ram.r_n_17 ,\ramloop[12].ram.r_n_18 ,\ramloop[12].ram.r_n_19 ,\ramloop[12].ram.r_n_20 ,\ramloop[12].ram.r_n_21 ,\ramloop[12].ram.r_n_22 ,\ramloop[12].ram.r_n_23 ,\ramloop[12].ram.r_n_24 ,\ramloop[12].ram.r_n_25 ,\ramloop[12].ram.r_n_26 ,\ramloop[12].ram.r_n_27 ,\ramloop[12].ram.r_n_28 ,\ramloop[12].ram.r_n_29 ,\ramloop[12].ram.r_n_30 ,\ramloop[12].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[12].ram.r_n_32 ,\ramloop[12].ram.r_n_33 ,\ramloop[12].ram.r_n_34 ,\ramloop[12].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 ,\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 ,\ramloop[13].ram.r_n_16 ,\ramloop[13].ram.r_n_17 ,\ramloop[13].ram.r_n_18 ,\ramloop[13].ram.r_n_19 ,\ramloop[13].ram.r_n_20 ,\ramloop[13].ram.r_n_21 ,\ramloop[13].ram.r_n_22 ,\ramloop[13].ram.r_n_23 ,\ramloop[13].ram.r_n_24 ,\ramloop[13].ram.r_n_25 ,\ramloop[13].ram.r_n_26 ,\ramloop[13].ram.r_n_27 ,\ramloop[13].ram.r_n_28 ,\ramloop[13].ram.r_n_29 ,\ramloop[13].ram.r_n_30 ,\ramloop[13].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[13].ram.r_n_32 ,\ramloop[13].ram.r_n_33 ,\ramloop[13].ram.r_n_34 ,\ramloop[13].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 ,\ramloop[14].ram.r_n_8 ,\ramloop[14].ram.r_n_9 ,\ramloop[14].ram.r_n_10 ,\ramloop[14].ram.r_n_11 ,\ramloop[14].ram.r_n_12 ,\ramloop[14].ram.r_n_13 ,\ramloop[14].ram.r_n_14 ,\ramloop[14].ram.r_n_15 ,\ramloop[14].ram.r_n_16 ,\ramloop[14].ram.r_n_17 ,\ramloop[14].ram.r_n_18 ,\ramloop[14].ram.r_n_19 ,\ramloop[14].ram.r_n_20 ,\ramloop[14].ram.r_n_21 ,\ramloop[14].ram.r_n_22 ,\ramloop[14].ram.r_n_23 ,\ramloop[14].ram.r_n_24 ,\ramloop[14].ram.r_n_25 ,\ramloop[14].ram.r_n_26 ,\ramloop[14].ram.r_n_27 ,\ramloop[14].ram.r_n_28 ,\ramloop[14].ram.r_n_29 ,\ramloop[14].ram.r_n_30 ,\ramloop[14].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ({\ramloop[14].ram.r_n_32 ,\ramloop[14].ram.r_n_33 ,\ramloop[14].ram.r_n_34 ,\ramloop[14].ram.r_n_35 ,\ramloop[14].ram.r_n_36 ,\ramloop[14].ram.r_n_37 ,\ramloop[14].ram.r_n_38 ,\ramloop[14].ram.r_n_39 ,\ramloop[14].ram.r_n_40 ,\ramloop[14].ram.r_n_41 ,\ramloop[14].ram.r_n_42 ,\ramloop[14].ram.r_n_43 ,\ramloop[14].ram.r_n_44 ,\ramloop[14].ram.r_n_45 ,\ramloop[14].ram.r_n_46 ,\ramloop[14].ram.r_n_47 ,\ramloop[14].ram.r_n_48 ,\ramloop[14].ram.r_n_49 ,\ramloop[14].ram.r_n_50 ,\ramloop[14].ram.r_n_51 ,\ramloop[14].ram.r_n_52 ,\ramloop[14].ram.r_n_53 ,\ramloop[14].ram.r_n_54 ,\ramloop[14].ram.r_n_55 ,\ramloop[14].ram.r_n_56 ,\ramloop[14].ram.r_n_57 ,\ramloop[14].ram.r_n_58 ,\ramloop[14].ram.r_n_59 ,\ramloop[14].ram.r_n_60 ,\ramloop[14].ram.r_n_61 ,\ramloop[14].ram.r_n_62 ,\ramloop[14].ram.r_n_63 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ({\ramloop[14].ram.r_n_64 ,\ramloop[14].ram.r_n_65 ,\ramloop[14].ram.r_n_66 ,\ramloop[14].ram.r_n_67 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ({\ramloop[14].ram.r_n_68 ,\ramloop[14].ram.r_n_69 ,\ramloop[14].ram.r_n_70 ,\ramloop[14].ram.r_n_71 }),
        .addra(addra[8:0]),
        .clka(clka),
        .ena_array(ena_array));
  weights_buffer_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 ,\ramloop[15].ram.r_n_8 ,\ramloop[15].ram.r_n_9 ,\ramloop[15].ram.r_n_10 ,\ramloop[15].ram.r_n_11 ,\ramloop[15].ram.r_n_12 ,\ramloop[15].ram.r_n_13 ,\ramloop[15].ram.r_n_14 ,\ramloop[15].ram.r_n_15 ,\ramloop[15].ram.r_n_16 ,\ramloop[15].ram.r_n_17 ,\ramloop[15].ram.r_n_18 ,\ramloop[15].ram.r_n_19 ,\ramloop[15].ram.r_n_20 ,\ramloop[15].ram.r_n_21 ,\ramloop[15].ram.r_n_22 ,\ramloop[15].ram.r_n_23 ,\ramloop[15].ram.r_n_24 ,\ramloop[15].ram.r_n_25 ,\ramloop[15].ram.r_n_26 ,\ramloop[15].ram.r_n_27 ,\ramloop[15].ram.r_n_28 ,\ramloop[15].ram.r_n_29 ,\ramloop[15].ram.r_n_30 ,\ramloop[15].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[15].ram.r_n_32 ,\ramloop[15].ram.r_n_33 ,\ramloop[15].ram.r_n_34 ,\ramloop[15].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 ,\ramloop[16].ram.r_n_8 ,\ramloop[16].ram.r_n_9 ,\ramloop[16].ram.r_n_10 ,\ramloop[16].ram.r_n_11 ,\ramloop[16].ram.r_n_12 ,\ramloop[16].ram.r_n_13 ,\ramloop[16].ram.r_n_14 ,\ramloop[16].ram.r_n_15 ,\ramloop[16].ram.r_n_16 ,\ramloop[16].ram.r_n_17 ,\ramloop[16].ram.r_n_18 ,\ramloop[16].ram.r_n_19 ,\ramloop[16].ram.r_n_20 ,\ramloop[16].ram.r_n_21 ,\ramloop[16].ram.r_n_22 ,\ramloop[16].ram.r_n_23 ,\ramloop[16].ram.r_n_24 ,\ramloop[16].ram.r_n_25 ,\ramloop[16].ram.r_n_26 ,\ramloop[16].ram.r_n_27 ,\ramloop[16].ram.r_n_28 ,\ramloop[16].ram.r_n_29 ,\ramloop[16].ram.r_n_30 ,\ramloop[16].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[16].ram.r_n_32 ,\ramloop[16].ram.r_n_33 ,\ramloop[16].ram.r_n_34 ,\ramloop[16].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 ,\ramloop[17].ram.r_n_8 ,\ramloop[17].ram.r_n_9 ,\ramloop[17].ram.r_n_10 ,\ramloop[17].ram.r_n_11 ,\ramloop[17].ram.r_n_12 ,\ramloop[17].ram.r_n_13 ,\ramloop[17].ram.r_n_14 ,\ramloop[17].ram.r_n_15 ,\ramloop[17].ram.r_n_16 ,\ramloop[17].ram.r_n_17 ,\ramloop[17].ram.r_n_18 ,\ramloop[17].ram.r_n_19 ,\ramloop[17].ram.r_n_20 ,\ramloop[17].ram.r_n_21 ,\ramloop[17].ram.r_n_22 ,\ramloop[17].ram.r_n_23 ,\ramloop[17].ram.r_n_24 ,\ramloop[17].ram.r_n_25 ,\ramloop[17].ram.r_n_26 ,\ramloop[17].ram.r_n_27 ,\ramloop[17].ram.r_n_28 ,\ramloop[17].ram.r_n_29 ,\ramloop[17].ram.r_n_30 ,\ramloop[17].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ({\ramloop[17].ram.r_n_32 ,\ramloop[17].ram.r_n_33 ,\ramloop[17].ram.r_n_34 ,\ramloop[17].ram.r_n_35 ,\ramloop[17].ram.r_n_36 ,\ramloop[17].ram.r_n_37 ,\ramloop[17].ram.r_n_38 ,\ramloop[17].ram.r_n_39 ,\ramloop[17].ram.r_n_40 ,\ramloop[17].ram.r_n_41 ,\ramloop[17].ram.r_n_42 ,\ramloop[17].ram.r_n_43 ,\ramloop[17].ram.r_n_44 ,\ramloop[17].ram.r_n_45 ,\ramloop[17].ram.r_n_46 ,\ramloop[17].ram.r_n_47 ,\ramloop[17].ram.r_n_48 ,\ramloop[17].ram.r_n_49 ,\ramloop[17].ram.r_n_50 ,\ramloop[17].ram.r_n_51 ,\ramloop[17].ram.r_n_52 ,\ramloop[17].ram.r_n_53 ,\ramloop[17].ram.r_n_54 ,\ramloop[17].ram.r_n_55 ,\ramloop[17].ram.r_n_56 ,\ramloop[17].ram.r_n_57 ,\ramloop[17].ram.r_n_58 ,\ramloop[17].ram.r_n_59 ,\ramloop[17].ram.r_n_60 ,\ramloop[17].ram.r_n_61 ,\ramloop[17].ram.r_n_62 ,\ramloop[17].ram.r_n_63 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ({\ramloop[17].ram.r_n_64 ,\ramloop[17].ram.r_n_65 ,\ramloop[17].ram.r_n_66 ,\ramloop[17].ram.r_n_67 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ({\ramloop[17].ram.r_n_68 ,\ramloop[17].ram.r_n_69 ,\ramloop[17].ram.r_n_70 ,\ramloop[17].ram.r_n_71 }),
        .addra(addra[8:0]),
        .clka(clka),
        .ena_array(ena_array));
  weights_buffer_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 ,\ramloop[18].ram.r_n_8 ,\ramloop[18].ram.r_n_9 ,\ramloop[18].ram.r_n_10 ,\ramloop[18].ram.r_n_11 ,\ramloop[18].ram.r_n_12 ,\ramloop[18].ram.r_n_13 ,\ramloop[18].ram.r_n_14 ,\ramloop[18].ram.r_n_15 ,\ramloop[18].ram.r_n_16 ,\ramloop[18].ram.r_n_17 ,\ramloop[18].ram.r_n_18 ,\ramloop[18].ram.r_n_19 ,\ramloop[18].ram.r_n_20 ,\ramloop[18].ram.r_n_21 ,\ramloop[18].ram.r_n_22 ,\ramloop[18].ram.r_n_23 ,\ramloop[18].ram.r_n_24 ,\ramloop[18].ram.r_n_25 ,\ramloop[18].ram.r_n_26 ,\ramloop[18].ram.r_n_27 ,\ramloop[18].ram.r_n_28 ,\ramloop[18].ram.r_n_29 ,\ramloop[18].ram.r_n_30 ,\ramloop[18].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[18].ram.r_n_32 ,\ramloop[18].ram.r_n_33 ,\ramloop[18].ram.r_n_34 ,\ramloop[18].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 ,\ramloop[19].ram.r_n_8 ,\ramloop[19].ram.r_n_9 ,\ramloop[19].ram.r_n_10 ,\ramloop[19].ram.r_n_11 ,\ramloop[19].ram.r_n_12 ,\ramloop[19].ram.r_n_13 ,\ramloop[19].ram.r_n_14 ,\ramloop[19].ram.r_n_15 ,\ramloop[19].ram.r_n_16 ,\ramloop[19].ram.r_n_17 ,\ramloop[19].ram.r_n_18 ,\ramloop[19].ram.r_n_19 ,\ramloop[19].ram.r_n_20 ,\ramloop[19].ram.r_n_21 ,\ramloop[19].ram.r_n_22 ,\ramloop[19].ram.r_n_23 ,\ramloop[19].ram.r_n_24 ,\ramloop[19].ram.r_n_25 ,\ramloop[19].ram.r_n_26 ,\ramloop[19].ram.r_n_27 ,\ramloop[19].ram.r_n_28 ,\ramloop[19].ram.r_n_29 ,\ramloop[19].ram.r_n_30 ,\ramloop[19].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[19].ram.r_n_32 ,\ramloop[19].ram.r_n_33 ,\ramloop[19].ram.r_n_34 ,\ramloop[19].ram.r_n_35 }),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_0(\ramloop[19].ram.r_n_36 ));
  weights_buffer_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 ,\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[1].ram.r_n_32 ,\ramloop[1].ram.r_n_33 ,\ramloop[1].ram.r_n_34 ,\ramloop[1].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 ,\ramloop[20].ram.r_n_8 ,\ramloop[20].ram.r_n_9 ,\ramloop[20].ram.r_n_10 ,\ramloop[20].ram.r_n_11 ,\ramloop[20].ram.r_n_12 ,\ramloop[20].ram.r_n_13 ,\ramloop[20].ram.r_n_14 ,\ramloop[20].ram.r_n_15 ,\ramloop[20].ram.r_n_16 ,\ramloop[20].ram.r_n_17 ,\ramloop[20].ram.r_n_18 ,\ramloop[20].ram.r_n_19 ,\ramloop[20].ram.r_n_20 ,\ramloop[20].ram.r_n_21 ,\ramloop[20].ram.r_n_22 ,\ramloop[20].ram.r_n_23 ,\ramloop[20].ram.r_n_24 ,\ramloop[20].ram.r_n_25 ,\ramloop[20].ram.r_n_26 ,\ramloop[20].ram.r_n_27 ,\ramloop[20].ram.r_n_28 ,\ramloop[20].ram.r_n_29 ,\ramloop[20].ram.r_n_30 ,\ramloop[20].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ({\ramloop[20].ram.r_n_64 ,\ramloop[20].ram.r_n_65 ,\ramloop[20].ram.r_n_66 ,\ramloop[20].ram.r_n_67 }),
        .DOBDO({\ramloop[20].ram.r_n_32 ,\ramloop[20].ram.r_n_33 ,\ramloop[20].ram.r_n_34 ,\ramloop[20].ram.r_n_35 ,\ramloop[20].ram.r_n_36 ,\ramloop[20].ram.r_n_37 ,\ramloop[20].ram.r_n_38 ,\ramloop[20].ram.r_n_39 ,\ramloop[20].ram.r_n_40 ,\ramloop[20].ram.r_n_41 ,\ramloop[20].ram.r_n_42 ,\ramloop[20].ram.r_n_43 ,\ramloop[20].ram.r_n_44 ,\ramloop[20].ram.r_n_45 ,\ramloop[20].ram.r_n_46 ,\ramloop[20].ram.r_n_47 ,\ramloop[20].ram.r_n_48 ,\ramloop[20].ram.r_n_49 ,\ramloop[20].ram.r_n_50 ,\ramloop[20].ram.r_n_51 ,\ramloop[20].ram.r_n_52 ,\ramloop[20].ram.r_n_53 ,\ramloop[20].ram.r_n_54 ,\ramloop[20].ram.r_n_55 ,\ramloop[20].ram.r_n_56 ,\ramloop[20].ram.r_n_57 ,\ramloop[20].ram.r_n_58 ,\ramloop[20].ram.r_n_59 ,\ramloop[20].ram.r_n_60 ,\ramloop[20].ram.r_n_61 ,\ramloop[20].ram.r_n_62 ,\ramloop[20].ram.r_n_63 }),
        .DOPBDOP({\ramloop[20].ram.r_n_68 ,\ramloop[20].ram.r_n_69 ,\ramloop[20].ram.r_n_70 }),
        .addra(addra[8:0]),
        .clka(clka),
        .ena_array(ena_array));
  weights_buffer_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[19].ram.r_n_36 ),
        .DOADO({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 ,\ramloop[21].ram.r_n_8 ,\ramloop[21].ram.r_n_9 ,\ramloop[21].ram.r_n_10 ,\ramloop[21].ram.r_n_11 ,\ramloop[21].ram.r_n_12 ,\ramloop[21].ram.r_n_13 ,\ramloop[21].ram.r_n_14 ,\ramloop[21].ram.r_n_15 ,\ramloop[21].ram.r_n_16 ,\ramloop[21].ram.r_n_17 ,\ramloop[21].ram.r_n_18 ,\ramloop[21].ram.r_n_19 ,\ramloop[21].ram.r_n_20 ,\ramloop[21].ram.r_n_21 ,\ramloop[21].ram.r_n_22 ,\ramloop[21].ram.r_n_23 ,\ramloop[21].ram.r_n_24 ,\ramloop[21].ram.r_n_25 ,\ramloop[21].ram.r_n_26 ,\ramloop[21].ram.r_n_27 ,\ramloop[21].ram.r_n_28 ,\ramloop[21].ram.r_n_29 ,\ramloop[21].ram.r_n_30 ,\ramloop[21].ram.r_n_31 }),
        .DOPADOP({\ramloop[21].ram.r_n_32 ,\ramloop[21].ram.r_n_33 ,\ramloop[21].ram.r_n_34 }),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 ,\ramloop[2].ram.r_n_16 ,\ramloop[2].ram.r_n_17 ,\ramloop[2].ram.r_n_18 ,\ramloop[2].ram.r_n_19 ,\ramloop[2].ram.r_n_20 ,\ramloop[2].ram.r_n_21 ,\ramloop[2].ram.r_n_22 ,\ramloop[2].ram.r_n_23 ,\ramloop[2].ram.r_n_24 ,\ramloop[2].ram.r_n_25 ,\ramloop[2].ram.r_n_26 ,\ramloop[2].ram.r_n_27 ,\ramloop[2].ram.r_n_28 ,\ramloop[2].ram.r_n_29 ,\ramloop[2].ram.r_n_30 ,\ramloop[2].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ({\ramloop[2].ram.r_n_32 ,\ramloop[2].ram.r_n_33 ,\ramloop[2].ram.r_n_34 ,\ramloop[2].ram.r_n_35 ,\ramloop[2].ram.r_n_36 ,\ramloop[2].ram.r_n_37 ,\ramloop[2].ram.r_n_38 ,\ramloop[2].ram.r_n_39 ,\ramloop[2].ram.r_n_40 ,\ramloop[2].ram.r_n_41 ,\ramloop[2].ram.r_n_42 ,\ramloop[2].ram.r_n_43 ,\ramloop[2].ram.r_n_44 ,\ramloop[2].ram.r_n_45 ,\ramloop[2].ram.r_n_46 ,\ramloop[2].ram.r_n_47 ,\ramloop[2].ram.r_n_48 ,\ramloop[2].ram.r_n_49 ,\ramloop[2].ram.r_n_50 ,\ramloop[2].ram.r_n_51 ,\ramloop[2].ram.r_n_52 ,\ramloop[2].ram.r_n_53 ,\ramloop[2].ram.r_n_54 ,\ramloop[2].ram.r_n_55 ,\ramloop[2].ram.r_n_56 ,\ramloop[2].ram.r_n_57 ,\ramloop[2].ram.r_n_58 ,\ramloop[2].ram.r_n_59 ,\ramloop[2].ram.r_n_60 ,\ramloop[2].ram.r_n_61 ,\ramloop[2].ram.r_n_62 ,\ramloop[2].ram.r_n_63 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ({\ramloop[2].ram.r_n_64 ,\ramloop[2].ram.r_n_65 ,\ramloop[2].ram.r_n_66 ,\ramloop[2].ram.r_n_67 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ({\ramloop[2].ram.r_n_68 ,\ramloop[2].ram.r_n_69 ,\ramloop[2].ram.r_n_70 ,\ramloop[2].ram.r_n_71 }),
        .addra(addra[8:0]),
        .clka(clka),
        .ena_array(ena_array));
  weights_buffer_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 ,\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 ,\ramloop[3].ram.r_n_18 ,\ramloop[3].ram.r_n_19 ,\ramloop[3].ram.r_n_20 ,\ramloop[3].ram.r_n_21 ,\ramloop[3].ram.r_n_22 ,\ramloop[3].ram.r_n_23 ,\ramloop[3].ram.r_n_24 ,\ramloop[3].ram.r_n_25 ,\ramloop[3].ram.r_n_26 ,\ramloop[3].ram.r_n_27 ,\ramloop[3].ram.r_n_28 ,\ramloop[3].ram.r_n_29 ,\ramloop[3].ram.r_n_30 ,\ramloop[3].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[3].ram.r_n_32 ,\ramloop[3].ram.r_n_33 ,\ramloop[3].ram.r_n_34 ,\ramloop[3].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 ,\ramloop[4].ram.r_n_16 ,\ramloop[4].ram.r_n_17 ,\ramloop[4].ram.r_n_18 ,\ramloop[4].ram.r_n_19 ,\ramloop[4].ram.r_n_20 ,\ramloop[4].ram.r_n_21 ,\ramloop[4].ram.r_n_22 ,\ramloop[4].ram.r_n_23 ,\ramloop[4].ram.r_n_24 ,\ramloop[4].ram.r_n_25 ,\ramloop[4].ram.r_n_26 ,\ramloop[4].ram.r_n_27 ,\ramloop[4].ram.r_n_28 ,\ramloop[4].ram.r_n_29 ,\ramloop[4].ram.r_n_30 ,\ramloop[4].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[4].ram.r_n_32 ,\ramloop[4].ram.r_n_33 ,\ramloop[4].ram.r_n_34 ,\ramloop[4].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 ,\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 ,\ramloop[5].ram.r_n_16 ,\ramloop[5].ram.r_n_17 ,\ramloop[5].ram.r_n_18 ,\ramloop[5].ram.r_n_19 ,\ramloop[5].ram.r_n_20 ,\ramloop[5].ram.r_n_21 ,\ramloop[5].ram.r_n_22 ,\ramloop[5].ram.r_n_23 ,\ramloop[5].ram.r_n_24 ,\ramloop[5].ram.r_n_25 ,\ramloop[5].ram.r_n_26 ,\ramloop[5].ram.r_n_27 ,\ramloop[5].ram.r_n_28 ,\ramloop[5].ram.r_n_29 ,\ramloop[5].ram.r_n_30 ,\ramloop[5].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ({\ramloop[5].ram.r_n_32 ,\ramloop[5].ram.r_n_33 ,\ramloop[5].ram.r_n_34 ,\ramloop[5].ram.r_n_35 ,\ramloop[5].ram.r_n_36 ,\ramloop[5].ram.r_n_37 ,\ramloop[5].ram.r_n_38 ,\ramloop[5].ram.r_n_39 ,\ramloop[5].ram.r_n_40 ,\ramloop[5].ram.r_n_41 ,\ramloop[5].ram.r_n_42 ,\ramloop[5].ram.r_n_43 ,\ramloop[5].ram.r_n_44 ,\ramloop[5].ram.r_n_45 ,\ramloop[5].ram.r_n_46 ,\ramloop[5].ram.r_n_47 ,\ramloop[5].ram.r_n_48 ,\ramloop[5].ram.r_n_49 ,\ramloop[5].ram.r_n_50 ,\ramloop[5].ram.r_n_51 ,\ramloop[5].ram.r_n_52 ,\ramloop[5].ram.r_n_53 ,\ramloop[5].ram.r_n_54 ,\ramloop[5].ram.r_n_55 ,\ramloop[5].ram.r_n_56 ,\ramloop[5].ram.r_n_57 ,\ramloop[5].ram.r_n_58 ,\ramloop[5].ram.r_n_59 ,\ramloop[5].ram.r_n_60 ,\ramloop[5].ram.r_n_61 ,\ramloop[5].ram.r_n_62 ,\ramloop[5].ram.r_n_63 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ({\ramloop[5].ram.r_n_64 ,\ramloop[5].ram.r_n_65 ,\ramloop[5].ram.r_n_66 ,\ramloop[5].ram.r_n_67 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ({\ramloop[5].ram.r_n_68 ,\ramloop[5].ram.r_n_69 ,\ramloop[5].ram.r_n_70 ,\ramloop[5].ram.r_n_71 }),
        .addra(addra[8:0]),
        .clka(clka),
        .ena_array(ena_array));
  weights_buffer_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 ,\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 ,\ramloop[6].ram.r_n_16 ,\ramloop[6].ram.r_n_17 ,\ramloop[6].ram.r_n_18 ,\ramloop[6].ram.r_n_19 ,\ramloop[6].ram.r_n_20 ,\ramloop[6].ram.r_n_21 ,\ramloop[6].ram.r_n_22 ,\ramloop[6].ram.r_n_23 ,\ramloop[6].ram.r_n_24 ,\ramloop[6].ram.r_n_25 ,\ramloop[6].ram.r_n_26 ,\ramloop[6].ram.r_n_27 ,\ramloop[6].ram.r_n_28 ,\ramloop[6].ram.r_n_29 ,\ramloop[6].ram.r_n_30 ,\ramloop[6].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[6].ram.r_n_32 ,\ramloop[6].ram.r_n_33 ,\ramloop[6].ram.r_n_34 ,\ramloop[6].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 ,\ramloop[7].ram.r_n_8 ,\ramloop[7].ram.r_n_9 ,\ramloop[7].ram.r_n_10 ,\ramloop[7].ram.r_n_11 ,\ramloop[7].ram.r_n_12 ,\ramloop[7].ram.r_n_13 ,\ramloop[7].ram.r_n_14 ,\ramloop[7].ram.r_n_15 ,\ramloop[7].ram.r_n_16 ,\ramloop[7].ram.r_n_17 ,\ramloop[7].ram.r_n_18 ,\ramloop[7].ram.r_n_19 ,\ramloop[7].ram.r_n_20 ,\ramloop[7].ram.r_n_21 ,\ramloop[7].ram.r_n_22 ,\ramloop[7].ram.r_n_23 ,\ramloop[7].ram.r_n_24 ,\ramloop[7].ram.r_n_25 ,\ramloop[7].ram.r_n_26 ,\ramloop[7].ram.r_n_27 ,\ramloop[7].ram.r_n_28 ,\ramloop[7].ram.r_n_29 ,\ramloop[7].ram.r_n_30 ,\ramloop[7].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[7].ram.r_n_32 ,\ramloop[7].ram.r_n_33 ,\ramloop[7].ram.r_n_34 ,\ramloop[7].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
  weights_buffer_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 ,\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 ,\ramloop[8].ram.r_n_16 ,\ramloop[8].ram.r_n_17 ,\ramloop[8].ram.r_n_18 ,\ramloop[8].ram.r_n_19 ,\ramloop[8].ram.r_n_20 ,\ramloop[8].ram.r_n_21 ,\ramloop[8].ram.r_n_22 ,\ramloop[8].ram.r_n_23 ,\ramloop[8].ram.r_n_24 ,\ramloop[8].ram.r_n_25 ,\ramloop[8].ram.r_n_26 ,\ramloop[8].ram.r_n_27 ,\ramloop[8].ram.r_n_28 ,\ramloop[8].ram.r_n_29 ,\ramloop[8].ram.r_n_30 ,\ramloop[8].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ({\ramloop[8].ram.r_n_32 ,\ramloop[8].ram.r_n_33 ,\ramloop[8].ram.r_n_34 ,\ramloop[8].ram.r_n_35 ,\ramloop[8].ram.r_n_36 ,\ramloop[8].ram.r_n_37 ,\ramloop[8].ram.r_n_38 ,\ramloop[8].ram.r_n_39 ,\ramloop[8].ram.r_n_40 ,\ramloop[8].ram.r_n_41 ,\ramloop[8].ram.r_n_42 ,\ramloop[8].ram.r_n_43 ,\ramloop[8].ram.r_n_44 ,\ramloop[8].ram.r_n_45 ,\ramloop[8].ram.r_n_46 ,\ramloop[8].ram.r_n_47 ,\ramloop[8].ram.r_n_48 ,\ramloop[8].ram.r_n_49 ,\ramloop[8].ram.r_n_50 ,\ramloop[8].ram.r_n_51 ,\ramloop[8].ram.r_n_52 ,\ramloop[8].ram.r_n_53 ,\ramloop[8].ram.r_n_54 ,\ramloop[8].ram.r_n_55 ,\ramloop[8].ram.r_n_56 ,\ramloop[8].ram.r_n_57 ,\ramloop[8].ram.r_n_58 ,\ramloop[8].ram.r_n_59 ,\ramloop[8].ram.r_n_60 ,\ramloop[8].ram.r_n_61 ,\ramloop[8].ram.r_n_62 ,\ramloop[8].ram.r_n_63 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ({\ramloop[8].ram.r_n_64 ,\ramloop[8].ram.r_n_65 ,\ramloop[8].ram.r_n_66 ,\ramloop[8].ram.r_n_67 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ({\ramloop[8].ram.r_n_68 ,\ramloop[8].ram.r_n_69 ,\ramloop[8].ram.r_n_70 ,\ramloop[8].ram.r_n_71 }),
        .addra(addra[8:0]),
        .clka(clka),
        .ena_array(ena_array));
  weights_buffer_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 ,\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 ,\ramloop[9].ram.r_n_16 ,\ramloop[9].ram.r_n_17 ,\ramloop[9].ram.r_n_18 ,\ramloop[9].ram.r_n_19 ,\ramloop[9].ram.r_n_20 ,\ramloop[9].ram.r_n_21 ,\ramloop[9].ram.r_n_22 ,\ramloop[9].ram.r_n_23 ,\ramloop[9].ram.r_n_24 ,\ramloop[9].ram.r_n_25 ,\ramloop[9].ram.r_n_26 ,\ramloop[9].ram.r_n_27 ,\ramloop[9].ram.r_n_28 ,\ramloop[9].ram.r_n_29 ,\ramloop[9].ram.r_n_30 ,\ramloop[9].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[9].ram.r_n_32 ,\ramloop[9].ram.r_n_33 ,\ramloop[9].ram.r_n_34 ,\ramloop[9].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[19].ram.r_n_36 ),
        .addra(addra[9:0]),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weights_buffer_blk_mem_gen_mux
   (douta,
    addra,
    ena,
    clka,
    DOBDO,
    DOADO,
    DOPBDOP,
    DOPADOP,
    \douta[476] ,
    \douta[476]_0 ,
    \douta[475] ,
    \douta[475]_0 ,
    \douta[440] ,
    \douta[440]_0 ,
    \douta[439] ,
    \douta[439]_0 ,
    \douta[404] ,
    \douta[404]_0 ,
    \douta[403] ,
    \douta[403]_0 ,
    \douta[368] ,
    \douta[368]_0 ,
    \douta[367] ,
    \douta[367]_0 ,
    \douta[332] ,
    \douta[332]_0 ,
    \douta[331] ,
    \douta[331]_0 ,
    \douta[296] ,
    \douta[296]_0 ,
    \douta[295] ,
    \douta[295]_0 ,
    \douta[260] ,
    \douta[260]_0 ,
    \douta[259] ,
    \douta[259]_0 ,
    \douta[224] ,
    \douta[224]_0 ,
    \douta[223] ,
    \douta[223]_0 ,
    \douta[188] ,
    \douta[188]_0 ,
    \douta[187] ,
    \douta[187]_0 ,
    \douta[152] ,
    \douta[152]_0 ,
    \douta[151] ,
    \douta[151]_0 ,
    \douta[116] ,
    \douta[116]_0 ,
    \douta[115] ,
    \douta[115]_0 ,
    \douta[80] ,
    \douta[80]_0 ,
    \douta[79] ,
    \douta[79]_0 ,
    \douta[44] ,
    \douta[44]_0 ,
    \douta[43] ,
    \douta[43]_0 );
  output [502:0]douta;
  input [1:0]addra;
  input ena;
  input clka;
  input [31:0]DOBDO;
  input [31:0]DOADO;
  input [2:0]DOPBDOP;
  input [2:0]DOPADOP;
  input [3:0]\douta[476] ;
  input [3:0]\douta[476]_0 ;
  input [31:0]\douta[475] ;
  input [31:0]\douta[475]_0 ;
  input [3:0]\douta[440] ;
  input [3:0]\douta[440]_0 ;
  input [31:0]\douta[439] ;
  input [31:0]\douta[439]_0 ;
  input [3:0]\douta[404] ;
  input [3:0]\douta[404]_0 ;
  input [31:0]\douta[403] ;
  input [31:0]\douta[403]_0 ;
  input [3:0]\douta[368] ;
  input [3:0]\douta[368]_0 ;
  input [31:0]\douta[367] ;
  input [31:0]\douta[367]_0 ;
  input [3:0]\douta[332] ;
  input [3:0]\douta[332]_0 ;
  input [31:0]\douta[331] ;
  input [31:0]\douta[331]_0 ;
  input [3:0]\douta[296] ;
  input [3:0]\douta[296]_0 ;
  input [31:0]\douta[295] ;
  input [31:0]\douta[295]_0 ;
  input [3:0]\douta[260] ;
  input [3:0]\douta[260]_0 ;
  input [31:0]\douta[259] ;
  input [31:0]\douta[259]_0 ;
  input [3:0]\douta[224] ;
  input [3:0]\douta[224]_0 ;
  input [31:0]\douta[223] ;
  input [31:0]\douta[223]_0 ;
  input [3:0]\douta[188] ;
  input [3:0]\douta[188]_0 ;
  input [31:0]\douta[187] ;
  input [31:0]\douta[187]_0 ;
  input [3:0]\douta[152] ;
  input [3:0]\douta[152]_0 ;
  input [31:0]\douta[151] ;
  input [31:0]\douta[151]_0 ;
  input [3:0]\douta[116] ;
  input [3:0]\douta[116]_0 ;
  input [31:0]\douta[115] ;
  input [31:0]\douta[115]_0 ;
  input [3:0]\douta[80] ;
  input [3:0]\douta[80]_0 ;
  input [31:0]\douta[79] ;
  input [31:0]\douta[79]_0 ;
  input [3:0]\douta[44] ;
  input [3:0]\douta[44]_0 ;
  input [31:0]\douta[43] ;
  input [31:0]\douta[43]_0 ;

  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [2:0]DOPADOP;
  wire [2:0]DOPBDOP;
  wire [1:0]addra;
  wire clka;
  wire [502:0]douta;
  wire [31:0]\douta[115] ;
  wire [31:0]\douta[115]_0 ;
  wire [3:0]\douta[116] ;
  wire [3:0]\douta[116]_0 ;
  wire [31:0]\douta[151] ;
  wire [31:0]\douta[151]_0 ;
  wire [3:0]\douta[152] ;
  wire [3:0]\douta[152]_0 ;
  wire [31:0]\douta[187] ;
  wire [31:0]\douta[187]_0 ;
  wire [3:0]\douta[188] ;
  wire [3:0]\douta[188]_0 ;
  wire [31:0]\douta[223] ;
  wire [31:0]\douta[223]_0 ;
  wire [3:0]\douta[224] ;
  wire [3:0]\douta[224]_0 ;
  wire [31:0]\douta[259] ;
  wire [31:0]\douta[259]_0 ;
  wire [3:0]\douta[260] ;
  wire [3:0]\douta[260]_0 ;
  wire [31:0]\douta[295] ;
  wire [31:0]\douta[295]_0 ;
  wire [3:0]\douta[296] ;
  wire [3:0]\douta[296]_0 ;
  wire [31:0]\douta[331] ;
  wire [31:0]\douta[331]_0 ;
  wire [3:0]\douta[332] ;
  wire [3:0]\douta[332]_0 ;
  wire [31:0]\douta[367] ;
  wire [31:0]\douta[367]_0 ;
  wire [3:0]\douta[368] ;
  wire [3:0]\douta[368]_0 ;
  wire [31:0]\douta[403] ;
  wire [31:0]\douta[403]_0 ;
  wire [3:0]\douta[404] ;
  wire [3:0]\douta[404]_0 ;
  wire [31:0]\douta[439] ;
  wire [31:0]\douta[439]_0 ;
  wire [31:0]\douta[43] ;
  wire [31:0]\douta[43]_0 ;
  wire [3:0]\douta[440] ;
  wire [3:0]\douta[440]_0 ;
  wire [3:0]\douta[44] ;
  wire [3:0]\douta[44]_0 ;
  wire [31:0]\douta[475] ;
  wire [31:0]\douta[475]_0 ;
  wire [3:0]\douta[476] ;
  wire [3:0]\douta[476]_0 ;
  wire [31:0]\douta[79] ;
  wire [31:0]\douta[79]_0 ;
  wire [3:0]\douta[80] ;
  wire [3:0]\douta[80]_0 ;
  wire ena;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ;
  wire [1:0]sel_pipe;

  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[100]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [17]),
        .O(douta[91]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[101]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [18]),
        .O(douta[92]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[102]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [19]),
        .O(douta[93]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[103]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [20]),
        .O(douta[94]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[104]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [21]),
        .O(douta[95]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[105]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [22]),
        .O(douta[96]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[106]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [23]),
        .O(douta[97]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[107]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[116] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[116]_0 [2]),
        .O(douta[98]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[108]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [24]),
        .O(douta[99]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[109]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [25]),
        .O(douta[100]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [1]),
        .O(douta[1]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[110]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [26]),
        .O(douta[101]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[111]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [27]),
        .O(douta[102]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[112]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [28]),
        .O(douta[103]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[113]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [29]),
        .O(douta[104]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[114]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [30]),
        .O(douta[105]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[115]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [31]),
        .O(douta[106]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[116]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[116] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[116]_0 [3]),
        .O(douta[107]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[117]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [0]),
        .O(douta[108]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[118]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [1]),
        .O(douta[109]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[119]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [2]),
        .O(douta[110]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [2]),
        .O(douta[2]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[120]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [3]),
        .O(douta[111]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[121]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [4]),
        .O(douta[112]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[122]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [5]),
        .O(douta[113]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[123]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [6]),
        .O(douta[114]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[124]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [7]),
        .O(douta[115]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[125]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[152] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[152]_0 [0]),
        .O(douta[116]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[126]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [8]),
        .O(douta[117]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[127]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [9]),
        .O(douta[118]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[128]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [10]),
        .O(douta[119]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[129]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [11]),
        .O(douta[120]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [3]),
        .O(douta[3]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[130]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [12]),
        .O(douta[121]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[131]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [13]),
        .O(douta[122]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[132]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [14]),
        .O(douta[123]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[133]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [15]),
        .O(douta[124]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[134]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[152] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[152]_0 [1]),
        .O(douta[125]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[135]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [16]),
        .O(douta[126]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[136]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [17]),
        .O(douta[127]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[137]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [18]),
        .O(douta[128]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[138]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [19]),
        .O(douta[129]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[139]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [20]),
        .O(douta[130]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [4]),
        .O(douta[4]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[140]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [21]),
        .O(douta[131]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[141]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [22]),
        .O(douta[132]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[142]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [23]),
        .O(douta[133]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[143]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[152] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[152]_0 [2]),
        .O(douta[134]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[144]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [24]),
        .O(douta[135]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[145]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [25]),
        .O(douta[136]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[146]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [26]),
        .O(douta[137]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[147]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [27]),
        .O(douta[138]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[148]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [28]),
        .O(douta[139]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[149]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [29]),
        .O(douta[140]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [5]),
        .O(douta[5]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[150]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [30]),
        .O(douta[141]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[151]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[151] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[151]_0 [31]),
        .O(douta[142]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[152]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[152] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[152]_0 [3]),
        .O(douta[143]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[153]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [0]),
        .O(douta[144]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[154]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [1]),
        .O(douta[145]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[155]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [2]),
        .O(douta[146]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[156]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [3]),
        .O(douta[147]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[157]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [4]),
        .O(douta[148]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[158]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [5]),
        .O(douta[149]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[159]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [6]),
        .O(douta[150]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [6]),
        .O(douta[6]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[160]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [7]),
        .O(douta[151]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[161]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[188] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[188]_0 [0]),
        .O(douta[152]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[162]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [8]),
        .O(douta[153]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[163]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [9]),
        .O(douta[154]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[164]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [10]),
        .O(douta[155]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[165]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [11]),
        .O(douta[156]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[166]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [12]),
        .O(douta[157]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[167]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [13]),
        .O(douta[158]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[168]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [14]),
        .O(douta[159]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[169]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [15]),
        .O(douta[160]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[16]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [7]),
        .O(douta[7]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[170]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[188] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[188]_0 [1]),
        .O(douta[161]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[171]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [16]),
        .O(douta[162]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[172]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [17]),
        .O(douta[163]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[173]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [18]),
        .O(douta[164]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[174]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [19]),
        .O(douta[165]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[175]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [20]),
        .O(douta[166]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[176]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [21]),
        .O(douta[167]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[177]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [22]),
        .O(douta[168]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[178]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [23]),
        .O(douta[169]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[179]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[188] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[188]_0 [2]),
        .O(douta[170]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[17]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[44] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[44]_0 [0]),
        .O(douta[8]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[180]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [24]),
        .O(douta[171]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[181]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [25]),
        .O(douta[172]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[182]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [26]),
        .O(douta[173]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[183]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [27]),
        .O(douta[174]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[184]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [28]),
        .O(douta[175]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[185]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [29]),
        .O(douta[176]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[186]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [30]),
        .O(douta[177]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[187]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[187] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[187]_0 [31]),
        .O(douta[178]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[188]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[188] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[188]_0 [3]),
        .O(douta[179]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[189]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [0]),
        .O(douta[180]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[18]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [8]),
        .O(douta[9]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[190]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [1]),
        .O(douta[181]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[191]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [2]),
        .O(douta[182]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[192]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [3]),
        .O(douta[183]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[193]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [4]),
        .O(douta[184]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[194]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [5]),
        .O(douta[185]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[195]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [6]),
        .O(douta[186]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[196]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [7]),
        .O(douta[187]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[197]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[224] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[224]_0 [0]),
        .O(douta[188]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[198]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [8]),
        .O(douta[189]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[199]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [9]),
        .O(douta[190]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[19]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [9]),
        .O(douta[10]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[200]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [10]),
        .O(douta[191]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[201]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [11]),
        .O(douta[192]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[202]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [12]),
        .O(douta[193]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[203]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [13]),
        .O(douta[194]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[204]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [14]),
        .O(douta[195]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[205]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [15]),
        .O(douta[196]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[206]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[224] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[224]_0 [1]),
        .O(douta[197]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[207]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [16]),
        .O(douta[198]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[208]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [17]),
        .O(douta[199]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[209]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [18]),
        .O(douta[200]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[20]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [10]),
        .O(douta[11]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[210]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [19]),
        .O(douta[201]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[211]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [20]),
        .O(douta[202]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[212]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [21]),
        .O(douta[203]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[213]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [22]),
        .O(douta[204]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[214]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [23]),
        .O(douta[205]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[215]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[224] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[224]_0 [2]),
        .O(douta[206]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[216]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [24]),
        .O(douta[207]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[217]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [25]),
        .O(douta[208]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[218]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [26]),
        .O(douta[209]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[219]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [27]),
        .O(douta[210]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[21]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [11]),
        .O(douta[12]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[220]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [28]),
        .O(douta[211]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[221]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [29]),
        .O(douta[212]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[222]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [30]),
        .O(douta[213]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[223]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[223] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[223]_0 [31]),
        .O(douta[214]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[224]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[224] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[224]_0 [3]),
        .O(douta[215]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[225]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [0]),
        .O(douta[216]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[226]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [1]),
        .O(douta[217]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[227]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [2]),
        .O(douta[218]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[228]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [3]),
        .O(douta[219]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[229]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [4]),
        .O(douta[220]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[22]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [12]),
        .O(douta[13]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[230]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [5]),
        .O(douta[221]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[231]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [6]),
        .O(douta[222]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[232]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [7]),
        .O(douta[223]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[233]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[260] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[260]_0 [0]),
        .O(douta[224]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[234]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [8]),
        .O(douta[225]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[235]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [9]),
        .O(douta[226]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[236]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [10]),
        .O(douta[227]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[237]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [11]),
        .O(douta[228]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[238]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [12]),
        .O(douta[229]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[239]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [13]),
        .O(douta[230]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[23]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [13]),
        .O(douta[14]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[240]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [14]),
        .O(douta[231]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[241]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [15]),
        .O(douta[232]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[242]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[260] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[260]_0 [1]),
        .O(douta[233]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[243]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [16]),
        .O(douta[234]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[244]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [17]),
        .O(douta[235]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[245]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [18]),
        .O(douta[236]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[246]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [19]),
        .O(douta[237]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[247]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [20]),
        .O(douta[238]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[248]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [21]),
        .O(douta[239]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[249]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [22]),
        .O(douta[240]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[24]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [14]),
        .O(douta[15]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[250]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [23]),
        .O(douta[241]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[251]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[260] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[260]_0 [2]),
        .O(douta[242]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[252]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [24]),
        .O(douta[243]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[253]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [25]),
        .O(douta[244]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[254]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [26]),
        .O(douta[245]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[255]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [27]),
        .O(douta[246]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[256]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [28]),
        .O(douta[247]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[257]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [29]),
        .O(douta[248]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[258]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [30]),
        .O(douta[249]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[259]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[259] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[259]_0 [31]),
        .O(douta[250]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[25]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [15]),
        .O(douta[16]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[260]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[260] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[260]_0 [3]),
        .O(douta[251]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[261]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [0]),
        .O(douta[252]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[262]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [1]),
        .O(douta[253]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[263]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [2]),
        .O(douta[254]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[264]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [3]),
        .O(douta[255]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[265]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [4]),
        .O(douta[256]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[266]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [5]),
        .O(douta[257]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[267]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [6]),
        .O(douta[258]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[268]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [7]),
        .O(douta[259]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[269]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[296] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[296]_0 [0]),
        .O(douta[260]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[26]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[44] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[44]_0 [1]),
        .O(douta[17]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[270]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [8]),
        .O(douta[261]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[271]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [9]),
        .O(douta[262]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[272]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [10]),
        .O(douta[263]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[273]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [11]),
        .O(douta[264]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[274]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [12]),
        .O(douta[265]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[275]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [13]),
        .O(douta[266]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[276]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [14]),
        .O(douta[267]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[277]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [15]),
        .O(douta[268]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[278]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[296] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[296]_0 [1]),
        .O(douta[269]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[279]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [16]),
        .O(douta[270]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[27]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [16]),
        .O(douta[18]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[280]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [17]),
        .O(douta[271]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[281]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [18]),
        .O(douta[272]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[282]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [19]),
        .O(douta[273]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[283]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [20]),
        .O(douta[274]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[284]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [21]),
        .O(douta[275]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[285]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [22]),
        .O(douta[276]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[286]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [23]),
        .O(douta[277]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[287]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[296] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[296]_0 [2]),
        .O(douta[278]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[288]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [24]),
        .O(douta[279]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[289]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [25]),
        .O(douta[280]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[28]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [17]),
        .O(douta[19]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[290]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [26]),
        .O(douta[281]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[291]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [27]),
        .O(douta[282]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[292]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [28]),
        .O(douta[283]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[293]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [29]),
        .O(douta[284]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[294]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [30]),
        .O(douta[285]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[295]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[295] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[295]_0 [31]),
        .O(douta[286]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[296]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[296] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[296]_0 [3]),
        .O(douta[287]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[297]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [0]),
        .O(douta[288]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[298]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [1]),
        .O(douta[289]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[299]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [2]),
        .O(douta[290]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[29]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [18]),
        .O(douta[20]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[300]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [3]),
        .O(douta[291]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[301]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [4]),
        .O(douta[292]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[302]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [5]),
        .O(douta[293]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[303]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [6]),
        .O(douta[294]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[304]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [7]),
        .O(douta[295]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[305]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[332] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[332]_0 [0]),
        .O(douta[296]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[306]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [8]),
        .O(douta[297]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[307]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [9]),
        .O(douta[298]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[308]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [10]),
        .O(douta[299]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[309]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [11]),
        .O(douta[300]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[30]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [19]),
        .O(douta[21]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[310]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [12]),
        .O(douta[301]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[311]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [13]),
        .O(douta[302]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[312]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [14]),
        .O(douta[303]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[313]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [15]),
        .O(douta[304]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[314]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[332] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[332]_0 [1]),
        .O(douta[305]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[315]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [16]),
        .O(douta[306]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[316]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [17]),
        .O(douta[307]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[317]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [18]),
        .O(douta[308]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[318]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [19]),
        .O(douta[309]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[319]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [20]),
        .O(douta[310]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[31]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [20]),
        .O(douta[22]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[320]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [21]),
        .O(douta[311]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[321]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [22]),
        .O(douta[312]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[322]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [23]),
        .O(douta[313]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[323]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[332] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[332]_0 [2]),
        .O(douta[314]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[324]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [24]),
        .O(douta[315]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[325]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [25]),
        .O(douta[316]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[326]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [26]),
        .O(douta[317]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[327]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [27]),
        .O(douta[318]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[328]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [28]),
        .O(douta[319]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[329]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [29]),
        .O(douta[320]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[32]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [21]),
        .O(douta[23]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[330]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [30]),
        .O(douta[321]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[331]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[331] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[331]_0 [31]),
        .O(douta[322]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[332]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[332] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[332]_0 [3]),
        .O(douta[323]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[333]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [0]),
        .O(douta[324]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[334]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [1]),
        .O(douta[325]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[335]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [2]),
        .O(douta[326]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[336]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [3]),
        .O(douta[327]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[337]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [4]),
        .O(douta[328]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[338]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [5]),
        .O(douta[329]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[339]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [6]),
        .O(douta[330]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[33]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [22]),
        .O(douta[24]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[340]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [7]),
        .O(douta[331]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[341]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[368] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[368]_0 [0]),
        .O(douta[332]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[342]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [8]),
        .O(douta[333]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[343]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [9]),
        .O(douta[334]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[344]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [10]),
        .O(douta[335]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[345]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [11]),
        .O(douta[336]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[346]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [12]),
        .O(douta[337]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[347]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [13]),
        .O(douta[338]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[348]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [14]),
        .O(douta[339]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[349]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [15]),
        .O(douta[340]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[34]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [23]),
        .O(douta[25]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[350]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[368] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[368]_0 [1]),
        .O(douta[341]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[351]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [16]),
        .O(douta[342]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[352]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [17]),
        .O(douta[343]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[353]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [18]),
        .O(douta[344]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[354]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [19]),
        .O(douta[345]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[355]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [20]),
        .O(douta[346]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[356]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [21]),
        .O(douta[347]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[357]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [22]),
        .O(douta[348]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[358]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [23]),
        .O(douta[349]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[359]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[368] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[368]_0 [2]),
        .O(douta[350]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[35]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[44] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[44]_0 [2]),
        .O(douta[26]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[360]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [24]),
        .O(douta[351]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[361]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [25]),
        .O(douta[352]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[362]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [26]),
        .O(douta[353]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[363]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [27]),
        .O(douta[354]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[364]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [28]),
        .O(douta[355]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[365]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [29]),
        .O(douta[356]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[366]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [30]),
        .O(douta[357]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[367]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[367] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[367]_0 [31]),
        .O(douta[358]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[368]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[368] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[368]_0 [3]),
        .O(douta[359]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[369]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [0]),
        .O(douta[360]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[36]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [24]),
        .O(douta[27]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[370]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [1]),
        .O(douta[361]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[371]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [2]),
        .O(douta[362]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[372]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [3]),
        .O(douta[363]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[373]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [4]),
        .O(douta[364]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[374]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [5]),
        .O(douta[365]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[375]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [6]),
        .O(douta[366]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[376]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [7]),
        .O(douta[367]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[377]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[404] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[404]_0 [0]),
        .O(douta[368]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[378]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [8]),
        .O(douta[369]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[379]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [9]),
        .O(douta[370]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[37]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [25]),
        .O(douta[28]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[380]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [10]),
        .O(douta[371]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[381]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [11]),
        .O(douta[372]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[382]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [12]),
        .O(douta[373]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[383]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [13]),
        .O(douta[374]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[384]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [14]),
        .O(douta[375]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[385]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [15]),
        .O(douta[376]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[386]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[404] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[404]_0 [1]),
        .O(douta[377]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[387]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [16]),
        .O(douta[378]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[388]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [17]),
        .O(douta[379]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[389]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [18]),
        .O(douta[380]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[38]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [26]),
        .O(douta[29]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[390]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [19]),
        .O(douta[381]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[391]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [20]),
        .O(douta[382]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[392]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [21]),
        .O(douta[383]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[393]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [22]),
        .O(douta[384]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[394]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [23]),
        .O(douta[385]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[395]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[404] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[404]_0 [2]),
        .O(douta[386]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[396]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [24]),
        .O(douta[387]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[397]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [25]),
        .O(douta[388]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[398]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [26]),
        .O(douta[389]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[399]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [27]),
        .O(douta[390]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[39]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [27]),
        .O(douta[30]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[400]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [28]),
        .O(douta[391]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[401]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [29]),
        .O(douta[392]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[402]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [30]),
        .O(douta[393]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[403]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[403] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[403]_0 [31]),
        .O(douta[394]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[404]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[404] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[404]_0 [3]),
        .O(douta[395]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[405]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [0]),
        .O(douta[396]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[406]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [1]),
        .O(douta[397]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[407]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [2]),
        .O(douta[398]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[408]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [3]),
        .O(douta[399]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[409]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [4]),
        .O(douta[400]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[40]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [28]),
        .O(douta[31]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[410]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [5]),
        .O(douta[401]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[411]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [6]),
        .O(douta[402]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[412]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [7]),
        .O(douta[403]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[413]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[440] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[440]_0 [0]),
        .O(douta[404]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[414]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [8]),
        .O(douta[405]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[415]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [9]),
        .O(douta[406]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[416]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [10]),
        .O(douta[407]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[417]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [11]),
        .O(douta[408]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[418]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [12]),
        .O(douta[409]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[419]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [13]),
        .O(douta[410]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[41]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [29]),
        .O(douta[32]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[420]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [14]),
        .O(douta[411]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[421]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [15]),
        .O(douta[412]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[422]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[440] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[440]_0 [1]),
        .O(douta[413]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[423]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [16]),
        .O(douta[414]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[424]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [17]),
        .O(douta[415]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[425]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [18]),
        .O(douta[416]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[426]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [19]),
        .O(douta[417]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[427]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [20]),
        .O(douta[418]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[428]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [21]),
        .O(douta[419]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[429]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [22]),
        .O(douta[420]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[42]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [30]),
        .O(douta[33]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[430]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [23]),
        .O(douta[421]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[431]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[440] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[440]_0 [2]),
        .O(douta[422]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[432]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [24]),
        .O(douta[423]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[433]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [25]),
        .O(douta[424]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[434]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [26]),
        .O(douta[425]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[435]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [27]),
        .O(douta[426]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[436]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [28]),
        .O(douta[427]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[437]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [29]),
        .O(douta[428]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[438]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [30]),
        .O(douta[429]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[439]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[439] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[439]_0 [31]),
        .O(douta[430]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[43]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [31]),
        .O(douta[34]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[440]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[440] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[440]_0 [3]),
        .O(douta[431]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[441]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [0]),
        .O(douta[432]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[442]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [1]),
        .O(douta[433]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[443]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [2]),
        .O(douta[434]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[444]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [3]),
        .O(douta[435]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[445]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [4]),
        .O(douta[436]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[446]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [5]),
        .O(douta[437]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[447]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [6]),
        .O(douta[438]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[448]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [7]),
        .O(douta[439]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[449]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[476] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[476]_0 [0]),
        .O(douta[440]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[44]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[44] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[44]_0 [3]),
        .O(douta[35]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[450]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [8]),
        .O(douta[441]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[451]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [9]),
        .O(douta[442]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[452]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [10]),
        .O(douta[443]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[453]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [11]),
        .O(douta[444]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[454]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [12]),
        .O(douta[445]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[455]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [13]),
        .O(douta[446]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[456]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [14]),
        .O(douta[447]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[457]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [15]),
        .O(douta[448]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[458]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[476] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[476]_0 [1]),
        .O(douta[449]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[459]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [16]),
        .O(douta[450]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[45]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [0]),
        .O(douta[36]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[460]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [17]),
        .O(douta[451]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[461]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [18]),
        .O(douta[452]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[462]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [19]),
        .O(douta[453]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[463]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [20]),
        .O(douta[454]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[464]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [21]),
        .O(douta[455]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[465]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [22]),
        .O(douta[456]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[466]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [23]),
        .O(douta[457]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[467]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[476] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[476]_0 [2]),
        .O(douta[458]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[468]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [24]),
        .O(douta[459]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[469]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [25]),
        .O(douta[460]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[46]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [1]),
        .O(douta[37]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[470]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [26]),
        .O(douta[461]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[471]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [27]),
        .O(douta[462]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[472]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [28]),
        .O(douta[463]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[473]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [29]),
        .O(douta[464]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[474]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [30]),
        .O(douta[465]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[475]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[475] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[475]_0 [31]),
        .O(douta[466]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[476]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[476] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[476]_0 [3]),
        .O(douta[467]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[477]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[0]),
        .I2(sel_pipe[1]),
        .I3(DOADO[0]),
        .O(douta[468]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[478]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[1]),
        .I2(sel_pipe[1]),
        .I3(DOADO[1]),
        .O(douta[469]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[479]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[2]),
        .I2(sel_pipe[1]),
        .I3(DOADO[2]),
        .O(douta[470]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[47]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [2]),
        .O(douta[38]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[480]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[3]),
        .I2(sel_pipe[1]),
        .I3(DOADO[3]),
        .O(douta[471]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[481]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[4]),
        .I2(sel_pipe[1]),
        .I3(DOADO[4]),
        .O(douta[472]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[482]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[5]),
        .I2(sel_pipe[1]),
        .I3(DOADO[5]),
        .O(douta[473]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[483]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[6]),
        .I2(sel_pipe[1]),
        .I3(DOADO[6]),
        .O(douta[474]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[484]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[7]),
        .I2(sel_pipe[1]),
        .I3(DOADO[7]),
        .O(douta[475]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[485]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOPBDOP[0]),
        .I2(sel_pipe[1]),
        .I3(DOPADOP[0]),
        .O(douta[476]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[486]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[8]),
        .I2(sel_pipe[1]),
        .I3(DOADO[8]),
        .O(douta[477]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[487]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[9]),
        .I2(sel_pipe[1]),
        .I3(DOADO[9]),
        .O(douta[478]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[488]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[10]),
        .I2(sel_pipe[1]),
        .I3(DOADO[10]),
        .O(douta[479]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[489]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[11]),
        .I2(sel_pipe[1]),
        .I3(DOADO[11]),
        .O(douta[480]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[48]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [3]),
        .O(douta[39]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[490]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[12]),
        .I2(sel_pipe[1]),
        .I3(DOADO[12]),
        .O(douta[481]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[491]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[13]),
        .I2(sel_pipe[1]),
        .I3(DOADO[13]),
        .O(douta[482]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[492]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[14]),
        .I2(sel_pipe[1]),
        .I3(DOADO[14]),
        .O(douta[483]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[493]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[15]),
        .I2(sel_pipe[1]),
        .I3(DOADO[15]),
        .O(douta[484]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[494]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOPBDOP[1]),
        .I2(sel_pipe[1]),
        .I3(DOPADOP[1]),
        .O(douta[485]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[495]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[16]),
        .I2(sel_pipe[1]),
        .I3(DOADO[16]),
        .O(douta[486]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[496]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[17]),
        .I2(sel_pipe[1]),
        .I3(DOADO[17]),
        .O(douta[487]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[497]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[18]),
        .I2(sel_pipe[1]),
        .I3(DOADO[18]),
        .O(douta[488]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[498]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[19]),
        .I2(sel_pipe[1]),
        .I3(DOADO[19]),
        .O(douta[489]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[499]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[20]),
        .I2(sel_pipe[1]),
        .I3(DOADO[20]),
        .O(douta[490]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[49]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [4]),
        .O(douta[40]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[500]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[21]),
        .I2(sel_pipe[1]),
        .I3(DOADO[21]),
        .O(douta[491]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[501]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[22]),
        .I2(sel_pipe[1]),
        .I3(DOADO[22]),
        .O(douta[492]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[502]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[23]),
        .I2(sel_pipe[1]),
        .I3(DOADO[23]),
        .O(douta[493]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[503]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOPBDOP[2]),
        .I2(sel_pipe[1]),
        .I3(DOPADOP[2]),
        .O(douta[494]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[504]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[24]),
        .I2(sel_pipe[1]),
        .I3(DOADO[24]),
        .O(douta[495]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[505]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[25]),
        .I2(sel_pipe[1]),
        .I3(DOADO[25]),
        .O(douta[496]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[506]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[26]),
        .I2(sel_pipe[1]),
        .I3(DOADO[26]),
        .O(douta[497]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[507]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[27]),
        .I2(sel_pipe[1]),
        .I3(DOADO[27]),
        .O(douta[498]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[508]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[28]),
        .I2(sel_pipe[1]),
        .I3(DOADO[28]),
        .O(douta[499]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[509]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[29]),
        .I2(sel_pipe[1]),
        .I3(DOADO[29]),
        .O(douta[500]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[50]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [5]),
        .O(douta[41]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[510]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[30]),
        .I2(sel_pipe[1]),
        .I3(DOADO[30]),
        .O(douta[501]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[511]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[31]),
        .I2(sel_pipe[1]),
        .I3(DOADO[31]),
        .O(douta[502]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[51]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [6]),
        .O(douta[42]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[52]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [7]),
        .O(douta[43]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[53]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[80] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[80]_0 [0]),
        .O(douta[44]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[54]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [8]),
        .O(douta[45]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[55]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [9]),
        .O(douta[46]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[56]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [10]),
        .O(douta[47]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[57]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [11]),
        .O(douta[48]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[58]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [12]),
        .O(douta[49]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[59]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [13]),
        .O(douta[50]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[60]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [14]),
        .O(douta[51]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[61]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [15]),
        .O(douta[52]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[62]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[80] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[80]_0 [1]),
        .O(douta[53]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[63]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [16]),
        .O(douta[54]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[64]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [17]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [17]),
        .O(douta[55]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[65]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [18]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [18]),
        .O(douta[56]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[66]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [19]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [19]),
        .O(douta[57]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[67]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [20]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [20]),
        .O(douta[58]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[68]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [21]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [21]),
        .O(douta[59]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[69]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [22]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [22]),
        .O(douta[60]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[70]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [23]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [23]),
        .O(douta[61]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[71]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[80] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[80]_0 [2]),
        .O(douta[62]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[72]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [24]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [24]),
        .O(douta[63]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[73]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [25]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [25]),
        .O(douta[64]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[74]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [26]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [26]),
        .O(douta[65]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[75]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [27]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [27]),
        .O(douta[66]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[76]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [28]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [28]),
        .O(douta[67]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[77]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [29]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [29]),
        .O(douta[68]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[78]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [30]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [30]),
        .O(douta[69]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[79]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[79] [31]),
        .I2(sel_pipe[1]),
        .I3(\douta[79]_0 [31]),
        .O(douta[70]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[80]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[80] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[80]_0 [3]),
        .O(douta[71]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[81]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [0]),
        .O(douta[72]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[82]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [1]),
        .O(douta[73]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[83]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [2]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [2]),
        .O(douta[74]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[84]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [3]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [3]),
        .O(douta[75]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[85]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [4]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [4]),
        .O(douta[76]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[86]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [5]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [5]),
        .O(douta[77]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[87]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [6]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [6]),
        .O(douta[78]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[88]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [7]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [7]),
        .O(douta[79]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[89]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[116] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[116]_0 [0]),
        .O(douta[80]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[90]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [8]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [8]),
        .O(douta[81]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[91]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [9]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [9]),
        .O(douta[82]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[92]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [10]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [10]),
        .O(douta[83]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[93]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [11]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [11]),
        .O(douta[84]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[94]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [12]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [12]),
        .O(douta[85]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[95]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [13]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [13]),
        .O(douta[86]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[96]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [14]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [14]),
        .O(douta[87]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[97]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [15]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [15]),
        .O(douta[88]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[98]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[116] [1]),
        .I2(sel_pipe[1]),
        .I3(\douta[116]_0 [1]),
        .O(douta[89]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[99]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[115] [16]),
        .I2(sel_pipe[1]),
        .I3(\douta[115]_0 [16]),
        .O(douta[90]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[43] [0]),
        .I2(sel_pipe[1]),
        .I3(\douta[43]_0 [0]),
        .O(douta[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra);
  output [8:0]douta;
  input clka;
  input ena;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [8:0]douta;
  wire ena;

  weights_buffer_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized16
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    ena_0,
    clka,
    addra,
    ena);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output ena_0;
  input clka;
  input [10:0]addra;
  input ena;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire ena;
  wire ena_0;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_0(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    DOPBDOP,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  output [31:0]DOBDO;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [2:0]DOPBDOP;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [31:0]DOBDO;
  wire [2:0]DOPBDOP;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .DOPBDOP(DOPBDOP),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized20
   (DOADO,
    DOPADOP,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    addra);
  output [31:0]DOADO;
  output [2:0]DOPADOP;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [9:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [31:0]DOADO;
  wire [2:0]DOPADOP;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [9:0]addra;
  wire clka;

  weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra);
  output [8:0]douta;
  input clka;
  input ena;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [8:0]douta;
  wire ena;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000005),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000020100),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000231),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000000000000000000000000000000000000070C0410160A000815080C000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .DOBDO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .DOPBDOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .DOBDO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .DOPBDOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000919),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000264A901925488C1124468809),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000457),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000B2454A13A22509939204C912),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .DOBDO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .DOPBDOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000191),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000002F5CB4612E5AB0592D58AC51),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000889),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000000000000000000000000000000000000043668C9833464C1723260B97),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized16
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .DOBDO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .DOPBDOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000919),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000386ED8A9376CD4A1366AD099),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    ena_0,
    clka,
    addra,
    ena);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  output ena_0;
  input clka;
  input [10:0]addra;
  input ena;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire ena;
  wire ena_0;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000DCC),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000D387CE1CC3678E9CB3474E1B),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[9:0],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_0),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(ena),
        .I1(addra[10]),
        .O(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    DOPBDOP,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [31:0]DOBDO;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [2:0]DOPBDOP;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_n_72 ;
  wire [31:0]DOBDO;
  wire [2:0]DOPBDOP;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_n_72 ,DOPBDOP}),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000080),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000000B1424400A12203809101C30),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized20
   (DOADO,
    DOPADOP,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [31:0]DOADO;
  output [2:0]DOPADOP;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [9:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_68 ;
  wire [31:0]DOADO;
  wire [2:0]DOPADOP;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000111),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000004180FCF1407EF8E93F7CF4E1),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_68 ,DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000E67),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000000000000000000000000000000000000000E18386F0C14305E0A10285),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .DOBDO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .DOPBDOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000808),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000142648881324448012224078),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000FAA),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000009102C50A81E2858A71C24509),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ,
    clka,
    ena_array,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ;
  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ;
  wire [8:0]addra;
  wire clka;
  wire [0:0]ena_array;
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
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0 ),
        .DOBDO(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1 ),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2 ),
        .DOPBDOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000080),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000001D386CD01C3668C81B3464C0),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [9:0]addra;

  wire [31:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [9:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000136),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000002224078F1203C70E01E3878E),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
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
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module weights_buffer_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra);
  output [511:0]douta;
  input clka;
  input ena;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [511:0]douta;
  wire ena;

  weights_buffer_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "11" *) (* C_ADDRB_WIDTH = "11" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "21" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     41.873736 mW" *) 
(* C_FAMILY = "virtex7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weights_buffer.mem" *) 
(* C_INIT_FILE_NAME = "weights_buffer.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1536" *) (* C_READ_DEPTH_B = "1536" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "512" *) (* C_READ_WIDTH_B = "512" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "1536" *) 
(* C_WRITE_DEPTH_B = "1536" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "512" *) (* C_WRITE_WIDTH_B = "512" *) (* C_XDEVICEFAMILY = "virtex7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module weights_buffer_blk_mem_gen_v8_4_2
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
  input [10:0]addra;
  input [511:0]dina;
  output [511:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [511:0]dinb;
  output [511:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [10:0]rdaddrecc;
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
  output [10:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [10:0]addra;
  wire clka;
  wire [511:0]douta;
  wire ena;

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
  weights_buffer_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module weights_buffer_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    ena,
    addra);
  output [511:0]douta;
  input clka;
  input ena;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [511:0]douta;
  wire ena;

  weights_buffer_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
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
