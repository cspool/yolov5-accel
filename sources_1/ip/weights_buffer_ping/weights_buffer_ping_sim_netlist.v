// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Feb 28 20:31:22 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/weights_buffer_ping/weights_buffer_ping_sim_netlist.v
// Design      : weights_buffer_ping
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weights_buffer_ping,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module weights_buffer_ping
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
  (* C_INIT_FILE = "weights_buffer_ping.mem" *) 
  (* C_INIT_FILE_NAME = "weights_buffer_ping.mif" *) 
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
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  weights_buffer_ping_blk_mem_gen_v8_4_2 U0
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
module weights_buffer_ping_bindec
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
module weights_buffer_ping_blk_mem_gen_generic_cstr
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

  weights_buffer_ping_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[11:9]),
        .ena(ena),
        .ena_array(ena_array));
  weights_buffer_ping_blk_mem_gen_mux \has_mux_a.A 
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
  weights_buffer_ping_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[8:0]),
        .douta(douta[8:0]),
        .ena(ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[152:135]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 ,\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[11].ram.r_n_16 ,\ramloop[11].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[170:153]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[224:153]),
        .ena_array(ena_array),
        .p_95_out(p_95_out),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 ,\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[13].ram.r_n_16 ,\ramloop[13].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[188:171]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 ,\ramloop[14].ram.r_n_8 ,\ramloop[14].ram.r_n_9 ,\ramloop[14].ram.r_n_10 ,\ramloop[14].ram.r_n_11 ,\ramloop[14].ram.r_n_12 ,\ramloop[14].ram.r_n_13 ,\ramloop[14].ram.r_n_14 ,\ramloop[14].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[14].ram.r_n_16 ,\ramloop[14].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[206:189]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 ,\ramloop[15].ram.r_n_8 ,\ramloop[15].ram.r_n_9 ,\ramloop[15].ram.r_n_10 ,\ramloop[15].ram.r_n_11 ,\ramloop[15].ram.r_n_12 ,\ramloop[15].ram.r_n_13 ,\ramloop[15].ram.r_n_14 ,\ramloop[15].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[15].ram.r_n_16 ,\ramloop[15].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[224:207]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 ,\ramloop[16].ram.r_n_8 ,\ramloop[16].ram.r_n_9 ,\ramloop[16].ram.r_n_10 ,\ramloop[16].ram.r_n_11 ,\ramloop[16].ram.r_n_12 ,\ramloop[16].ram.r_n_13 ,\ramloop[16].ram.r_n_14 ,\ramloop[16].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[16].ram.r_n_16 ,\ramloop[16].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[242:225]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[296:225]),
        .ena_array(ena_array),
        .p_75_out(p_75_out),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 ,\ramloop[18].ram.r_n_8 ,\ramloop[18].ram.r_n_9 ,\ramloop[18].ram.r_n_10 ,\ramloop[18].ram.r_n_11 ,\ramloop[18].ram.r_n_12 ,\ramloop[18].ram.r_n_13 ,\ramloop[18].ram.r_n_14 ,\ramloop[18].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[18].ram.r_n_16 ,\ramloop[18].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[260:243]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 ,\ramloop[19].ram.r_n_8 ,\ramloop[19].ram.r_n_9 ,\ramloop[19].ram.r_n_10 ,\ramloop[19].ram.r_n_11 ,\ramloop[19].ram.r_n_12 ,\ramloop[19].ram.r_n_13 ,\ramloop[19].ram.r_n_14 ,\ramloop[19].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[19].ram.r_n_16 ,\ramloop[19].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[278:261]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPADOP({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[26:9]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 ,\ramloop[20].ram.r_n_8 ,\ramloop[20].ram.r_n_9 ,\ramloop[20].ram.r_n_10 ,\ramloop[20].ram.r_n_11 ,\ramloop[20].ram.r_n_12 ,\ramloop[20].ram.r_n_13 ,\ramloop[20].ram.r_n_14 ,\ramloop[20].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[20].ram.r_n_16 ,\ramloop[20].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[296:279]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 ,\ramloop[21].ram.r_n_8 ,\ramloop[21].ram.r_n_9 ,\ramloop[21].ram.r_n_10 ,\ramloop[21].ram.r_n_11 ,\ramloop[21].ram.r_n_12 ,\ramloop[21].ram.r_n_13 ,\ramloop[21].ram.r_n_14 ,\ramloop[21].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[21].ram.r_n_16 ,\ramloop[21].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[314:297]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[368:297]),
        .ena_array(ena_array),
        .p_55_out(p_55_out),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 ,\ramloop[23].ram.r_n_8 ,\ramloop[23].ram.r_n_9 ,\ramloop[23].ram.r_n_10 ,\ramloop[23].ram.r_n_11 ,\ramloop[23].ram.r_n_12 ,\ramloop[23].ram.r_n_13 ,\ramloop[23].ram.r_n_14 ,\ramloop[23].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[23].ram.r_n_16 ,\ramloop[23].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[332:315]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized23 \ramloop[24].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 ,\ramloop[24].ram.r_n_8 ,\ramloop[24].ram.r_n_9 ,\ramloop[24].ram.r_n_10 ,\ramloop[24].ram.r_n_11 ,\ramloop[24].ram.r_n_12 ,\ramloop[24].ram.r_n_13 ,\ramloop[24].ram.r_n_14 ,\ramloop[24].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[24].ram.r_n_16 ,\ramloop[24].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[350:333]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized24 \ramloop[25].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 ,\ramloop[25].ram.r_n_8 ,\ramloop[25].ram.r_n_9 ,\ramloop[25].ram.r_n_10 ,\ramloop[25].ram.r_n_11 ,\ramloop[25].ram.r_n_12 ,\ramloop[25].ram.r_n_13 ,\ramloop[25].ram.r_n_14 ,\ramloop[25].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[25].ram.r_n_16 ,\ramloop[25].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[368:351]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized25 \ramloop[26].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 ,\ramloop[26].ram.r_n_8 ,\ramloop[26].ram.r_n_9 ,\ramloop[26].ram.r_n_10 ,\ramloop[26].ram.r_n_11 ,\ramloop[26].ram.r_n_12 ,\ramloop[26].ram.r_n_13 ,\ramloop[26].ram.r_n_14 ,\ramloop[26].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[26].ram.r_n_16 ,\ramloop[26].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[386:369]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized26 \ramloop[27].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[440:369]),
        .ena_array(ena_array),
        .p_35_out(p_35_out),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized27 \ramloop[28].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[28].ram.r_n_0 ,\ramloop[28].ram.r_n_1 ,\ramloop[28].ram.r_n_2 ,\ramloop[28].ram.r_n_3 ,\ramloop[28].ram.r_n_4 ,\ramloop[28].ram.r_n_5 ,\ramloop[28].ram.r_n_6 ,\ramloop[28].ram.r_n_7 ,\ramloop[28].ram.r_n_8 ,\ramloop[28].ram.r_n_9 ,\ramloop[28].ram.r_n_10 ,\ramloop[28].ram.r_n_11 ,\ramloop[28].ram.r_n_12 ,\ramloop[28].ram.r_n_13 ,\ramloop[28].ram.r_n_14 ,\ramloop[28].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[28].ram.r_n_16 ,\ramloop[28].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[404:387]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized28 \ramloop[29].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[29].ram.r_n_0 ,\ramloop[29].ram.r_n_1 ,\ramloop[29].ram.r_n_2 ,\ramloop[29].ram.r_n_3 ,\ramloop[29].ram.r_n_4 ,\ramloop[29].ram.r_n_5 ,\ramloop[29].ram.r_n_6 ,\ramloop[29].ram.r_n_7 ,\ramloop[29].ram.r_n_8 ,\ramloop[29].ram.r_n_9 ,\ramloop[29].ram.r_n_10 ,\ramloop[29].ram.r_n_11 ,\ramloop[29].ram.r_n_12 ,\ramloop[29].ram.r_n_13 ,\ramloop[29].ram.r_n_14 ,\ramloop[29].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[29].ram.r_n_16 ,\ramloop[29].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[422:405]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[80:9]),
        .ena_array(ena_array),
        .p_135_out(p_135_out),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized29 \ramloop[30].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[30].ram.r_n_0 ,\ramloop[30].ram.r_n_1 ,\ramloop[30].ram.r_n_2 ,\ramloop[30].ram.r_n_3 ,\ramloop[30].ram.r_n_4 ,\ramloop[30].ram.r_n_5 ,\ramloop[30].ram.r_n_6 ,\ramloop[30].ram.r_n_7 ,\ramloop[30].ram.r_n_8 ,\ramloop[30].ram.r_n_9 ,\ramloop[30].ram.r_n_10 ,\ramloop[30].ram.r_n_11 ,\ramloop[30].ram.r_n_12 ,\ramloop[30].ram.r_n_13 ,\ramloop[30].ram.r_n_14 ,\ramloop[30].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[30].ram.r_n_16 ,\ramloop[30].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[440:423]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized30 \ramloop[31].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[31].ram.r_n_0 ,\ramloop[31].ram.r_n_1 ,\ramloop[31].ram.r_n_2 ,\ramloop[31].ram.r_n_3 ,\ramloop[31].ram.r_n_4 ,\ramloop[31].ram.r_n_5 ,\ramloop[31].ram.r_n_6 ,\ramloop[31].ram.r_n_7 ,\ramloop[31].ram.r_n_8 ,\ramloop[31].ram.r_n_9 ,\ramloop[31].ram.r_n_10 ,\ramloop[31].ram.r_n_11 ,\ramloop[31].ram.r_n_12 ,\ramloop[31].ram.r_n_13 ,\ramloop[31].ram.r_n_14 ,\ramloop[31].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[31].ram.r_n_16 ,\ramloop[31].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[458:441]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized31 \ramloop[32].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[511:441]),
        .ena_array(ena_array),
        .p_15_out(p_15_out),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized32 \ramloop[33].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[33].ram.r_n_0 ,\ramloop[33].ram.r_n_1 ,\ramloop[33].ram.r_n_2 ,\ramloop[33].ram.r_n_3 ,\ramloop[33].ram.r_n_4 ,\ramloop[33].ram.r_n_5 ,\ramloop[33].ram.r_n_6 ,\ramloop[33].ram.r_n_7 ,\ramloop[33].ram.r_n_8 ,\ramloop[33].ram.r_n_9 ,\ramloop[33].ram.r_n_10 ,\ramloop[33].ram.r_n_11 ,\ramloop[33].ram.r_n_12 ,\ramloop[33].ram.r_n_13 ,\ramloop[33].ram.r_n_14 ,\ramloop[33].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[33].ram.r_n_16 ,\ramloop[33].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[476:459]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized33 \ramloop[34].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[34].ram.r_n_0 ,\ramloop[34].ram.r_n_1 ,\ramloop[34].ram.r_n_2 ,\ramloop[34].ram.r_n_3 ,\ramloop[34].ram.r_n_4 ,\ramloop[34].ram.r_n_5 ,\ramloop[34].ram.r_n_6 ,\ramloop[34].ram.r_n_7 ,\ramloop[34].ram.r_n_8 ,\ramloop[34].ram.r_n_9 ,\ramloop[34].ram.r_n_10 ,\ramloop[34].ram.r_n_11 ,\ramloop[34].ram.r_n_12 ,\ramloop[34].ram.r_n_13 ,\ramloop[34].ram.r_n_14 ,\ramloop[34].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[34].ram.r_n_16 ,\ramloop[34].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[494:477]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized34 \ramloop[35].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[35].ram.r_n_0 ,\ramloop[35].ram.r_n_1 ,\ramloop[35].ram.r_n_2 ,\ramloop[35].ram.r_n_3 ,\ramloop[35].ram.r_n_4 ,\ramloop[35].ram.r_n_5 ,\ramloop[35].ram.r_n_6 ,\ramloop[35].ram.r_n_7 ,\ramloop[35].ram.r_n_8 ,\ramloop[35].ram.r_n_9 ,\ramloop[35].ram.r_n_10 ,\ramloop[35].ram.r_n_11 ,\ramloop[35].ram.r_n_12 ,\ramloop[35].ram.r_n_13 ,\ramloop[35].ram.r_n_14 ,\ramloop[35].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[35].ram.r_n_16 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[511:495]),
        .ena(ena),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[44:27]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[4].ram.r_n_16 ,\ramloop[4].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[62:45]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 ,\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[5].ram.r_n_16 ,\ramloop[5].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[80:63]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 ,\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[6].ram.r_n_16 ,\ramloop[6].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[98:81]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[8:0]),
        .clka(clka),
        .dina(dina[152:81]),
        .ena_array(ena_array),
        .p_115_out(p_115_out),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 ,\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[8].ram.r_n_16 ,\ramloop[8].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[116:99]),
        .ram_ena(ram_ena),
        .wea(wea));
  weights_buffer_ping_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 ,\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[9].ram.r_n_16 ,\ramloop[9].ram.r_n_17 }),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[134:117]),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weights_buffer_ping_blk_mem_gen_mux
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
module weights_buffer_ping_blk_mem_gen_prim_width
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized0
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized1
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_135_out(p_135_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized10
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized11
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_95_out(p_95_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized12
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized13
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized14
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized15
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized16
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_75_out(p_75_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized17
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized18
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized19
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized2
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized20
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized21
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_55_out(p_55_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized22
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized23
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized23 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized24
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized24 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized25
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized25 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized26
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized26 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_35_out(p_35_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized27
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized27 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized28
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized28 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized29
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized29 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized3
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized30
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized30 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized31
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized31 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_15_out(p_15_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized32
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized32 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized33
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized33 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized34
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized34 \prim_init.ram 
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
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized4
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized5
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized6
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_115_out(p_115_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized7
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized8
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weights_buffer_ping_blk_mem_gen_prim_width__parameterized9
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

  weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init
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
    .INITP_00(256'h1CA33D50BFFF3CB78F7E9080F3151250DACAF82642B58B31DD14378E78172EEE),
    .INITP_01(256'hA87E94D50B14311444037AC286E74A4A62A118DEF5A963F63F43F4C1862A3BA0),
    .INITP_02(256'h7FF99F0D542448074711697F95A46BDCC732CAD99AF63F19115689A261884E5F),
    .INITP_03(256'hECF5E06D42EBECFFE8A679163AE232765320ADE6DB4265552A699B236CD2C6FD),
    .INITP_04(256'hEDF25F9A8D77D870FD2BA048C44A2051240C6914E6F0E09D3797CCEDC279059B),
    .INITP_05(256'h90FDB31529C50582AC2519A187C6954D2041320284F93D204431A934F906E765),
    .INITP_06(256'h9B733F867E10A0B6AA00B7E9C70FC14372CC77D6242E68E871760E20A6578ED3),
    .INITP_07(256'hEDBEF883CA0D1F5273267CD5D2D5AB1C1FAE8E24382F916C4BE4FDCD89E4532B),
    .INITP_08(256'h6B48EB24B3E525A743308BA75464394756007B451BE1BD1DBED2167F31C42C8E),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hDAC9AD7D1CD482375E2F794220A40C2A83C4DDA95DCCD60ECD26D45F762DF36F),
    .INIT_01(256'h45D4E154CC7C0D8564E4224ABE737CC13B05F1487812A59A003ECAAC5999D710),
    .INIT_02(256'h01E1B0920186C1344DE6DEFA224102E4D41B05A9698FA228E7F3DC08510F7CC2),
    .INIT_03(256'h30C767579177A7CCC44E6AE28168B4568001996918703E513EDA6B8A53B7AB26),
    .INIT_04(256'h06083CD9EBFC4A46291C6A61A5AF00EC765B0E13EEC134DEA87D16A09DA5692F),
    .INIT_05(256'hF46D28A7E88B25F60A2ED6866AD8BEFCFADBAA8BAF1E0EC094D7866DDFAA1DB1),
    .INIT_06(256'hDAD8D8D363C7DC6D66EC7837540BD126D3203FD7C12D1613C2FB2288D64A9C74),
    .INIT_07(256'hAD5E8CBF554543DA88E6FDA3E237EAC6385A7B9FA55E6C6968B900B87B5C8CE4),
    .INIT_08(256'h4AA77B18A0156355F9C2F4D39417FDD731B394E8B94D738D87088A05D89E0281),
    .INIT_09(256'h890E4D370351FAD88F44FF5DB361105C551262A30677FA56CA0EBEF3F8568115),
    .INIT_0A(256'hBBE8AEB8BB89641CD66844EFB3EFBAF680E5F76806769AA10B9961252018A2CF),
    .INIT_0B(256'hC0F4DFAD3200BACEADE3390AAAC2B61715E420D8B88CE73538DA427A0BDC41A4),
    .INIT_0C(256'hBF05305811C892B6222ECDCFD42C9156C8263D98E4F4E092E5545E18D9556065),
    .INIT_0D(256'h3387141EF0E0E5BC2C5414C0A89CFA92A4E88E3558E571A4359A233CF13EE32D),
    .INIT_0E(256'h7C78EBF13DE6DC3640ABE5809BC5FEE47ED182686688E832D64DAEA46C66D8C1),
    .INIT_0F(256'h639A7DAED6190DD35307099C30F8A48E64B9ECB0778BE7E88715C2140D04A920),
    .INIT_10(256'h5BB27698BEE74EC0CEB8079CAB21377B03B0B8CE17FBFED0ECBAFE547620032F),
    .INIT_11(256'h1767889FC81BB9AA83BEE4C54DD8C38CD0B31D09305ED48F1B56E3EB1CF263EF),
    .INIT_12(256'h8477DC7AACF317954B8CF54F52F9951E057AA7051C329418BF0D5A35548B29EC),
    .INIT_13(256'h6AAD567733B501C93EF727370A852A84AE6BC8CFFC62B45CEF936980916FB224),
    .INIT_14(256'h03976A4648A03E095E359E21F2DD428D85D560187087A22A449F97A89291B702),
    .INIT_15(256'hDDCA369D6CDE9EEBB7E2FE0026BDEA033A57494749B4D90AAFD86E01E03FAB95),
    .INIT_16(256'h6F383077857043C79A3EE350FE9398321EC013774EF45C31ED4743A25D3AADFB),
    .INIT_17(256'h703891B4E66AFD98808B1B0592037C2E84D07BB0FC3442860718AC2A596812E5),
    .INIT_18(256'h2F31A63665A2F0B45185FDC49DDD2174B122CC4EB436FDBF70F8EB521139C83C),
    .INIT_19(256'hA4DB8ACFA498A189F03BE84FD65719DEC7A05B9730E49BBE5F1397B1E367B752),
    .INIT_1A(256'h6B268A1CB086E6CDD0EBA183BD1F41ADD0F5E20E7A5B1543BE0883AB7E4F2361),
    .INIT_1B(256'h788DDAAA473BE055784B016788F25ABDF6CEF435C848789D519067F7652AD573),
    .INIT_1C(256'h9F0BE430DA067BAE3E280AF809F7129F824F25D5871C74540CE854389A276E9B),
    .INIT_1D(256'h38443F3565E3B6343B182D690640502E46A68C39C768D9843B38106F46D8CFDD),
    .INIT_1E(256'h69C05B5D653F10D2E40782B380DB13C245D1C73B08E4599D59C04FC85296A1DE),
    .INIT_1F(256'h658DFCA0F57D319A2882C42E2D50F41EBEF42B085EA75631048931CF06BCA4F5),
    .INIT_20(256'hF42A3008AB6DC41D2BBFAB51F89C0160B4300A971AC390375C34E652E8686558),
    .INIT_21(256'h58E5E6EB9896D270CC140A4C5CD55F9B0457F5D029A5BE6E9F6E13EAFCCF86FE),
    .INIT_22(256'h91989A3C8C35A6A99BE2DD0D6BD08BB548513F2C5C7A9262E87CF8F4BEFAE365),
    .INIT_23(256'h1D77417BCD4A712442BB00B109ADDA6F830D37030A85B1D3AAC341A58BCFD96A),
    .INIT_24(256'h95D0588AC523CE73ED1283542F733FAF23A304B470BC348A24B4AB5B23EC4F82),
    .INIT_25(256'h465EB9A3D6B8F4100A9021569740D18B0B32997707C7EDC201C8E804D60F4B55),
    .INIT_26(256'h08CE279373B2E98F6C47610FCE18AEC2CCAA1A8F504465BDCFEEDAC19990DE0B),
    .INIT_27(256'h8FB2BB565201A142D5CA6B19D0D975D13890B2A8A84C4BFDA53E54A60EFDC7ED),
    .INIT_28(256'hCC2079D53FC77197022BFF442120E18CE59F3888144EF68D9AD3CB9FA079E94D),
    .INIT_29(256'hF51EF960E5AFB305DAF643C07C741254D85BB20C38D54D65F8C02F01524AE39A),
    .INIT_2A(256'h8440B96035C8F856FAFB23CC330D81202B2ED3EBDB9226B895970D0F6035C0B5),
    .INIT_2B(256'h63A306F6C24A504FBCB9656DCCD4840E1188C73623CEE530DF7D382351EB8819),
    .INIT_2C(256'h24DEB3681F23448E603CE824A6C4F4B20787B59055A37B5AFFF756BD0AEB8A51),
    .INIT_2D(256'hE7060C5FA32292ADC350D4F3C375A28E7D4E6C2D34E6FF44A21AA1B5E16B834C),
    .INIT_2E(256'h4AD9F867D4C5FCA79A33BBFB132B4FDE3E3756AF01368B0C339E718621D4B959),
    .INIT_2F(256'h214D146FC513AF72D3101AF66361532527A3C1735B0B2CFE5F3D46B64B5EEC32),
    .INIT_30(256'h3299CF8A7B8C31FBC99CF82D6140B5A4EBF979F8885652E6019F63756C4D6A9A),
    .INIT_31(256'hAAA923F78565DF7B9776034E2CAAC23109C9BDB75E9F9C8323777B1D7C9379E8),
    .INIT_32(256'h65C3AF6C4F24C219EE1645C4609DDE88936F6195C4567C8885354CF5A259E3F5),
    .INIT_33(256'h568E2BEF7C22D3649EDBB11B8A86D06587499817E9EA41338DA8505F360F4A52),
    .INIT_34(256'h78E00EF0E9621AA7B24A0C2023F51A72E2FBFFB5CDEB7CA817F599995A7B1FB6),
    .INIT_35(256'hD155335734BF66B88773C2CE023E1904A54B75EDAFA9732F6CA37CA9D66866E5),
    .INIT_36(256'hB5BA9BA91B6440E02442E917B2A53E78D1DFC623800C30F73F785F6B982FF495),
    .INIT_37(256'hC47DFB95E1D7CCC7F7D7DE67FC794F83AD1692C6C3BE08CA8EE447C676B5D6FA),
    .INIT_38(256'hF78991320BCE074EF7FEA196510822397AEAA635ACCFADEA95EDAFD91F6626A3),
    .INIT_39(256'h53708F9D84EC8834489914D577E32722F95B458F65EA8890B0D251226397DD9F),
    .INIT_3A(256'h96B560C862C62DDEFCA93BE581771C2C72D020E2D56DBB7A1176F868C7424704),
    .INIT_3B(256'h599085C6C14198060DCE6CDA619D39714F8D55E2C45CC3321B4CA3F6FABEEDC1),
    .INIT_3C(256'h4F75535C3E1D5D70ACF9E4D3396F4F9271E35E481FE80BC49B2BC50A9ED5AD37),
    .INIT_3D(256'h02EB9EB44FB0C0A83842B742DF65F9B125207AB58D310741388A6DF83106BE7B),
    .INIT_3E(256'hEB80C6C1E495C8B3A56D651AE43D85FC1E96B5EA517E17A1FCA4F8D2DC37AA07),
    .INIT_3F(256'hF1B01C95784DD7B8CDB2EC0AE2E564D032095FCB6E550597BB8A45A147CAE967),
    .INIT_40(256'h643F6D84039F66660768AA8D4A698BC75527AD1600FEDF61F290CD7B33DB890F),
    .INIT_41(256'h8C4F28814930B759500BDE37B895A40ACD26D66BB07986FDB26CFECB0C238D20),
    .INIT_42(256'h7519900FAE96422F51B3A63724FB81FE94E7DBA5BAC70105E8CB53DE6A40BD3B),
    .INIT_43(256'h216E30533016EE1ACE35CA67C2D69CF574EDC8C46C99987301037600852BEA93),
    .INIT_44(256'h716BE0A0E9D28CF5E26B2498AAFF68690FB22E83E5A507FE36486B78079D59C4),
    .INIT_45(256'h9FBA5C2EBBDA6765F5623A6E38C59FFB177585B03D61A358B4D3C2314891506D),
    .INIT_46(256'hE9F1733892BE6C51EA4B6796156C79E3929D8CDFF80AC6EA8DED274713D9FCCB),
    .INIT_47(256'hACB35A632CC32155CB51E98EAD84BA427397FD475BAAAE0A7C6E6C08CC872FA3),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized0
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
    .INITP_00(256'hE3FCC7EA35F5FFEF40E034E1960CAE2AAD77CE8FB30FC6C5815E12DB3E72F82C),
    .INITP_01(256'h889898353F11018CDD28F816A2302ED19E781895BA2231F1155B58D55A1487AD),
    .INITP_02(256'h0D3B045E883DFB542481CF5A9F1D6B27C50492C086641F97EE6270F0C47747E8),
    .INITP_03(256'hF2D1B08496693E22582E604DD8EB3313B1F297D25F3D9BAA30246EB831D73B57),
    .INITP_04(256'h570F699C8A96F80EB993892F549135E0914BF2FA1602C24BA4F3722C80947626),
    .INITP_05(256'h5944708B1A1742AF047BB2FBBA0FD14D886B892FDDABBB85DC89AECA56DDFB97),
    .INITP_06(256'h463FD3A0E2CDADFD0F7949CF0D583A415DE3078A0155FAF4F3A37BCB0235AEF0),
    .INITP_07(256'hF04CCDAFEBDFC853A23634B4D2982E679FDFC34C69DF397C247E91BBD5A60BF2),
    .INITP_08(256'hCF76E59E030013C76239FE5D6D3D4BB00FAF4817C5BE1B6ED6B71E2A01060808),
    .INITP_09(256'h96135F774BD0C24FC65CD4C76FF9EE94F3841962DF27CFD7411127C010624930),
    .INITP_0A(256'h9FCCB84C08CA2600F2A1DAB79DA007794BD70655E4D2D2813A857159A7406D07),
    .INITP_0B(256'h8A4CE24D41911D0C9B37996CBCAAE0D4334744EDC6E8CCEB7FBCAE08490800ED),
    .INITP_0C(256'h50F3ACE4608AB3BBD363487B3B73C18D0563F2E4680E9E9155157C1F4D41F9E0),
    .INITP_0D(256'h6FA9C6391AE61C60B0FE22A408CF12EB81A1B3AF4C8737A179D70B7D986A7469),
    .INITP_0E(256'h709BA3E85F26D6B99D293F859185C883182BCD720AD0A8F57DA3FC9A02FF6CFB),
    .INITP_0F(256'hC35079E6CD0027D94BCB24996AA66F224FEDC5B6C8CC5A4FD292041E619885B7),
    .INIT_00(256'h4F15077D2D2AFE9DEA1265AA62460633F7FAACAFF556A531FA6E8A46E379539B),
    .INIT_01(256'h05322A629A47AE6A033CDB32DA67B2F725819AACE617A747DEA4BB4DF0F74DA9),
    .INIT_02(256'hD8EBA0FBE4084B92D01FA664ADE4F93A4D857C176EE70D204226B7159E099E27),
    .INIT_03(256'h51ACE80CC5439B801F4AA23492AE2FF5BC09B194D88A2E17650045CCFEFD46E8),
    .INIT_04(256'h4D66EB504334B77D030F4BDF0B065EBE906DCE25B2ADB93558275B78098410C7),
    .INIT_05(256'hCEBE6EC5DD3A01FEBEF7E925E58775CE385B5E11AB9988143C1657C5935D966D),
    .INIT_06(256'hEE7DCEA2026F619A979AAF72B6DC867308DD689EB7938AEBFF80D186AC1843EC),
    .INIT_07(256'h72AE1AB27F6A92F37D5DC7796C1A18753310DE5B760F00551308F6E3001DFCD9),
    .INIT_08(256'h5F224DD7775585F00F569B278A7A78DCCA3EBDE6C890989346406158E7785561),
    .INIT_09(256'h861BF3998429E469690A6CEF2947FFA2904E14F53195A6789E4F115D83FCCF52),
    .INIT_0A(256'h83D26A014DDB8F76DFBF2B3F3DC3FBF5D6881B991E600F93DDA0370FDB9BCECF),
    .INIT_0B(256'h4DBB2298366426BDA40B83F035C64D69B39A436C520EF704885B614611F1BFAA),
    .INIT_0C(256'h8BD1CF9BA5DAA2590FEF9E79A886AC5BA1D27E5894D0D1A4BE38E399A361D66F),
    .INIT_0D(256'h6A2515D12B60C741F3C8E1A4E174672CCB808643F5F1252FABABFE13B6C46416),
    .INIT_0E(256'hF3E8A53A400B8A1852DC5148460B2F54CD2EA3A63965A78059CF191F466989E7),
    .INIT_0F(256'hB0F908974C18EA86589A16D0EF72B3A2ADC49E3F5B1FA4D48A8899D83705A0E4),
    .INIT_10(256'h6BD1746E1230A861D15620153A5613E638F8F47415CE4E432998029655E42887),
    .INIT_11(256'h12397F2B8002FB4C88AEA72BCE62776EE28A3481118BD612E498FC4089F44A1F),
    .INIT_12(256'hC2392EE446DD6F48C95BDDAE87DC0501A2FCEC53999D1A85FF07739B41114517),
    .INIT_13(256'h7800E5CEC972BEC8A62C0517F04DD42373A8210F6BC01D0529D3EBD58D7A7519),
    .INIT_14(256'h1020BA9C94AC25E8780A584E2DD07825819F74C204C91F50B991E826F3DCE730),
    .INIT_15(256'h03DE3484F2A1C3B3C632DEB59A50F529898DA7467B82CCA771E1A80C59A3B67A),
    .INIT_16(256'hCE332CABAF3501D1CEF152007A18FEA411CC426495FAE18CB4966768234DF5E5),
    .INIT_17(256'h462EF521A6786675EB8F0E2B99B95A19AD5CCFB03671FD75C70DBB81DE7E5B8D),
    .INIT_18(256'h87E49287A64725067A4F281FB2A272318C259457FFBECEC003C9166B967D8997),
    .INIT_19(256'hB4EEB96E856528DDE0365AC0AE366D344F7A9CA061A19BDFDA7F7B5BCEB0EC71),
    .INIT_1A(256'h81FA713EF15537D8DB68AFABBC1965FF92577E1321948C309F6D9E030CAE5195),
    .INIT_1B(256'hB82DFBBCFFC12829DC4143DE9543F37D2AD454DD1B310644EBF67A185F5826EB),
    .INIT_1C(256'hA0A84DD1DF1A6196C8C189B4E1232E74C7C4BDEF3037B99E639E4C9C36A0DB9D),
    .INIT_1D(256'hFA0451C3CF69463976C5CEBFB6B48EB09B20B6BCBC6FD96F713E69B92558E52E),
    .INIT_1E(256'hF9D164199A077DA394601210FB100565E85D50DA0FFFE49AB74314DDCF46838C),
    .INIT_1F(256'h314FF2ED0DEEE1CA80762072400C03D5E3AF2FFBA3E665C20CB9E46D456BA3D4),
    .INIT_20(256'h34C86B98835B78197F9D30E1FCADDAEFA4A183830EC2885981D4532D4D4773C8),
    .INIT_21(256'h72C3BB0EF101DBDBB3B7F8CDD33E6DB8297FF2E9DE33659B3270B241F0322543),
    .INIT_22(256'h693AC19C1970260C8900C1BE4B18EDA112A3F258E909F3797DD344DA8A533A54),
    .INIT_23(256'h82540F1FDE817CD471B6E8D997BCE6BCCE5A6C9F7FE7531003615F65BA933134),
    .INIT_24(256'h3983D8CB9E6269E8F20E311AF79D8D7A4DA59BF4AF990C33F8BCCEF8D7E42992),
    .INIT_25(256'h563925F152BF69FBD12F0B7E3E53EAD824DCE92BC5B47211DA782033432D4A8A),
    .INIT_26(256'h95ECE918CED9D8F6E951F2AA3246D76E83EC4151C9EE1C18BD5FB44A4048E222),
    .INIT_27(256'hEE59C0CED13B9BAC17E74A01719AE144F4C92916989E3A8031D3CE94BFEE02A7),
    .INIT_28(256'h3299796347F1228F902DCA758FB193A16863DBD84FE5CEB8C77FA4EAC5C38363),
    .INIT_29(256'hA272C8DA2F4DA0AA443C319D60BB8C14AA8BC72FB924DA5820A432244B9AFD9F),
    .INIT_2A(256'hA9A6F4FB08B706672E4ADE59EE0415B207AF97485663C4E501A657E2F49B8655),
    .INIT_2B(256'h9E7CA481F9F3E1241E22EEC66BC406925E2BB1A26C4A81E0230B45B527F0CD0A),
    .INIT_2C(256'h6EB8DEC37B32966A0B96D6EC5564361B80F93FC77D0E66C79CFA86156425B380),
    .INIT_2D(256'hB22C761DE767DB51CA6498CAB0033AB5341C1905E42B97519E8628892B78DD1F),
    .INIT_2E(256'hD5964EA82AF1FA368AAB80366DE29CEE0F6793503F41D66F6229EC36FB09B630),
    .INIT_2F(256'h72103EB9B104B8974DF83EDD95794C93ACC29783B8F9294D2ADA01198A36A988),
    .INIT_30(256'h927772D12939A3C1CC68FB89962AE8F336067D935AE1604C10AE7D8635E1945C),
    .INIT_31(256'h55842485CEFD88AF20B74D75A46F60719DF0225FD1F691398730E62930640816),
    .INIT_32(256'hBEE0DFE799792BAC1EF07DF428A297B25097C36747C54049DC89EE38751DD4F6),
    .INIT_33(256'hD2AB544C5EDBDC3EC749AA7878E2DC9C7A28986A4FD97F74B32F8BFCF92281E0),
    .INIT_34(256'h0D9931220C0830CC5C0626404EF48EAA620EDCA42128F6CDC08C2A2E82D585EA),
    .INIT_35(256'hEE813194F3135F2BA2FBC5CD8A1BA6E641CCC22D1131C16CEB92A8C92EDC40B8),
    .INIT_36(256'h705E5D80CC0B9E6A824A74D5A7009046B22EDD27425682E6CFB91E8CE2FFD8F6),
    .INIT_37(256'hB04305CE0FA7353D34F0518303BBF1AA84FB5CAD29EBD165E6FB7A8F1488115A),
    .INIT_38(256'h1459952ECCDD3E0F2BE6B1BA9D17B19600EE072FF591EC73AE9F02AA053988DE),
    .INIT_39(256'h7A3A5B1FE3717DA3118914040BC25342A02823D0FAA898DFB7741A780BFC2DE0),
    .INIT_3A(256'h0B67EF2657F53EB4D7A299CBCEEC53F05C009B64EED6B4B16001364D130B9DA2),
    .INIT_3B(256'hA2FEFE2857ECE9D51F1B890F5B18CD9669EA6E8D1A5CC7C30DC6531CBB02CD40),
    .INIT_3C(256'hF97FCA74DCB8C9534C48A3672338BF9BA4981CFF0AD57C43E1149BBBDF754F22),
    .INIT_3D(256'hA22E89D374A7E29F7EA5A684C834A28DA9DB2F0EB08C22E8402E196DC2EB9B21),
    .INIT_3E(256'h399F37E609B81AF66C6C7D219D69BA31CF2A0D7687C9E6A3A58D0AD24F487E31),
    .INIT_3F(256'h595B22FB46787160407267196B5A98D1D0455BA5FFAF9324997F9233B904858A),
    .INIT_40(256'hDC328F6287DC866F9E21C711CBD505266C6AF41080ECFB6D3EEB3699964EEC81),
    .INIT_41(256'h3F09C34DEAE66EEA5077031C13E8026C42BB78777B170258D22C9F2723A62294),
    .INIT_42(256'h3081E4AD49E5D79E9334381FFAD40B5129E68F4BADA3BEB28CBE1065B62BAAED),
    .INIT_43(256'h512EA84208641D41034ACF857E786DDFF055C11501709EC525D94ACE16B91258),
    .INIT_44(256'hE19D7C1D2CA6D71A89C346F24D6BD887E83A541A44FB3C0FDB093538BE63DF45),
    .INIT_45(256'hDE82FA89642E5FF6593FDE8842E2D715BA2DA0EDD72A4F5ACAF0AE24287AF05A),
    .INIT_46(256'hE40B3EF60D1B1F45ADF0431D8EFC0ABEC1605D52162784EBE2C6E676F7733FAE),
    .INIT_47(256'hEE58CCC242F68FA95A3218F3D3E16FDF34149CE3F42A27B1C32C1C66D41822F2),
    .INIT_48(256'hA5CB294F2F65F05A2CDAE88D974F205F0927F4F52B2B19D167B8E03D41104ED1),
    .INIT_49(256'h3D1652B4DE415716B3D6B73149B0E95DE9A72EED98C967B3ED4F6B87A260CC35),
    .INIT_4A(256'h290F0CF0302CB7E3BCD46819CE091F2A79F2C2FDB647FE8D387F6D5CA4B5F9B8),
    .INIT_4B(256'hCE35CF2A7F0E5D43D1F06BB2CA987CF8BB49ED60CC4AF8D085BE295CE558E12A),
    .INIT_4C(256'h3879669CE9A699721324EFCA9CA383437384A95B07045CC407D130064D2B3732),
    .INIT_4D(256'h4189074BC93DCC6ED070619AECE7EE3D4FE3D19A3345EAA540B043A932AC7C43),
    .INIT_4E(256'hB5BEC9377CA5502A1DE9CA72B72F395EFE68C4F6756C5E039F5FEF8C589B0F85),
    .INIT_4F(256'h932BAC937A2485F9CFB054F098029662E631B5E06BA0EE421EB0049CD13C9E0C),
    .INIT_50(256'h7D41E54448B587FAAC0EAF1DED1B976CA116AA8AF17BFD641C132624A3AF6397),
    .INIT_51(256'h561C55C01EF5E2BC86C19D4EE6D2C078E934CD311D67DAFB3425449E423ABB8F),
    .INIT_52(256'h0FA2EFBB0C1649EE16E0F7022341BF13B4FB808EA7299A4BAA3904F76FC4977D),
    .INIT_53(256'h34B363A13A17A2D027ACA0AE2BC9274749596A72D254F315BF68BDE84FA0FE24),
    .INIT_54(256'h12A3B2646B65EE4782AC27B95E7012C7DC0FF596F4989C135B753058BD77D825),
    .INIT_55(256'h3D8937EAA085295EC92B68111764E6F795BB10A8F5259F6843780AB7C17D602F),
    .INIT_56(256'hE39316091732AACD0E8E66D5719CDAA7CB20407B6209B4A8C29CE18FF9EDD02F),
    .INIT_57(256'hD064DA35353A8629A56B6C77B190EAF9257FFD741936869B0873BC16F6C2973C),
    .INIT_58(256'hBE625FD796D48DBCDFBF1BDBCB3CBAB40A4C5472FDF4754D421AD2184400D5DF),
    .INIT_59(256'h898EF8551A001EA7CA15212BE13E565AAB85C5CE571873D2A81E9577B2F29343),
    .INIT_5A(256'h3E77115E6D3BDB86FB0B2918DBAC9955E6F0B5BFA78AFBA4C89D9881519D4BE7),
    .INIT_5B(256'h70F2DAC2FD70B2114E062BFA2C1CA4A5B57331C6B770FF96385A1AA330D8523D),
    .INIT_5C(256'h253C72358E337C7E12F4376F848B87E6BF881BEA22B073E774B1D266DDA89774),
    .INIT_5D(256'hC08F338C8A6FA31B5F9808DF9DC73FF466D3C759E74D0878B25E66191D4AA668),
    .INIT_5E(256'h16D68E7367883F140E10FBAC6F493B73773D9899A63C9818032B8FAD0AB91C19),
    .INIT_5F(256'h402F08C8C41A3B76982FDE177DD8C85F4CFC94270615113BAF3885DF6A6C82C6),
    .INIT_60(256'h12ECC64A1F70BC72BA9D87B0F056C255DF66A486F0F6F46970605F28A1D101EB),
    .INIT_61(256'h947B542AEE929CEE532738F2EB40DF70AF475203BE4A4146DD2057442AF23A7C),
    .INIT_62(256'hE9A2D348DF30963B9BA43388F51E54DA1C19AE86A0D8FCAE758DF2D3E42B6EB2),
    .INIT_63(256'h3A706B05AF9C7036AEC3311CB6AD7B305B46A0B8D77B62D47D7CA68314481F5D),
    .INIT_64(256'h73DEE7236BDD38198077F62BB84F2A60A1B0FA9AEE70BD373F9CE5712B7DE33E),
    .INIT_65(256'h76843B883FA72AE127D53B33BA8DE629BAE01DA3FCFBA35CDDA1996C1CC37D66),
    .INIT_66(256'h257F440935A85F2CEA3BD9B62B9B751FB67665D9B5EF1EF4BA209B618AEA463F),
    .INIT_67(256'h30277A67BB7BBAFD54D3409B37EDCFD228DA543B36DAD9E880C7C8A7A07579F3),
    .INIT_68(256'hB1A09D7B1D79BB072A9FA1E30885774EF9DF3EF35F51F114E870EC4928435748),
    .INIT_69(256'h99132C29550A70479BA265239D30980D7710147A58F84365C0E627CE6B5221BC),
    .INIT_6A(256'h5EBC9AB524663CAFF612563EC462A7CED297201ED3330E1791F01A1379354FDD),
    .INIT_6B(256'h6F51D386D47089BF1196843D48E71F6D4E2BCF847377D865FA8955D3CCF2FD8D),
    .INIT_6C(256'hA6451C5FF9BDDC14C412E60324EA00C60446ACF427EB79F6271AE44E7A628819),
    .INIT_6D(256'h83C2B5E725181FEAB7DF89A75AF5ED40A1968236AEF6C70A010E49BF29DA13E6),
    .INIT_6E(256'h6826AF60085A94CDF0CF43BE98B330A3F6845D5A2F8C4BC5654FF25E0EF8D539),
    .INIT_6F(256'h37B2DAF1DBD0602DC5748CF5826372CB598D393992DAA34CA3E406719F825631),
    .INIT_70(256'h4D5693C3B3E3B98C7DD85AE10C56CF70A80BB491C2511CC16986BFD896811919),
    .INIT_71(256'h218588B2315B3FEBC7362142843D0798011CF08F6FD0E57840B0FD393D1DC000),
    .INIT_72(256'h71584E5C4E17024EF65459605F48628567DABCC10A46BE712E5DD839ED34C463),
    .INIT_73(256'hCB9B165E86909B6E0796B7FF320682182A3827E07CE9968C7F4EF82F52274057),
    .INIT_74(256'hA14209C78A40B690137D86B6B38DD6E49A46C425EB5493D61F4A52F51DDC8665),
    .INIT_75(256'hFAE1241EDC4C00559C1C7307DBB2C33CCA14DC5B23801B7358A4CDC52DCEAE67),
    .INIT_76(256'h91251AF285C5640ED25C047E289A8C118842063F44C9FBB1F649852CA7FE35BB),
    .INIT_77(256'hAC5A84F4C5C88016C808021E22E74545BDE456D8B3C1AE52445D6A40C9D9B039),
    .INIT_78(256'hA23A9437E22685F26DF5221F00C83FCDC0B055F01F35A3D41BF0319054494874),
    .INIT_79(256'hEE8FF7F60B27EF0C9AE1E4B7C85ECFF4629BF3D26857019AD9BB0DFDC937BA73),
    .INIT_7A(256'h0705B356A2A5C2F6DA52831DC623FF158F665160BC89B289368C9F5FD197FE04),
    .INIT_7B(256'h95D0ADAEA3AA35C0526D97187F9AE7E513F4738237309D0401F834C3A0FF126C),
    .INIT_7C(256'hB3DE54C33330F8A0EEEFAFBA637FC0CFD1CD81724CE7C0E079792BD25C20AECC),
    .INIT_7D(256'h53CE20C3D26004214399E738DEE0E55EC94E63E17C9E84DF5739AAEFA95D5F1C),
    .INIT_7E(256'hD7068BFBCC90D61EB3A41DBBB257EF4E45EE49745AD2E9A9EBFA6736560221F1),
    .INIT_7F(256'h9769A61DE12C4D870D0EAA4DF3EC8A0BDA6726E26D2B16EA05A7C71C5848EC15),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized1
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
    .INITP_00(256'h3D0E3C25FFFA2BE5F936919AE97DDD8DC7324AF212F5B614804142B8829DDCDD),
    .INITP_01(256'h917FB6CA28D36FC06A0165779B15EDA51CE30249B4B4A60E3BF8BDD3F151258E),
    .INITP_02(256'hAA8C27350D94352A003D8D82EC00CC0C2AE1F60E5428F49E548CE0B6690E74F3),
    .INITP_03(256'h19B6E02A4E70D105A5CB441F62289FB7B827C21D19C040802E0183E3568E4338),
    .INITP_04(256'h9559D71D789FFC069C38FFCF6D004757E40897C69D0504C3776990815CB6A28D),
    .INITP_05(256'h22161B48187C777C5652D3C17E67350813D4CC1EE16B83F3EBB6847CF8D485C6),
    .INITP_06(256'h5993C89A13B85827367CB36C1134AD62F8AB420592F421F28E1CEF2AFF9EEE6E),
    .INITP_07(256'h914CE5EE0B6C055571D17EA09E59CC0F626D9D7325680687865115C445C31B43),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hEADB878EF28C665EA9931A2952C4FAFF45427657540D6DD9D68BF5BC34B3D6D3),
    .INIT_01(256'hC9E03489E48331DE08DA35E6324D65609838B0FC20BA61FF54CD85478C990ACE),
    .INIT_02(256'h4E9BC9116CBFF0F63D95F0E7CF6E662403747C91B0F773BE7AD062A06A0DF933),
    .INIT_03(256'hB4AD8E0B401E69BD002B99CEAE375FEE333761344D15395D8723176A6FD8ED63),
    .INIT_04(256'hC706E13A605EF04DE9F8679A731D5AE8A6790F41A441278650E1D9CF2CC457AD),
    .INIT_05(256'h8FC57DEE49597514F9D3726A5CD5FFBBCD1DCED9A6D082A2046C84D53FEC0B0F),
    .INIT_06(256'h21406D5349B782E3B206E511AAFD78E971DE560DBC1F10A3139786C2771FA3BA),
    .INIT_07(256'hB523DBDEB2A65C8505E820983E6B9A3097EBF18EF13BC105EFCB0BF3A4BFB296),
    .INIT_08(256'hB6A387CD95BAABA88301B3FA964138DB55AE5A5566FAAD865CCE544EFBB89B54),
    .INIT_09(256'h83003DEF1CF13C4B3A3F4DD456AD5EB7DF1D796617B363DA5441E11778BE6C99),
    .INIT_0A(256'hAF67A60D8F4DDFFD1956F8E858535E2B3585B7E6D725CC7AF2013853988D151E),
    .INIT_0B(256'h6E717705212523210D34AE3620FC7D0C8408512B5E94F27CE4AEC41767EBF21E),
    .INIT_0C(256'h7825E955B32F2CB6229F1A17C0644B4EF4576C502B3D95D7ABAA5C5255488C9D),
    .INIT_0D(256'hD38D6C180C791AD0DC9D805C4352D829E6177B7A96D794F7D18C7099BD76AC72),
    .INIT_0E(256'h0AD51F2ED68CCA950639AB2E7409045ECACD079E2C1AC7F3631C64AF5ECD8ED3),
    .INIT_0F(256'h825530A47C177CDC35F992273545D1969B299DED61A1E58B8E8CD6B4D01B4A5E),
    .INIT_10(256'h14404F94BF2EF31F864E0FCE151D0BCF64B5D1DA4543CB5FE44BB82791932B70),
    .INIT_11(256'hE264FFAAD50635FD0F6DCC1F60557F3706AFE7389545E48B288B682CAAE07114),
    .INIT_12(256'h111269A4093ECFEC0A918CE8181966EDF93F10915F2A8786A2CE3268556450ED),
    .INIT_13(256'h4964A9560E077282D5C60550864418136A602C1AAA986618E2C28B5DCD5181A4),
    .INIT_14(256'hCA4145908CF308DD69F458340B7C6AAD714FDD8D5A398D218B24E4CD74B79F80),
    .INIT_15(256'h035ACABB9A57F5839EE0BDBFE8AD952A1A2E19F5B58B6822BC87EB5D9E897CC4),
    .INIT_16(256'h6D461DF12805153792FC1FC430D8B9127A07E3C7059A2B6481659C9AEDC7A4DB),
    .INIT_17(256'h508E923B7AF7B17A65AEBB0E8DFD2770D0CD33F876BA273F6207C47544DAE776),
    .INIT_18(256'hFA0FA0A9D70213870D0444837C664204F9199EBB3A503E2C31753F5755F82364),
    .INIT_19(256'hFD61DD03373508DD183F3C4D1C61EB56F65D86889604F625DCB818278FCBA323),
    .INIT_1A(256'h25F19F7EEE5E559E2D24228800BEB6DAE4A02E1377FDACA557DEF3AEF99F8DAD),
    .INIT_1B(256'h9AFA36988EB33485B050927D1E1A07E2BAB0F6861217F156C1964E76610E71CF),
    .INIT_1C(256'hF307CD409AD06FECA6CF3C2662817B368B26E961256B01E5E7C39BC0D6FC4EC2),
    .INIT_1D(256'hED08F08E529532A7DEE7C190AEC33DB304302FC0F8D5515573CE6B4ACCA40492),
    .INIT_1E(256'hC06E2421E07F5D9EA9CD0A6BAF7B3237F0AB04E27C7C3DE23D182207DD64DB4B),
    .INIT_1F(256'hC8EC927002EB0866C29182602FD2C20284B4BD0386CFBA3514AF6E97CFD98FC0),
    .INIT_20(256'h8F8D094E6B82638D4AD46FF4A07FA3FD086B82F1012597E9C69425A6A8AC1463),
    .INIT_21(256'h0245BAC04D0462517CC687E2611386E05F3B03A382FE5A806490ABB816F7B76E),
    .INIT_22(256'h7E446183BF2FA0AF975B805E01FCBF2474716A440EBF8FDD143E987E243B36EA),
    .INIT_23(256'hC4F4958E79AD14E4D5EB580A4E74CCBAB90394BE4FCF6D82849939C07C210880),
    .INIT_24(256'hC551454A8C3867A8A6D0E18822692403BF122E550D0D589E443A41650B86B135),
    .INIT_25(256'hE532D9D6C5D06911371F5331724EA91D2B1AB3F1B35B140126C36FE8882DA6B8),
    .INIT_26(256'h3C3202D0826B264C72BFD23F5C0750F303294B5B138DD246F1AD07C5108BAECD),
    .INIT_27(256'h11DBD7B8DFD78F130564096B15F7032C5CA9FF046BD8AECCD6B0C514AEB7CF88),
    .INIT_28(256'h7BCDD9C05E930388F25741C133E3EB5ADD73A5FAA80147C6ECCF914FC7AD9279),
    .INIT_29(256'h8B79E2C084C2AC390A1038187720F10C35E3E1667EF40CEB8E371E60DD731F92),
    .INIT_2A(256'h690D64D31577D1481E7F02D5501954AF8DDC53C64163967B09325194AD206DB4),
    .INIT_2B(256'h69F859BFA1000D825A8D419934C9B799B27DD0871A37ED06E72D80F165A1243F),
    .INIT_2C(256'hDB10C6C958256B82440115E13912A2A5C19405EE079E26F6C1D27FF20555FE40),
    .INIT_2D(256'h0FB858B0E69C95CBAB93BC513DEC6E8B74A0162542CD30274C72AEA5E86C2D56),
    .INIT_2E(256'hCA642F2FF522B1986674DE3D64187D3973632F2DB1A4D38FAE7299620FCC8926),
    .INIT_2F(256'h8681009B4025AC39C550017CEFFD56A4C6CC4B1AE21028B9C84DBF1E854A22AF),
    .INIT_30(256'h5B156BE0F4AD2D62A7D8FC3195AD60B8230D8B690A7F64033079E5021285EC90),
    .INIT_31(256'h96FA6722136A08C143D40F6DC5DD39B5B850D49874AAC646B98C74AFF4A4FFE3),
    .INIT_32(256'hE8DEB275C95ABD2B9BC497305AE9454645923E52688AE5A77E3B2D4B8F158E0B),
    .INIT_33(256'hE120C592EF4308FE94064F8FFE5DAC103AB3EE8D24BD0F9812ED0565714D7F47),
    .INIT_34(256'h018B6D471F60163BF6D3285437BCE12389D4842D9FB8756A3BDB18543AAB0F45),
    .INIT_35(256'hBDD66221347CAC6A84185A732880BB0AED3F3CC8B086299FC31DC186B4C4FEEA),
    .INIT_36(256'h26E2822CE25752C026E027DC86516A9B3A059F1ACCEB82B4494DDA7ABB7D2D16),
    .INIT_37(256'h9CA56852BBDC6B3172AC43FB60E6627C26E138CC04336C01EF3A21EF7DD560FC),
    .INIT_38(256'h6D76DC5AD0C4446685891C5D948638989B811B572F261EF08D24ADFEB067BF44),
    .INIT_39(256'h8C7B9D44675C594591C9A42DB8D4D017D77D79AF176CC2C4AF455376E02D37FD),
    .INIT_3A(256'h62337EF6F73C40F04B8BDBA68F0C96B703933D7CDE4EE2F85BC029E3708965DB),
    .INIT_3B(256'h0813C822E23271CDA1B92A23CC2D4A81E7C84BEDDB412930A29A338F860079E0),
    .INIT_3C(256'h05FCAEC0E3BD669DF510747287CDC80B5D263B27064A7E1BBA4E64AB3BA16D91),
    .INIT_3D(256'h52B5CE468CB82F9E2B7DBA869A2D325D89E37281D114975B5F9A2DAFC069DD58),
    .INIT_3E(256'h53A1D9B192163FA0D92C28F761ED261A02E12504B602D006532F9F6ACC0BC32F),
    .INIT_3F(256'h5D1FF65C8110B23EA918671B8022E66FB098B1E7A29306B86D7A4A5BC886CF63),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized10
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
    .INITP_00(256'h05884673F984021D62130E2BD715CB5C62A09B5728BB264BA9FB2DF84E90B0D5),
    .INITP_01(256'h801523E9257E8FA86225E324D82293514AA8B14A7F37A855354545D2BCC24893),
    .INITP_02(256'hAF012AAD1A47856914DFD96859D268C1681BA42883BDE4A2ACCD0887F432C410),
    .INITP_03(256'h7112F0A8817FDA90C593753048E0AAF2C22BCA547B6162758538813DB124F7E2),
    .INITP_04(256'h49C268E72CFD90F3EC76ADBB87AC7ADB26C8260EDE1B9FA7C238171932422294),
    .INITP_05(256'hBB97AE092D9D6DAF2A841BD874399CD3D261475FC446A52F9FC9C96DB71376B8),
    .INITP_06(256'hC95ABFD2257B5BEF4F0956445BBB8B4C3CEEDB984CEC5B3C1B724D3AC89F8B92),
    .INITP_07(256'hA9E1FE91F896A96B67BEA4F83E14F96DB89963BE1FE2AA2C49A51088BAB9E892),
    .INITP_08(256'hD1F35F94A9B48B19EF47F57F9D489C2F770DE9EB64877D8E32D1A9C6EEF52CF5),
    .INITP_09(256'hA1416AD24CF154CB3BDE0477336BFD3ACD837DC04D91ED94391760A187623E96),
    .INITP_0A(256'h19BD80590918DBF088A7AF0CF5D51FEA834CBD066F36288701B7BD24801A78F0),
    .INITP_0B(256'h725C249D875202C0C38BABDCC162A0F266572ADD09FF153FCA96C98713E4F0B0),
    .INITP_0C(256'h958C5DDE571C14744814B27C60C4A273AE28767A9F47A459CF37F0808C3B01DD),
    .INITP_0D(256'hA73CB61AF876F08A250956BD6A85C8FC641992D2E9C2BD77D9197FDE0982E441),
    .INITP_0E(256'h8C4CAC531A2EBDCA7535BF6C01939F4BEDEAC18C7DD6D222DFA0F2D27843C11A),
    .INITP_0F(256'hBD13FE99E5ABB1CCCE1C2CD2CDEBE46ED9E323BF8B4C73FC4AE92BF0A8C89833),
    .INIT_00(256'h8D4B2AA3521B02496F8DF300E1796ED3D781FCF223C60FCA0615EE73019BA805),
    .INIT_01(256'h33674F90D8C2178A08EE48E4390EEA3029BA32BCAFE7AE50607DF8D175DE4BAE),
    .INIT_02(256'hE4BB01FAFAB4359C740CB851BB7E0E25AAAC882402565B78A39A478DBA750751),
    .INIT_03(256'hE5D46B855CD5AD6A157BB06CCD7193F5EAF3E6A6DF0574BA97F45D38FE86445F),
    .INIT_04(256'h58C12095CA3B78923C8C2301B53349741F1F21074735B454B7AA0E705372E471),
    .INIT_05(256'h909B7638F4DB29C58E81815E49DE5742E754C8DA2B14854E664526AD83B61C24),
    .INIT_06(256'hAA5A7CFFFC04F9C33444630005E2DED270E48E3867F0DBE6AB56C404169040DB),
    .INIT_07(256'hF1FDAC1598D6A7872933E4FE042722093B8B5E0A5819353A274DF33D26B6B23B),
    .INIT_08(256'hCC5378A2A9FBCCCB80481CBEFA52C2824D9CEDC2831E7A34A4E0D8122AD36809),
    .INIT_09(256'h48DC8EE8B4364D2DC370F7448DEA531618C3F484BDE4F642042542E490FB8EB1),
    .INIT_0A(256'h9198BE93F4157CFAB785A490BB21BA8B6F55A8F84C6266CAF7A3F8E2F0D59CCD),
    .INIT_0B(256'h369BE4AF335F1AEC0C39D957A265B38FB66A4BA83E07FC60023AA41BF3687B68),
    .INIT_0C(256'h80BDD3DF42068227E8FDDDEFEE197F97277A11D3D854B0FE37A610A4CCEFE86F),
    .INIT_0D(256'hF885A2991F15368E534054CC77B31CA2EC2E667FB288410BD00A726D0394946A),
    .INIT_0E(256'h7F981F0DF5A92011FD7A77874A6F6E36EEF3AEC6907E90768F05953A4F6D62AA),
    .INIT_0F(256'h6D392FB43B9DE9ECD470969E88D504BB0BA811B0796C25A1B2FA42BF369301A8),
    .INIT_10(256'h9A8F3B787596DE55DDC5C7DAC80E1DA394F8BADA9BFE29D2535B1A00A38280E5),
    .INIT_11(256'hF791F501E0E6D094AF3C736742550DF4A651C1D9C3D2257912AF7825FA285BD7),
    .INIT_12(256'h04C25305A52804F7A034698FF22EC2C0F7950E30664B3CAE97185696DD731E4C),
    .INIT_13(256'hC83B28DB1BE2481F751A657CAFF1D083D5EB1B880477187295E1E96D3FDCADC4),
    .INIT_14(256'hF85F149A0B66EFE33D4F53308196735CBE13C4DE7F1BF33836AF5AB97840483C),
    .INIT_15(256'hE0878C876A6F2B85FEA9E39FD01B8B1A34A26F32352D85589B74C9AEFEB159C1),
    .INIT_16(256'h1CDF355D058AA74C9898CEC789185636F94A65F08717AB378FD24E2DEBB0B071),
    .INIT_17(256'h6B1BEAAD0A81BEDCEE4B38719F52EAC11A2418566856FF474E5B5389E7B3FCC1),
    .INIT_18(256'h8B01817E2F3AC44C6658026DAEAE1122545C5A9166B8C84ECAE77679A207F5EC),
    .INIT_19(256'hEDE0160FD49DC68A613FBDDA8AB1CA500387C4F4FF32B0C5B62F767B0407DB0C),
    .INIT_1A(256'hB938BB82589CEC8223A1B9A31DE5E74CEE0AB3482757CE5CBE83E92425103FDC),
    .INIT_1B(256'h7C76C4C2B89A7E8F522A47A5A65ECF38A57DD9FE41EA7AE2D6BB6064C020360F),
    .INIT_1C(256'h61233A088402CC7FBC4EC8BCE1AEE698813224EB69CF2598C89003564EC66784),
    .INIT_1D(256'h239EB716FC7D6A5C389A417F994C888CEB2B0D7C79384D278939CF8383995ECB),
    .INIT_1E(256'h27AB09802690FFB089E76F3EEBC9136B529D15B7A4A0D7BCB12976122A1E6569),
    .INIT_1F(256'h5DBB73678256A25D2FFCC5F4E4B9BCAF756D68CD49C4AC6F4127C21810D31644),
    .INIT_20(256'h9100AE76E8F54FA4C6CEEA196307D8BC7F1D0067AE95EF1C8C0C8A9A7C4D1E94),
    .INIT_21(256'h2523599B7340ABE2F8E020433FC2CC68D088F15DFE3B08BB50146B3CA5E6B65D),
    .INIT_22(256'h8CC2C6D5BD2DAA4D576356F2400F2C83EE9280803C3D8AE9D3AAF55AD5F62DB3),
    .INIT_23(256'hA0E3C42B0DB8DC5282584DF2C40931C4F53FC093D065A29A376F4153A363F08C),
    .INIT_24(256'h62E589E07DDF0119A8B358187B2985649A53ADB102B65C58DE30CC1697A8FA0E),
    .INIT_25(256'h95A1BEB030BE89A9D9E2F056998CFC13C9DF1A85917E7A23C469FD2E356D021D),
    .INIT_26(256'h90828D0971821E57BF3E77DFBA45B8349D90827820A139DB891016A44FFDC3BE),
    .INIT_27(256'h05BDD254C063198A390505CC13E9266034631CD2C6B8078806A45B0AFA7DA24B),
    .INIT_28(256'h51B7E4DAAB22822CC7316C9C8B633211F5323626C9DA077B38F2B223E86AE11A),
    .INIT_29(256'h1F7A8D0F68F294F221784957D77FCFFB78BA2B6DD7C7259EB4FB005123D734F4),
    .INIT_2A(256'h054228F3B685FDA690D3A58C175576A4D67EB64720624583D36D7AB6EE71A7F8),
    .INIT_2B(256'h8A7AB48391DE227A6C115EDB30FBE0004F4CF19EE6C741824F971EE442ED70ED),
    .INIT_2C(256'hF61D5500E6CC090AE226644006F1F9EB92BA622C5C4D30AF6B144F8033C1382E),
    .INIT_2D(256'h5D165AC58EEF02C800DAB4B50BFE53CE9482750737D97990B9C94CB84532C541),
    .INIT_2E(256'hEF0E0838D292750B78E8DE31A6E21B12CBCC063C94A67062E732758061ABB10C),
    .INIT_2F(256'h9FB1FF81DE4F2E87FEB189AFCF15F1368BAB19AA8A8133F4174AEF9A877F3790),
    .INIT_30(256'hBC30845B64397829BEC79B272FF76958D133D8AE45A2C23E9D0DF9E254007781),
    .INIT_31(256'h7519C83C68E0C4A3D292C033F6A6CF6F297F58FEAD42ABD29BF46681CD11D256),
    .INIT_32(256'h3FB94994FE21CB97B9931764F1E55C2CFDCB044CF44CA08FCFD31EF97BCDF087),
    .INIT_33(256'h783E828F23117C488AFC7CC8E51B1ACC22F13EF9C46B416D3F3A9F7501BBD9A4),
    .INIT_34(256'hF6AB756044C3976555038C5348082A8341813B4C46449EA43F498BD4996D4C3A),
    .INIT_35(256'hBDF958FFE384F7E0A9A7F18356ADCA9C1A4CEB29C555353331DA6D94DBF69411),
    .INIT_36(256'hD30A47428CE72D019151E3C828E924360C920C2F7F15D523711BDD5D8F5093B5),
    .INIT_37(256'hD6BC8E0AAAB0B037D558DEDF172A8422B28D723EABBA3D89EFB4205029E4F609),
    .INIT_38(256'h5C9FA4F9D33D468BDC741A9D60FFA1784B78753E908B8FFE32D036C7BCC84215),
    .INIT_39(256'hDB647AE2DBF16950FEAD374FA66E3C6DA1619330B44FEDA45F0BA50AC39E59CA),
    .INIT_3A(256'h77E6B129DF234806C66339CBAA6530B5F0D3570F5F16EC048194BD012B64CAAC),
    .INIT_3B(256'hCD4ACE2FDAA04D8D932E83987EFF97B350E42222ABFB052976240A5684491352),
    .INIT_3C(256'h1D4EE91E56126C1B23A973FA90C3A8F47F0AD0EC0022A1BBC0660C0CA214952E),
    .INIT_3D(256'h8537634E5649F3AB5CBDB6971E3A5AD15201DAA458E4F65540EF881AB5E65E3D),
    .INIT_3E(256'hF905017A76D998EA3DAADB4E4D6AA5E36C08557AE3694784804DBA4B1C092436),
    .INIT_3F(256'h92774EFCD45E1A315F7274972F88213430DE045B78E03A1E6A0FA7875E071A16),
    .INIT_40(256'hD3E397156FDE385FED1C206EE3F0666F4FFB96C1E0985419D114BCC28C81AD7F),
    .INIT_41(256'hC62701C14470FC45760442134BF0300D6B78AFDE14BA7DC039E963E002807786),
    .INIT_42(256'hB9CC98E7931EC83DA184A7AD0FE4468AC617E28C712A84D05121C0E028325CC7),
    .INIT_43(256'h88CF7401DBFCB594FB1F11E83E98FAF7DD7642DDEEAB2301FB23469DF84E5C23),
    .INIT_44(256'h6F5852AB1ECB486B329E59A4F34D888365AEAD48AFC83A6A58E106AD8D2F4765),
    .INIT_45(256'hA86EB4A9C99F065754A8D219EFD59CB7C74EB006E1BF204E21B0D973B8E88F4C),
    .INIT_46(256'hEB3E975CC8877C88DEF82244A1EA73AA426FC31B3AE423C780906E54558A2AFC),
    .INIT_47(256'hD158C2D3F1BB8B122B79FC21816BE179977858BFDEC15715D1D3E6D7BCC7D3E5),
    .INIT_48(256'h7AF27449128E23805A30DF51A097961B846AA90034404D44468BA35EE210AA95),
    .INIT_49(256'h7A2F6424E0433BE7F3E064884192CAE4684DF07E37F87386F4A3D69FBDEE04C6),
    .INIT_4A(256'h9E0C894A6E3C9B3E106E199E8F5B5B41BE9CE40420B5FE9756A875BE234B237E),
    .INIT_4B(256'h2EE4838017DA656D7A23E6326568DD34682070B77D9FBC8F3BA9D123A8D3F5D5),
    .INIT_4C(256'h2064EB23ECEA5B20754731AD712943B23C964161D319B509F39685677732E2C8),
    .INIT_4D(256'h8924D5323102C44A78A5825E5BD64FA624B18E112E968B206317989206B99CAC),
    .INIT_4E(256'h114E9F10349E822FE595103D08421081F47381FA92C82FE63D4D2B6C6474B67E),
    .INIT_4F(256'hA19EE896672CD814ECDF21DF1D771DA6D3F6D8E16123B409E2D6801575EF9FEE),
    .INIT_50(256'h5634AE694149EEBF28C6FA404130923220B7CC15355DCA56E1894ED3C18C8B90),
    .INIT_51(256'h90DEE838B9D202EE34A999948DE731B8537F33B72DAD15B8186189E14BB06E9A),
    .INIT_52(256'h642719B6BE0E62D84CDD10F378DFEB597D91675FA7A92976FFBA3AC3186EE4BE),
    .INIT_53(256'h8C5D8FE8F96AE57C5BEA169FBB2993E919B88731848CE1E83076FB88D93A2F70),
    .INIT_54(256'h7007BB172F55D945C911F6D93D450D219C23E5D60B5DA87DF9F892CF7EFF4F8F),
    .INIT_55(256'h6151C4EA6C07ED434A1AA8FFDE27E886F030EED816A1B65FF4B17331BB239CBA),
    .INIT_56(256'h379AA75C15F1430157718CC963430A0D5E94DCA51AD14450619EC21F9E70EB9F),
    .INIT_57(256'h4708ED2512260CB0A497161E02ABB7F3E322AA9D91F6CD9AA7F18894DDD1F65A),
    .INIT_58(256'hF19C655CC4BF1A8662D02BADF8DE1709382A67DE7CA9EE48492B5BC95B8B1EB0),
    .INIT_59(256'h803611E4A3AFFE13BC50E7B036CDC9E5EBFA111E0B60FC9B1B6F532C868051C3),
    .INIT_5A(256'hCAD5836FE199F6F4AEB74B7555FED8610F2F964908434EF5B864497D70B548B5),
    .INIT_5B(256'h21A65182D069491BCB14BBA02F88E706C8AD24D6868EBA7E6B0258A60C54D8DA),
    .INIT_5C(256'h0F0C051F10AE2FAE97528EC6BD937527837EB3E147D7F3100CEB844964141841),
    .INIT_5D(256'hD81786E6C69924EF318F9C8B8E1A45E0314C3785C6DE8FDF01007791ED83A59D),
    .INIT_5E(256'h6B7DBC61D6C39C22C5CEFC7C4FE6A126AA08476E4812FA0A836AD402F4DA6AA3),
    .INIT_5F(256'h2E0182BC6F74B8F4ECED525115670C7D77C5E90F80C777064987F303C20E9CBC),
    .INIT_60(256'hBEDCA4BB68B458AEE60D2A72122398A1EE2B24AC02EBEF7A0457985CF9C224B6),
    .INIT_61(256'hD0B1DC0C9D4536AD103813822D11AE83FF1684E74E13D75C2341B2473066A309),
    .INIT_62(256'h267ED01A8109141E0EED494A770423D8B08243084EC81594D07653EEE55518B3),
    .INIT_63(256'hB78AE0F213CDA2C61BB70CEDE5DBEAD17808C8921F69CFF8BC1D70D7AD66E213),
    .INIT_64(256'h960F99689D092B30E597E06B21A7027C6FE47D85F1416B043EAE6C13063339B9),
    .INIT_65(256'h740A7CFBD1EA4408593B0A9341D035A05D68C85BA664F7A20AFC249CAF872A2F),
    .INIT_66(256'h85B5D3E8410DBA3B3F63330934F3F5502CCB330CC95EA4756B43A21185418CE7),
    .INIT_67(256'hA5E997BAD0850B6BA3203DBBDDB51BFDF6106FB405D8A4C64CDA8DC203B261BD),
    .INIT_68(256'h61BB298D00CEF3D2B949A85FF0529D8868CCD636D4E4724B1C085CEBAF08F892),
    .INIT_69(256'h9E33368CC2BB4AE0A987BA6D996D02E3D4537522EF69A79057D6149268B3E952),
    .INIT_6A(256'h3BF9F133A837E59870F40ADD02EB2FD33495726256103E14E89A8F991529CBA0),
    .INIT_6B(256'h054F42810BE3B57430125EDE85F174D642941F6FEC8AA4ABE97BAFD31EAC4C83),
    .INIT_6C(256'hF16D66F393F00D8D7C38FAB5C11E35DE1EBE6223BD144CCFBC600CE119B11167),
    .INIT_6D(256'h2E313B92A7DD1BDB3E7DC1170476F4945860E5C9F02079B7B200DF0718BD6899),
    .INIT_6E(256'h87810A5D6137D52FCFF69B6D9254DFAAB6C2F343EF778A7D688E741CAA78700D),
    .INIT_6F(256'h8C71EFF0FABAF251CA0FE38237CEFEFE4CE77D8EF0A05975B6CF29FDFFE82930),
    .INIT_70(256'hA432122CB15A740ABF45AE117F5E6577BA945AE121E0D4CCC79CEBC01B94C552),
    .INIT_71(256'h2FCB37309316353C8F9510782ED82A7F90AAD98A8DF62BA933EED6505B46E60D),
    .INIT_72(256'h98F15720C3D50CD7CF438FC46EBC1A15FF90BB5BBE1E0F92A277F1FC45C79CB1),
    .INIT_73(256'hD128A0AE145DBED91A15955D579CBAE353ADAC32A9EB59161A6D1074338C92B8),
    .INIT_74(256'hA42B4354956225B41A2BFAAB801E7354766CCAAE32D5D1E6558842E4E69B4975),
    .INIT_75(256'hC95D3528E8C0EEE4C8242C4A99177622D68AA032CAA61ECF63A9C00D29DD323E),
    .INIT_76(256'hA226FD4D0B526E5AC645067A0300C95ADAAD889C4D349563F680EBFB7C14386F),
    .INIT_77(256'h71AE93BC3F6BA26887DA0C01E7F6F106A26FF652163D34F413AB51D37F222C39),
    .INIT_78(256'hCE948F5A7299E09CCE9EEF9B53355323475F2A5C105F53E62F9CCCFF8EC303EF),
    .INIT_79(256'hEAB59F88DAF921F5756461B3875B9A55FE2EFD79802B7DFB46313F6E8BB8AFA2),
    .INIT_7A(256'h8E0AD7A94E3A8A0B419486133F837BC1C7437B32D36392051BF7E710487899E7),
    .INIT_7B(256'hA65D4FA90E4A2B059D99CA9E7BCF0ACD6B2412DB6CCEFF24935ABCFD95152674),
    .INIT_7C(256'h00102CE8F6879364AC0FD9866600C9BCE90412F6CEC77576AD70424D308BF59B),
    .INIT_7D(256'h1BDC7408F9C7B1C4246591BC32FA4E367160004284B402B591B489F9555CA783),
    .INIT_7E(256'hD31AA1B88E1ADB521B4D9776C5FCEF9340121F1D5774E36147D3F78EDC588F89),
    .INIT_7F(256'hA216D3E4AFB949425828B2BE9F938B808D3BFDCAD7CD31BA41233D0A0DD4F4BB),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized11
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
    .INITP_00(256'h360533BA69A6AA7B060622BB56D88BE19B8595A834CB7B6DA41A29BA6011CB49),
    .INITP_01(256'hD57BB111F2A98C4E67354F847502A099D96D83714427D6EEB094609941629CF1),
    .INITP_02(256'h043FAE8494C20F4BBC235150994CE45B124C6C8AC8C3A577F71C359A731F5820),
    .INITP_03(256'h8725AF64CD409C460B253BCAD8481A0A3377F6BBCC7D1361A274EEC60541D895),
    .INITP_04(256'h2DDE7EB35AF8DA2054E46D634DB477EAB79B3E83B0160A200E8A909FCF5350ED),
    .INITP_05(256'h82FD8FC1109487CAD0F1AC212EA3B2404B96D87B47E1DE9676A38FE59088AD09),
    .INITP_06(256'h49408BBB94CAF642F81AA921EE597E957D0B5EDFC40769EDA14928936DE86EDD),
    .INITP_07(256'h59A7E153A18220E38773AD97CF6D4FF1241C1A61F09D00F8165FDFC97AB59180),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hA2CE8CFCAD7AA53D996D3BD5E731EA60086DDAE27C3196560083868C4969F67C),
    .INIT_01(256'h9E9D21DD1D5D9C7D57788BF78598226D122AEA6A90FD7E6A12E211C2A3E1DBA7),
    .INIT_02(256'hC1C60CB89E514B7BEF1DB859A492ED3AE8A45F0887B2737E54DCC3AD019062BB),
    .INIT_03(256'h33932EFC483784AC8953DA819FC415DD02FD8A92319D615E9AFD72173F37F306),
    .INIT_04(256'hEBE8CAF866DF52C3AF20EDCAD983337CF26D1353C37700DCB2DAE5F73A91BB5C),
    .INIT_05(256'h181502E815386328CBA03B6272C3665C05646CBD4B7028EFC7253466EC25C17B),
    .INIT_06(256'hE773D545E62CA4A6468CC3B0CF810A625F22A4C8A2A76A46FA45E93A9253920B),
    .INIT_07(256'hF1A076704B66BC987DEB2B6DF3EE56F3DCB43E38EBC9CE9A21CFE018F989F9AC),
    .INIT_08(256'h8B787F77C21A7526A07789ACC850F09F79DE777DF8AE824E5299722B9E7E6B1E),
    .INIT_09(256'h89021F1DBC6BCDAD50477B85A0A1EF46CAADCD7370DDE75B1BACE8E73031D42B),
    .INIT_0A(256'h9BAB8A072435502BA610522723C06BD71744F0A7D88ADC33011CA0F4F57FE3FD),
    .INIT_0B(256'hCFC3908B25ABC7FD99EA086E17541014828140254E1191587973C0CA87C330AD),
    .INIT_0C(256'hA2BC164A44DEB29356AA391A26B0FB22895E879B1A441CCF7443BEFDD8E0AFC8),
    .INIT_0D(256'h16E549AAFBC82CD944339C7DA32B9515764CC41B96242A96505475264C9B22A0),
    .INIT_0E(256'h7CAC48952712A5CFD2AA9EA9F8CCA3FA26EBBA58979CD07424709D396476817F),
    .INIT_0F(256'h10CF1DA735C0F4C071B817B5664C112A74105EBECF081617C53219CD56A5AA6D),
    .INIT_10(256'h66769276180D419516317D53EE79B7AB7D5D2B10588D807C530B4E3E08074B49),
    .INIT_11(256'h4CE999C24569B2448112311F420C831C3300899B6E36C4CB143D1332CFEF2DB7),
    .INIT_12(256'h577FA3776AA62C095307B5058B9A1A77C535A7098B683A704F0E7FC1A8794CE3),
    .INIT_13(256'hFBD3F8D1B09A2CD2C789AC93EBCEDA9A75F472CC4F7CF55B2009B7A303AA4985),
    .INIT_14(256'h13BE7C954096A5F16A0004AD5DC6F09D61667E1D1543D09633D0E25192284778),
    .INIT_15(256'hEC78504860324DABB2ECAFFC900F837C91CBD355149A6B7CEBAA3C73C2C0EA3F),
    .INIT_16(256'h7C010356E606CAA995AF1A7ED8A33CE3662871503CC09375BA98439E9F3E417E),
    .INIT_17(256'hF01C310155C045813106AEDD1B038492B789D5C322F88BD0505C93A7CBC0637F),
    .INIT_18(256'h42DA4D23079132C1090ED1094DD48BE041C656714454B899F83AD29D23835A23),
    .INIT_19(256'h656E81AAFBA2E682DBB02323FE8723098DCA5D2CD933714A0BF5CFE08E6BEF7C),
    .INIT_1A(256'hCCB89C88AA2139D5819E52A5AA5C2244587C34E57306328E5DFAAFA29AB322BB),
    .INIT_1B(256'hB914F20C56AA71AA3171A8EBD62F40C2CE2111BCF391BB0488A0CC7A5D52EA43),
    .INIT_1C(256'hCE7C14AA870988E304D4A655054F2445B54C70FA870DB05F496D6F18CBDCD5D2),
    .INIT_1D(256'hB960E31FD69B887FB3B8819D8488EE85D2C09182F6C4AEF42AAFE8CAC323A514),
    .INIT_1E(256'hC475375EEDF0370759B56138DEDFC6BE6989C12A6ED40641628BEC7F9DEAB415),
    .INIT_1F(256'hB58CBF36412342126427122710D57700366F6E1472F7F04E40AC0E282734DC33),
    .INIT_20(256'h49FE5EFEA96A00753D15E82585D2B3DD627B12977DA4D04B25A238B1C3EF75BD),
    .INIT_21(256'h545DC1F13DC9BBED8641324DEB3BE3D53E10C12316151DF6751FA7DB7804D5B5),
    .INIT_22(256'hEE64D461E1DA2171CDFB76E28B7A8D83A3638BC6AAF596F2BD062A3D31B7E303),
    .INIT_23(256'h6FF241D072DD427AB501D22500829BDE29CF1CE13DB6432B88250C3E51C04B4D),
    .INIT_24(256'hB28A36DAA300E16C9870818B731CDBFBA5C2D30AC8B5C747553B15879F6296E2),
    .INIT_25(256'h21FEB8F5DC440534EE425E737FFF77031D177E870AD55F266223941BD3AD6E73),
    .INIT_26(256'h5589F90C331BAAE79EFD922A6B2BEA61DC9F603B9689AF5760CC66153108D10D),
    .INIT_27(256'h5BA628CA62D38D0A716C45C4855CB594CF1C852E3F5DC56E5C4DF05FD8FEEED8),
    .INIT_28(256'hA8E4833C84216BCA7B99F18B07FBB67A825122E1EF314CB2034692B0EB8A6166),
    .INIT_29(256'h00F9102DAD039EE62EFD97A308A75E70E9DCEE9DE06BD52F01315E8373296431),
    .INIT_2A(256'h535B4E6DA818F4D9E7A58701BB42FFC1BB1F66C682989905895754E43032A3A8),
    .INIT_2B(256'h5D76E6ECDC2A8314D9141828A0D78FD929C0BFD5D2FE5649BFC617C9A14B31D7),
    .INIT_2C(256'hBA9A839746272D9450E7329D14E828DECDFACE36184A9EA2DF3124E1E66AB3F4),
    .INIT_2D(256'h5F18A4353FFFFD1253BBC89219B50F8358ABC1284785B527D4C5AA283E16C719),
    .INIT_2E(256'h7C74CE3EEA511B6EF25373D8C34C797C5A7F21A79930FB7EBF6542A55C694D82),
    .INIT_2F(256'h7A08329AC9BFA5E38BF1D04D846954314E34B90021D38BFEE3F3E76ABE8E750D),
    .INIT_30(256'hF0EC0064017D85C4CAB985926B2B6FC589902B1E20BFC7DA077BAAACE28A7364),
    .INIT_31(256'h409A43A2E5A9C387F4D02DDC4CD35ABDEACDC185FB3823FE791F71E15FD4EF15),
    .INIT_32(256'h79620B0691411F3E4A507DA509655EF3BA14D02A239824D6260A07B26DA51C86),
    .INIT_33(256'h8530D7AAAA29917B8C729E20D84C32F741FB0F3BDF29E8B22A58A158244A0E59),
    .INIT_34(256'hC85C81420E0D3F882316DEB2CD2829FA8BED3D40F1BD2BEB388BFF3AD7917BBF),
    .INIT_35(256'hC170A2CEDDAF5E1BFEF668BEDFD436F2E6B33C6F846769AE2E7196773D6751F9),
    .INIT_36(256'h0D0E1D580E35978583ACFD714A568775BA6DF68E38A55377481E94F8CF333CD2),
    .INIT_37(256'h36B9CF2D8E094A7F424326DB170F26C4068B1DAF9D86B6A06E854F9B80ADB227),
    .INIT_38(256'h4239C5E9986D6EE388E13F0CBAFC0EE62B0FFE6BF05006C6F9A67B4FC2A71382),
    .INIT_39(256'h74E7658308CB04D803872AA7EF4AE4F618119882622C1E89E21F75F4897A6591),
    .INIT_3A(256'h8D2A9838FC0F88B35E56B5D7A8C156656620CCDC466B6D9C7A51603C75D4BFE6),
    .INIT_3B(256'h2DB98D8F5C39CE6EFDCA5895AB637C44B558DB0AA8E7207366EC2F3F4B0315EB),
    .INIT_3C(256'hD7F57B42B9C96F8AD57F33E42D6367EDC002107FDFC409A437724B7A3047A2F4),
    .INIT_3D(256'h24BAA5B444911A5417671E160F77E02CF74DB4664BB682FEDB00246DA3B03403),
    .INIT_3E(256'hB2DD9A0528D7D1782F8A88919D6FA672FB9C128EAB62D3DDA44D9D79B3B4107E),
    .INIT_3F(256'hABE234A916CE6078C15D18EBB2A45CB0298203130A698E3ED5896B1840A6AE76),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized12
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
    .INITP_00(256'h2A760BB38C6982476F84872C20CEE52624A41F69B12275412A728AFCD993F9FA),
    .INITP_01(256'h10FD55398FEE4434D1FC9BDDE7D49CE959E8600EE498D8CEAA5E90EB834C3B3F),
    .INITP_02(256'hA5B2053A33E53FCF1AB9D65459B6E0D579EDCF0DEF4A2BB8D14B152C238D9D70),
    .INITP_03(256'h33F05D324D5F69C2FA7733DAD0A5B7FDC01A62AFFF5E1223AAEC9DB33E6A0CB6),
    .INITP_04(256'h2CEB40538C4535C865244B2CB4F7EBEDC03F6E23DBF922294F0F228609E384F2),
    .INITP_05(256'h6ECB95E715AB2BD8A27174C5242936D37D710B74DEB067D86C059800572A28F9),
    .INITP_06(256'h3141732C84082A32B761D5B2CCB6002780167806CBD6E2DACAE75E44B7D2A082),
    .INITP_07(256'h6C4F3CB6E27729B7ED072FF48F1BCC3E0E703BFE3890D4AB738AFA24CC66FA5E),
    .INITP_08(256'h72472ECF1BC8A19A71D19688D1BA04743178965736D61EBAFE0C181F5838A9FA),
    .INITP_09(256'h2EA462009EE9F5F9171503E303DD5358903366B3C309B60B784243E85FB74A21),
    .INITP_0A(256'hB7D1125F807E3E370670653689393F3FCF4D5CB5411785081F5C1ACA7BAB36C2),
    .INITP_0B(256'hDDAAE25BDA2C77DDDF5558F8969E767488002ADFEF6019C652FA8B54EA84B141),
    .INITP_0C(256'h592D63DC254962DA7FA3F25BD1E7004243D5A4CC13E451F4108E5E84602D034B),
    .INITP_0D(256'h9CBBC20F11009BE40D370DEF61E34B0EF73368BF4E9685432E7803F67E1320CB),
    .INITP_0E(256'h212C6D45874FDCE748CE2CBA35A74C2AFBBF1430B0CA7AEC773A5EE1E922DF9A),
    .INITP_0F(256'h47B85C66AB85E46E2A1D1FC5D37798895152CF2E1004BB970C63D239F8C42AA7),
    .INIT_00(256'hFC8931549741ADB37878B04512D023CF4EBBE0A404C79511CE551E1BCB589E45),
    .INIT_01(256'hE96504E8C47BFE42B34A75321B5872A3D9BC51D690F0DD111C8357926ABD8142),
    .INIT_02(256'hEA539EFE85025EDB4B2D5028A3FD4BBAA30E423A96A897CF0876877A1B224B7F),
    .INIT_03(256'h69C1A2487A9C0B570D2422A53892D026A0B152DAFF56C2BA5848E8E939CF932D),
    .INIT_04(256'hF602888A2473BF3EA6D884CE19FF541CB617B23E2D41B70B493341012B5C7109),
    .INIT_05(256'h63E37AB8404185A91D25F35A5222A6A3BBB232F273A26F5D6A53CCEAE296C6C0),
    .INIT_06(256'hB6E9274EB4ABAE24A92BFBA3A8416AA5411D8954EB9A4FB54D689C67290DD9A7),
    .INIT_07(256'h89F7898007DC6B33A18D9CC74ABCB00BBEAD22A77A0178BF9D59D1F7B19B7AA2),
    .INIT_08(256'hDAE7ABCEDBC9A518866B65FA9947E6ED28E56D88D196B16FA31A1DC0CA0733CD),
    .INIT_09(256'h8C0263358A8A929763315E5730ACA38FF9E378813237DA5772F49757BD6D3C06),
    .INIT_0A(256'h9724F0B22AC4F1156B3269CFA46EE1594B908E596B67EA3B61B8F43048BF68D0),
    .INIT_0B(256'h4B8D93266E2E8F2344D8242EFA829EF2A12DC6C09D7B050F3F0982DB63C8679D),
    .INIT_0C(256'hA435EA810CA26847F07CBE0E8F2C4E892D46C1CEF965C44C71D47B3FEAD05E07),
    .INIT_0D(256'h4B21EEA0CEF1CAD7BD1F19EB3F0090D1EA5E8CCF9A58ECEF093B4BF0BD75E8D0),
    .INIT_0E(256'h58708196474D331793D9E92B752CF620047282143BE968302B49E354CF658412),
    .INIT_0F(256'h651A52DA6D76A6027764B4A2BFBDB58698F810901B127C502BA393CB1022EF08),
    .INIT_10(256'hEA1BBC4DAB0949530CEF6D67CDA0356A3413B5906437629DEF839545C36B61E9),
    .INIT_11(256'h816CC59BFE283B64FE1FCA032DA3A394CF30B664172873F71961B78AFABE15E4),
    .INIT_12(256'h6AD0CFA58D9D4CBDC77276BC159534380779F707E03FDABFD7E090AAF0457873),
    .INIT_13(256'hAC98C64B8923785A82A467A5736F8AB6215DEC44F261EFBA592C67DE5B805C35),
    .INIT_14(256'h5AAE1DB3A74048769AA5EB0AFF0B3D568640FF1A06579F9331269D92098BA343),
    .INIT_15(256'hEFB676E561267D43C22E551D80833B81D80947AB144EDF775A7DFD3FA28B1ADA),
    .INIT_16(256'hE4545C020F35880F70007154EB4D4AA574422FE87D29E5AB1EA3F78F0FACF06A),
    .INIT_17(256'h8864216B7A36D4CC00B51CC008312A994005B5BE37980204268CC12E36CA0811),
    .INIT_18(256'h757CBD95E3DBFE57461F141A54F038FCD85F8EA1B508387EA5A8C622C41B36C9),
    .INIT_19(256'h1C1125241701229196549A25E66261B74C09AE0428311D64247820F67DBB8F12),
    .INIT_1A(256'h4336215E06AD96C419C56F2DD30F30AF330F5EBCD7D6BD88D96B00F3EB397A8B),
    .INIT_1B(256'hAFDE308222E6F1B985A31B5BAA6FBD88E7BA82B7A98D0AF1B2B653CB3253BB96),
    .INIT_1C(256'hCCF80635F2F3B4FA068A8FBE2F9818A54AC06EDB0E7C1B76A6208DEAC8669D28),
    .INIT_1D(256'h4FA45DE8B8B27435349620545D3841C871A0B920B94DAB9870438194AC7ABB03),
    .INIT_1E(256'h527965A3B8413E53AFFEAD6CA9E8149E5E527879A1DB1B4233F2120B54469F8B),
    .INIT_1F(256'h6DC93E2851910AAAB86CD2BBAEE7180E6FBCAFCA13FE55117A95559E4D130CF0),
    .INIT_20(256'h7DEBCD27C1D08EA4FE31BA1DDD52D59B198F8C8A8360C8A1051FEE08623134B3),
    .INIT_21(256'h7C3D2137EE8A7F5A094CF67A3F545E0F2D4FDB4C38DD7BC41234A9C7577F039B),
    .INIT_22(256'h760AEB8D5E5EC270F6388C90332E8AA88D518E2A0B193651A037990518958581),
    .INIT_23(256'hB1B23DD85F244D9091C2EC14B589EEEBB738ABBF970398A821BE614784369B28),
    .INIT_24(256'hA851E0375E0E57ED4D76BEC06C72A5CC84A91B671C68D25688C7C22B0A3DD239),
    .INIT_25(256'hE535CCF3A862D324D4BE2F00945949F3F4B9D997D48B8674B5AC539506AF7C87),
    .INIT_26(256'h6918D5A9B96B8C9F219B4E36D477C5A283C257935F7C3BE24154C41A4EA8703B),
    .INIT_27(256'hDB3E6381A0CC4B8C12E2F0ACECADAE4F4E608618CD00793021BCCCDC8D92ACD0),
    .INIT_28(256'h1FBA6077F501658E45A8D8DC2623AEF9D712D51939835FA6D04E4C8B46E260A5),
    .INIT_29(256'h5982E277BBC40AFD45204D7DEBA2BF5214F532D6129FDD7D5C0A872778401AEB),
    .INIT_2A(256'hD1B66157CCE83E57DA8D04EC41DBDD5C4EB1E9314810D51FC3D775FF0907AD03),
    .INIT_2B(256'hDF5893DEB25E8AAED961F62E83F08ED7A228A6B65602874F287EA3508225C7C6),
    .INIT_2C(256'h7FC1397A7CC0A3D630E9AE9FD767D0C6588F559D2BF2016F84859921AC50E040),
    .INIT_2D(256'h1085A7B8DF57B9541C19230203D71F90EB248DF74500BA1362715B1D6B2CC28E),
    .INIT_2E(256'h165B3DEC31B0E9BEA6879C6677F32032717428AA3B042A7AEB792165F05B879E),
    .INIT_2F(256'h4E9AE1827684236BCABDAF24A36835E3C8A98D6AB259F8F7321CF33CA929D362),
    .INIT_30(256'h012C725486A3FCBDF43273B3A719D093C9488F1A29314BCD15F1AD30A69A9399),
    .INIT_31(256'h60ACB0AFD20ABE76AC599F4EC81C29E21F93ECF9DC1EFB2BD8DE6D6C03F39EE5),
    .INIT_32(256'h907BA446B403CF14A88DBB20A7482BE3130E57D05E8B9E87F19C51B23C262655),
    .INIT_33(256'hC7661A5038DF6B0BFDE5DC8691EA445BE08A9ED91AD8B9F00655CA80EC3FA536),
    .INIT_34(256'h665836D569EB51277AED36817A58B33003B2129DDBC9AFD234E24CD624ACD0BA),
    .INIT_35(256'h8FD7638F58E6D80B9DFB083A1706388A7FC8E6C3CB3AE16961B2A882EDAD2544),
    .INIT_36(256'h223ACF517BB9F6E4EEF739A7F2DEE1988E1C56871D3A884C661A1E000B1A5F8F),
    .INIT_37(256'h3014BFC3F93F5DFDF904A5907A37D48FEE8060638807F2474B9FB69C5C637A59),
    .INIT_38(256'hB5EFA0D2BD0B782942D79255B7C90D392E3CFE660F78C90A48AE419BEE60B6A6),
    .INIT_39(256'hE88C79A325C2CF2946EE03835ED9DAFCB6FFD51E9C73BAEC73201A31AC374D1D),
    .INIT_3A(256'hBF0C8F78F89FA06EBC7E56C81C7E6CA2EDDC3B6176EB8E12A71D1B883534CABF),
    .INIT_3B(256'h7A026CE19F78E4C19D15DFB02FBA2091A7E790C70B9CCF53D04118B4BAC2B39E),
    .INIT_3C(256'h43873FB94C7C336FA5CB7FE9B1C942091EA567CB367FC7023099336B6C8989F7),
    .INIT_3D(256'h0E15C1AE432614B8194B69ECAF0357A61D636650C7D4D437D3306C356471D3A9),
    .INIT_3E(256'hF3F2207C61E867CF7A87DFBBF700B8D7F83B6B81E77A89544879D55A9CFAF980),
    .INIT_3F(256'h98C4354828B38A35EE72FF5B2E289F045E72582E2B613ED17D4AFE50780AC7F8),
    .INIT_40(256'h5CCEF6BCE23AA0A1955E372053E9E2495940162DBB67D723336C2E90F8CA9B0E),
    .INIT_41(256'hC633B480CBB8E3BA0562868EBA1A492A93FF2823872ADAA0BDCBC4EE5643FE5F),
    .INIT_42(256'h7CBE0BA1C1160E727AD2F09D210B62C5AD8892F43B6FC0C5F26158B93B255BAE),
    .INIT_43(256'h9FD1BE31395FC02394D9467CA416AD691190DD10688A53F48DACD52B2DDB6438),
    .INIT_44(256'hA6811E6D2B371C09E673F092AFAD26676ED40899621E706CD9507E2EACF3731B),
    .INIT_45(256'hDA28C976B0C72720A5664079CCB2709E389960FF0B8B45CB8B2CE5AE41DCA74A),
    .INIT_46(256'h1A4E2163652028F59F5BF11B81E4C737A0A3AA450F23C41F33391CC1DF790DCC),
    .INIT_47(256'hE4E556843B8D4822D33F8A75ED0BC6C11547952482B0D0E55DA9505C4BD7B3E7),
    .INIT_48(256'h1220CE279A0F4EE8A77313FE3539E07455D7123CA725C332A964A3F8EB741EEC),
    .INIT_49(256'hC9C5CC816420E854421F1CA41E68CB86B60C5F480FF62F6BD7BA4698DCBEB3B4),
    .INIT_4A(256'h926A44E071946913C25D322AC65D30A520D3A5A2E9DDC40D83B9D12FE4B143D0),
    .INIT_4B(256'h3BBB303D917BAF94B0E63EB2C66F893C79EC22D27E7B2C2F3123AEF69D00B63F),
    .INIT_4C(256'h281091EE8F0487D1A3B7AEC65D6FE98783D493A79A081B2C21D6C4A48A8E6202),
    .INIT_4D(256'hDA887B61CC651638A6EDB0FD2FA25766ED4D3C639ABF40C51EDE747A56E77D81),
    .INIT_4E(256'h716DFDE9091FCD44DDF8FD474C61DD95AB67AB39AC6FFB7F92852832DF1B7573),
    .INIT_4F(256'hCEC4EEF18EB1472E534503CA8EE506EE74BB7CE4E79ECE5DC542A6302D3B931D),
    .INIT_50(256'hEAC339D249080772DC04BCBBF0C40AC2E00D813CDFC09055AFC7FC7850405C5F),
    .INIT_51(256'hDDF8D4C2548085998B3FB1A37D857F9149252DF14D73F4C7396A2E07D0B383A2),
    .INIT_52(256'h67CD2796636DCC189F87D8B907B17E7A196335FBCBC3BFEBA0325A26733FBB76),
    .INIT_53(256'h5DB17E08D4F3E67EEAEC089E2EBB63BE0BFB9AD8E29100135B86F5158FDD1E87),
    .INIT_54(256'hF2F44EDD042014AD9150FC8106BCB482B4E8BCFDAA83473007018EE72DAC0DEB),
    .INIT_55(256'hBEC3B5FD114FF158C8C9DA9594C7BB70A6F961E0532BF4C4BB980C37453110B8),
    .INIT_56(256'hD31E535891BFA38CA2E8E44F4D386009BDF667D721DD14BD55AF927AC14FEC59),
    .INIT_57(256'hAACEBA6DC202E82329CC513EBD5CDD826161522288B9292707654F29F644CB4E),
    .INIT_58(256'h9B296087FF7560ADF51AD92C5E949043998EBDF574CB139240BF1768B8ADB337),
    .INIT_59(256'hC243AEF093A237E5436C79566E9C2566A5ABC590BD3BCD8607639EB1256ED6DB),
    .INIT_5A(256'h0A54E6DE2A5656EBBFE3D0AB519BEB2EEA265E624D5C3FFDE9C0D2D17B27466C),
    .INIT_5B(256'h64075ADAE78D60D95D9F1B4A5E2D85DC3FC3BBB0C85DFCF244E53DFAE6BF060D),
    .INIT_5C(256'h62301576241C49CD43AE1480268FAFAE2272BEA3B3C5665DAC6BE3A7BC4AD656),
    .INIT_5D(256'hA27EDD63FA2061FB0F266666AA54EA7E8A3C8C59E6CC617439BC0B6053C13A6E),
    .INIT_5E(256'h260ECB3CA915BB1D08951BC57F20A7E8D0773F03511C6FBA9B053F7EC4FF2037),
    .INIT_5F(256'h322A5832FBBF65C881D9104E8B47FD72113C5B17DF2611B89B01288823AE68BD),
    .INIT_60(256'h7560DE3F54ABCD0B22F46F8555F0C8886ECEE966C0682CFBEC86BD301B9A7208),
    .INIT_61(256'h55DF3AC8D9BF4B20407A86DF685CC48FD306BF5C535EB5687F57F2776D732C20),
    .INIT_62(256'hFC7024BBB07C81F522AC37A669E8CD52D7BD285142F191E23F88F0C2612B7B26),
    .INIT_63(256'h89FD469B256B489658F9F254AC8CC47961F537A25699E1AE00B339859FBB03BB),
    .INIT_64(256'hBD766E168DDFF719E51646B45D8811D743579F1455B0894AC9F70926C527479D),
    .INIT_65(256'h292E37B161144BDBBE2D12BBA3D53969C7D66FDBC7BC7A629173B153A6EA7F46),
    .INIT_66(256'hBEDDF1F445C6BAAEF9EC8C4040D80F45BEE4BD55ED39C9987B4710B7DE64B5FE),
    .INIT_67(256'h4C1A7A5E537B3DB18BBDD14A42596B3C3D929616E8A1DD18A5740DD342BCB90A),
    .INIT_68(256'hC11EB02DE5BF27368AB64FB0C88A49BCF4E48F2CBD5305E9C76D2571DAA8A2C2),
    .INIT_69(256'hD3C00515A5D0BBD942CDF7602F28F33C7A9B84BFF588E06FE414C1929A7BA4E6),
    .INIT_6A(256'h33CA868CE419EE29F4B039318D8B48260D776D1D1E9F2F9FCC32CD450C27E3CD),
    .INIT_6B(256'hB257A89E261E01C12CE71E2663F452180D89F58244AD3EFF7620F854FBD3974F),
    .INIT_6C(256'hDC85023400E01CDAE0652053CB8FDEDB25F19AA91EA51431E3C99B4315304874),
    .INIT_6D(256'hA15E2F2705F9BE0569E050F6E1F7EEE698F8E79BA2F229A60680AF91CF71DF7E),
    .INIT_6E(256'h111A1A3C605BD53D2AB3F9C6B79927A397ADABB08D1BD62054DF188B5B6C83D5),
    .INIT_6F(256'h7320B6946B03590768CECD30BED8689DEB40A014D54446F6630EAFA5CAC98B75),
    .INIT_70(256'h6F87EF15879F660611F2D475B8285C78CE8FF5E9B21E6A0DBB0B538653E9BD36),
    .INIT_71(256'h5E94E63BBD59A18E251006905C764000901B7EDAA21C44B08F743E94D5D9B8C8),
    .INIT_72(256'h49C079EE8A2C90EC75FF8405A3A8BF90FAF185F7EE2CEBA18E42D7E04390326E),
    .INIT_73(256'hA8C88AF32D962243FFCFB9891838E137AF2882812F774FEFF21E9533853BD5DF),
    .INIT_74(256'h9A7B35D84196F52999B48437D0D899E5A6D59370FA51B6E1D376F9AA68359241),
    .INIT_75(256'h98A7E73ED43A74BC4586AD372D57B4E213E43FBD7098417210E3B0E48434E304),
    .INIT_76(256'hD036692E229EC86F059436AFB987C38C3ECDCCEE7581BD8CD7CE2D47EAE73C98),
    .INIT_77(256'h1A4E42662BA925D1DCC2CC617F713F79F5291B28767E10724ECD72DB4539AFA7),
    .INIT_78(256'h024B69715013F4294BEEBE4BE5B8B4A63D10EF32D1B3C01140FD03D0BA01647B),
    .INIT_79(256'h9592C2669F9A762ADCB9BF3F7707F12148E49F1E1BB75CA4F51E3FF0B26C7208),
    .INIT_7A(256'hA5489E335EC69AB2EF017598473601D4282EAE469C139B33C6D11F845D138FCC),
    .INIT_7B(256'hD89670D33323D827825F7ED122F10E4D4408470D019E6BB01B4E44736CA1FC26),
    .INIT_7C(256'h234853E84BB73EA67F89D1730CF2A14094ECE803705AFA09DAE01BECE5A189F5),
    .INIT_7D(256'hA5D1DDEF7C5FA7A9872CF073C5F870FE7A913E0B5CF0ECC6211A09B250A817DE),
    .INIT_7E(256'hA8E8B3D8270EC783F2F95721712D80F5AB4EB579C967D8C14D8DED5F8AC5B82F),
    .INIT_7F(256'h3A19259F0BEB05FF61DAB20083CD310E613F95623E04B68D1FB82315B5AADB31),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized13
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
    .INITP_00(256'h1A8C042C819ABBF64AC9E558FBACEFB3842B7C89C5B8610B20E3E03F287529FC),
    .INITP_01(256'h4F7C8B9DDF7F1ED1B782C05AC9BA4ECDDBA893F04923A5BF587A46FFEF14748F),
    .INITP_02(256'hE0C5AA8283092FCE35E28DB4DFB332D65B372AC75DF8D535331D1B817303E575),
    .INITP_03(256'h716FA1B4C28E7CEA96D2B122DF25A356AF89A6171C25ACB646B401F9EEB55222),
    .INITP_04(256'hA8EDE4B25E7D3EEE8A441B78CE9EC38A264364D9B3B087798F312E8257969DA5),
    .INITP_05(256'hB31F1F40505204AB636B26930F405FDE5C6CCF6EBBA322A849D39233746CD9AB),
    .INITP_06(256'h50E47A95CFE2DDFFDAF721930845FE1E2332834940F9145715FF3CF205D4970E),
    .INITP_07(256'h474BC634E22DA9B449680D90C1E6CCD91238F04E60F66D57FD3B3A5573AF9A4D),
    .INITP_08(256'hBEF3DF01A78D1B0AE7BBD3DD19668AD58AEABA6E16F0179810E7CD98CFDEDD38),
    .INITP_09(256'hECEE3EC65149949CB9B3C70439E178C4389A8A1F13EC0F5B269E2F6469A135B3),
    .INITP_0A(256'hE2440A3331EF56F68829554D2A30875758B03C36E014284485B6BF88C3CE9861),
    .INITP_0B(256'hED4696D080E1890C95E9E5996DC36DF83F40B6C991E3E962C82A5ACD6BCA8766),
    .INITP_0C(256'h8B65D4BBBC57990BAD93672C527F41882D8C89D02F5ED4BC025BB2FA1E1B1BDD),
    .INITP_0D(256'hFC5BF9C6616D1F5EAD3DAB51BC5B344A9DCEAFCBD725720B96E189EB68B0957A),
    .INITP_0E(256'h624BF1A745D9BE3D9BD41CBAA20E63257636DB1CDB9417F9739CD1B6755EB5D9),
    .INITP_0F(256'hAEF73F07792269BA3309D02F3A1A48C5C1F542DBBEFDE90969C5FC7CA01550A1),
    .INIT_00(256'h887638245803E58E8972A094021C98A44C68E9B5A7B4CCC7B8A9880F973D0B24),
    .INIT_01(256'hA509A56360E5083CEB4131E9542A07F1C61CB50056DF24BD38BE9E27B2D3A8C2),
    .INIT_02(256'h9A52D826927FBA09DFC4B8E1A5C46903A26553AADEE3B75544C89D7EFF0FB05E),
    .INIT_03(256'h99D2E9FF9D1875711D2BB1F022DEC5ECA35B388648001FEC62DEB11372851057),
    .INIT_04(256'h1212A0A0996C85786EF8AE3856DD5F118BD715039B0B41AEA83ADC103988EEFF),
    .INIT_05(256'hBACA2487D42527A2C3332812074B97D5B0177069B986C11A4932B33A32FB0DCE),
    .INIT_06(256'h3FA270E56B95A77FE573B8A0D4F10E0F5A5DB32912179E87710B9BEBDE711D9E),
    .INIT_07(256'h2779C3434BD7A3CE5533912A74820339C7654AF9EE5319599AB5678C46CADF5E),
    .INIT_08(256'hB6022E0E381F0E653F3D4A131CE1B1ABE5BDE1685965E21D819A9BFCC0AFC755),
    .INIT_09(256'h661167FAC0BAB79D4550F90E5C6A2C3E83A096E341445353316AD1D5BFFBF9B2),
    .INIT_0A(256'h3C4A9A92F23094CA38CC2191F887678A2C7B95F043EE22F35BF271471DEF6445),
    .INIT_0B(256'h0C78B9362D3411DFA545ADA06FA89F8521DEA66E4C5BC402AFE551A5CE301F4D),
    .INIT_0C(256'h9B5531ACD176C728DF6CA7FDAA90A9521DD36FF5409F4824AFD16DDDA98ADE25),
    .INIT_0D(256'h36431889A34A120C38E26A210D848937788AC89E23220C7C6016013FB1AE0287),
    .INIT_0E(256'h51201C2E0B1323FC37CB81EB7ECE8154E5E10FA0242C6D428367691CD3446BA1),
    .INIT_0F(256'h7B6B3981EAF71FE8F682ECCF173966624C6A3D29E6D556C6DE3DD572D870D4A6),
    .INIT_10(256'hEF2F1F91F19081761767E498CFF5B70B9B419C3124549B02B223DDF5EB81A018),
    .INIT_11(256'hA8A2CEA5EC7F5C1D05ADA96413D698B2D6D9BF35A28622E4357E1798B27727B2),
    .INIT_12(256'hC67F7A33D77F594E2A3E78FC14915848F8375219C8BEC1AF494BEB1BF5157F80),
    .INIT_13(256'h4185D4CF4536BA832077411B78EEE70DDE1219328679CA7D305BE1B89F24D86F),
    .INIT_14(256'h0E688D545926F6132A027F3ECF832D01927FAF36F3A163E11BF18CCE3FA9E2FE),
    .INIT_15(256'hCFF6CC80B7789ADD2901598B667CD94FD8D789094D3EF81AF2891951E0F33CE2),
    .INIT_16(256'h0B0A95741B1977FA0088035F6567381FF00469F87BB666942FEF37B5D827A05E),
    .INIT_17(256'h8E44D97B339665740505AAFB532BA98BA38D3AC695821D7FC87B3A582069D1D4),
    .INIT_18(256'hA1EF9D3BE07F1CA4111D30D78D9886E7BDB24D3C0A757B0B51EDBDA04D1636C3),
    .INIT_19(256'h71D0CEE6DEF8FAA4C8BE6A9EA4AFC2B8E8B39F39C5A1AC02381AA2F443B9453B),
    .INIT_1A(256'h1633C6FA2F8D3264E5F7906A04594723DD94020A65C6BD7010AF4CC8DDDEAF73),
    .INIT_1B(256'hE76F788808F38E5B34C9E0668200B5CABCB8698388D516678E42F626A80BC509),
    .INIT_1C(256'h3EF08F14DCDF5F25AA128FF35179F194EE5ED65F38821C5C53C1D4347E68DD50),
    .INIT_1D(256'hD32B0D62746574F3B9888516678324ECF55CC7BAE1F8B089A7F43114AAD6AD46),
    .INIT_1E(256'hA9B5B4A929E0379E118692011F48E997449C57C38B3F3D2917FD3E9DC46A9A13),
    .INIT_1F(256'h779B6AD6569FCE23CB726465130546FCEE1A7DFC9D94C7F16B5F9139BBA487C5),
    .INIT_20(256'hAB06DE5311B3320BADDC9286ED0DE46156BC2FD134C3FAAD8101211F2E1F1BB7),
    .INIT_21(256'h5F050CC9C20A7A2685087AA9193132DF31C84121DCAD3E9E5CE7996B31C23202),
    .INIT_22(256'h70AF0B1A95CD594733CCEC5E17A8DB1D91D3C6DDE8434283BB51E806269D1B80),
    .INIT_23(256'h74490DD4091684751DC14BB069BC5068A62E00AE5DA51BA1713AB12FB6B40983),
    .INIT_24(256'hE3DD61B52D81CCB591C5A4A2641FC54A3150F90D9EF7D6BD8EFC656D81342581),
    .INIT_25(256'h69F44579C1DBEC09E17F38740AA35A661B01011D69412B30DA3636093FC0C6C7),
    .INIT_26(256'h1570B791C013DA1A35166CA1FAA533F60B18077039F590760EEF813FD55879C7),
    .INIT_27(256'hC005AD7DC908E36707EA467FF2876E7D190A6372D3DD8D60C055631B2C4C99F6),
    .INIT_28(256'h8B4B64B14CFDDB1FB21E39E985F2948540646381DD832C9CEDE8CA1B203B2009),
    .INIT_29(256'hDD7F5FB5353C0DB2533C621FFE5464037DB7F4F97DFBCF318A4889D9008B1D63),
    .INIT_2A(256'h0C3C8A8FFD11D32018FA99B4110FFCA91A0ABD4229FAD8ABAF963E22890C556C),
    .INIT_2B(256'h07A35D02522F741A647590D87832143A95A5A37740915466948755E6C1D9B597),
    .INIT_2C(256'h166D80E87317480A3B33A0142DFEA31D277A93625FFCCFD6366EAC1EA394DFD8),
    .INIT_2D(256'hE73627E21BA22F377E92121A9CC47A5F5180CB1EB356AEDDE38C56986099FCB0),
    .INIT_2E(256'h4BAA0D7999082EB22A73FA11F84FCB9DF778F612A43136689A589BDBD9D2EC28),
    .INIT_2F(256'hC077A079E09CA06F11E6177F2B6039A9A1B4BEE73610AC7C83EBA476881034A6),
    .INIT_30(256'h7E15BC2A2FE11F364A943FD1E2249A1D913EC915B3276C5F732E2B843BAC9774),
    .INIT_31(256'h85E0A73C34B80CE7348281F05754AD9CA22CDF70E9521B27544FB95719228A37),
    .INIT_32(256'h9B83AC2D0DA599382C89CEBF91AB23E1C9138D05B5AEE60A005E4ECA7A5C22A9),
    .INIT_33(256'hC973DA429ABE67BD2A5F1A822B4A4E473AE5E12482A5660CAE2942C6C9DBB125),
    .INIT_34(256'hC1C212905C174002E55875848B3D252E6BDBE0F1DEA696D792DC857626573918),
    .INIT_35(256'hE221B2E893EA006F1AC7ACCD7EB1A4003E8DE780F09980893EAE55DE02D38CE2),
    .INIT_36(256'h6C9F51535A10179C2FC2733032CD25EC134D4E1A3A48814323917DD04387F00A),
    .INIT_37(256'h6EDC6F990A4DE770E08B0B8B0990B139DB189D5A5055CA5D9332F310BF653B2F),
    .INIT_38(256'h2B1C06E1477FDE1A16A20F6EF958D5504C2DD072EF04B1178F358CCB20C04589),
    .INIT_39(256'h94481DF51BA4DBC69A0BB40AB9327FB46773886F2CFE04DC304FD68365250D75),
    .INIT_3A(256'h4AD3D208E4C25FD4363F6295FBD3E2DC9DF234191D311AE2C3572690B9CCE297),
    .INIT_3B(256'h6B4A3064CC818E38BD0D23DFE877232C2178189F67FBB9CCFAE239BF087E52D1),
    .INIT_3C(256'hC4A74D34ACB877F439242664F657F8744060A05942ADF2F7D91E4251745F91A6),
    .INIT_3D(256'h856CE0B8E690C261862DA41A2484BF3F779414E2D9F5443D913A958C51FAC7BB),
    .INIT_3E(256'h41EA3E822E7B1D19A684DC810533C2FE9FABCEF8DD91B9884077A77ACAC27805),
    .INIT_3F(256'h54400BA00655C48CEF35AC97BE796C1AB27AA44CA7CA694FCBD75F18722EDCF4),
    .INIT_40(256'hC743E4F8AB6061B9DF5A9959DC7F2BABF1A00AF6B3425178D959500389895679),
    .INIT_41(256'h1CED2FA227F9F2CB9FE7E79FF3751F409FA4A8A591951C8151615329A54D6029),
    .INIT_42(256'h803C00FF3805286E0B5EB1D7390D6EE7C2546F308ADC120B2D6A43F586CB8609),
    .INIT_43(256'h1C25056A3F3FF7E7811B06A5B91E376A14550D2348157D74734360E12C1E3A68),
    .INIT_44(256'hB727D66C9CB27FC503AF058634A6E3CB7EB77AC1373FC23B0C22794C2CEE6926),
    .INIT_45(256'h0A38B6668A45BA1D48404E1424F20A153C8A8036E58D34633216260DAA5420E8),
    .INIT_46(256'hEB2771893C7463CA0B200FBD62FAA1F4980A4713B3EDF67F806331CFEDE7865A),
    .INIT_47(256'hBF3D0DD77081245116D50CDC8F2DD3189541074072050C1E8551E0EB096142F2),
    .INIT_48(256'h2369E1D40B5361F69C7E262777A754F98ADC2FA22725B4E40C0550C62BF4855F),
    .INIT_49(256'h4B9EDB8DA1D05A6583EE482CCD97C269AF751BCD96BCF0724E0B06513A02DDF5),
    .INIT_4A(256'h9C564ADC1C57887E0BA7180C8464194E86877D4BFD88817619C63771CF5FD527),
    .INIT_4B(256'h6F23B8FEB85470D5775E188706858C74410F76023B29A85A4E48E11356C717C1),
    .INIT_4C(256'h1E0D773414D7EE4E6A3FC6F5869EEE4FEBC55CACC64CDFD5F43F64AD4A461267),
    .INIT_4D(256'hE81A1E662E43B241640FA8647734BB79AC43F20E83E632C1A5E56A8BEA806340),
    .INIT_4E(256'hE3507B426EAF5C3014AAE2F62ECC505C90E0F164938486BE339371D93B0C9C92),
    .INIT_4F(256'hA4EF70D0FDB9563BE6381DB14859C23C7FBE4714C68719D5D6F097BCF1C2A369),
    .INIT_50(256'hA6E218635073DF74AC795A9A9006BAD8BB31EB3DCAFE0D3F849D9CA28E8466B7),
    .INIT_51(256'hDE2C5F42BDA68B371CC065413F10E3D9F709D12453DE9ABCB12D269D185D4F05),
    .INIT_52(256'h1060E2E4C6B38F38509BE160451DCD66C9109BFAF06D82433674C09E042A1DB2),
    .INIT_53(256'h1A71883DE5ACB0308A9EA31B82F0B5D2FA27D415BB2B2311B414734284EF7FA4),
    .INIT_54(256'h44596C9CEF6834484E35DA0CCFC17F9E11F42A630EA07E8EB6C757E8B98BD7A0),
    .INIT_55(256'h2F4DFC4C0261D69E304650713ECCE04728AA1A4FEC3026C55D3DD30587B2D353),
    .INIT_56(256'h9605A3A681E1B31D97EB6C9FE3375EE36E00E0BA7C95DAE11CF3B01C43F23AC9),
    .INIT_57(256'h3D3DA170AFFC9F9C3B2FE2324B9808573395FF610E378257E804135584E573E5),
    .INIT_58(256'h7B1A54A416D04F1B1FDCC212A3C0BEAC70A1AADD895EA4BC1278E99B7B005FF8),
    .INIT_59(256'h30FE145050CCEA0225425D24C4A84ECC921D790EC797BEAEDA092B3E8BF80AF4),
    .INIT_5A(256'h0C307C9F1739D9C7162609FED902E30E7501226C2FB564B9512111794F26D729),
    .INIT_5B(256'h84C02AB47EA9E0A7F3065C3CEFCE62743E39FEA19E01DE1A4529D33EDD9B4D56),
    .INIT_5C(256'h0606E738E50DFB2F11CF07E8FFB4923010D2114BB1D4040D87D226920EE392F9),
    .INIT_5D(256'h53E98792826D922050DCC5DB0E4CF23F5FF864A537BA6C39E20D2AD6BF0F41E6),
    .INIT_5E(256'hF370027FEC78B02F55C5ACE7CC9A578C06D042DED835C9EE14CC81E713E85B68),
    .INIT_5F(256'h743C90407FB10A35F4D2AE8A2CD210643879EFCB69F17DCBEBB941856FADCF22),
    .INIT_60(256'h8AF4E5EEB2FC8F8477629B505BEDF5847BE79B773392C73835A994D868CA946F),
    .INIT_61(256'h7879108D8FF7A0571F5D294BECF0B23A9BC78C77DEC7087E576EB074AD287F64),
    .INIT_62(256'hAC2635234815C59DC976243E5CA7170C56ECD502E740506EB246D847E19D5C19),
    .INIT_63(256'hA3B4E0CE3ADCF503DE4A2F6ED930EC5DC1974F12C2D4977104CE9A21AF886662),
    .INIT_64(256'hD624384A97BF60B0B797DC5B1F444CE8E5D1246EDD95D699C3B6D9095F3875D1),
    .INIT_65(256'hB5A9C81C1131A143994C9EE74090A96F1F3E74632E29ADEF35AAF7F077F5BE08),
    .INIT_66(256'hEF9466B6B34022775A5D78222A11DE98440355CADBD6C3B1676521F70654F034),
    .INIT_67(256'hCFD62A53E2D03AC2B5A7322FA77E074DD332C674F0080DAD175AD56F595823CB),
    .INIT_68(256'hEBFDC3980BC824C9BBF9A44FE16779F94BA11295C49A0F227EAA34D2F35C1D51),
    .INIT_69(256'h12A50E5FABD74F8B044C7197A949B24447D43E288165719A55C929F55963B84F),
    .INIT_6A(256'hCB67CFDECCF7861E0AE41C22C6A80530B69F8B87601796E4A0F13BA52556EB06),
    .INIT_6B(256'h7E243488C437C43EEB6637610130E15B603526520CB68ADA9E9A0A3DDB9E504A),
    .INIT_6C(256'h58E707B802EE706FB5675BE5C0BC539D9DFFBD6B1696235FD7C718C7DE1113A8),
    .INIT_6D(256'h30CD91E062AB92B5B8FABB6A5C675798BB68D8BB99CBD651FC59067043C729F3),
    .INIT_6E(256'h23B3EC17CAEB621C7F7D90FC3BD1BB89EB2CACBC02898816E4AAFD192A9079CB),
    .INIT_6F(256'h2FC2CC953F39DA35D7AE129883102751D854DB99212E0F11E3348DF465A7D778),
    .INIT_70(256'h8BD5C4B9574D644C6367032A48F0826A6483A6C9C259B2F3DCB6919B62335D69),
    .INIT_71(256'h95D9F81C4AA6C66AD6ACAC5AF7A5BFAA666C09E02438EBE5EFCE80F0E222C0BB),
    .INIT_72(256'h5CC64F8F046CE70DA77B1C45C20275D46FA0D9618EC001DD34D4950C8D0966B0),
    .INIT_73(256'h9AFF6DD5D127CE11440CF1E4D1CA8F552B4F209550C35B6F4AB839CC2367FD78),
    .INIT_74(256'h729A49E78967A1C01101C545E96D9DEB5C9898DA0B0FCF88BBE5C4B1FCDBD3E2),
    .INIT_75(256'h4216910C5E3B03E638533FBDE78CDABFF59357721C531FE3FD240A2F758F59BB),
    .INIT_76(256'hFBA77F057C1DFE53E94756DF64304351E22C14E8DC5097B9103AB385DFB6305C),
    .INIT_77(256'h6D9929C5AF14387A89BB48445155CC189B4E8624BE93CA54EA07AB46D190F050),
    .INIT_78(256'hF2A01703AFACAC62FA50829EC298A7126ACFFA2D25C14579801C5C7A51F33619),
    .INIT_79(256'h2898A62FDAA8D7D97A4893B2ECD92D0FABA4E72A0A3CC7884FF39E2049709D73),
    .INIT_7A(256'h4994B4E08A87E6CF2E63C531B68DBE2DC754EA7A5E98D7B09C80583E3B5C60AA),
    .INIT_7B(256'h82DF0F9F127169874E47BA5F58E6BE70B5BD5091196C90C240FEF7748B828465),
    .INIT_7C(256'hF1D2DB2FF766699E23233DEB60D42AA31893E5E9A142696C543032B6946CA63F),
    .INIT_7D(256'h2BDA8E0F089D7C88CF68349DBD5EAD1735840C87E3EBB2E1BC96471A49B8FA0D),
    .INIT_7E(256'hCC8C2483DBF0888DF65E9E985700FE8B5CF841743F4894C02239469FC59B84B3),
    .INIT_7F(256'h564634E5EF445AED7770967CEB23CC3D3978FCD862658DC041E02C41BAD02141),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized14
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
    .INITP_00(256'h47E021C7DF1C5419889973F780B5FAAD63F7811CD5E82088A2E765E3F14805F5),
    .INITP_01(256'h0DFB70B8B17AEB6354EDBD2BADB4F2386D02F2ECC2950A76BEC5EB19B698AAC6),
    .INITP_02(256'hDCE72536468CE062127FBA17B8189842F4DAB20BED1A8DDB6286421BA755DC3F),
    .INITP_03(256'h03192DD9289A5EBAA5D63F1E77F95182402F77B858332A63BC8E01EBBDD45461),
    .INITP_04(256'h7D7012997926A07A2DFC966CD6568F498B5EA591C1A826CEBA5A7CA11375A3CA),
    .INITP_05(256'h57E85E00AEF2E3DE7A515316BF40A9BF1B6B9CC257583315EFA11830550AC75B),
    .INITP_06(256'hEED6FF01873FA1A180EA69B14E69977E6CFA55CDD868C7CA2D4EA68947B56908),
    .INITP_07(256'h1C20A7CABB698990FA00B76E45AA749AD0623731975CBDBFAA44DD32D91B55EF),
    .INITP_08(256'h226A98BC998967021DF48F989E9C70C0918673D64CFB7CB4ECEF04E4C25B5E91),
    .INITP_09(256'h85E5490CE7601EBFC16B83364DAE0AE02E86048ACB764CEAE889C914F2008599),
    .INITP_0A(256'h4AF868499011A1B1395F182556C460CA996AFC094942E0421AC2B85CA20E61A4),
    .INITP_0B(256'h4824AB8DFB46CF665B8F0D2A90F1E7C290CC364F6DBF3F80CEDC7E283A6A22DA),
    .INITP_0C(256'h4CF11E9E988FC575F151544FC049B9681BA419C6977CE85654E5B117A87746A7),
    .INITP_0D(256'h4F4BDF2B9D77C799A6C337E5FC5D59916ABF13C47D620DCB2786501C3AF40037),
    .INITP_0E(256'h761B5C8403975E6D7802A30372A234009C9FE8415DDA81B5FC9AF7D1D6C3E8C8),
    .INITP_0F(256'h7443EB60CAA418D1A46B3745FA8AC4E5F8EEC6E4554C0E8408C73AB1DBDCA44C),
    .INIT_00(256'hEA1FFADAE7E10B85F87FECFC14EBBF05DD64173CB30595E56FC4FEEF02C41BE4),
    .INIT_01(256'h5E4568DA44A186D7B477A93847124F72E00B4005136418E981E277895FF560D7),
    .INIT_02(256'h167002C10396D9F30FC027BCA7C0863C3D0007570A2918CD911734D7AD8B57EF),
    .INIT_03(256'h9F13A36B84C5779EEB41F20744A7C1CF475FF58CE922EC140D7466B3B42962C5),
    .INIT_04(256'h10F1C102ADB07DC2E2CC81E43D2AA551C3587AA38AD75A2608BB27B435ED5948),
    .INIT_05(256'hD8B33BED08AAEF8CD89A404D47C3685DC43866E30D3770FB63A241A117941F71),
    .INIT_06(256'hA4F92697EF04138C3FF0FA4BC5EE22AB085344F979EEC3098096EC4A9729E98D),
    .INIT_07(256'hE643B565BB98AE98B6ECD9C212E1923022A20F7B4A4E2472A243024278094C1F),
    .INIT_08(256'h66EDE3574ED05340F69BEE971D86809DFEDDDB04C78A74E1E03EC70997B11C7A),
    .INIT_09(256'hE5A06127315B40844935360ED7A31CAB3B3D6F19E130A357811E89121DD9FFF4),
    .INIT_0A(256'h16E90C3F2C9EA23DD4DFD4B2C26F264418AC8E7A401340B1208244C532E9A827),
    .INIT_0B(256'h68CFAF7DAAEF02410957569CFE13501CBC72573F9D3A986455A22E7E9919578D),
    .INIT_0C(256'h1AE1247F2867158A62F6E1D368FEEE433FFC89A2C813DB921F9FEEAE4AF2950B),
    .INIT_0D(256'h182D0D3151CDABEABCC5549863171E77ECB4D30E3729EBFCB76E3D36AF3168F7),
    .INIT_0E(256'h5180E26BF46E1ACFE4CF2953FD79F3A63E524D5959570425617AF67AC8F0738E),
    .INIT_0F(256'h9EB1778CDE297BE37A1A34943A8F6012B82F1A1DC50A5E1F07D9E6467AEF7550),
    .INIT_10(256'h9C41E69A3751B748594EE601114BDAD8EA2FB7FD2E829B01A1F43F9A14C039D0),
    .INIT_11(256'hA58D61C2000D192C77A0C508221A190FF876F2E7EEBA1E040EB419CB2B9A7C9C),
    .INIT_12(256'hC7C34F633E0D03ECA86AA6C372E9291F8772943A525A437650561DC0704E4E39),
    .INIT_13(256'h7E180175897D07BFB4F5DD0960860A85A4EF335F2BB9BA943F07EAA10907C5E4),
    .INIT_14(256'h60FBA71E13714D6BA6A7DC67045E4517614882168EEF5122307DBE3C8A7C2412),
    .INIT_15(256'h5F592C1C2DEAA12FD288836EA6D4244065C4C0BCF8432A87F40A36BEC9ADF691),
    .INIT_16(256'h3029451322504D9718F8B54CB1091FC7ACCCEAB5FDE751A181D6EF4DD7BB3834),
    .INIT_17(256'hC7F7BFC5AD4324B1B141C24603401FA220533A9729870B54A1722BF34D642426),
    .INIT_18(256'h8D0E3D13DB1C8B6EACB4D2FBB849A15DA8E5CB5501667283493F3A2A69C1357F),
    .INIT_19(256'h6BB94DE06D58FAF8C570EB21AC5C3161FAE82FE6D7C75491777DA42FFBF906A9),
    .INIT_1A(256'hE5BB9183DFEFEA993071A7AF82AA95A72281B5A35F005688585980323DC8F7D3),
    .INIT_1B(256'h0864EB478DE25B1F9DC79F5ACC23D757D5B69E4588EF21BF065FCF68CBCE4DC1),
    .INIT_1C(256'h460375C9CB1D69399A44688FC467B39D668A1EE84E585172383C61126C435B53),
    .INIT_1D(256'h0A9C1FDD84ECB5553D64CC43409CBC45B4784AAF969D48D3094FE38F0E611DED),
    .INIT_1E(256'hE476F0531FC96B1B6D57873466926A478F9DA94F9CAF2A21A5968E51EED24EA3),
    .INIT_1F(256'h553D3A1F56FBEC98BCB6837A6D6C6023C7C98A64FF3F76B77A465DD918CE44F8),
    .INIT_20(256'hEAF91867D45835FB0E107CCAC9FCC39F5E626474EB01A1FD5C9D3954DD59AE13),
    .INIT_21(256'h255A3EA1B8E9FBDDD1C979ABBDD38F371632268D9824E2BFB2566AC1B8C87803),
    .INIT_22(256'h45DB9BF9ADB82BB60915B7FAF0ECF8C4004B8F48F798EE26B9FE7C8C4A258DB6),
    .INIT_23(256'h0BD19E8D7945A3D04ABD74497D1A15AE7641EAED6C1D7C9AA4F39CA4EB731FC7),
    .INIT_24(256'h54D9FBE729C5676D1677F1C532019D471523C0A1E38B3841A9E8DD7728AC4B01),
    .INIT_25(256'h2955D4D4C69E87761F89CAB0DEAE8425AA3651E8632E1EBBD68802AC7CEC5DBB),
    .INIT_26(256'h404A7AC2AA6100C93A97DC8EE01CC2EBB46973DFFB97C401A11A8F492E871C80),
    .INIT_27(256'h5FEE9B58E85972BC777CA0F45A522BC0AB0186FE3EE077264935D7FE5F09C03E),
    .INIT_28(256'h1F7447A2C07D29531DC0632C63E108EEC6213EAF71FFF5A2C44D57A44D9E4293),
    .INIT_29(256'hCF69AB5AE69C596261DA6E108752F223C19C5D18F0A6B868582F7624906B3527),
    .INIT_2A(256'h68543C2AFE03A62A9DEF8EA50CBF02B567259E5834F04A955E8FD7FA5BFF8F3E),
    .INIT_2B(256'h155C248E4DC06928A251EB0EBA894EA2A0B95B7A66DCA200FEA85BCBDA87CABD),
    .INIT_2C(256'hDD4C8D1B9D611F5753D73D8715AD02609A989CEC0026F77BFC9F707F0611793C),
    .INIT_2D(256'h4E68F691ED61730EE58C70B628E14EA28F2741D54E83DC11C65152656711FB5D),
    .INIT_2E(256'h462D24AA96593AC7EF72F7A26FCDDCCF8B14530232AD2E6704F80538B55D3467),
    .INIT_2F(256'hF11428C877EACA41F4679C193000C3C4E60C34BA256AFB21997AC5FCF0728651),
    .INIT_30(256'h2F695084EFC1238AC038EC82F6342020733F32539EA09DE5824212F663BBEE05),
    .INIT_31(256'h38D09737B1C1D662EABC142A73938891D0AAE67DB8D0E77053EED4750482152B),
    .INIT_32(256'h2A82A7F1829DB7264EB9E5E16D5FEAF4B0039F3D6111B458D69454DE923D3785),
    .INIT_33(256'h4CA244710A51B48F3CEA30B694DB2D22A2DF063009B7DB8200794BF92579BB47),
    .INIT_34(256'hEC517B6A6D358BDB3430736AB6C025B596124CEDE7CD6435B3D560645D30445F),
    .INIT_35(256'h2233C0F451CCBA25B091922B2497082A94713DBA4DB0ACE8F67B7692C7D21B59),
    .INIT_36(256'h97BC25B1F0AACC6FF1F676DB9025EC52EBF704E621D03848B82510BAE0888E61),
    .INIT_37(256'hC85AE0010B99EEC26E1DA5F3186922845F3BC07B86B02E4EBF8AC9FAA02EED79),
    .INIT_38(256'hD3364D560752EC13A5E576DF13A057DA73367E071AD3594110120810FC46073B),
    .INIT_39(256'hC1F3A2B33E1F59FA2F3C974F945F5F76E53B5E31949AC75D87AA6365A6B3B76F),
    .INIT_3A(256'h4C0B9AD824AF8E48B6654ED60ABBBF7A7E9BF8C02CBD899455A13E063AF04C84),
    .INIT_3B(256'hFB3385A1EB975C8B0118D784C4F7FB9BB79474157D3CB9762994A6D796A056A0),
    .INIT_3C(256'hF56CCDAAB383A2633EE8464C255511DF5A14238A303071DA61D8ED577C54EA9D),
    .INIT_3D(256'hF8FF4D2CC05C57BAA8D01A21A10D4A9F5D6A605212DFD375322FF43BDF2F07B5),
    .INIT_3E(256'hA7B6CA8800DB7C75E099D79B6EB186BAF4C43E9B4DAEC4987E688213C68DAA50),
    .INIT_3F(256'h719ACEF312D55C76F0EC28A5E6EEB02C5EA37E3DE49E77B0E273BF394A9C0254),
    .INIT_40(256'h8A6C0F246D105C30AB9864F9DD3EF0820CE80C9BF45AA8481B721B4B3A932415),
    .INIT_41(256'hC53F40C2700E732FB597C223FCB0764DACB4808D4F02712E5858EDE6BAF48175),
    .INIT_42(256'hA8B690F49158504858C97ADA5D3FE39234B08F0A6FB279E738194E856C9748E1),
    .INIT_43(256'h04DC2BB88DF1ECEDC5F059EE9F6837D9FBD5106E3967B20082349D7DA997C3F5),
    .INIT_44(256'hFF547CDE5028D3D62B6704F6AED172802ECA9714D8F4417EC4D06BF60D37A489),
    .INIT_45(256'h6B022F168EC2B1DA2E4BD364C157C7E1F6D4313ED5B01243C3B8B2577EB7C57A),
    .INIT_46(256'hFCFCD6A9A584348668E15493F0597232CFCE4F4818445C03FF81D3CA41C80721),
    .INIT_47(256'hBAA1BAB59271C4FDF71199158B6455A249726312C6006E748403300CEA33243D),
    .INIT_48(256'h46EC63E4F89ECD1296B3A184BA679EB33BE63BEE3BA26A0D920C4BE538C3C894),
    .INIT_49(256'h4D28A4C0842F42172602A30BA7C3CAD8B951110C13F763004B5E21D7B0D0F1C3),
    .INIT_4A(256'hD1660C9C5DCB9FE779126AA42D5701210DB9D9EB753DA664AED8A33D966FF27F),
    .INIT_4B(256'hA1D5518B903C0B9F2FCC428BE758F7E5B7CA08960F2C453BD92CDBB703413410),
    .INIT_4C(256'hC064AC989FBE1A049B60DA07FD5D3BE7EAEF01089D9DDEDD5045B5C8EEAF2AAB),
    .INIT_4D(256'hBF8F66CCE3DB49A114762CF717DDF272846776ED7561EC7E835D9F054F25D744),
    .INIT_4E(256'h0E3B5ACDB627E3C6CB157DC6CED54591A1A8E8B4343856EFDA56FCEA5538D1D1),
    .INIT_4F(256'h25C5006E6A05403ABB429DA5957FE52BED8033320DCD6CECFD7EACD56CA6C6C7),
    .INIT_50(256'h570B4F32399B372456E3E2010F7467EA9D5E079CC01E55B6FE4AAFF9D2324925),
    .INIT_51(256'h21D22BFD2BBF353CE53869A8C28E77A1F6924C0DD659BDC0C115B2E1520C4522),
    .INIT_52(256'h83DCAF426C632CDA0D3C3297A4169418355064768AAF1C7682BED796DA2C1B23),
    .INIT_53(256'h250406E03721DD4DF800D0C2A9B00C4DFEC10F823D9BEABF59E99C0AEBF27825),
    .INIT_54(256'h271D752F0F59B335A3EF279BDADF6219DF61DE40144916A722D819B081A399CD),
    .INIT_55(256'h084DADC4E3C6EF950540DB9F55919497B8F952FFE6B4ADA76813D20E1FD30ADC),
    .INIT_56(256'h552AE51AEAC04EEB485675C91448B2FE93140DDCDDD1E6E36C29850D0D30B7E1),
    .INIT_57(256'h9537994E7CA629025D429EC957E51B4F37D8702D8ACD81DA3932A22C8A4F5680),
    .INIT_58(256'h080AFCF8D3F029F90241DAF21E1D8E8B5F98125BC48C98572FB53D3FFF0B3B94),
    .INIT_59(256'h3CF0A97BA0A068AD593BFD08CCFD2B994398FDEF7CC209165102F90463A795E6),
    .INIT_5A(256'h4996C81E159EDAA313AF90C05D8551E1CC690D8903EFCC912397782F8F2EE748),
    .INIT_5B(256'h5B8849EED7D2EBBDFAA6F03D4FD5B4F6F4BBE6093C4D9B7BFB30FF80DD276BE0),
    .INIT_5C(256'h6BFDCE53C4300828392D885DCCFAFBC2A09079C90C55E17842A26893D552E604),
    .INIT_5D(256'hD7572BF6D48C17D049E92C6446763B55D8D859C0B458A8E7E0F4C6C20E61A2B4),
    .INIT_5E(256'hBE6A82BA818AC64513D0BF82704F3B9F716687C994BD156198A6D6B0C8F5C622),
    .INIT_5F(256'h9525AC6C12F4EE20925A1B09BD8B64DD57454E52E235C961752626397962433F),
    .INIT_60(256'h93B216C3C111FE84E6794EFA65F481611710DF9AE0B3548DAE1AE0A8F191B4D6),
    .INIT_61(256'h499EB9CD83766D5BB13162E22868EC30C8FB5727E4234DE5817C043C8F6ADEE7),
    .INIT_62(256'h72D948FB2D241FB00C1224A3A1FBAA487B24ACBC618A726760EFBB388023369A),
    .INIT_63(256'hBDA8AE47BBB0144773D63447B5BAF789B2DBA01C330904F6AE0A19E9FE2B81AA),
    .INIT_64(256'hF5580171E293E07DDF3BD94579429CACE162359182EAD411F598CF980452D0EF),
    .INIT_65(256'h8225704A6569BDF9914E665CA18F1D6A0B5D06ADD33709C0195FFC9F105788B3),
    .INIT_66(256'hFF5D65E406974F9D096AD07A3C3ED12070CC1EC685C01642E72063B1724EF559),
    .INIT_67(256'h8BA73F38D85E7B66955E2D01D02F82A3A837CBC5A4CD55B3629F4A1548E94719),
    .INIT_68(256'h38FC724F13719E7135BA64EEB3450A92321B2D2F9607CA9F4D1FE2092731A558),
    .INIT_69(256'h234031B727365AEDC87072FD18285EEEF9C5574CA3852176B0947EB7AB5F952C),
    .INIT_6A(256'h5E44CBBBA65CCA49296C4B3992309BEF8C74B6687553E9BE51BC1B416437908E),
    .INIT_6B(256'h1699447C35C47A409621F273B3D9F5F785D2FEDEEEC988CF07C2B6D3CE06C492),
    .INIT_6C(256'h01DE4D0824E442BC5956D83740F8117176C4F5956D32F5C31473DDA4EE5E91BE),
    .INIT_6D(256'h89FC57226CC098F9CBBAD58764356A51ECE6613C31336E0FA89F0080138A15CD),
    .INIT_6E(256'h41482C4D90DDE05F00F14B773458B794BF63BBF70AE1694B5FA0C9C4D7492202),
    .INIT_6F(256'h98E24F03A298000421E8488793B5477F21D283E22A3AC972170F44F1FFFBFECC),
    .INIT_70(256'hBB2B59D736FCAF2362D9D1C5236B88F3880C591BBBD476D533400E94FDBC4756),
    .INIT_71(256'h05000B83557EDD5C024BFB09F1E3AFCE3DA1300CAABA4FA4AEECC25DD174CF21),
    .INIT_72(256'hDAEC30668521D79DCB7FD06367E8D5D0804529373CE174487B917538524ED6B3),
    .INIT_73(256'h1DBC398AAFC1B1536A6F3317D9AEFB1DF3AF92DBE610EA85ABA6EC222AA1C6F0),
    .INIT_74(256'h71670784D7EE486CE9CB5C6A83391ABCEE35D0EC74783E3FE478FE75D7AEAE44),
    .INIT_75(256'hD9E14D26D30D6FE4CC5FE78515141BAFBEAB14D5007ACC0E6AFBDE54D40F8DF8),
    .INIT_76(256'h8AA9D73F1EDD74A8E73D8B54E1C85DF37BE714069594408D1C7AA78A7B6DBBB5),
    .INIT_77(256'h1025886B7724E7C58A2E630D1D99694DD693555517FABC7BF9460196337E4BFC),
    .INIT_78(256'hFC3D8E81E3312FE418C7D6B51E3FA51DA56906BF2D41382B57175DEB7BC5D427),
    .INIT_79(256'h5640A75EBA8D366CFA7829F94573287A33EEBEFDAEC4627B1FDFF3756E22C7ED),
    .INIT_7A(256'h82011E315499E67627C7FA79542C890CCF7CED408B7FDEF4C511614C20379CC9),
    .INIT_7B(256'h937C58C302287E04755CA4A4AB3C548B83DDB72EA97D9726AECE0C6BBC2EAE37),
    .INIT_7C(256'h490963811C84DE2EDAA75A1966EC73571345D5FD46E706D84769F3BDE17A48F5),
    .INIT_7D(256'h49787D1C6B3FBD55C080B415010204447330BB023A3CAA8952483D3AA204EE4B),
    .INIT_7E(256'h2B9EB3AECC84457E47599FCB3613FE47BE5F7AB43AE904630BE956E320C56B9F),
    .INIT_7F(256'h904DE9A90C22CB639523C44CA1AEAB69D14C8C1933BDF071B3292DABAD30BE7F),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized15
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
    .INITP_00(256'hEC5B848AAE527A1269D1D331FF1F00B7DC57FA5F4F694753466D480C9C5C65C6),
    .INITP_01(256'h3841355FAEF8946810C48026EA7B344F1092B94CC759F625F11148F71BE05060),
    .INITP_02(256'h54C9CE4433E61CA1F337697796921AF2DD01318368F840FBF85A2F309F221FA5),
    .INITP_03(256'hC856E1FFCDEBE05104DDA89B4FA2781ED80CFCF0217654F2613F697814E40732),
    .INITP_04(256'h224422286F98C96DC2EF09A9C064EC7D82CB23F56FDD5E226409671A61B09705),
    .INITP_05(256'h51E3EF7BE98B4637FF48217C482F1BEB2AACB9C3A865286F3408EF0E0C870899),
    .INITP_06(256'h3E94C91D01F092FBC97CEBE2418346A191772148BDA7CA190B5603DEBEA334F2),
    .INITP_07(256'hA8C7120FB27CD735A96EA57CE9864D697CECF308865503A4C80552187C8AA351),
    .INITP_08(256'hEF9DD1FF138C3BFBD9CC88AB23D3600C8A9BA74DFC338FBA918126EB15B025BE),
    .INITP_09(256'hE9266A1D1EFE4FF7B7E80DA660D060C8D558F641C029107E0FC05F159BE18173),
    .INITP_0A(256'h021836604F086DC60EDD5F83BD1D4C3C27F31CDAF39C8242CFAB6A315F4C5CC4),
    .INITP_0B(256'h2E8F7916856F2D8AA57D3E8F29899BE0984C909A474BCAEE708923131ADA553E),
    .INITP_0C(256'h4750EE29798380FE24F85C18E3BF583D69208F9C75A986D2D995578665CB057C),
    .INITP_0D(256'h4C81EE4AA5FBE99BDD6607D254D76DDFE232424AB55BFDAD3993D44DF1BDD58E),
    .INITP_0E(256'h9A1D827EF4E967961279CE1E677237F9B421B966D423F2CCE6D2B44885C6CE6D),
    .INITP_0F(256'h1FBDAD45756995170D6F38FD4AE645C2B1C64D7A203976ABAC905C593DF66C47),
    .INIT_00(256'hC8C90026F475B23601AF90A45C7A199F208452E5578C3ADA6EB18256A06C8853),
    .INIT_01(256'h6326FA8581B3F0985BAE3010E6DEC657E3AEF5B5B62FF18E4141D6F163CED514),
    .INIT_02(256'h3965FF235715D3DC1468E36B2EB8E7BBAB8FC25AD11B0746A5C8CC573D2EBC97),
    .INIT_03(256'h29DB59964262F6F31A414B70C00F66120C1FA97B30898D4FCC9C97D4E4DB3BC7),
    .INIT_04(256'h7763395708F49BDA5FE5A5435131B183D2C5A4DD711259C25844CA1D91D41892),
    .INIT_05(256'hDE4801B7DACB2B4EFAD88C240F59FCB92F91152E6B59DA74C3D4C98541206E81),
    .INIT_06(256'hA37C6F343889DD215A87C0615A78C5BA4FA490EFE138B5C046B955D958C62B82),
    .INIT_07(256'hEA262760F20F3DDC63F87BFB5FAD158A12EB30EAE992467071B4B90AB0E67F9F),
    .INIT_08(256'hBB7C586936656F063E6A116A161E11FC4B5395A19938EEC90EDF99A295CCF95D),
    .INIT_09(256'h8384B073A541B8C072126140E01306660D3CCB5C5F6AAD43AE8BF9F029EA9B24),
    .INIT_0A(256'h4D0FDB45D133E9C63CC63EDB63796A307F1AB47F03A843263A6B5008867DF0CC),
    .INIT_0B(256'hE5D0335BC99457EF9EE07EA9AB0A545E10E3D30187A3FB1536CB9D7EC85375B1),
    .INIT_0C(256'hD6B51EF506FBB498B2FCCD938142D507E004CF93D9580282D26EB6170BB40FAA),
    .INIT_0D(256'hF87A02CF641A59FC90A95C77DDFB3B9FEDDA4561BB2C5A2115AE128EEB0BF4A1),
    .INIT_0E(256'h2A98FE128B518A32DA61CF1E8AEDB9B2B3B934D9CC9A67FA00CA443D20134041),
    .INIT_0F(256'h624CCC2FA92436658C8DB5425FB6E82A25E533783B01DE1547B2CFAE213B603F),
    .INIT_10(256'h0C69C72F5BBACA0AF5503FD32CAAF3889216BCBBEC9253B1A2EDE82D53AC4C77),
    .INIT_11(256'hA0C2770AEF044A6D71EB2D52F43103CD50253C872BF88BC9B59503E1132C2A2C),
    .INIT_12(256'hAF6F7AFCD1DC710FDE8E66147D8C0BC89A8C9398085F0B3D5BD7B015067D5D1C),
    .INIT_13(256'h9BD8FEF4D5A58605175BAA43B35575E5FB1F0011CF158B47A876C795E7F489B4),
    .INIT_14(256'h8F5F7F60B412A835A4DE1BEEA82B2C82488E01434EF245F33EA7BCF823D4FF33),
    .INIT_15(256'h84B9C84D5E536F3530AC5372B42C79B21D1F83552C5CA3723E97A16EDB4BD8D7),
    .INIT_16(256'h085F789601DD2BF4C6AE8C9F11C7A93D70F86F9271DFF74DF7194B014303C6A0),
    .INIT_17(256'h8B4AE37B62C5E0273598AD4F65AF96D00EF09662EF5033FDEA84593407DE1554),
    .INIT_18(256'hE5D565F29ED5EDE351C7D8E0521B478695653AB0FF3CCCDD16F7AA0E8E59489D),
    .INIT_19(256'h3AFB5C2D1B794AA0AB4DFC393914937F91D57A4662B1AAC5CFDFA04699419F7B),
    .INIT_1A(256'h9A087CE6150C6AAED3855B4CE4D10C838F2D3A74F747297D17B38820FC257F50),
    .INIT_1B(256'h9CB68328BA9194E05784EBA295000A18C65C23EC965C248C41FCD0948EB902A0),
    .INIT_1C(256'hB2A69C04531B3FDD6ABC36281F535C1E5540C9629DED01699E13E1EE8AABF58A),
    .INIT_1D(256'h3E845661CCB373162B811BD5BADE1DB4FE4A0B432EB8B62EFC5D3895E621A7DF),
    .INIT_1E(256'hE2F6EA3078D0042A105D1BB34B1B3F243EAE4BA249EC213EB6CB77D250E549FF),
    .INIT_1F(256'h9DA6A2E19FEFB71FD8A1D024647B18C846D91F5353EB01066AAA124DE942BE11),
    .INIT_20(256'hA3C9FF21CFD422FACD1BDF275B06A1952B4824AA7BF1CD2D33C80BE14E678EC8),
    .INIT_21(256'h8787289B82D98107F1917442E46528F4FE485AF6A577BF17823A05F5F61745EA),
    .INIT_22(256'hB9364C31DE950CA85D43F662DF13C3F1199F5B5629700D1FFF4486296CCCFA0D),
    .INIT_23(256'h29421F5B072FCC256D58A0B4E3CACA3EC4B374CEEC4EA86DA89DE21AA21E27BA),
    .INIT_24(256'h8A2A33F01BD6A68DAFC1DDA65062F3FDA71DB96A618C8CDAC9C40784B080FD12),
    .INIT_25(256'h07BC25B5811C870C6F62C6976161F6D319136D6EFAF5973182A2BF6008613BC1),
    .INIT_26(256'h00672C8075DAAC858D91D6984D26C52E06D79226DE820E1DE48EBB0F3762385B),
    .INIT_27(256'h94EFA10352C7F758A6548E0318968FEDB5B58D5460136E595BAAA9998CC4D6D8),
    .INIT_28(256'h68A1D60A17DE431D8C129810C16AF405BEEABED5ABC7676CE2ACD9BDBF25327D),
    .INIT_29(256'h7A9A059686DA81054E025B2842252E26A4E9BFF1B8A36EE85205D1A29DF908D4),
    .INIT_2A(256'h77DC79D6B6CFDB41880CEEFD5B4F73D434936E5C03F13DBE4B3BFFE9295BD0A6),
    .INIT_2B(256'h0F5DE1EC14F9822926B86C3202915ADF742B731C2E93A7964405F723FBE40CD6),
    .INIT_2C(256'hAD9CC75FF4CC040413E4770B20D92F1A9680892C2D5ECC184882A47BCFEA0FC7),
    .INIT_2D(256'h2B3A8AA144E640A39427A3421E5A0AAAC47AF16BE92B1B99D0291233187B6C5C),
    .INIT_2E(256'h532B652B52F58140854CC4B02E5F454E2C5561068C894DD8FE463A2595247471),
    .INIT_2F(256'h7EB1B93AFE9DFE277F9C98E197CE0ED3A9BBBFE468FCC3C61E4CAD903435046D),
    .INIT_30(256'h880FC49307FB17D854891DC852D7CDAAFFF91AE136B0E26A2F3A00384B324E9B),
    .INIT_31(256'h60212FEA46BD1EFFBE94722025654065C8DCFE863C825ABBCE1EF31FBD0BD947),
    .INIT_32(256'h167D09FC26EA3B2CB4F408C2EA9D97E41165B58800CCEE5451BB0B13407C302D),
    .INIT_33(256'h3C4EEEB31495398AF44D91D777417D21ED716ABC5AA27DDAB3746668D83775A3),
    .INIT_34(256'hBD52D4B9E6CDB4ACD820AC0813B40F27E4D065E520DD4EB3C9A326CBFEE48A34),
    .INIT_35(256'hED936FE77F6B854360A66E1CE02D0D59A8D8023E99ADDC265D77BCC7846AF21C),
    .INIT_36(256'h89B769A77A28FA5B5617BA827147753A4FDA30027041339DDDA2AAE6E0B4AAD5),
    .INIT_37(256'hCEA83DB1C62524C08079AC35C535E0D0B868E1BCC1E78C58EF738D7D36A5039E),
    .INIT_38(256'h7B3A0869FBF6F7020C11EE483FA2D2CD672E0CA3B5A2B796312AE72C33211AD2),
    .INIT_39(256'h4C3CBEF125077A05F5735816797DB48710E34AD64C77306E8CD8D0B4EFFCDBCF),
    .INIT_3A(256'hC0C971519F2F5015C69763B9C88D2C687580E6F91D62171FA45CE0FF22565932),
    .INIT_3B(256'hAFABAA2480C804C87C10A4F22A39A024D9BD87E6CA6CECEED2C0A334D9E46711),
    .INIT_3C(256'h112134185C7704628661D5BD06BE4A100DD672F3612645038427A2885226001E),
    .INIT_3D(256'hB254DA9A750DF1FBABBD9E1F863AEFA72179BA0C9601137B0A81103BD0F6F81E),
    .INIT_3E(256'h5846DB70F1E7FC3D7FD62A37D3317E4C5CF27B7A5D279E53469DFA711E60853C),
    .INIT_3F(256'h96F440E00E607B27278B3EBE51D7C6A07A96151AD464272BE48F4D291B72E652),
    .INIT_40(256'h524BC9C997802F6A35FAE8F9D578A6112EB5C71FC6CD75FE4D3EA51588D0DBC3),
    .INIT_41(256'hFA66767123C752F117EA19683C4E795EC2C97C8A32AD39CC8F05854E88FA9214),
    .INIT_42(256'hA78341432FFC160260A6BF0455F64C3D89CDF5519E132BAE7234D9677EE446FA),
    .INIT_43(256'hDDFC19BB7CC94C55ED661DF97E43C655053F4529E783DC99653BFD15C8D634B2),
    .INIT_44(256'hBA3377C40EA1353BA672A878B99C496AEB3D26921368BA15A0630B549762A3B3),
    .INIT_45(256'hCCAD042ABF737A6185F8F8592E2E34FB9886425D89E5F1929BDA91D05B518117),
    .INIT_46(256'hC153C752C0F6FE996668F90A29FD41962CDFBCD8DD207C7A9C0C86154FDD7CF0),
    .INIT_47(256'h3E2234F442B47D5D7AE81AA167E6106DE6904DBEEFD05110F6E29D2BC4766B40),
    .INIT_48(256'h7AADDB97EE3EA87D87A4E4615FF089B4190A7C67287C10CC5499B2F9B8B3120F),
    .INIT_49(256'h40E438A52BBE7B2AE191D294DCF678AECD85DBD2445C8F91B1CD6D2BACC92808),
    .INIT_4A(256'hA0D2BF167969FE960A3590BE40E970DC16890125033C761A4D808750AB630558),
    .INIT_4B(256'h8FA1D0F5827F9424C68A5457C40930C242A5E06AA93F989739867E7AF92F5D9A),
    .INIT_4C(256'h42C156521ACD87558677C6D319308CE0745A29EC1AAB8EA6BAA7BFBADEEAAC45),
    .INIT_4D(256'hFCEAEAE440DDA937395B25323662D3E569E96D10F6929CEDD50F6099294CCECC),
    .INIT_4E(256'h67AB624218AE78C15985A14DC0F44748028A24793718C9E832D7BCB80D7571A3),
    .INIT_4F(256'h234E9E8F00FA7980A5CB1B8FBBAC78DC069C2639633BA880C93334E89904FDE5),
    .INIT_50(256'h4BA97DFAB9E57A8FF32F633D676228460ABE175B0B9D9EBC11138E3A23231A9A),
    .INIT_51(256'h0A36823CC7EA99448B3A81E17A842C2AE828738DBBCE39BA53DD632E2F0C63FB),
    .INIT_52(256'h76694B5F9DBCA16CBF046B8569A8677330B5892CD3B49303EF69CABC9ABF0176),
    .INIT_53(256'hF6AEBE3CD9478496995980F31B9B16DE2363B170DC90103866EA2E33A390C989),
    .INIT_54(256'hD94D666A3659A02845B1F7B51F4FAA0027F6CEC8EB3B7BF280121ACBBDC5490B),
    .INIT_55(256'hF5FBA04C8F64EDB98C1133CF06AEF2BA891C87B8B322A68919EBE55DC7DC06C0),
    .INIT_56(256'h2FAFAC1BB23E164B3D9439E28CF33E3975E47B90E62D8D08DA1D1ECA9CC7F1AE),
    .INIT_57(256'h991492CF045E80A67A9626B49A443596D27C24B797F9FF0E299DB3DFAB6F8100),
    .INIT_58(256'hD0DBB2ACFE93BDB458D20E2E8D3BF6AA4452FF15C85D1163F8E0E9D792519766),
    .INIT_59(256'h8643B5756E583B186C3E6B8F3D48795287CAC4450AE2F00F05CF243D2F4CE97F),
    .INIT_5A(256'hCCE2E3363F408BF9D17A68BADC91DD5B8E54714A70763823535974DC63555FB3),
    .INIT_5B(256'h372478ABFB180246888D6E8530B4F2B850E07AD78FB7A0DBC33BA98EE6E76102),
    .INIT_5C(256'hA3507DBBF31CCF41D1AAB413839A7EB7EB065C7566F6D1B601025129743D6066),
    .INIT_5D(256'hA74BCF9C7F5DA71D58B53A860B0B66A2522C5C43007A279077549F5099A53BB9),
    .INIT_5E(256'h4194D068545183B4B39C1B7B9630968E163D9802324DA432C2179E752507A52B),
    .INIT_5F(256'hF73B566A607185C2DFF8A8C6A57BBF626458A252196A11434377E66DEF607BF6),
    .INIT_60(256'hE4624F049F36139E8F7962618AB0FEBA3A0A6B85A1DF4E7E0CD6B41F8646E6CE),
    .INIT_61(256'h4262DCB767B21A509DD57524CB52C0871683E767C51459696C4E6F203619FC1D),
    .INIT_62(256'hDC146BC9DBBFA6D7F0C78921F9DB483870789780ACA61F3F033743C57765CA28),
    .INIT_63(256'h7C061D37136E80DB0D724F26891B846C9E8F63C754F2559D19C17B57051FE2EC),
    .INIT_64(256'h59D56C22FE35E3B91AA246D75CA0B317F7F4BDD7DF67F5B87B34792EFA5B6FF2),
    .INIT_65(256'h1177F39B5512182C8EBD0BF6E8FADE20E9D93393C88010DE738A89FAAC2B6374),
    .INIT_66(256'h8AA341D01D5DFE30459FCC33BD48789FBA1634358FFF3E8A44A04D16B5D5D696),
    .INIT_67(256'h0B5E64E51D3E119AFCED5BB702810F5319F1BDB62C756987C66D964E1F727C08),
    .INIT_68(256'hABDED9CD15F6E409E6AA05C96F0DC0DAFED3FDD3B972685B4E414E85B9797649),
    .INIT_69(256'h2A646CDBB10EA7849C4B302AFEAB0B536F91D6C44DC48E95542483A9A3A94CAA),
    .INIT_6A(256'h6F19B348C37493E66F8965E3DC5C6944C49FFABF7E3CF1E869D8E33C18E8B4A7),
    .INIT_6B(256'hE04E4656775B788869C1DDF37F1B429E68C07C786A95AB8491C22FF09E74A2DC),
    .INIT_6C(256'h9BE81D5D12CCED7002806834529509E95B454D56E51DC0C9388DB2FF569A3EA2),
    .INIT_6D(256'h0FD44F74D1726987717054C01C487E6BDEEF5E92676EC73EFDA0CFB42D92E99D),
    .INIT_6E(256'h7CD4C28F6FCB84A9D9B58CDE2E072AC720DBB1E5E7170FCC28125CEB5D5BA53B),
    .INIT_6F(256'h29A0CBD7EA41390FA88BB7844CADC377F4E3A6C83814272C609DEF2F30DC8BF9),
    .INIT_70(256'h8D5BEB7A5C71A4E93796D62E31698DF5A80F6A3555E1CC6486120C8854679342),
    .INIT_71(256'h56BD54A7478D18866C7BB622BFE8A37000A00CDCCF2AA139200070DE6DDD556F),
    .INIT_72(256'hBCAEC33B72E7EF5EB29FA92540E2E9BDCAA3BD68251FCC27CA6B790EEF9ACBC2),
    .INIT_73(256'hBE0DFD50B3D8B9B2CE803F8D86A474FDE5FDF1AFBF9B2FAF8735F2AF394B8CDD),
    .INIT_74(256'h117D4926848136A4D9D66D352DEC10E5A919A44300BC3C77B8B110DE595443B1),
    .INIT_75(256'h90E5CD385DCC7996E93B0430632582AA5A1255B99D3E351DB6EFBCCB90AA762E),
    .INIT_76(256'hBFA6F899C9ADBC53ACAD960B25D13CE7CCE78E3D0AE1A276EF16CBEF9F324EE3),
    .INIT_77(256'h3B5E81ECDF06C788DCE231A378757F13C190122489C6E6DFE8C15073F12CB0CD),
    .INIT_78(256'h72B5565C111944C43A736EA0D3FBF1B7CB0F4AAA74A18AD4BD25C00B2970D8DC),
    .INIT_79(256'hBFF8F377118752139DE28417FE0F5F250B7DCD705B78CBFF2D9786AF4BAB6388),
    .INIT_7A(256'hF9BE9198E69A1F057E2144C2F977EE8FC0D3C9946726E66A06C2C77D1EF85ECB),
    .INIT_7B(256'h14CE78D98930C4B48CBABB4B8818DB8005831B773C41830D3DEB138E0FEFCF48),
    .INIT_7C(256'h2F43A7993ACB454C2A2055653956B8FEE21582C30BD1DD21A4B7C751A3450D86),
    .INIT_7D(256'h345728E38E08587D54126BA994B3712C7C3E361AF8E23A9E608FF92F2699CE49),
    .INIT_7E(256'h41670FED123D20506A473D6706BD1DDA6EDF238EC8BE1970FF6AA757A934565D),
    .INIT_7F(256'h514CF3DA27B84D746E276D1F0F763ED0C713FFB00A294465C15B84880BA88DDC),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized16
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
    .INITP_00(256'h5B5D43B35EA879F89130CD32F507B9D661F2C23C70E06DD52552BC6AD7BEE919),
    .INITP_01(256'h7948B28B8F9C4B9D3108E01438014D3BDF7CBDEF5624053A7375D35FE8EC5ADF),
    .INITP_02(256'h8828401D82F3A895569A679716BCA331F754C569DEFFC0DBD0A0B26F0385F642),
    .INITP_03(256'h24A5B24C81ABF6ED385CC866EA2D09C82AF46411921EA3F733479709E40CA010),
    .INITP_04(256'hD84D0A737A652569217B7F57737B279B7DADD9BB1F3FC7B05B1B5AA7CEE85105),
    .INITP_05(256'h9281F22AB996AAD06513D84E4C08C3407DA97BAE2ECD36A3BF6670E20D58E380),
    .INITP_06(256'h62B00247678A3168B50C97C24C430537054EA72D19F1ECA2C137D707FC09FF05),
    .INITP_07(256'hA3036529C3DB74D6FDE13A9019E351760A77247A3401CC8E1A6C3AF00552E9CB),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2FF01BB81AC317AA38B0B1C6AF90D8A4B3C0861182E95F7E13DC868F7C04D1C3),
    .INIT_01(256'h090B9C42F096284A5A7527439B34C12D4BD55679127EF8F052BCEC3F95752B37),
    .INIT_02(256'h4BBEE56155C424192E551AB3F62F0CD87DAE2593997AB25B698CDC86D775102D),
    .INIT_03(256'h742807E9D42A7745658A9C9F57FA4CBA0DCD0D8E6CDA797ED1331090F0F9752E),
    .INIT_04(256'h61636EF59C44C0AE2CDC29D38405D71396C696FA9C77AFD86B7DCFE09F4DE8D1),
    .INIT_05(256'hEE9A818062F4BF48CB456D4F8FB70D9BF21688D12B18EF144E9C46A675B23C76),
    .INIT_06(256'hD9F1C6CD1F765708516385849A6A9636940718C3BD450AD239328EFB73C07757),
    .INIT_07(256'hC71954F9A5D8713E9DA2BF935D713BA75AB14A9C7C166FEE95910A9FB4A1027B),
    .INIT_08(256'h76A7C431B70FAEB4A517BBD7AB82BB3FCB045CE55883C77886EDC966E5A2DB3C),
    .INIT_09(256'hB0C13DE534A563E9F1790065EB8FE2A575764D38CF05DA11113B762596BA810E),
    .INIT_0A(256'hDA6DD07337CAF6DB7BC7B4C99739BA3508767EB92E3C68CE4A4D308C54372642),
    .INIT_0B(256'h838FE158C5A8F6208333A9314618DCDC6B2875BFE9C015F0B9CF9821BA714C33),
    .INIT_0C(256'hA4FCECB9E08047E9A182570662BB12FCEDE8C053949D08121587AD3EC7A45105),
    .INIT_0D(256'h297388FF49AB611D507034B59E22AB1FB1BA5083BEC9319700BCDB3C48578929),
    .INIT_0E(256'h849488A01A1E8A476C6B73AEED68201F896CAE2E00EAED200E7EDC43E5B07A17),
    .INIT_0F(256'hA73213E382E3360211E3D360E9F22F3FDF0027E0F6A1BA455EB9B2CA3CA4E156),
    .INIT_10(256'hBA312DA7081D191E0334DCE401F19255FE22B6F892A14598D0DFAF1554C9D995),
    .INIT_11(256'h1D6B048D8494822D722D3B41996AC34D3EE25C7B9568A4D982A663942D70B528),
    .INIT_12(256'hDA3DC06AB08D6888A7702B5227C9E9753766AE47171BAC21203F9DC50A35BFCB),
    .INIT_13(256'hBACAA324B34BC6CAD3E612C30A17A6D261793167FC82F7B14D5B4EF965FEE8FC),
    .INIT_14(256'hC424E9C6BF3E9FC087B4238CCFAC12124740C35876342561E6E88CD58C0EEB86),
    .INIT_15(256'h74B717A3FEF34FD6DDDCE55A2CDD64CB3A9CF371A242D79A4C94D43DDE01E583),
    .INIT_16(256'h5EA64E1CBEC350FAD72E42462366623BF21F9370AB1E45DC63477BC3F17A4B06),
    .INIT_17(256'h8882796EA0B2D971660B10C4997DAE4D8E5F992FB0B9077B742FAD5028BE7477),
    .INIT_18(256'hD2F3D7DA4A434A5E821524EB05F0472757EB6C1110D35B58B1188B8E12EA996A),
    .INIT_19(256'hDAC541A5A00B898833C9C5882E46BBB0AB1B28EA0F11D6A3558ABB9DEBB3F5A0),
    .INIT_1A(256'h2EB3FB92F4217A699A5BE723B1720770DA8A473B4F9928B6F9F5616821234F3C),
    .INIT_1B(256'h4F5B4595D741BF89EB9CDB92A1D588692DD88D4915B4FBC23293D1E5B05C2E56),
    .INIT_1C(256'hF145703E4086CDAF2FA6CD528EEE4F56E2E381DFDB01162965970EEAE36D60FD),
    .INIT_1D(256'h1CCC86A74406722B90CAB01880A95DB5C12D4DFE57C0C7F987D27E69758C8BA8),
    .INIT_1E(256'h92ACAFA22D23CDF67AF69E554EAC76EA7E8A4D8774F5C5B361C06F988FECC43D),
    .INIT_1F(256'h38E3175AA6F0EF6162A26E0E3F62489003A35A7D86E9320988A95AE969DCD7C3),
    .INIT_20(256'hC875839A7EB682A67434B5FF808FA7201368735A822C36F59EDC329FC78896B2),
    .INIT_21(256'h391AE44D29E7E1436967088A66C4088AA33707E22B260FBD7AA2DC70AA098E41),
    .INIT_22(256'h6F7CD13539C28C4D3FEAE263D09079FE667EDFCBF519F1A3F36D2924126BE723),
    .INIT_23(256'hFDBDD59B1E36388201C486B3B843FE84DD3919D1A5268B89959F24CB1069F7E2),
    .INIT_24(256'hB91D8D0970E5BCD19FEE0DEF3BA3ACE4985C70A451DADEA09319900F82E4ACC0),
    .INIT_25(256'h8DF7D1210D54639297950098A32BB97BA55461A2B405C39549E0D0138F67D04C),
    .INIT_26(256'hD21ED9A0D585BF23981FC9E135C6A884C3C37DE2B23FE5227808DEF83E275A60),
    .INIT_27(256'h45F733A65EFF4DFFDEB3C002B93AFD50325FE65CF3F95F91F11F8E1E0F49EE4C),
    .INIT_28(256'h6BF811624432E768FEA67DD673C22B64CBFF821F72767A8C9EF4BA37C072182C),
    .INIT_29(256'hD7732D5597A160905322319E8A42BE35ABD6A536F3488C7AC52C1F829D417109),
    .INIT_2A(256'h2C4E1289ABA338C7DA454BCF4F0C478732D4ED82A174CF3D5EE09EABE287AE33),
    .INIT_2B(256'h71BF431BA23A032D727BF38C43BF876C5545D51AF2FA2B7437F9E1CE51265B0E),
    .INIT_2C(256'h5C8233FBE6E493E3F22DA38436E4B9E45AD63E7ABBDB8D5FF878B91A96C528C8),
    .INIT_2D(256'hC5805DD99C7E1ABE0328B8895D9D7E9303870F4FF354D2E595E76FC2D28CFABE),
    .INIT_2E(256'hC962C60D6758811BBF7A4C2B72594CDDCB3EC4FC8D27119AE35A4ADD1EC368ED),
    .INIT_2F(256'hD19B59EFD2EB337AC6700B3D8456F4320BFF828328F5597931A2B9C0EB20CB8A),
    .INIT_30(256'hA3C9FAEA7AB7A5CC99E81FBF2E26685B07B1AF43D5E44207FCD05D4A2DE717A0),
    .INIT_31(256'hE14F8A9B33D6C7A6DC0D1A06C24EC8767238C343418249BCA30B0D72CF58E543),
    .INIT_32(256'hB6FBA7834698C08D1CCEF67D4BA62B0BB982B0ABCAE1755FADBD13FC260FB06B),
    .INIT_33(256'h661E3B6E8E1B10D59F1E72A9DAFBAD7BB70760ACCAE5EFF1170ABABE2BF364B5),
    .INIT_34(256'h95D04FC8B8C7CBBDE5A1D5368F1F4516D6BE9D390CA3F0D76B90C91CB99C1417),
    .INIT_35(256'h32F9B70EEC0C5BD76CF3993FEDE5026521491231C6816F61DB70623419BFE236),
    .INIT_36(256'h652C54E659224E7A2E2DA8A27A44B1DF1A9B1F546E05285DB475608D37399A5E),
    .INIT_37(256'hB54C5C4531EC2C0FB203B9C385FE9836D5D556295DF3CB165EB4458ABF40A5DB),
    .INIT_38(256'h4E2FD532936A3E9C1188BED67A451A06694308B6A9F5725CB7C6CD37E024816F),
    .INIT_39(256'h1E24C902BA37C7CD8C26DC9058F39B34B09698864AF2B8ADCCA5F14024BF1638),
    .INIT_3A(256'h3C59070A618E265C94920E9B25FD73CF830D8A8C5202B25FCEC3808AE856BEE6),
    .INIT_3B(256'h66F772EE8B98BAD9EC43F1CA47DF1F2E3A6ED24EEEE189B88786DA850A8CC2BF),
    .INIT_3C(256'hF8D9B119D01E065731333F6C814A52B66A062EA7997E2D7F3B2AD1001B5FDE3B),
    .INIT_3D(256'hABB2512D271F3C86FE0D7D6F9E6D2D08E588C8982A5D5AF789D38351162A6070),
    .INIT_3E(256'h0B06D20A257A07C65D3F1738CF36A7B0F9D0D1D10962598ADB9BC4B6C5DA1A3B),
    .INIT_3F(256'h995DAB3FA33EBE64A4A78AAAC3BA7C1076076E1565D854117DF438C4210F34F9),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized17
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
    .INITP_00(256'hEB61FEAF5E500797549F984B2A41E28B8EECDE0C9A98CE5E5A7857B3E1E10703),
    .INITP_01(256'hCADF50143572986F22B7AC2F764F572A0672572B314F84B23BA4C5C56455E613),
    .INITP_02(256'hFF353FE29FB8D4F86889B2C6832BD8A2288605CF307958E905FA31D6E760CDBA),
    .INITP_03(256'h056C512D12C62488985002B2B70C7CD5B96BDA15705FB5ADD6B06C0B035F3C78),
    .INITP_04(256'h3D924C730FC0510DD8991A83FE23FC7D603F3A0B8EEC3026352DB588958C45B1),
    .INITP_05(256'h6789E2DFED531ACA52CB281141B6198673EA2CF810A700D4FF7B84223989CD6D),
    .INITP_06(256'h1390AAAC6AFED03455F6DC9F49ADDCF6DB53C1D49AC7B85531E0D791A6853B91),
    .INITP_07(256'h860BAE23F52BFA5ED5642ED3C1448C5D8141951EDDDDC554C58C6766CF4192B3),
    .INITP_08(256'h1773F5667801E13A690058A14EA095F0E9C58BDAECB676C552082F18156E3E5C),
    .INITP_09(256'hD76CB1290A224356A7B66D3373DB19A18C7732CC9CE62D2E2DFAF41D4FDCF8F3),
    .INITP_0A(256'h4E6DBD7DF2DF3931AC3A1B84B32C4AFE4B199E7166E65C0CC40E0B79DEAB7E44),
    .INITP_0B(256'hDA103384A9CDF7B6DBDC7C48F434D97610AB1EC732E3B14C311442DCD54E5C8F),
    .INITP_0C(256'h5A5B5058F60D552624521B63C01DEE59D97A1C6F78A9F52DC1CD5B00E2A4BC55),
    .INITP_0D(256'hC9954477F697DC3357B3696764827BBB7A3C492AD75B0674FC1DFC88946615C5),
    .INITP_0E(256'h6B322452005CAB573C2AE3087FAD9A4D99B80CC3F269E64C267406832D880867),
    .INITP_0F(256'h0C2DBD204D18605B3C36AA88090AAE52146D1AA50EDCC25C3D2503FFFE2D9A3B),
    .INIT_00(256'hE903C0B878C71687BDF769DC60EF18F3157454F4414C2E9AC90AB214A1554889),
    .INIT_01(256'h7941AE4AF113A76CDF9E07C305348DBE5E38D33ECF063A584978178AEA7BBD7D),
    .INIT_02(256'h4D70B3D86B4D4816617A0308D58DF412170CE950523E43BF911F7FCBE48A5A42),
    .INIT_03(256'h453112BD5CE81D10D0B7B769117756F45D8988829A93CB6227D62F297BD868C8),
    .INIT_04(256'h32D8791A1D0E88CC36582BFB2CA1C603C77ABE0C6F3E10868F8366FE23A9701C),
    .INIT_05(256'h83A167B528F0A1FF220651E51A63D70DAF9BC41302F853AD55565EACB21721D0),
    .INIT_06(256'hEFBB963E2E282BD6135E995536699DE757C854650D9AF8C292625BD1998AF753),
    .INIT_07(256'hC08A7CC2C0D113D789F841324A3A327323B593F3FCA3C9D96BA9DD624BBE07AC),
    .INIT_08(256'hE013E3937C0640DF75076BF4D868F2E4BF76C7CF1CA2BD7AD0E0C739BA5DFF88),
    .INIT_09(256'hF5D74677EB6854752B26963004629C0933141774EB999A8A2F4A892B5E2007BC),
    .INIT_0A(256'h6AE3EEAC3CF82DB05A7C1238F754677F897A5C93A394CAC36227B450F798E888),
    .INIT_0B(256'h4816015791B7C1B1407EEF2BC6A44C37DB8EE24CCD1391A94C024D41FFF7CFEA),
    .INIT_0C(256'h026476693E212EC11104594BE9C1241BF14320454BDECFF2FD1D8DBDC66117A9),
    .INIT_0D(256'h0C7D7355C7FE4813EDF6D6CFA224E9EEBE29E6A055E25A6F569747B2BF0750D8),
    .INIT_0E(256'h8C5E651EF7487A9B33F2C69934C7A01E6F3DF6E5A03D0DD1C136382B76054DA1),
    .INIT_0F(256'hDD46AC05BA4E8CB1133CA47B59A51D24DD9F38100C8E18570E7B72606C3AA377),
    .INIT_10(256'h509263EC277BA995D959F324F7089175144E9280261AF6B599C4601C585791B5),
    .INIT_11(256'h4138751E5CA0C14F325A1E183347C61BBB347EB15BC54E9A3B1423C349117297),
    .INIT_12(256'hCCAEC7657032D22089732FF5DAF6883B54FCC65A35EF2108D33F6BAEFB0B4194),
    .INIT_13(256'h062C81B109C0F886DF704E3078A04C85AA03D170047A0D7C59A028CA15CF15C6),
    .INIT_14(256'h3B38BE7345BA334775F3882BE0D9165635A27D8BB7BEAC97401A585D0EDE9692),
    .INIT_15(256'h9B1B5E7ED3A50039E5BCFB2DC0F824CEEE49E11280D952191764F1BF07DDB48D),
    .INIT_16(256'h669874A8DC376B60B0EBDFB5EA552CCEEEB81EB056736C87CF7F6250C8AF5925),
    .INIT_17(256'hDC8670583102D805378F9B46FB7CD75D2F7953203FA3A5C0EA1207D1F9C4FA76),
    .INIT_18(256'h55E02DD660BB301FEFB386FFA6948E6F066468133B7DFF137DD78933C20E5219),
    .INIT_19(256'hA3732714850DBC71427FA38A30507AE6ACF74E2A731E7247A6180FB8663E2F56),
    .INIT_1A(256'hACB43A255354EF8A54596D6F52877732720FBC514379228D560B183C2AE942A1),
    .INIT_1B(256'h03F3DE6CF1873AA99AF5B240BC05BFF08F33A4DA32B7DA3FB7ACE0BF3BB89D69),
    .INIT_1C(256'h69A1C0019AAB439C45B0AB19E660A8BAF9ED84D3877483FA0D13E300956D6645),
    .INIT_1D(256'h213A3D133347E458EDF0ACF33407F9C02AD3B720B34FAFFAA5F94B8DCD9FC614),
    .INIT_1E(256'hD3CECBCEE652B1A7900A4CA253D224A5BAC35438979EAC78C25E3018B8365B3C),
    .INIT_1F(256'h17C50198F6001BCF54436D4E656FC983199D6C09FA94AAB8444E96A5E8719947),
    .INIT_20(256'h231BEFEB6F5B6758D9C48889AD65D67777C01E39EB33E3BFA43EC4139E075EAF),
    .INIT_21(256'h9C9EE1E14D0AA195A1C46610EB7A19856199CF9259EC20863EB0EF3E23C72C93),
    .INIT_22(256'hC8BC49084667810A51258D5F5714598A4C6D4A5EBDF0BDBC7748BF6394C6A0D1),
    .INIT_23(256'h11B71F71F5B0175282CCF0413BA94EF9A206A8ABB150EC6D9C5DEBFB42D11DC4),
    .INIT_24(256'hB455057F25B125F75C61B10779C04B70A182B8114A7F1FE377B9BCAAEDF98673),
    .INIT_25(256'h02B122075BE4719300626EF52506893D22432F46ABF5F4914A06EC116FD7F8B4),
    .INIT_26(256'h18B13CDF42F2794FD6159222CF1613BE3A944243D6A9DCE47DFC219491A591D6),
    .INIT_27(256'hEC25529F2487295EAD0306C0FDE14BC76CA6D9239B7E08B24BEA31AA92C6CB14),
    .INIT_28(256'h890FA9E975ED10470ED04C9660EBDA5F690D475F3F9AEDEF12585E23C355E1F9),
    .INIT_29(256'h08A6C5B7F8A219E7BA06E36DB3729E9E6E20BA58478FCC0BF35A2736C82E7A95),
    .INIT_2A(256'hADDA5ED2C8E4782A4C5E0D794192DC9B01EC8D3AB0E5DB129A6451C9C391C5F9),
    .INIT_2B(256'h2E1D43F669413320D9951C12672266A7A8EAD7655268B0FFCBFD6E6C233536C0),
    .INIT_2C(256'hDEB1ADA25F407A00B90A14F296B3656AE9B6BEB346027CC2692940EBB1DB0E16),
    .INIT_2D(256'hFB8B607FFBA4F94D25FED2642B0EC8ADE8A5A41C4542C7DE0519A9B54D643114),
    .INIT_2E(256'h302852C5F8F22B9FD52D3A62F5AE8844B7AA51ACC7B4795D2D406EF45346BF71),
    .INIT_2F(256'hABB178DEAD131941397F4C63D1F66EAD2F376BA513B3DCE76D5B4D010C8DD6CB),
    .INIT_30(256'hEEF88232BCBF83AC51AB5F1DA25B8703F8364B8F8AF15A4C02C6E434A7191555),
    .INIT_31(256'hDA9FEAC146B4E72F38694A91900133BA39D82E2BAB4A64C06388563397293359),
    .INIT_32(256'hB9E683ADB7EB21F86398F22B8CAD4DCC4B41B257D2CF46D5524542437DD5D241),
    .INIT_33(256'h2B14FB5CC000380EF34544B3F5A1DAF68ED579E850D51C5603D0578BDFFF70A5),
    .INIT_34(256'hD7C71C1E2E42243A5755D11CC84DB49B8B414344537F4B919506995302EC98B0),
    .INIT_35(256'hF0CEF53E36D1CAA3AEB5CC69AACAB951076CC1C15A4677FE3216E7AEA6024940),
    .INIT_36(256'h46D11397135926201D8F0F7C77A31E7C5F6A9CF6FCA81A75B3890FEC9E449A91),
    .INIT_37(256'hE1E2AF18C170F47A6739B64E9177E765B78F2F88D6F7BC183777912C5A84FA93),
    .INIT_38(256'hF95E31D25558166B487F7D805074F9826E24D3474C7A01AE278F300B0E6B20CC),
    .INIT_39(256'hEB98EAD1003AEE80706563DDD761E4A29F85133949AA16A46CECF51585612A87),
    .INIT_3A(256'hCF2D248ACCD025CA6B8B7F97D3634F8BB73F5CF7882BD0A858B13321C4818051),
    .INIT_3B(256'h7CFEB1FF80C6D87F4F88DC9A3059A05A11C55BB952451A415694F1C8874EBE5A),
    .INIT_3C(256'h171A5028D1C66C924C39CEB8832EEA635191944B73260E25E42F246FFCA93498),
    .INIT_3D(256'h16B55F3D45A11B62E29A44CA6451EFE107089F776250133E1C83055084531DAD),
    .INIT_3E(256'h27DCAB42A1E36DE2EC6956C7BB460844F3A316A9983BDCC7FE40758307174895),
    .INIT_3F(256'h9F24D2954288DC3565D787DEED1F0A006B7B8CD079A26D0584E5686C581FCCE7),
    .INIT_40(256'h7A525A72BBE944C1B93314C81E0C0BB87289D8774BE36519A65D14F03C55F310),
    .INIT_41(256'hAF48E477F74E71CCFD943C0AADAC9E673FEB52D1AAAA23E0B8EF15C8B863A19F),
    .INIT_42(256'hBD384F22DFCEF99518C356733B27DBC124E5FF8772FCDE9BC5DCA8DA8BE87248),
    .INIT_43(256'hE152219ACF54D6F022C6535B4F3F1DDB84DE75DF50EFDA8AD718B1EE0A500E74),
    .INIT_44(256'h297CABA1645148745AB491AE7A44102A25FA4DFBDFD0F7612A0E5ECE49EFB6EC),
    .INIT_45(256'hB691341982F0B296AB31BFCD773BB30E742C67D52C961898F0CCB815B87415B5),
    .INIT_46(256'hD026D6011EBE40C8C481FF7FA0BB260BD84B90A3D707E4AA4CD3A6350643227B),
    .INIT_47(256'hFE6F3C7E390C783611AEAAB5F6F6A685536B3F44D309E0A4EE16209B770E41E6),
    .INIT_48(256'hD26D5697DEA5918CF58B2515CF47A42E4989524F0E8407D2E335DF62FCDE1820),
    .INIT_49(256'h53C07A1955CF9DD6CA46BFA23471112BF5EC3E04C8506EBE32C77FBBB9FF3691),
    .INIT_4A(256'h9F87FD48C07AA779F19A1E2092BEFFDB5ECF7847F3256858FC70B76A0A91C5AF),
    .INIT_4B(256'h2CA6D680A21C6984B9141DF667BCBEAC73A2B5A92F3CF9FDE1B74AEAE74EEE7B),
    .INIT_4C(256'hCC58E2739603093C95970EC4AF668ABFB4DAB7B16F629AFB178871EDFF45C3C8),
    .INIT_4D(256'h47D38242892AF655BC7D48EBAF8EA21EFAD0759D9198A8F4B7BA995DB21337BC),
    .INIT_4E(256'hFFD1C88988A9A461B1D69A3C1A3CF0D6396FC718DEA6081F490666B840AF19A8),
    .INIT_4F(256'h2F743E435AA33B663B28C9E750647C432711375885F553D94DF5D48BE9BA0666),
    .INIT_50(256'h5963A006D908028D604F5AE37C1B6F6A9E9B980508145DE8F066C195F970833A),
    .INIT_51(256'hB4E195587214E1E353083846056C2CFE0D6AD1DA99F684ED9EE24A4B30042503),
    .INIT_52(256'hB41C6B6229DA15A1A97C9A71FCDC698AE0191E0F6DF9DD1A57BB0C3ECC277CF1),
    .INIT_53(256'h4DAE9EBDA36FEA2D87CE7383D4F69C7B2FE416EB287948E0F913C00D48E3FF4D),
    .INIT_54(256'h2E552BC7526E907237F7ECF3B627533A82DC701378AE5A880068CB650F4F47BE),
    .INIT_55(256'h27CA741D3616C883D30323E24ADDE43852184AD8CABBA5599C13B6B99B6BE4F5),
    .INIT_56(256'hC96E92529A90709E04B1737BCFDA02C597D715292FF1B855E7D97AD91A71E2F0),
    .INIT_57(256'h4104EAD05A1771444A861C0D5B092A7253E2220B83F7623EB396D7471F607FFF),
    .INIT_58(256'h2C6163533401A57F005F1025FAE64C161DFA9D695FB4B1F9AE22FA7202391179),
    .INIT_59(256'hD13F7FE6392D16D16BF2E7866EF2E69E245B646332FD6C398A98546F2E60DA10),
    .INIT_5A(256'hEBB7C90C3294C2A6FA17D10004BA5D3E566592060EAD4B9D24CFD65D466542D6),
    .INIT_5B(256'hA6A6CA02300598127A592A125B2655FBFD9092C41C5FEC019C35CC68ACBFD918),
    .INIT_5C(256'h8FE73B3A1DDE4CF805E294AA14EFECB776B7B20F520E028D8F6EDD9246CE5E0B),
    .INIT_5D(256'h4490CFC6B2EE8081D2A7D9AAC28E12038691FA1D0B0AA07FF0EE315B1007B07A),
    .INIT_5E(256'h52F9BF9479EB0762428565C6BA2372A48B7DC2C08C2AF9C1A9F2D75A5695393D),
    .INIT_5F(256'h10AE00F81AF63FB534258B6D98930DE53323DC4234ACD7BD086B6E7310BB3C5D),
    .INIT_60(256'h2D87C827349994BDC57D28313E7F766BC97BA1D44BA20241EBDA525DED33388E),
    .INIT_61(256'h55112AEC85EB1AFF6E4E602453FE313DD5B115E5935622F8E7922D5941B8DC5A),
    .INIT_62(256'h5E6577D35809AC848DFE4C4F092D094F9604EC5DCAF8DD2C5E1FF23F5C143F60),
    .INIT_63(256'h10B709A1D872FDCCD587290BEC8618461322F35CCAEE4517BA0264C58FBB6EBC),
    .INIT_64(256'hC07BDB2F2FCE3FDD75B9D21BA06B6AF8FC9ED5CC552AB14CC067E97F0F586304),
    .INIT_65(256'h3B8EE056DA06172E1CDE67D989664ED3E9D141989BA7196C0D5F0C2CA4A09C5F),
    .INIT_66(256'hCA3B804CE8F517EA9A8708D2C45E186CDD4514324630C6DB5EFE2F335A75B494),
    .INIT_67(256'hD63A91F81B0760F33D415BA55AB5574D169BC502C0F0DA1E41DE1F9736765BFE),
    .INIT_68(256'h0171FF2D73C44779D13F10633C7B99BA787C6E114F50DCF2C2B44317A8B5FE91),
    .INIT_69(256'hB588552CD73D7068EDFA2436DF6B32DD6064759D4AE1A6227A4B9228F34232C0),
    .INIT_6A(256'hE69E28FC5EBF17963B3B7A985EC5629E5969A75AD1BFD773C34B401245D2ECE7),
    .INIT_6B(256'h2F93FD6115B787373293E3CE77962BD0EE282AFC1C2FA659F3CE5C445AD30BCD),
    .INIT_6C(256'h474DE0CF5EE9BA207F1A432C799D311F1CBE02BF2B30BA86F473324640B2365D),
    .INIT_6D(256'h40594C98B9EDEDFC2988BA288B44A0629A9D239668DC1894313AB1DAF8810DA7),
    .INIT_6E(256'h871B16AB3E625EE12F7C99C9D39DC2AEF712DEFF03C036F167838DAA1C27E51C),
    .INIT_6F(256'h2E73104FAF77149ED1C1647FFE6DF7AD7DC86F4F447A5B1D738084FF9FECCAA9),
    .INIT_70(256'hA1AA701FCB504E3A2234E5EC2524B1FCD2F78A616E1997E00DB71DB4813ED871),
    .INIT_71(256'hAF6232D79888EC879FFC0843B1B203C7124EB61CC98AC7A86D3E2C5EC0DA2F5F),
    .INIT_72(256'hDEFC59012F8A96F847D0193595F849F0C911BA6004EC5EDFC60380282D33813E),
    .INIT_73(256'h5321A1E139C11F66D638896B8398F3D7358BDB521AB12AE0F674495FFEF773AE),
    .INIT_74(256'hFFC77D4C9CA5E67B2BCAC1718C10630732382A00A45B2514F9D0DFA1E891534A),
    .INIT_75(256'h899F4027BFD5643B6AF5F4D873D85CAD8DF5982E4DACE6E29BF639C8B9E4B50A),
    .INIT_76(256'hDE874D2DCD9D0F5190CA0D9C912D275A27FD0801935EBD775034686DF83FA73D),
    .INIT_77(256'h8AF6200BD6613F99063588CE270FB7999D4BF0FE3A3403E5013FDF2FFD81BE3C),
    .INIT_78(256'h39EE7FCCCEB4F184743534C205A39C6EA1E4A6FB04C301CAB0BFAB156F7B577D),
    .INIT_79(256'h59160DABC318848C136A7FB88123D561FC07A0F01D3D81BF6BC7DE15527E4644),
    .INIT_7A(256'hA60608125991BBB377D7EF655D42BE16D86E93516332A56ADC9430A137284015),
    .INIT_7B(256'hD68242FFE2FCACFD3733A18B34AED2E0258AC78E7037661BD6D144572C2CF1E2),
    .INIT_7C(256'h3D6C43ADC5D1873DA64C5EF585943ED7969F1043F7A6757042216B82A1BB5CEC),
    .INIT_7D(256'hA87026C408D2499344669AA41ABE67F67ED89D21B818C8E675BD6D1194F799F6),
    .INIT_7E(256'hA3CEEDD976FC51EF80105E9705A3ECECB68BDD3A0BF8E68E0D47FA471CEC6687),
    .INIT_7F(256'h9E1CF2765E2A383A06B61507EF3859AB9ED1D0135B9FA092D98B8A994E5E0E1B),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized18
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
    .INITP_00(256'hBFC48BDFD78C46DB8F12EC2B122BB35EB8588EE3EE61DE7CBBCEB0E271F3B4FA),
    .INITP_01(256'h3EF631BACB4CDA2B83B1B7E85BB24ABC8D57974D53C52A4983C95AE19BCB2364),
    .INITP_02(256'h463A23ED5D9ECD1688DD0C45E7408EC6881F488090EFCC07EF20EFFE290CE837),
    .INITP_03(256'h0E023E54B4C2A85A010829F93B8372024731859BA6FC6A094555C509FF897206),
    .INITP_04(256'h1EB7745CD9D74E37F34BA0AC359762EBB5D073190DBB29344CEFF407CDAFC915),
    .INITP_05(256'h57B493543C8BF24CB5D6784DD46FE1F729B4089CD2551EC9A1195C2C7D81D03E),
    .INITP_06(256'hF440AB0D63DD91E7ADCC8ABEE7046C2CBEB8F6BD37B32DDD6B848C32463695B7),
    .INITP_07(256'h2C0687C77C73E121BC8A91C041267E4A4D01B5B1DAFE7DE4E4FDD1867B69002D),
    .INITP_08(256'h093554BF0A4209DBC009973297CC580A8CD6BCAAA990033FF67740C269BA8857),
    .INITP_09(256'h8D167EDC16826692B170A27519A0790F5F4560770989DCE5328EFE5297C53BC1),
    .INITP_0A(256'h9E953A07B9777D97E581BA6FAD6E2F06F7B683B1F6FD46BEC382D94B05784797),
    .INITP_0B(256'h8E864E76515C016A735248C1EEC74239E0DA41C921D6223E61509289AC822596),
    .INITP_0C(256'h42380EE5F019DEB8A5A32AF7BAC34F4CABED3949E7713F225F9F041218C34119),
    .INITP_0D(256'h48C7EC7C435A5524421CAE8C640E5BAC22445C392C1FC718F6CB4A9EC9883F74),
    .INITP_0E(256'h13ED50495064B9F279CFF8220E300CDD60733C626FB808AB3F8CFFB250D81D4D),
    .INITP_0F(256'hFDEC00E78FFE65478B4AB4112FCFE75366200096080DFC0EBAB075E833096F1B),
    .INIT_00(256'h8E996F0035CEFE5C3A28529ECB2B3BE5220E2F3E128306D70729A6E26A00301E),
    .INIT_01(256'h4625CFA33F10B6CAE96B78D9BEBAD66B6C45C69C91ADA1108D240F90FF42AD5A),
    .INIT_02(256'h7635EF67241F56B2DC6A72D3EC47648EE3CA57033884E80395251AA1D8337972),
    .INIT_03(256'hB663F8768C3FAAD7CD456545FBC5A948BF9C8CC63168003137357C28493EF6A8),
    .INIT_04(256'h43F55241E1782AC0571F92209FB8AD4992F80BAED3A55379619D9030D0868294),
    .INIT_05(256'h9976E8AC093BD9D3154C8E72E51D8078FC49FCC5FBE35CA316C725E0126C4783),
    .INIT_06(256'hD41805AE2AE9F144600B2BE63771834E7DCB855DB7FC79EC7FD5B4E36A4D5E59),
    .INIT_07(256'hAFEB17202EE4C1A253A001F0C75BF2E5D21982A0660101E17C566252CCC67D83),
    .INIT_08(256'h25B9A3EB40B25E032C436DDE6556FBD1571C2224F322265884F4C2C19D9EA3D9),
    .INIT_09(256'hC71516198472B2E26E24D0FB87FDD4F5DD3F81F1B9DA41E504D196C3BB04A7F2),
    .INIT_0A(256'hFBA89F2CE1BF7A7DA955CD2DE5CA46412580D365F5B9E6D4C1C0F6631F98CEEC),
    .INIT_0B(256'hF73B5A63A418CFECE7DAF7D325F36397A2C3B653758758ADAACA0475DE811471),
    .INIT_0C(256'hECB569A304AF29E510EC350E1403ADA8A16E24AD9726B491C567E03B7BB1FA2D),
    .INIT_0D(256'h9158D739D03A8DBD5123DBE1D4F55A4B2E6B989ECD825305F34F89B45D18DCBF),
    .INIT_0E(256'h486C4ED8C3368EF38EFAE6B2CF56018408D7719876D01E8A24D6565A2DFC2E9A),
    .INIT_0F(256'hCB6561F246A8A65AD8602B837E5287CE6530A9B56177B017BB99E98C390AC0BF),
    .INIT_10(256'h2D5356C606C8E34F1309A79637470E758871D664DB9B08E6403D74F9EE3DA25B),
    .INIT_11(256'h1CE12D21DC6EA2F3E15B37437F8DEDF834D2D924BAD1E9DF3B9893D9AE4D3890),
    .INIT_12(256'h40CDF03E888F58FDDD021C0AC4321D4852D161BECE2C80E3F3352AFA074FDE31),
    .INIT_13(256'h99D4852BBF7F966FED1322DCE052A7605B3D51F223D8164227127E5010670BF5),
    .INIT_14(256'h5DC70C4B4453F8B5B4CE97CA1A59FC237298C1C09380BF5847E7665498E59203),
    .INIT_15(256'h8CE12BDBDC2858E444F75AAE34F4A185D25734E142C52FB0E8124B8B04E7E6A0),
    .INIT_16(256'h2517247AE76255A932254C04AA47F070A2B78532FFA3A243C46B05C025F4F6B1),
    .INIT_17(256'h843BB60A04EE44E23ACB992B812016AB4FB043549EC5702F92ADB64F948A5247),
    .INIT_18(256'h285EE0DD1DBF4D7727344052D26867587792A1763420507E3AFA162AFC5886C2),
    .INIT_19(256'h3B07413D168A13E6134DBB0475F24F3530A3F2E7518B0E3CC6B18CCE441BD84E),
    .INIT_1A(256'hD8F759C724B86F77A9E21A93442D1D65385C75F291DAB3F18C2A38FE22ECFD88),
    .INIT_1B(256'h24DB6149FA851B034CA8A61D3D475A0B20EFA64A3F099B4667099E8D65DD6617),
    .INIT_1C(256'h3644F8364B2862B3AB9F38086E7D92B41241ACDF3909DD9B5374EC30D6FF4BDD),
    .INIT_1D(256'h289A0137172AC6CE1D2B58FBDCDEFE9352FC85061845E7DCB76FA6D808846502),
    .INIT_1E(256'h661768B392BC17625574B529A96F8542D9EB3487C68D75F2BF40EE123C07BFFF),
    .INIT_1F(256'hF0AC8A9572748B15C5D1FB21B09E08D651D6DEC2C41C6407D14B8D52188B3074),
    .INIT_20(256'h0DEBBD772A769B4BFD3DBB8E5DF732DE55F4834C538AECAD4216CF57050B73B3),
    .INIT_21(256'hCB58182F16493C99FF39E28C765059B2AD75CA8141F0EB5B681034E7DBEBC2B0),
    .INIT_22(256'h2908EFF226799DE64984F4F1A2894603F440993C3EF2B68C04A793D2ADD8415A),
    .INIT_23(256'h03AF580FF02F553B76D685D7538BD439D10C3760BC8FD155B2CDA17895110A0F),
    .INIT_24(256'h84B0B739847D3E80FD4C62DC32224E7726A77FECAAC0F43324912117A237F6C2),
    .INIT_25(256'hAC389429DFEA00537CFE874A0C82DFB49BB4E48C73468C696A710834403377A2),
    .INIT_26(256'h706000E0C12CA30CCD27FE8F8CDB62FCCEADF3339135E4CF411FE6A22F0BB3B4),
    .INIT_27(256'hA03AA78439EC545763976DBC4CEF231AC13CB589CFB3C84075CBE6B8D34E5BC0),
    .INIT_28(256'hDADAB864EA17F39ABAF73CB23E033A5B27EDC5B1C2448A26399DA52E4443277C),
    .INIT_29(256'h3C6D3B224E89F48B504187614CC8F54994C59E4BF87268E8E1A2D48E31E8B1D7),
    .INIT_2A(256'hC0DF45E5A9D6136AEF6D0CECBACE64F00DA6452AB376B4C4FD90DD6F4455F3ED),
    .INIT_2B(256'h6213CE74D3AA7A5B4313CE306D35FC72DB670D6F093937C2B34C6B69BE2A7668),
    .INIT_2C(256'h5F87ACBB421D628F71CAD63E7AE42D67AA9A712A2E7EEC06BA5CFCA73A19C973),
    .INIT_2D(256'h1DC97D7DDFB380D83A810AB8A26EA83788169B72BD344BE04CCC5380A17A26E9),
    .INIT_2E(256'h09CFC2DFB6DFF2151E228749516A5BA45770D9C9FC53F92FF630615BA6F64CD2),
    .INIT_2F(256'hFEE8E795A2B25D435D46E52882B85751FA85E315772678EEF17285E1BA1F6BC8),
    .INIT_30(256'h67B22850658F353BA8096502C2B35C302A1DF3DE6CF7855FA4120EE71F4038B6),
    .INIT_31(256'h331698DE1D930C6BB72843485D112FA64DE5416DEFF2619472636E6F5AD77785),
    .INIT_32(256'hE548B55C2C082419902B0966F60D2BAEB86A04DFC7956C94167690CD03656979),
    .INIT_33(256'hD0A739A2D646F4F942F8272C2B37E93A84A8F4B561D56BEF8A5F33B3C94BC97C),
    .INIT_34(256'h100E5CBFF6F3514540347EF0A771DDDDB2C56981F4851536323B493020EA3045),
    .INIT_35(256'h63C5AB6400388B84071B0DB9E23AD3C40061F0D9B0B03A038FECEC23B7652B05),
    .INIT_36(256'h769494FD0EDE134E8FA25C38FD93EFDC10019BF9832A172BD52D4B68631A1EFE),
    .INIT_37(256'h579BB19E360ADE49D6EDD1917B3D50AFA31F2A62DDE4646B3D2894421442A1D5),
    .INIT_38(256'hB234D87E430A167870CBFD4E645A8F08FA77693F972875581D74BD5FCEB22AA7),
    .INIT_39(256'hF03C9A44B5004CBA0068121709432ADB81ADAE761586D3A79ABACF6736DD012D),
    .INIT_3A(256'hD140C736E6564B43395355A4B1A52533C5758255E06EED3E835976F6777BDC49),
    .INIT_3B(256'h0EE18F7FD14FB40DBB8B636E90FADA2C50CB3506C8FAC6C9664CF110CF4692BF),
    .INIT_3C(256'h449763F5F46CB790753452988FC91BCAC0006B6E464479C0D3762B17B8B16E57),
    .INIT_3D(256'h58D6EDB614FEF70164EFFA576D4231E267DE58E1B171CE94F5A2B9434213484A),
    .INIT_3E(256'h3B9B01E20DBC6EEAF0B07BDBDD89DFBFAAA25E4E73CA1D40E64405FFDF47F433),
    .INIT_3F(256'h69A1465CF4A3F5569BC5C45A88E29A6359DE7187D73F0EE91F8ADF781DE58A63),
    .INIT_40(256'h941C16D3821465E833D8B7DC4C6161E551F1C599D2BDDCBE9B9376094D3441F0),
    .INIT_41(256'hC702A7C96ACD77CC290EE106078F83108FCBFEB4A991DDD9C3B5A29EC619197D),
    .INIT_42(256'h1A8E10AAD22E2B6D5C832C7CB144E9435370E93E4E716BD8332CF15D78E73C4A),
    .INIT_43(256'h0F2F09B1F64072A8FEFC8B070FEBA975B62AE78C65ADCB2B08016DC77E9FCE9E),
    .INIT_44(256'hB42EFC820C2DDD03CB70F2B869462E2C10FF66EC102F6F91647F55C9E0A833C1),
    .INIT_45(256'h5B5094CAD1481DB65D15A9EBF3C770FA745A3A7F6B7D60BE963ADABBB463FC2E),
    .INIT_46(256'h9D1CEE636E11E63475A86AD77331315DF95FA4BC4A5D349E07443CFE78D3D9D9),
    .INIT_47(256'hC682A122D646131A5A82ACC160BBEC688396E3C8E9D179D09BB8AF72226514EC),
    .INIT_48(256'h5BDCFBDFE0CDEB26FFDE474A51D0A692C4CEE699DA71CBDE47331A047A7910C8),
    .INIT_49(256'hF5366BD05E2722E65EC0BD0882EC69DFDBB029728204C83693EB61880018E7AF),
    .INIT_4A(256'h875AB9356756742212E56EB3C4060CEA2EF1A6999BF53D48D8D4821BEAB96000),
    .INIT_4B(256'hDC1F60EF6FA02BD4F08160F1C00750C874923F69EDBE55A62064E6C49B40C1E3),
    .INIT_4C(256'hB56A993D07ED866893573EFF391ACEFE33DBB1F6DDE2B04F1671E92376E280E3),
    .INIT_4D(256'hD6C96A564FA5FB7670770C1AF6CEFA5C9BB86801DBB9C73B463A7E832F94D678),
    .INIT_4E(256'h2978D25F52F7C9732E1D4A78BABC448ECD9298B43216DF883C928F4713ABFBE3),
    .INIT_4F(256'h4591C83C9D7AF91F46F47070E7C7DF4A781A1FFAE5D54FB064ABC319916055F3),
    .INIT_50(256'h798BDAFD7AE341D1067810756E5041D48422D5F76B1676E43A89B7B68AD646B7),
    .INIT_51(256'hF05A4511A0AC3F75D2E5DBDBBD2BEB6C39769D9BDD571D2B1213684374AF094C),
    .INIT_52(256'h9B7547BE7FE5BED7BCE1644D802A1411F565653FA8B654C0ED037B25D89A242F),
    .INIT_53(256'h5084A54FE9B15B333DE5C8E4F85EEB8E900DE9C0BD2B0DDE2B388C8285419368),
    .INIT_54(256'h1ADC87CEF6A9F7BCC58A6BFC4E43257BEC60F336594CDBDF8AC6E20926396601),
    .INIT_55(256'h0B5E0B6F452CC1AF4CF9E2FD12ED1E82C6F8538F16FB9084ECD42F34AF023FFC),
    .INIT_56(256'h9711AFF8B3C36989FA5FA9BA0E6BDA0DDAC4CA23C06F592D5389D77721DC2F77),
    .INIT_57(256'hD80D4715A0C64323FB2C28CFB260C12238762625804236C2E7496CE75103E55A),
    .INIT_58(256'h7337A76FA505D6EB6A5DC23600E5C7702E0D57BA6AAFEAC74FF3E4A96ACC0F8C),
    .INIT_59(256'h022FCB5D64303CDE5F045ABDFA864C1DF17AFFFB81D5ADBC09DE4FD75A134D7A),
    .INIT_5A(256'hC7FC524FC10A403AB4C22114AB41BE5247EEA9431D2C36CCCAEA91B337826859),
    .INIT_5B(256'h75DDC2111EDFDD15BE1426583E3F614ACEE39BD08EAEA20A57DFADB4EDC9AF13),
    .INIT_5C(256'hAE4A507F9888927A4792586530D1053803AAC555DCBE2C815C483ADFE78E9516),
    .INIT_5D(256'h7C7DA8C40B6A1470324A2193A8A14FDE836032E247222630EDC5E28E7BB038FF),
    .INIT_5E(256'h9E7CA43BB2A8EB65BEB0C56DF3C043970B22C9A0B498A3F6746F054B0641161C),
    .INIT_5F(256'h2C41736F2E7B9290176201DE8B2AFA25BA78929EA7205F3B04C3B42A7A1D937F),
    .INIT_60(256'h86DAB0BAA734E581B610A2CACE3ECB83BE64A803C7F7D48911E39C6B480223DB),
    .INIT_61(256'h8F806E59B639759688B647199E65E5D654B786A38389BD00CB38879A14C0E1E9),
    .INIT_62(256'h73090EB25CBC1044E88C16306AA812C4520EC3961D57FB64BA22DF8D2E9E6C5F),
    .INIT_63(256'h76D6E0B3AEC6C78315AFA35C711801DE381D12B7A8B80C084B68212BE1B34116),
    .INIT_64(256'h7E35A0583F789D41AAF071F8E12096EAF4A6D6BFEB40DB9E260B7E7F9798643E),
    .INIT_65(256'h8E2B43C0545E33DCCFFA7AD0D302881DC4151BEE8C3B9239AB059B4D71581EEF),
    .INIT_66(256'hBDD2A7704B08BE455F15B5D7E926D38139E020538815562A3D481735A8205AED),
    .INIT_67(256'h3DE74EC920C0B581A0BBA86258F8CA20C46AB976CF41C68DFC262627143694F3),
    .INIT_68(256'h086143A34AD8EE04DFFA14A453149C2639F9EF92F48AFF71E93674385E4D3FCC),
    .INIT_69(256'h01DAE744ED0F180B6A0EFB38F6611D257BA3973DA3B97EA1DB05AE8905D9652F),
    .INIT_6A(256'hF3F05B27C1B1A94DC9955DF35107286BD84A2925BE4EBD8C160E55E2EC1BAAC3),
    .INIT_6B(256'h3A51F05CCAD7731749C6D84F7762BE098FBB1CC7D21EC6D83C22BAA70B483C52),
    .INIT_6C(256'hEA40BB8AAA053C32E050B07EFB7A91D43422D1CD788D73ED32A225D084AD9FF5),
    .INIT_6D(256'h1B535B61600E397E7889C7718619CB35ED5907CD62410A34131F5EE54938D456),
    .INIT_6E(256'h5154DBAC1E176B6D10AC8347DB0BFC1F9B561EA16A65D8195F7D6EE512A47DC0),
    .INIT_6F(256'hB395AD5C2439D9D54D0F12480EB4B218FA2873DD06EB649220555E5C7A2330B5),
    .INIT_70(256'h7ED793113E1CCF75548A74017604EFFEE1FF1C90C7DADF85994DF8C9ACE309A2),
    .INIT_71(256'h40168B3E994149452634995760C994FD22285E0B072F840471E7E69C2FC555F8),
    .INIT_72(256'hF0AB4B0631DC61CBAC0881EEDD71F09BDF1E97F2E2653A6824257DB02D6446C3),
    .INIT_73(256'hCD1DBEB05BA650F31BBB801A92C443C3A779D72CADEFF45FC0FC4DAA44A5C0D3),
    .INIT_74(256'hFB85B3F1CE8504A74DEFB566F3DE5525BF47DD4409068640E0815DD9715CCD3D),
    .INIT_75(256'h905743B8050D7AA81EED9DD64293527B2D8EC77362014A4F317767107059F51F),
    .INIT_76(256'h33BDD81F4833556F7DDEE182E1483B8D07C16C53D2E2731BC2E3EFB2956E06D7),
    .INIT_77(256'hB6F4BF1958588739049A989FCD53CF6BD5824AC8BD9210FC746CF47DB313F7B5),
    .INIT_78(256'h41FB2688976D4A4D04830936E25CE7E79C3D9B9404F4DCF9C0A96D35147B0E72),
    .INIT_79(256'hF26D3F7D5E1467AC6B247C241686743CFD57FCEEB927C0A5DF64546060A306D1),
    .INIT_7A(256'h267EF4A883677CDD2AD91997CD508919F1B05371E9C299ACEC4D6DD4560F33E1),
    .INIT_7B(256'hDB312199B29808C7B186B0DE4CAA161788273BDEAD8973A359418CE730A56C0B),
    .INIT_7C(256'h41E4D8F2DC891761FE51757097C78F977F3B968C8D45F060DCE1EEB20037E34F),
    .INIT_7D(256'h06F1B2D8A867735BFE794EF302B5DC39AA0FB8BD031FD659EDB16461D6FC28B0),
    .INIT_7E(256'hEAA2BE561EBCF476BA1402A32C1F9B2075597D6A6BEB7BB7AE8A73BB0EF0EB36),
    .INIT_7F(256'h15A474587C5230FC703F1A91A2B812EE55D23245EC9F7FD3C046C7D7EDB2CD52),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized19
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
    .INITP_00(256'hC286E58E421E7B8CDA88F5B6C234E728A5CFDEB5CA9D8C5A926860EF8FC6C0FD),
    .INITP_01(256'h27A1B5677718E6CA425E297C3EA4200B7CAA2E2DFD9F502949C5D7379DB6646C),
    .INITP_02(256'hAC1FEE60F0A7E445C9B01FE4CA5A3717C501375A9B62C6DF826EF701B14C1EC0),
    .INITP_03(256'h711E4E972E4002BEABD6389537C6EEDD903D5B2B9ED633539CBEDEFFBF6DFDB2),
    .INITP_04(256'h690273D689D2393D27C61CF660CE1099C6F6D1A2A1705488046482D09EB6813C),
    .INITP_05(256'h9BD50F4E3877EF6ED566DBDA9B21C1CA77F89FF69627F593E5EE2E8B9A17D65F),
    .INITP_06(256'h6329134D3F7279209A3160C8EBE9FA45D58119A6203D676BDA6077FF3CEF9559),
    .INITP_07(256'h629C52F700A6BFE6A81AA356ECB3911502AC634831D50239D09C546001EDB019),
    .INITP_08(256'h9EAC256A229D48AA47B81F285798FED4C537EBE0CE410AE1C96E2A5E1E1DBEFE),
    .INITP_09(256'hF25D14260D5438F89C729CA956D26C0722C5B60ADFFD3E49609EFD2053CA4BEA),
    .INITP_0A(256'hC50137ED478EE79F36C9C06F314E1D9E303BB2A27FE401B38D1692075233B47D),
    .INITP_0B(256'h2B53F473F4E1E62C57DE6BFB9D4736C55E6EDC5F1C7EE490935DD58ECAAE32EE),
    .INITP_0C(256'h3E5CFFD4112EAA5079ED6E693F4524DD0B21BF85A43A7093501DC16A991B6679),
    .INITP_0D(256'h0320178D2C94672881AC10E94C548436FBBA42F87F191724F1FE887976F706C1),
    .INITP_0E(256'hD92751C83AEF9028B9CE968FD037CB15F2A464B0D2811F38A51853A1A5444720),
    .INITP_0F(256'h707392D654D2B97E7FE122A6AB9B65286002CE1C8B2CC83C946D31FFAA15E16E),
    .INIT_00(256'hED3612834611D2886946679419524CB53B171D765771B9D0F844EE3DFFAFB36B),
    .INIT_01(256'hC7977344F7E865A692861C54DB2C0896319C605FA4A959D6F57B9269BC653ACF),
    .INIT_02(256'hAE3B92BE4132352831A1B1451973F9E74E98361434AFC57A8B5453499FD4E171),
    .INIT_03(256'h2EC4043284176F64361E7EB2CFB52835A39CFA4E9E5A6AB255B14FAD2C435642),
    .INIT_04(256'h3E62B439C5BB18453D6F245C0760ED212A6A7B01A4E700F09446A258A4236BF5),
    .INIT_05(256'h17D7A09856B970B7829F2C6742EE66C4662966710F5BC78D9D798EC0457C1880),
    .INIT_06(256'h0EC381D27E938FA03E7C6E5E8A2B074A6A948A678CBAD367A47BD9D7CA100897),
    .INIT_07(256'hC242293BA75AA3BC5AECC257E9DF05AFF513BE745A4077EADD01980D516F5F12),
    .INIT_08(256'h39A7A53B7D3E18B407EFB36081E9D28891725173AE543851BED8F0E0E83E6E2A),
    .INIT_09(256'h41AA9D1240259F47D6FA27F7D8E4A33AAA3C5F3747C49ADCBF683A9FF1F8D2E5),
    .INIT_0A(256'h91E0923FF4803156AB397ADCD79F160241F4B0C718D20D6FF2AB15909098A019),
    .INIT_0B(256'hED60FDB6F5F4CF4F2CD352A30BEC87048B1B5479A8D2ED539ACAD510ADFAFF2D),
    .INIT_0C(256'hBD2FCBF872B80EF9530762A36E6C22C246F70C112FBC31612BCFB883232B41A6),
    .INIT_0D(256'hCA861DA596D91E9DA10F107DD82C4AB0C56FDF46373CE68305ED1A5A0DCE74E9),
    .INIT_0E(256'h954B94B71F0CF92FCD527722C09BF454AB8E2E22F2B4A5445904F1F9098F7CA2),
    .INIT_0F(256'hAB059749553DCCAB3538C438DFB98AEB0035948B2743E3439AF1AE42A8307E0D),
    .INIT_10(256'hCC1D475461EA49A4336D420BC7EF65D89DCEDE72412BCFED6C4CBD2C498E9DA3),
    .INIT_11(256'h18CBFD9860E7E10E193B4FFBB28EDBE905B43FE1295471459F219F5E6952FFE2),
    .INIT_12(256'h4D110EAB158DF72363EA05484C19D894CBC98BB37C54C21623EBE5A19FB35385),
    .INIT_13(256'h21AC7767BEA6F0891ADF386FD278ADBD9F85EA29EC9CFA79B043501966307941),
    .INIT_14(256'hAFA1477CF25FC067205E8ECB6A19A67DCD03B977E8A9BEE11E856995AFC91695),
    .INIT_15(256'h5934BECEA5C0F6E7F43BE238B5DAC9F00E61324F1DD9DE3B06508BFD738A4415),
    .INIT_16(256'h71DED01C38E551EBA96752CBB95DA0A0E5C7F738C9F5C54B45366759E9BF820C),
    .INIT_17(256'hB5A6B42A212201424477B6D9D09C4A542429CD262E49EA49DAECFDA4EF09F831),
    .INIT_18(256'h25316263FFDA4231DE29C74E335998790E3162167584D650C2DD22B132A41AE1),
    .INIT_19(256'h97E351719C764EB3C73620A9C300F2DE9F12F98A6ABDF611EAFEC13DFF186489),
    .INIT_1A(256'h63D3CD0727AA0B8749705AF3DCCD8CE0C88379A197B22FCBAF7F4D74B24DB66B),
    .INIT_1B(256'hEE34A3AC0BB4814612E4075998F34147CAB109B662D34D684E02EB5F5D8997D3),
    .INIT_1C(256'h771B6C084422A529EB326D4C1C0BB5C26F8DDFD694378F7A342A298A577D08A9),
    .INIT_1D(256'h2FB8BEDDD6602E517A6550882D65DEE7E292F409E5D79082B3AB78B53CCDD2EF),
    .INIT_1E(256'h75B7946896F7510C1B820D06B1B5E5B9F79100F0F32FCAE6D1C530D9338FAE82),
    .INIT_1F(256'h7A0A17B671ED3EE9B1A04E451F0624E08408BE02E7B7C2B99E519FA9FD184A95),
    .INIT_20(256'h45A0C1B8FE2073C9068553995AD8719DF2E9DB9894FA794A7BB6C84244933528),
    .INIT_21(256'h065A848E408EB75B42638BCC059769D4A69D5C2217BC6EBDDD9C434B28A0DA7C),
    .INIT_22(256'hEEB4E566EBD670DDDC88845E074E94CE21DB60B7CE1D8A1AD7B05DF9114930A1),
    .INIT_23(256'h37CF11043C38BBB31F2D8B5B15933864A534FA82E44420F548C893070F25ABA2),
    .INIT_24(256'h76800D4B1DB94B100309798023B4108C0FCDC65B73EFB740829B4DF2B693B637),
    .INIT_25(256'h5D1E9B3D53D1A9F120F0FAF95683AA857D716CC778AD731F44B90F8645A4EDBE),
    .INIT_26(256'h72141D0DEB20B6DEAF3E65A03943903BCC557EBB9DA2F687A892AE233C729B25),
    .INIT_27(256'h7071F78188D253DD65690F3AD5E34669F1741F6AB0795EB162AE28AD732395C6),
    .INIT_28(256'hDD75FD60168EC3AE393916BDE90D6BCA8B354B6A9903B0F8539697985983447E),
    .INIT_29(256'h9DA5A9219D4BB544B943AF6C8F4DF3F597B944B00EA88F892CFD671525467986),
    .INIT_2A(256'hD6B77891048AE2327153AADA5AA00D486AC57A1D451EB660D413A56A7AC0240C),
    .INIT_2B(256'h4F527A89E1B72CF4D659D4F83E956267D3BDF7D6C40F68F1571635C91CA824C5),
    .INIT_2C(256'h982436361E12B3D9ABDA60A51B7E6B2DE6BD85410B4447D458E3065B9EE90D6D),
    .INIT_2D(256'hE75191029C95B5D332161B5FC8FC307059ABDD6902005AC477D176302D4CD776),
    .INIT_2E(256'h8A0A9FC624006B8739E7D70D305A43CEDFD6E2667A5B948DAC8E531AB1510483),
    .INIT_2F(256'h069C34DA46AFAF1AB7E2AC9CE5C0CF805A5049C26C5BA24DF65A6E5B5EEB7C9D),
    .INIT_30(256'hB2F25198E499FB3392399E6544B1096F961A85F35D6CCDA4E8BF70D5D65BF24A),
    .INIT_31(256'h8706FA8260BBC8801D41635E681D71DDFAEFEB2A5D55D1C06077366E67C28034),
    .INIT_32(256'h299A2F196CDDAEC28377B98F1AFB9C337DA311B0121DC85680395601A625D5C8),
    .INIT_33(256'hF9E3E4AD93EF85CF63131485DD57B3F8EC8B470748A3062B486FC1BE87FFEA80),
    .INIT_34(256'h3BD813E3BDD8FCB712F2951E7596058CE88499E6B9BEE540604AE6A8E51FF695),
    .INIT_35(256'h3B4A6F88FB1B272BF23F8738BA585829B04FE721B7559D4A362BD200C04A36B3),
    .INIT_36(256'hFE81F3DB1445015D21A78DAFB7DD7796B7B423BFB9EBADE8E499B84D724D4ABB),
    .INIT_37(256'hDA6D43FDED18511EABF4CED5BA4B52C876775CA348358E8BC1AC669B797BDD54),
    .INIT_38(256'hF89DAF35409AE726A93E6015363F0694A53462A3043E04CBC08D35C7F5CB4BC1),
    .INIT_39(256'hFF41E70C24A18FE38DF8845D6E3D7A13C09F710E0E978E2E2ED2A6B9E2B7792E),
    .INIT_3A(256'hDD9191481952D304F6154EBFD4B0EC1A5EC4BE4470F96C04AC68D1BC4D9457C7),
    .INIT_3B(256'h88A56E976A8AEE9FFF34EABD1FF68D990F0325580C91568789062DCE7723B7C8),
    .INIT_3C(256'hBEE827C865322D8A929A15599ABDFF0FE19AA20229B369D39537351272B043BA),
    .INIT_3D(256'h1B6FB6A132A8CBA8A9D9C682E1AF1B0D1BCEB23973E2A0AA834314688F63E159),
    .INIT_3E(256'h21A105FC9FCD54005E1B0DA8C4C92CF3DC274B0B5427A84898454876394B3F9B),
    .INIT_3F(256'h41CA56F8AB5CBDAFD60EF4E6C72E50D3D85E5A546604652C6169BAC6BAAFCD58),
    .INIT_40(256'h65B81337D213E24BD499BB3B139D00AA6EAA1232FE927E76D616D0E559EA5FFA),
    .INIT_41(256'hBFA7D94828FCE8E9A6D27BB7315C2668C7065E3B7BA3D95F73DFE1418F2AD524),
    .INIT_42(256'h5ED1CA701F490FE7A201181C36C37082D5F00B47428479B9B48AB52ADE81BE94),
    .INIT_43(256'h90A390BA20BDFD4F5837668EF2DFFB411F0EA57779B19D2ADAF9D65CF09757B7),
    .INIT_44(256'h778DF16BDA2FC7689FD89861037D44A23D812580A882698526A83E1E138F62BC),
    .INIT_45(256'h327FADE727FF0528461F53ED5FE12A232531846F5ECAEE8ACE80304B55C83573),
    .INIT_46(256'hF5644B63772DC1C5EBA67C5028A43332B04FCE7DD0F4D449EDC1F856D0B87BC5),
    .INIT_47(256'h01B69BB02BB5B4105BC89E843830A81487CE4A893C31A7D59F7CA52375C10E70),
    .INIT_48(256'hA395762467241823BC95CEE52225337C816D62C3C224D58746980F60A35B038D),
    .INIT_49(256'h744A8FA579146FF536CD50D54CB9C1E248DFB50350741B9CF191F54DC9BF93CF),
    .INIT_4A(256'h96ACAA58C3AA806C0048B6B33B351D80C5F68F84AAB8512A1F63CE43F37B776C),
    .INIT_4B(256'hAC4FAF0A41AC819F99A91AC3D41C320D3EC06F04F3D5AD5E80B6CEA6310E323E),
    .INIT_4C(256'h6C65697D939970D70428E96300A5F5B7F521AE58B1091AC968090A8242EEF283),
    .INIT_4D(256'h008113A0D13453E943300BAC916AD66AF9B197A5B3C26454D6FB70ACED077444),
    .INIT_4E(256'hD2349433A158CB451F90EA4D664D4EFA8EBAF6C9661E5A18D15088544629F27C),
    .INIT_4F(256'h3403A1882460F91D3BDACEE9A5773CC4D128C209D6A663EB193218CC16647132),
    .INIT_50(256'h80D4986F7B03AFA7123FEB06249DFF506134DE2B06F62A3F5AA7D400F3F89D04),
    .INIT_51(256'hF369F847076699B5650911BD6113DB23ED7E62307BB77E93BD4D0E50BEFD77C3),
    .INIT_52(256'h81DC84390CA472894EFD63181D064FF3DF81F905D8BD341CAB91B1AC6D3ED664),
    .INIT_53(256'hAB0C97F5DED6424399AF2795DA5198ACD3C044BE7CBF982C1931C7600FF2F945),
    .INIT_54(256'hABB782330E53908ADB1F5D84308C6EC480BC3A0C4AF8C0411AF91B1A5BA7A500),
    .INIT_55(256'hD30C776EB0E842D2FB159916834E33CFD093DA5CF680EFD679C3F1A6EE05B7FA),
    .INIT_56(256'hB9D9125E4E1DA7E5A34268E0156A21023266ACF374997D052B2CDAB0DC5C06E9),
    .INIT_57(256'h721E5AD32FC6C2695CC12DC2C6366967EFB479B716B9598F3E524477A2A78C45),
    .INIT_58(256'h7B335440B22EEA3D5B071957CF2CCD586393862A123A14E02586DB24E97FFEE4),
    .INIT_59(256'h2DA03DE4C9E82761131D946C98BFF200A452D599FA64387DCF5BCDEACB830F89),
    .INIT_5A(256'hC2A1D606606D3B27DF50B895835EF71A857D91CCE70A22118622657EA89625A2),
    .INIT_5B(256'h26DA19E4520DFB4F8C47CE85A25057DE4377371FA23CE70B753AF79E91B663C3),
    .INIT_5C(256'hD76CFFEDC9F213EAAFCC2CE9994F54D3C8AFC341E8F1F612D85AA7ECA64E0612),
    .INIT_5D(256'hE552BBD291BB432F449DB7592593BD9FA0614874E86FCB10970D235C56045A0C),
    .INIT_5E(256'hF8CBCAD429F2B334BE53C46AF110F5F6622CEB49717190F836ABA139E84AFC1B),
    .INIT_5F(256'h1D0AA1DCBCF736A78AFA0E89DF451E08F695633E1D22B5738D0B7EF5A08C2571),
    .INIT_60(256'h75F73F38F6BFF9DBA8727B5F0480656805E054E2E3271B2E6B25BFE3FB2E697A),
    .INIT_61(256'h6ADF01ABA6F4D9E56A8B45E0C57735064EC15777595D96F149B3A1C0291DE883),
    .INIT_62(256'h60ACB28E3414AD2DC714219969D66F2EF6E7FBF30B0075AA92E4E80B2A74B2E2),
    .INIT_63(256'hBDB7FD204389F01FDC0F7DC915FB8E8A443958B411B536DB6D5D192A4FE3E15E),
    .INIT_64(256'h7D658DE634794C1BAD2D4639C5AD45409C19FBB962AACE41C1821458F3636539),
    .INIT_65(256'h5134FB00ACBF6AA18717335C7689ED954F6D6A26A995A7CBAEEC073C7857CE38),
    .INIT_66(256'hE3FC3A18BBB9BF5F5095485B5F1D53D9DEA91A1BDF30B388CA7B44F5942A83BA),
    .INIT_67(256'hA165381C9D5B889FA4CD01E0A14878E067C74F7EEE77E880DEF317625E0BE4C7),
    .INIT_68(256'h85478C5C4964C2DE3E77E6EFCC0AAA3EB12B335640850A858525B803F4E4A090),
    .INIT_69(256'hEBCCEE0E39C312A977CFA1E9A8190E746692CCF331EFF7CE4B8B769470E03C41),
    .INIT_6A(256'hADE75CF015CC56589A746E5C71439F0DA9266A7C123559FFCF330282041E2488),
    .INIT_6B(256'hA821190D0542375FA598B71500DE7B885B382A54594E8BA6853B9F6E300ED792),
    .INIT_6C(256'h30F07E80A029513EB8B0132E9A60DE95849959A4D7323970856240DE0238C424),
    .INIT_6D(256'hFA9D39AE3DE99A20DF0E844A4FF355543E0A38C99791F4FA346F931CEF87D399),
    .INIT_6E(256'h09E3390FE1BEDDEA82CE746DB48DC5B55FFCC6D65966AF6D8465A79B06236772),
    .INIT_6F(256'h13ADADA62F0BBF33ABB0C01CC52F41C917DA7722BED19114D50789CBCC957B13),
    .INIT_70(256'hE8DFEEF26947254F794E52BBE052DA1339C28F88CDCD12AD5A8B1DF2CB27B17F),
    .INIT_71(256'h8B4881DAC245AFC225B1E825A91AFBC818E4EDAD75191FABB168E915BB4FD03C),
    .INIT_72(256'h12C781FBC5F669A27D5114612B1F6915C45A97628CB5B9F04304EC556246B446),
    .INIT_73(256'hFDA8D5060D37D79B87E6A245EE908446CD730C48577EBD09008689ECD94D560B),
    .INIT_74(256'h5717B92933384A87331E2CE6D4741800722E07E6D0F84213482886EB1ADC5F90),
    .INIT_75(256'hEBB43E6E7C438A2E7E79754396AD11AC389A9DA14027CABAC972E16B71EAA8B5),
    .INIT_76(256'h85BC4BBCF1D26DD2509AF29E7DA1F4ACE4FDAF04D75B5D931F1359A9F7376E4C),
    .INIT_77(256'h57DD52BB9AA35C0CA45982FB82BB1800A65049FFBC63D560D1DF324C5C2C3231),
    .INIT_78(256'h113E41A41ED44094BC0BBA43689E56F3A8705EB809CD80D7A52523ACDF37D029),
    .INIT_79(256'h3FDAE772D8A6B36BD73676E3C1B0CF4BB00397550061F5E20433F3E9F9481FD4),
    .INIT_7A(256'h613D0CE3FD6B0C757D25EE0C59EFB0970ECE56913E6CEA692496D240E68E87D3),
    .INIT_7B(256'h1D8D132E31D45938C292AFB2F0BCDD00DA37B239D94CE2C43EC08204244F742B),
    .INIT_7C(256'h908F663E7246B6FF969B79E72C8780A8961E9DAABB3D631482226FA94C32AA89),
    .INIT_7D(256'hF138345A66009BEDBBED282CB8B7A7BF0BAE5C33445BFBE449F4B30089ECB812),
    .INIT_7E(256'h694AC329777976FDE6DB622482BACB3C362D9FFD07097029E0EF53DDD77A705D),
    .INIT_7F(256'hECDE411E33BE06258173271B3BE5DBD2CFFA4F2344B3ABED79AE04D8C7EC968A),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized2
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
    .INITP_00(256'h763AB330938102DFC35B9EB8894FF3AE9098C6B986CD2B7496BB426B23E80460),
    .INITP_01(256'hCCCDFC145DB86FC56CBC18D7B14351A0CE1C26A601FF941D3CB232589A6AADCF),
    .INITP_02(256'hCF8330C2D1A59C229591368DA56C1E4A665E82D39650D994C025CB0CD2CB87C5),
    .INITP_03(256'h8C273C30B93DB852F6E437C3DE15DA67DBAADE0A5062875FEDC3B35C955B67F7),
    .INITP_04(256'hF4614817613ABEF950787FD755A756F2AB8C0DEBFFEA9F652E9788A76FD16F22),
    .INITP_05(256'h2EFEAE26698E9D020E22626BAC7C30DA16882A96A59D56336569D4884C2B3F07),
    .INITP_06(256'h9236BC4A522B23482A6ED68D968D4C282F62109567B4D79CD8768B16A4B7C94B),
    .INITP_07(256'h15AE9D748FB5A2E68CF5374930CF79918C07D7148B52D628B06604F6A2EDB483),
    .INITP_08(256'hB8D0C16A3B4813A1A6027913720E26E2FB1FF49A9C79DC40C51C9BE41D258490),
    .INITP_09(256'h3587444646ABB9B5E6413BACF1FBF8810CE79253BCEE5E660FCF8E6CEA8409EC),
    .INITP_0A(256'hE59C3E2738CB084856D8D91627F63E4555D5471A0C0AA592E46EAC29EA54F633),
    .INITP_0B(256'h54B18B2AC3BED7918CAE33DCF12CF61CACAAF84EB5420A4EFFC259A73AB0888E),
    .INITP_0C(256'h0C88C673F559C17331CD796F867278F14E3C06EE9063CD33A8984217BDDE5305),
    .INITP_0D(256'h2207FA1566221E5D8F063912FD49F2F8E4D5976D1008A3A553B32608512E5277),
    .INITP_0E(256'hA8EAA9C771F981EEA044E467F0170CDC72B08FEACD1FCAACEB1C82BE2AA1A4DF),
    .INITP_0F(256'h5431BE6737B6BB5910FFF4D434901DB689EB3E4472CAEA6C96F87944B7B6538E),
    .INIT_00(256'hF86F882AF4BD6C13007006E1EB3C5DDD49382327D809365A10AA485EB36C1E30),
    .INIT_01(256'hAF0F7FA7B1BF18FC57667A811CE148C0EDD70043FCC726219CE0C59A0C655B4E),
    .INIT_02(256'hCF39E033ACD0866F3521628457C4BB817705E4A9C112BA2A407A439CDD5D1373),
    .INIT_03(256'h9A98BA26B805C9DC3D427DBE93B45B3227B77DD86CB94D9F2DC005302F43A31F),
    .INIT_04(256'h42DFCE898928EE3A65CB7985E736C1BA5ABE96D3F2C932B780D7BE0A17B2A490),
    .INIT_05(256'h01B814305187D82D31F270148EAB3C900EAB524BBBC4F9E466EF5CAE6123A3FC),
    .INIT_06(256'h999F8B1E1F699EB698358009E51352999D1DD2879148E457D945EF709EA98A27),
    .INIT_07(256'h1E90CD7CC9B5912D7DF07CEAB66776449B88FC0B8EF5EE33FBEB5E39B0A0DCCE),
    .INIT_08(256'h3ED2D4A9238D60B97913AB8C822A7C87A0FAB672686EE419817485230D002B28),
    .INIT_09(256'hF3AEA63E83B2E3C8371EA0C9A5201EC2D8F645FE4C2148FC56CBEB050A722E36),
    .INIT_0A(256'h437C123575250CE2DAEC8B6F68B3D74B32B732CDA60346A2738E1F573D34B292),
    .INIT_0B(256'h6F1283A7CA19E0E450AB1800DCDE21FF87937F8FBE55C35853F6310659D0B64B),
    .INIT_0C(256'hB2785C93BC06265EBC3E636318146FC4B318BC7FC813A7B5BC1919C5301B1665),
    .INIT_0D(256'h64038370AD80D8BF64BB310B4A281D9E6EADF8718FE64F193B11E89A07280229),
    .INIT_0E(256'h1B379C61F235564788DF3A1196756165AE9E78579D96737B0C62D1120A0CB33C),
    .INIT_0F(256'h9786E2349EDE0FB50DCCE26712736212A6D891806FFC2432EB834C01A07D936C),
    .INIT_10(256'hD39E9E6505AEE849C19AAE965A07F90AA8AC6ACD7BCCED25ABA18A112AFBC6BE),
    .INIT_11(256'h42E5DF3AC5D589C38546B010A3510E5F493F0C7AE1361E3C0B7DC54AD7A48CB7),
    .INIT_12(256'h39EB576980B40A0C2316EC57AAFB25351A824F59FB457DB726C942C06C0B09DF),
    .INIT_13(256'hD94F6C5884DDBB0019308E6B305417310903A63A2048F9B7A7392AE626544A5B),
    .INIT_14(256'hE6ABFB6529CFB65F998078E9D7C103E682A8A1CCE69386A1E30D78E2DFFD3E88),
    .INIT_15(256'h84B1D6A7CB549D7A0A2DF8CDB661F6D99FE15183417D5985FA59CFE1A73936CE),
    .INIT_16(256'h0D3C5E1BB826DCDC5E429B71F6E45E3A9802734716E09101F7A36BC34C9D91A3),
    .INIT_17(256'h58EA9C9914E108885196999724F90FB8D1893FADC14A891DFF3670FAA1C8D514),
    .INIT_18(256'hC1EEF3577135ED8F325860691E4692454070497A6E041CDF9E58B11FC6374B29),
    .INIT_19(256'h3E6A347AD152A200B667E3A5AB8A6BC22849148A713575175B654B6741F6DC38),
    .INIT_1A(256'h25FEBDC01EDF38C98C99FCCC6E1813E942195C612BEB52676CF54AA3ABA4675A),
    .INIT_1B(256'h6FF889166A292FA8317D6124AE4765797A7963BA156042E2204C3EBCA6C9C51F),
    .INIT_1C(256'h1EFD8FEFA41FB80ACDC1504F89E1F6C4C09EE562543E6349D1960A70095ECE9A),
    .INIT_1D(256'h6CC7BB1A9C75391FA436E4D47CA3ECC3B5E618C242655001A53E8C479E5BBD9F),
    .INIT_1E(256'hF8727DCEE2D49F1F2853A2E08434AB105CBEFF403F25DC26D25956E51D57A901),
    .INIT_1F(256'h6661F1B0238D448DCEB9C30738981E85D8A2D1D3DE2BD07E8163765EBBE32E30),
    .INIT_20(256'hD2315C79FAE415A558231AFF5B528EADF50836281F30E2F0F5A509C8306F39B4),
    .INIT_21(256'hF8D9837A516F5FF6CC110D5B6639A8B3AB1CA05D239218B39D5AA0BFBA345EA4),
    .INIT_22(256'h9BA68A77D7317597D47C59F40CC0633DB78AD5E6E8E55D8B61AE9F80D0A5297F),
    .INIT_23(256'hEE3ABC8C1A91BF8B91A763B81EA37080FEE4FAB9DC930585FF5255C4034245D7),
    .INIT_24(256'h577FE6BFDFAD9586B3DF3A9E7FB04407249476670DFDDD711C02CFA788FC058C),
    .INIT_25(256'hE40C6B79BB840E07EB056C73642ACD8562C01637F847F147982A7D1EE86B9617),
    .INIT_26(256'h66A2BDA013BDE9F31759E59B9EFEA24CCBDB9BD78113CC6C46E0ADACEADCD2D8),
    .INIT_27(256'h9962F5C33A3BCD8C16D9899750216639C99B46A304E21D5B7B4DC83B763FEAFC),
    .INIT_28(256'hCFA52A7A110503998140D92A7D2605AA5146823665929B6B5A3C6AC4138FB8E7),
    .INIT_29(256'h99308FF75EE98826549D4909E7007C27E096DCF8FFC37F59D3628D0C279EA77C),
    .INIT_2A(256'h1B29B057FF8E5E9DE8F516024B1C135E7DAF120CC596FDF07F564257C2F8494C),
    .INIT_2B(256'hD17E90F44FF639F872846DD9CE857F5F4F0F72361A5D11763627B295A49C8D11),
    .INIT_2C(256'hF1913186452CB5709F959D2F294E30AE0A48050E88FF181A9FFDA4BEB565C8CE),
    .INIT_2D(256'hFAAC4CDEE12FBA35F1AD193F742B786835CE505BB71A823B45849C4238CFB432),
    .INIT_2E(256'h298D32730D8D676A5D109617C138C494AD7B82348C4AC87D601E5CDE1077234C),
    .INIT_2F(256'hCCFBB7C8A36450BAC6C8CCFC2172C45299C77396155009CEA40F0279A46FDD7E),
    .INIT_30(256'hE619319D944B404422747D4B5BCDBC9212A3BE17945A7FBB4D27E7E5932ADDF9),
    .INIT_31(256'h99B3D48B3E48C14289D2776AA344A4BAE82FFCAA408605823DA450BD31B34566),
    .INIT_32(256'h6026A0003AA18C4FEE4C718863099513EC022E30A85E399D26DDB278DE379FB0),
    .INIT_33(256'h8BCC8CA848A2EC0A74A2C8E203F114AAA85B466783D0C995A86201F31B8B8017),
    .INIT_34(256'h38A06C5250352D10FBD82A0D25F3997B56C5F27B08061C340156C5C8E330843B),
    .INIT_35(256'h34BA1132E69A9E5F3039B057660A786C59C19A386470E7D36867260CA3CB9F56),
    .INIT_36(256'h2C71DC0E6286B2E72D7AC896261487271EAD1A542184F11A7FB2285D280BFDC9),
    .INIT_37(256'h6C723BAA5437FF25BF111E20E4F40B8EBDF8C832A5869483FC9A3C0F546ED6E3),
    .INIT_38(256'h1AEADEE5F43E70FC6CA244DAEC39662910B1175ABFA8591C250CC4400508B2A2),
    .INIT_39(256'h1A9074ED16EF28945BEAC25913B51CC61B7C289D10A7C81C732EA4902EF51CE2),
    .INIT_3A(256'h46F320082297C7D63D47F14F9449E079F221F800A3F37101895E3435A5885C18),
    .INIT_3B(256'h908ACD4E8A66B6012C4E6F804CC475CD980613163F242D3B1A55E3D0A55E2313),
    .INIT_3C(256'h438CC8A1CD0C7E78D20D99FE92A294BAFEB2E32B9C994A8DAE16C2ADD8FF138D),
    .INIT_3D(256'hE2FB4E55D902E6164BF24D6AC3E5A7A2A8A9F03FE21A4E9C130F7D5548757FAA),
    .INIT_3E(256'h29BE17DD8899C6448E5E8D4368633C3DE9A2CE763D9DD0B7FC1B5B513F019253),
    .INIT_3F(256'hF25170876626CD81F6881570CD065C5962C952EEB875929B6C2A58C04B082FD2),
    .INIT_40(256'h1A2014F74C52595D35E7F50C64F81602D7A67E93B65FB15142C29C55BB6E0999),
    .INIT_41(256'h7C78B8CB983BB03219137EBA963A5CC7D9BD7E8D7C6AA2565C7EAFEA9F55DC28),
    .INIT_42(256'hD4B3FCE629FF7F28DA1E5890AA1F5629BDB4DC148AD2069EFD7FEC40D9720106),
    .INIT_43(256'hEE500DCCA8877389D8738BDBF3E4C61C93A1C86D628395F4698834FB1E3394DD),
    .INIT_44(256'h3208655920DE979579694DB5EA4CE2160C90DA5ABD3E3EE2046A3935AE8E0EE4),
    .INIT_45(256'h0AEDF102810CAA98F479A2B1D209DC11172D558A53EBAD52545FD4BFFC1D6772),
    .INIT_46(256'hB8FE9A09F13D3C4A8154F4F953D77F3ADE99CECDCCF0E2525B901B5D39A5B288),
    .INIT_47(256'h19EDACE35650A519699203F8BABD541A8EBA8DB0CEE3E3BDF75E06D6A7E4F5C8),
    .INIT_48(256'h7B48CE526CD26BB944D8509007D70525B1EF9CC4DE0175E2196CC4CE525BED1E),
    .INIT_49(256'h6CC8A0C3D9B8EB2EA8CBF578AD20D2CF8340324F96147B02CD6DC54DE31E4FDF),
    .INIT_4A(256'h97A65ADF176D5B1A9D25C831781646754EF973DBF0C22ABF5D0385D18C34CD7B),
    .INIT_4B(256'hB970AB155D263F3C59C0DFA4B91A33E47F415733563AC54EA86C4ED40147A19B),
    .INIT_4C(256'h214399D73B485452F0C9D5ADFDDCD311D71403D28B06EC351C775D2423287F56),
    .INIT_4D(256'hCDE1111B2FC999F5BFFE7DB1D9AD65A6B424FB26D967D589572913748B91D711),
    .INIT_4E(256'h6F892CF78DBE59843883C8C8ED317C8115D494FD10A205C0C0FA39A8749E8355),
    .INIT_4F(256'hE2341C5D64BC2D8DCF5606A51FFC8B08B467C3177801C20AF84B6A6288B3EEA9),
    .INIT_50(256'hA33CD60A8AB2F7858AF5F34FB0467B0025CB95969C62F4248FE2D05C03E65E0C),
    .INIT_51(256'h8F3D300B0076B3D52C7685122E88FAF25ADD14BEC3F2AB1919702FFF04EC1279),
    .INIT_52(256'h24CA7A71024F422DF8E8E7A746A1637349981DED73FF1F434EB3D9A98B0CF346),
    .INIT_53(256'h7AA1B392BCEBB047DEC8E448D3E4C9EC70E0C4C90608C7650BCBCA1141FE8DFA),
    .INIT_54(256'hC12AE35E66422C43E53A1B0E7B9986F4AF3BEE201F7161A63BF91F6F8D9B6FA6),
    .INIT_55(256'h01601C0DAFFE00F4570520E837C059897BC0FB7DE49380E0A56CB0B0CDA97BF8),
    .INIT_56(256'h934BD3BD42371FC09577E2FB4CA01C0686FDEAEF91F458C94B02AB3CAEE518E0),
    .INIT_57(256'hDF6C582F411958D1D602B49DF838FFD40A5B7A65DA4D919F2C2DF4039B77D29D),
    .INIT_58(256'hFDE068530A2CCBFDCE6AEF22ACF5AA177D4E93429655F24B0D236BB8B65746DB),
    .INIT_59(256'h53DBC12D88EE5B771C1D325EDF69FDBBD58C925ED6269F11A28C3B1ACB116B39),
    .INIT_5A(256'h35851285E870A7C76714FDABB6340FCFDFA79D4B651DBCBBE484EDC7EE4C265B),
    .INIT_5B(256'hF93A5E98945CB1D7AE4BEA5F211DB8C7AB974BE5E69B80D3575E511E55B4457F),
    .INIT_5C(256'h8147F6177A69847E6AEF46A0E069B3B4453BC1A08B55602DA65507AFDEBD8863),
    .INIT_5D(256'h62C814DCE18B600A5725C8DA36083DE3FCB7C4D2F574448336766483005C6D33),
    .INIT_5E(256'h9792181A83B66D957F5985F8F463C6E8C66F94D5CBD3562D0B4D2F0860945EEE),
    .INIT_5F(256'h8E887BD3E230905E1B23283B910F71ECFF515A40A645241C3C1F932010887628),
    .INIT_60(256'hB5CA72765B23503ADA891254A830B17910530720B906ED713EFF1E4B461CA1D9),
    .INIT_61(256'h4B91E42BD03711A9E7A1CDCE883FB8AD630B13F7D16CBA2D551E349AB6AF7550),
    .INIT_62(256'h51A722229C728DA7BC0AEF9E87D28D9F58FF855DD7B817C858798AE37935400C),
    .INIT_63(256'h1B88B20979EBE25D637D60BF5CC9239E46E84C4421B021FEF926C27F092580C2),
    .INIT_64(256'h40CEFA73226A64D2D9929D90C5EDB4C7503A30869D01836B1C71D0FD88F40A84),
    .INIT_65(256'h0183EE2A6E01410517AF98E9796F2686A564C8AC93DC970A70225DCDB712C9DD),
    .INIT_66(256'hA25E6E8905CE0517924A5FC641FA9CCC820D2F00CD9FA6EE6827CF9CF8C47914),
    .INIT_67(256'h5C21C1ABFE9C7C78E4363D700A7EF2257DE8DD1D1D44E74A6F1C979A2D6FDF79),
    .INIT_68(256'h6BC837500332EFB8C81BAD08B5BB9E04E515F257C2183AD2D54A06F543A9C4BA),
    .INIT_69(256'hA24E06512467B532CF4C6357EEA4E74A5FEFF40B0FB1B4F3F60168C7D91F077C),
    .INIT_6A(256'hCAF104080D1126B716ACA0D9A8C68F227299ECBD2A21A7504DF3A61C568F3360),
    .INIT_6B(256'hE1246D2B7B77DB36F28ED3969621443682824BCEA6599E2DF335274416F1BB58),
    .INIT_6C(256'hEB634A7A8D440320BC677CC857790A35ABE0B9CD509E550DFED30F0BE0F129BA),
    .INIT_6D(256'hB2AFDBDC9E3FB8E802F095EC43189F51A6B78F77C28837BC6C0A020786D53C9C),
    .INIT_6E(256'hAB69830AF76F31C07CE51D78BC02AF0A705F8B3E0157472E2BFA84D6BA427084),
    .INIT_6F(256'hA1372E8E3BD53ACD75C993E2EE45636535BF6F9979A8F74BAA8399AA75DC08A7),
    .INIT_70(256'h7FB6A1DC008B7474B86A764A19B209C44FA43B9EB3CCBB00549D0E231B25E8EB),
    .INIT_71(256'h1DA20C2F90173F5AFDEBBEAA175CA9BE3BB8E8E4D1378AF0F9B74FA58254CEBC),
    .INIT_72(256'hD6FFD9A91EADF0910CACA49A5B594ED8C0F96AEE9589DB4BB68316E7D9EC256F),
    .INIT_73(256'hDC54E2CC2E59369341466321C4AF444D7357FF26CC528ED408B7CC64A6226304),
    .INIT_74(256'h043FE3723E61414E33F2E89853AC17C20BDB763357D442A46814FC7141C00655),
    .INIT_75(256'hDBCCF9D126429F0ED9E2A094C7320A428932C63193A73875B5D47CB6EC904071),
    .INIT_76(256'hD320D195D475B01D3F1A2DA1A5FE8D3552EA73D389BC807713E4EC66471C432E),
    .INIT_77(256'hB511ECEE048233B51BECC09673AAAD6341D02EA78526C07BDF667B834CB0906B),
    .INIT_78(256'h1D1A26450F8C6FD5F8C959867C4AD4173D8409194FAB612232541FD246631814),
    .INIT_79(256'h61C31F5296DA15E262BD270F2AA1EA5AEAEF13C5D7353FE1DFD22F075187D711),
    .INIT_7A(256'h755599B253E41F1AC2642479E966CBAA7F380E2659DF0D0253D8ED67FA84BFD9),
    .INIT_7B(256'h082B3CFAAE881762B142C756DC57CC127466324586747A602989089888DF6A28),
    .INIT_7C(256'hABDA6462EFE4480717039487A6AF6CD630AB262EE1DBCE97AA4F3CA5128BD118),
    .INIT_7D(256'h66C2FD507562A7A05A749C747F14D728F362F1BBDD3A6016524FEEC7E5AB7F1D),
    .INIT_7E(256'hC1C6A507BE2753D487178711CDB4CA9C5D5EF1913AB3091F5CF8E0447E4733EE),
    .INIT_7F(256'h919534BDC0A7E889BE73FBABBF87F52CE1D221E074CDF911619CB850811B5FB1),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized20
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
    .INITP_00(256'hB8C09D1D2D3282868A18B82BFF562E87A615E4140CED41569E80EBD7E126DFF4),
    .INITP_01(256'hEBC1D940C0DD82AA464D1819D4E4B7FB44F928978E3B846BE87FC1AC0BBC88B3),
    .INITP_02(256'h32667D1BC293BDCC3303B83B192CA752A263F6345C7E8C0A39D7F97894CC3C54),
    .INITP_03(256'h5B30131612ACE9ECAB6CB595F45EAC4863F3C1F0F8BEFFAE2FB7CE2C3C503553),
    .INITP_04(256'h32E0AE18772FC9888E002243993490BDB8052283CA6BE19DE32C02FA120DD7E5),
    .INITP_05(256'hDE40D5DCEF15629FC1E5F1735F0600233E0ACCF0BA60607914200717B1311B70),
    .INITP_06(256'hDE42335F2AD3C3711A224A3FA18079B81C15554C4FB68288D0D5EFF2E2795FA4),
    .INITP_07(256'h4AC1470AC417B167C47313D3942ADD98C24DAC135ABB8F18C7485F25DA43A508),
    .INITP_08(256'h806C8C762BDE945B29E83DF95279C5909EDFE1BEA4A2474813E65C253C57AE42),
    .INITP_09(256'hE8B9B793690B2411DBCCC45927491B2071D0F889BFBCCFA611DF474A0E40670A),
    .INITP_0A(256'h6BC56810233C0D96C9073605560F7A11004D737ED9A02BF2A23A10B75DEB8DCD),
    .INITP_0B(256'hC3CCBF6810668732CD65F2FD1DD737224BD83E4324260E05A28FD63C581D37F0),
    .INITP_0C(256'h6D714465F58C43A08FB5844063B17258B27AF2E261C7570B396FEE25C65E3CE3),
    .INITP_0D(256'h08CA587C2BC37890176942EF3047FB35BE3239FCB41B167CC54272A933BCC6FA),
    .INITP_0E(256'hD689BEEB139EC81F16EC88C110436F81DD0F930CA8538D2E329CDA3123468174),
    .INITP_0F(256'hD5B55D7473714B7DB8592CF39FF7657638B464BCD4CCFA8654ADC3A37C53FA53),
    .INIT_00(256'h1B299EEC38EC68ECAE6BB4B824A1DCED001951E7FAD9F99D6A56B6ABB81769E3),
    .INIT_01(256'h7716AD7266E2A1049E50163B266B441775D6957BBA0D663E0987C43D8AE19DEA),
    .INIT_02(256'hE6676F2008F93E22B1ABE18374826BFEECC46319869A00F71B2D833EAB0F005C),
    .INIT_03(256'hAAF0D5AF8F5FEFD1613C1DA43DD5C2EFDAED0D4AC6833BF5B69F0603628A79B2),
    .INIT_04(256'hD99D04C3915859823014EEEE5924E11F511CF30719311A4C159FA7BBA85531EC),
    .INIT_05(256'h51B7AE483E79B84493D9ABD43DF796A467BBEE88440821668799AFECBE2DF04C),
    .INIT_06(256'hB02A304FC4F14594226F3879E5E5B7DEF27FAFF79FC6DD164B18D71E48AC9D73),
    .INIT_07(256'h15AC9B123350B6196B1115CC97BF7E91083CBA4B13ED220CD693CA324AF253CB),
    .INIT_08(256'h2E0A22A19456E7C72E3B164574ADC2AF511E976A271E125040660F27AEB2F904),
    .INIT_09(256'h91D754EE70EA6E06B17003207AC0592FE947627549CB07379A3A7B32AFE2E494),
    .INIT_0A(256'hF007302FAF3502C5E4B0B09F3F5FBBB4EA437AD5612F06D8169D4F27F34E5BE0),
    .INIT_0B(256'hABDB3D20F74C70987211C234D1AA61705A723DB602495CC15477E5811873B3C8),
    .INIT_0C(256'h60388F0575B575B059884B751566365C372FD04D1AD63DF0E4F6B73615021271),
    .INIT_0D(256'hCCCAF0812A9E6F85428A199FD0EAA09D3F7465027EB74998DED07634F1DF323B),
    .INIT_0E(256'h0914BBB66B2B599D04F7FD6C1DAD6130A3CB0325954A2E2D4F705776B319474C),
    .INIT_0F(256'h1F2FAFB683C4FA058205DEF9221F5862A216504A4CDFAA65F857DB0A8D7414E3),
    .INIT_10(256'hE2EF0FA7A2F6D07ED37DD94DBD008AAB84B9BE1F016EF6DF3DDAD4DE77CF53B0),
    .INIT_11(256'hAB7518FDD8A9DD9B03E265AE5C6F2C258F683D36020AB3D74D8BEA62BD660789),
    .INIT_12(256'hCE5AC6A5AEAF382C776CBAC7F0FB33172918C3081129CA6806F74FECCFAF1E65),
    .INIT_13(256'h28B9AD55A8C862A6190643A7743E8B0310CD960787A03779553B0DAE550424BE),
    .INIT_14(256'hD641388F1A371287669F927F3D80F1C7048828E4278D541E35A66CF861999682),
    .INIT_15(256'h534938200086E43AF54B46F55235334B60E08DFF04C8AF4F8379C4B1D0F1A2D4),
    .INIT_16(256'hF8C3D0368B89C998A93D0FD771CCEF405086ECC578DED651F9AE57DFED726EF4),
    .INIT_17(256'h14FFE59F6FC4FE8D1E1C9BD83A16839764ED8414F088A4A8A2AC98AA4ED8461C),
    .INIT_18(256'h20CAB99FB7CE4115DD692AD058D00DD26A86E432CA9E275AAA55DCE64871BA19),
    .INIT_19(256'hBA9FAFF5CFB9BA4390B6B94EC42056C33AC310637446B134B7F7CB735626C2D0),
    .INIT_1A(256'hEF941CD3CE57823D827BD320CDD13DB70DCD4BD270159813B1749C0D5DF2C0B9),
    .INIT_1B(256'h9C592C0F6B925824135A33F32890083FDCCA6887F657811BF611F3F65B0C7774),
    .INIT_1C(256'h5D0CA52DE6B0E01A0620BB536EE51BEC9E64E86ED7F71418021C7B9F695CCFBA),
    .INIT_1D(256'hC3EAA26387A1B92ECB7A40333F56BE37782887E070E75CEF2129642050E7A675),
    .INIT_1E(256'h6DCD240FE56DA75DE7FCE41EA34397DB7DF8A1C35BE0EA6C112184D3C28386DF),
    .INIT_1F(256'h947AA08226B16477D3E2561E2873A5C63399EE6892B1C37241313609F6EB64F5),
    .INIT_20(256'h93A21258660F45BBDFF6616D77F1D40536BACF1C08BB31A413440EA3D14B055A),
    .INIT_21(256'h48A12FFDCEC982D1A85A02B8F6CB05DEB60C5785107D1539E3559229FEA73A30),
    .INIT_22(256'h1C6DC538BAEE1AD20C7BAD0DF086A8B922522991E2EFE3195D98E40D286C5F0A),
    .INIT_23(256'h34DF5A90AB4E5FE084AF694258AA1C865942D984711E93E7FD359692C212F767),
    .INIT_24(256'h775596D149525680AD592892D0BC347047C809CDD9A8C1E6874884D5C22A736A),
    .INIT_25(256'hE01259A609B3AEB9C3725C2433F2A6DC158F638E662E4EADAEFA085CF1F138C3),
    .INIT_26(256'hB8F5BED0CA5C40C6097D8D18DD56D702AE60F5B64799EBABF008589C2B29DA0C),
    .INIT_27(256'h0BE62D05968DDB752FC77B0169E84C7F6C5524FA5F318F6959514F2C17CC1F1F),
    .INIT_28(256'hE42E11EC815DAE911D58D36DF14600660361C224D2CAE8DF0A413E03494C48F4),
    .INIT_29(256'hE66D67722246FE209498F6074A34CBC81EAEF904508CA3896FD91AC7E68DBEB3),
    .INIT_2A(256'h1DC102E052BA2043BC37746B5AEA67C73039299381550B3A59F4672E8E51C926),
    .INIT_2B(256'h44B45456B143A4E640C0C91C0BE3CDFA4079019947CF9DD8C491869A1A407863),
    .INIT_2C(256'hA823DED3080ED4FCD0C45930E7A46F2AA304537E4867AF0A2BDCD434F8A548E3),
    .INIT_2D(256'h4D307871350472C1AD00B597F8686A2FFAD1AAF3BBC84B73F6FB69D41B471529),
    .INIT_2E(256'h8B1DE85A6CF324E1831B01B0B70A8067F961110124919E9DF812AF9BF3D15475),
    .INIT_2F(256'h628CBB274C78A85A7DCA1F3063DD5992FD6288156E553CD6865EEBF32F07B755),
    .INIT_30(256'hDAF8BC2094F30D915357B37659BDBE3D3096407040B7F6DE33E295D8F749A152),
    .INIT_31(256'hCBF4D2FB10AE736AE8B52BA35A9DF87F1A63FB00ED8659B77763ADAD770AD9EF),
    .INIT_32(256'h64F8F60791DA1A2897CB4094BA2A57095F169DF3B84F1F0D8EC00DA156980B6F),
    .INIT_33(256'hE1ED635780DC98B3F0443D994C35661BED58A1579AED3689FD0A73FE79E417B7),
    .INIT_34(256'h04D7A5DC92A4FE56A9E386627CEEF094E94ABFA2FFDB99C3E7CC4C813F62E0AF),
    .INIT_35(256'h8B996C0BA74E7C73735C2ACC764CC9B0C470F1D11A6B607A4EE9D30E1000E817),
    .INIT_36(256'h2D9EE9C75582843A9B769F436624632120DC1AA81D3CF58D3551A471D251D729),
    .INIT_37(256'h8F9370909A91A1822435AECE635318D2E6F27B1A6D854CBA674E6A48739F348E),
    .INIT_38(256'h05B65B25115D271FE16938C86D94C84BDE0F104D34E3807B22544E051E8F4A34),
    .INIT_39(256'h58924546D5E3FAACACF9C7413AB8DBF58354AD32134A0C9F7E7B647F92197B32),
    .INIT_3A(256'h2ED49D70D55EFB1AE4B67723E5232B555A6ED89EC24BCF6805BC4C105ED2CBB4),
    .INIT_3B(256'h5379E466DFC3DD06C89CF08A8863455C50715A8AE1B9485A5912DC652AFC8F60),
    .INIT_3C(256'h5E87CE581DF3395CF12FCD4B8528B5CDBC07BE6C49E49DB84C2406E99594CDE8),
    .INIT_3D(256'h7F8356636EB15DAA37290C62286C143E938C88C37568F90EA56E49F17FEB8420),
    .INIT_3E(256'h9CED097737B1FACDFF79D12A5403809DBA8AA9F91B66343EB3DDFCD64250C948),
    .INIT_3F(256'h7DC2C504F3DE21CA3088ED4171F70C58722DF891E1B6ED85D3A00AD0B378D8DA),
    .INIT_40(256'h7D494D75C6521B12E2719863F25BC5484035B8252135DD40FB8599D80E13865B),
    .INIT_41(256'h46440CFD348550628036224B17215E2E3EC4CBFEACC81F564795FBB5B8E98B07),
    .INIT_42(256'hDAB8C0FD6A642BEC7EE05AFDE10259CE0D0B61F0F02B41E41941681257FEE8F5),
    .INIT_43(256'h200E2DD4E394BF0060A9AE4E772D2A09ED7817E389C3E49B67E8EB66ED9A1979),
    .INIT_44(256'hD7AD792C8BBF7C733F62BF55805E81F34A063F44FA8BDCC6E8650B72144AF01C),
    .INIT_45(256'hFB70B9C8243E07EF6F938271A0E16AA8FB7E1F35C89DEA4363E6D9A7347B3B76),
    .INIT_46(256'h21298453BD811950FBCD790D4C26B266181971E7A1D2EBCF3FE78E4D9933F13A),
    .INIT_47(256'hE0F32759085C48FE5CBE836DC85CFEFA88CB1E5EA54479E1B6C7405432FA62C7),
    .INIT_48(256'h717F7252C37D24A799B767352304897A56AAF7852A548772AF9693E49AC4AC3A),
    .INIT_49(256'hBDE8050E184D38F406EB272D9D347E7910CC2B54F5AD71E7B2C4D88F1D9F5CEA),
    .INIT_4A(256'hD4A898E28D740A8B01777E8EF747757F3F84E22FD5F040498CDD1C7C223A1627),
    .INIT_4B(256'h86C95D1AE06A36C3AB7F543D462C17A9D15F75F81F6B7FA13B0C100BADB93CD7),
    .INIT_4C(256'h4531E4D42CF837EEDB21DB476316E9B8D4C7FE420CBED9B1F13B902879B1FFFF),
    .INIT_4D(256'h66E5565B08A5D86ACCC930B002C26AC554C636EA8D3C8BAAC97FF9FF02F4CEC9),
    .INIT_4E(256'h52E0F836BF1723FE3D4A71775B06D76E87DC198068FA65B448BA7289CCF6690F),
    .INIT_4F(256'hC490C6BAFCFF57B8F13FE4AED30FA65B5CDB9D697F272677D458F89FEE9F81EA),
    .INIT_50(256'h1150E2BAD11C6648CF0D585ECE8F543AA269657FF8C2B4F797987200DA879B92),
    .INIT_51(256'h1A7BB1D0DEA1AB3AB469C669EE668728FE6874ECD801E97465641ABFEE68FE82),
    .INIT_52(256'h7173223555561CB2F32634E3F418A1239958AB2A073A9AC1ECD11D2AF1C3B392),
    .INIT_53(256'h6350660C64656735EFD0D93E85704CBC82E5953D10F538EADCF09894DC86E94A),
    .INIT_54(256'hBB4CA9D7943FF74217E9744FA036B448FE80E480347E78CDBF4937DC287D0296),
    .INIT_55(256'hBAC03B853F35F4B424C29C25CB94968F1EC0746F0392523FD1E222B9F4B260CD),
    .INIT_56(256'hB20AD913E3522996B41E0437EC2EB2F9410E60A5E227099FF20D095C70554009),
    .INIT_57(256'h618C8D389DDC3F1FFA9C093FFF20686E797FAC0B9B32E826CC9FD2ED386F2645),
    .INIT_58(256'hA0346923824F9BD66CFA3C52C7A0070B484E35283DB434072FF9C9F455315490),
    .INIT_59(256'hC3CDF2C9380F863D6B614BA6E9E8F577E070D903DDD72B0FD5AE00129C9C1C8F),
    .INIT_5A(256'h1BB3DEB47248CDB17B28877002AA9C292C55EE1BDED55C82D9E0C1E762F77567),
    .INIT_5B(256'h9AE1C534D0B546572E9ED77129F2B626BDEBB161CE56AB7CD199FC36910F7516),
    .INIT_5C(256'hD2433BFE8065581B141D0739EDBCBF426617A0D5D3CB808E97C1F8A6170D16FE),
    .INIT_5D(256'hD5511F55DA741D3DF7A387F11D50B0321D7D8D79428E24384EF710D60C354014),
    .INIT_5E(256'h07B3059B80A394BC31B401B8041FCE8E7704DFA6FF4D268CF42FB76CC5B14458),
    .INIT_5F(256'h0DF7CFBBE4BC9117065F9CD8855E05652D61F57F8365E127C1E5CBE6569B18B6),
    .INIT_60(256'h926D308D81583802F4DDAACD35EB78494924709EDECB39085813922580A250E0),
    .INIT_61(256'h2B379A615437BA8DDBC5AB8EDD98C4B7FB19E5935F258E97F3260391C29B6005),
    .INIT_62(256'h780A2A00003A9A4364C0F25EED48FE143D7B978866AA8D4C9746846AB0AD1D33),
    .INIT_63(256'h5AF0FB170E6FFD1B55031B5449498E4BC81405212B2C6BC4778A5AC758542671),
    .INIT_64(256'hCD2FB00076085AD542B492B7D6127FFB6BB3380F2F3B4876C0D93F66B8D35245),
    .INIT_65(256'hD453CBB17662A4A04B4909720B7B5ECCC694FE7B352A57366CA19DBAD90693C3),
    .INIT_66(256'h70BBB314515D1C21853D94B33FD83416A9E0AD0A11A896F45D01AE2B58BE6B00),
    .INIT_67(256'hD9CEE4BB8B7DBBB1FF577722308CE129EF347A07FAC35A68CA32D7ADD0AFBB73),
    .INIT_68(256'h365653D83EE1FF4132B16FEDF8AC80619968178940958BF92154ADFBA9A44863),
    .INIT_69(256'h11ABC55111FBE5334C7D6C1ACA7E5B641382E3360D1161621C952468F6230EDB),
    .INIT_6A(256'h30E1ED6D11E834433F78420E7D988FED093558AAAC6511C21553FD74D1E737A9),
    .INIT_6B(256'hA65FD49AD0DDE082A7DF72E129A4D00C0D881BD81FAC0C29B44FA2D2323C0822),
    .INIT_6C(256'hDE433D727A5D9DE450783301DD008F67F7346A2956BCA77CCD6C51C661F93D9D),
    .INIT_6D(256'h140BFFF74453B222F32F0C917381AA4D74DC36BCA7D91DBC144CC9FBE6EC3857),
    .INIT_6E(256'h9AEDC3171F8E0CD420655707AE32ECBB2ABE37916F580CCF478628C891213423),
    .INIT_6F(256'hBAB1A2B24B154AE2C3B249F6D018F17075DE131C79926A804E04A3F89F78D0E6),
    .INIT_70(256'h88067BE86553D9B1DD38FEE2F09EC85ECBD88C4188137236DB948042EB33AE6E),
    .INIT_71(256'hB4354DB96B62926EF362C4417224D72DB64EF45E2184FEB5A5CF9A5378AF10C7),
    .INIT_72(256'h1022FCF6CC560FCD2A910A31251A4D47ACC74450844BA56C0B4558C5F82CC73B),
    .INIT_73(256'h921432B167A6656BD1B4AA9E8AF595EB128D6F41FF5D67DE08E269E06EF3A192),
    .INIT_74(256'h70F36B3D2143FE78BC195C84D0F599FAF95EE9D708C99DA2B36D9BC1FD85142D),
    .INIT_75(256'h1491FDA1316385A97E185A2E7CAD8DC72B54E76C2BBA7AB28A1D0B6BA1255C4E),
    .INIT_76(256'h0EF6B07E981C0D919BA9D3AAFB5942DC535F6A1859E041F991C55DB69622FF4B),
    .INIT_77(256'hC0146E10539FA6D6B8D740F187D951B05B3779286D4CCB3BE4F8DEE0834D0D98),
    .INIT_78(256'h62BE91BA6A06AA0DB51612EB4BB308B59AC06702806A8379036952242E12F1CF),
    .INIT_79(256'hF3A34E1312BE48DFE6A60FEA676D493138A951AC43BFEB33A03140DE0E18B02D),
    .INIT_7A(256'hB5B98C1D8A95B5FD3890EC988D3E28B9A551EF68A51CF1C004B2505CF04C7DD0),
    .INIT_7B(256'hD3B5647CD326F7C2F4436956F4A42BD0D051505ACC687C4CE802406D10DBB9BD),
    .INIT_7C(256'hC1E3F640B3E9B12E93BCBE763E7E8574972BD426E460957E1CBC980D7286E90E),
    .INIT_7D(256'h50CB72794E47E398FDC5391D65D5C6DFA1D3FB27C564E34395AA86DFCC3A7473),
    .INIT_7E(256'h79FC8AD739F40B5F2CA76F48D182C541ED79D878C7F7A26F0E2100ABB661EB8A),
    .INIT_7F(256'h0869777CE86FBD74035C01D9571434A69AA876CCB1F19C23C435D22199BF8DDB),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized21
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
    .INITP_00(256'hF84531A35F74280FD991CA6ABFCBD7A72A7AC0FB7A9A717FB65CFE7AA30F8A6E),
    .INITP_01(256'h366339500021BE9DA180C3A058BDD3EA973F34E33CAC5B78A7251EF82C61EB66),
    .INITP_02(256'h2E4160F912E7F53AB39FBBF44D5484ED96E88B728CD940B3A96E90ACDF94E27C),
    .INITP_03(256'hE6C056555B85196737DC9727A892E1FD4C7891C03F87D60A2C74FC860848DFDB),
    .INITP_04(256'h9EAE3EAA4084DDC489DA4B9A7062E419AC1F00A62FB43A4C2F8CDE82F2D86613),
    .INITP_05(256'hA59CB44356C74D0732A4E6F713E7C355EC0E7244C96C4931971EE0E7ACC9330D),
    .INITP_06(256'h64F5CB8A9123226BC8D667A2E29447EDC6CC7FF08D72339D8167282D7320A440),
    .INITP_07(256'h3341B45593FCC0FE0FD6034AC01CF2C3EBAED20C37370D7E3DE5E5C64E55044F),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFE4E7EF7E197D2310034D11D4AF544381DBE7D36F59CC1804FD0705E92339FD9),
    .INIT_01(256'h17D56AA30F9BCAC8D21A990AE830A605E3B7AE3D5673DD0A478CF550B76EF931),
    .INIT_02(256'h76A763CBD59C651F3DEFC26EFB6EA4F6BE5D49E9E7B80265D2DAD20B53919290),
    .INIT_03(256'hC1746124DDE7CF4AC7BFF5449F10DA663AE569864645A7731EA9DC43EB5CBBBC),
    .INIT_04(256'h237E14EB7B190D8DD91BE5AEFBDA5A270BB7FB940A1D69F82465156C0471DE13),
    .INIT_05(256'hC64422B1ABCE9E3BA335866DAF36EFDAAF3A5D837B6DF9D08476D5181BE11063),
    .INIT_06(256'h3A501009B9A366B8EB17B9A54DEE4D18169AAE3C3C07C033E9D4BA19042EAB03),
    .INIT_07(256'hF62D75503103A6FCB3AE494F740F85A213D737155D2336C3B7A92A9E43C5D23C),
    .INIT_08(256'hC33F4C406FA0D8C730EC2FFE9E207EE59CF74AC0B499DCB2997AD71FD98F9173),
    .INIT_09(256'h73AE6D611889844F3C2F06342F30D374A340908B173046C7B70A06362609DE6E),
    .INIT_0A(256'hF6A1015E0E54C7A95157FA7807B0232A2EED58AA4BBF2E2D2B5BD2DD0BF83E36),
    .INIT_0B(256'h5BD70E5C13C83197EFBA4094713DAC0D100B44D81E4BAFF6BE13DFAE83FECB0F),
    .INIT_0C(256'hE193151E276B4B1EF7EE3D939A9561B43790DA7BF06574B86C9521925543985C),
    .INIT_0D(256'h6B5275AAE6508761B2B2A02AB9A8CF960B81EFBE747A4BC14670F9F0A4F2DE68),
    .INIT_0E(256'hF1192B78C5E33BA50664999CE1E4945D211549B76DBD173D334C843DF192715B),
    .INIT_0F(256'h6E7808C390E819B6DB743DDF655949EB1AE290FB8648071AB8ACF6718E38B4C1),
    .INIT_10(256'hDCC392EC9A3EA7752F4E932945C21A162930C5C00A16A5E939A6E5E0F7970DB9),
    .INIT_11(256'h99A2C09D8B70824A8359AB11830D7FCCAC42B7132A80E659F8B998021FD9D9C7),
    .INIT_12(256'h06C5E21C486A42138632A302C813762347255709E7D215BED8F7B69682F72ED8),
    .INIT_13(256'h67D17C07D77F79E132B4A4F6A837139EDD51010966911A0DA2E64F225ECDA5E4),
    .INIT_14(256'hD0DA8C0EA198087338A6984184A3DB62459C5F92B217CDF14C25072905B793C8),
    .INIT_15(256'hB75076003999101CA1B84F51E3A285FDEC589DC51CF3DE9FEC14D0DF382AF911),
    .INIT_16(256'hDE6DFA5CFFE369F460D37875CADC703DCF9AC1F13657CCF557060B81E43A3D81),
    .INIT_17(256'h07CE23581F92ACC8AF064D0503D52CFAE0ADF5D210197DB09F37BBCAE3CF3D7E),
    .INIT_18(256'h52F697F1EDA7B5E9B325C91101DE66E9AB13FB80766600F67354E40FA9B0D63D),
    .INIT_19(256'hE53BB78EB104B3425AE36B29C853397B8ADF811CEADA018FBF935B037D84C5A4),
    .INIT_1A(256'hBD13A0F73D1BB3713A5F4193F7133CD170E6B09A1FF4FB28834212844A607863),
    .INIT_1B(256'hA2F95A0A287248D83E9C2212C4D661C445EA05E7811000B57CD0D6E229520A65),
    .INIT_1C(256'hD092C88971C87FA8DD194782FE508295A106A3126FF7E467AED13C402F1C04B7),
    .INIT_1D(256'hFE6B1688D02C4C077E759986FA381FB85FD3685DAC555440E0B4BA087D29FD81),
    .INIT_1E(256'h3E093719F33590D9F9992350E01521F54A08D251E28E44EC62BEDE7138E82DB6),
    .INIT_1F(256'h35305470A01446AEC607E0805E22645B6F9A9A7608543EC32EB4C29A3E87DB43),
    .INIT_20(256'h3B223D55B9C61E0DE4057E07F6CDDDE83DD3569638A140218CD7F77FBCB5ED76),
    .INIT_21(256'h17C9078B035E0CCCBEB2833157B17DCDEEABD493B5D085B153E85A9C1089FAA4),
    .INIT_22(256'hBACC4919F2B78673E65D8EE906125827C7034708ED0558FBD3FD0E6B512FCAB0),
    .INIT_23(256'hA1872ED913E7B78F02007E066ACD78053163A658B62202D2686BB8BE88356E92),
    .INIT_24(256'hC6D4BF9BD5F459E26B83E0E00509483FCD8D42F7A4E0E209B9A8EACCB1B27D66),
    .INIT_25(256'h2AC8B1FA1864778E0CA3DE8723216D4A07F76FDBA8C05F1220763590D8FB768D),
    .INIT_26(256'hED5FAFAF2D375DD062625971BF33B74C92CD306002B2E84A5B918F75E96B3A91),
    .INIT_27(256'h5AE24F6F9AD0DD44F04D4BABA2C8DA9F0740E94B70B1F19A01264F48E26ACF0D),
    .INIT_28(256'hBDF5F19A0F0468547EB3FBC965A2F3DA92C66598A07DC5E3F57FA091ACB3A2C4),
    .INIT_29(256'hE004F190A439F9CF6ECB9B623B66420955D80B1D56A376AE5663F5CA5EB503CD),
    .INIT_2A(256'h6012525EDFF91DEC0579784B599CB4666789E0FCF32D3624EC322BFA049372C7),
    .INIT_2B(256'h7DCCADEFA453D2528CC7162379E0EB317B15FD874EAD9F7C50BD8BA655380FBE),
    .INIT_2C(256'hD4C7C33F84B3A78B4CC3ED7A2A470B52A123AF5F07A35975B07D216306C9E40B),
    .INIT_2D(256'hDEB9ADBEAEE32DF6E2C76E1A44F861526F3FB0AB616EC5FD017E7DC213B2628D),
    .INIT_2E(256'hB0580265603361567E384D77440BC7F179729ECC7F937FC702C69E8DAC678507),
    .INIT_2F(256'h69AFB7739CE1E0426EAB8A08867C06BE52DBD31BB5289A7CB7F87C8F3F88DCAB),
    .INIT_30(256'h75A13DC9059EA9CD61762580490970747B035968CB4D9E6F73FF8EF52A2F7846),
    .INIT_31(256'hC94149676E61E9308E9E266327BD8BCAAB6654E2EA2C2EADA132C621D5365B27),
    .INIT_32(256'h2F5598DF8B99FDA6A0F555A1E06D16CA9B44E4CE2E8A2483EC4D2842DA8230E6),
    .INIT_33(256'hECA4BA53C1B5F9EFBC7D9439EB461D34D732C7055ECDD4BAF7A019A47FFFAB99),
    .INIT_34(256'h6042967391D688C08E244BFB8C464B30899DB82141E38419CFF3C0C1825504DA),
    .INIT_35(256'h285CA651553A2CFB3CEBCA06647C1F25F4028973BA17CC2A4146BDB89206E10D),
    .INIT_36(256'h5EA8C9C829C7E0DD9508B0893C01B6CC84C81C492E2F960E814A60D32520C1C6),
    .INIT_37(256'h184E20C07886A3EC2DFB7B86BCE6256F2D910833737AC536C3C9E11A7F773486),
    .INIT_38(256'hCA4A20A2098E6FD0177805939F86DA6F3F879F889CA7479AE371BD41A450D76C),
    .INIT_39(256'hB81C3316E24C83BDD5C0BB4592DFE98A53DB37B5D07A81579D22DC76C1460DC5),
    .INIT_3A(256'hD5C7F24E93FFC9E0829B7A4EB2472704F624B0AC822A77553B8C060DF1FBA81D),
    .INIT_3B(256'h351E8E099DA82FC95BAE67A9DF4ADA67E4BCF54001AE6EB3BE151562A2655567),
    .INIT_3C(256'h2B09E52C7AAC1B40F423A6363FD1437E4D09A26931856F76BA9E01555C8DC55C),
    .INIT_3D(256'h0560FFC0E21D5C79077226D1377D1F8E215BF559D70330CE3EDC622B6AE46BD7),
    .INIT_3E(256'h7776ACEE0DD12ECB6D1CC14CF53C7F4FF46949AF554E4C02CF21DFB925147692),
    .INIT_3F(256'h26B856A2548E8525A8018A3B4281D3C6993598D2BD0A6019B266F3DC29ABAB81),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized22
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
    .INITP_00(256'h4BB6AC42D8C2309C00329D863EFAE3C02A673BE52354B5C2CAA9B18DC269DCC4),
    .INITP_01(256'h30E922CAE290A03AF5CA5957CBE473881C83F246C9DF6542EE3F7881FA575F4F),
    .INITP_02(256'h48296C71BDBE81E607048B3A90934C56CD7CE2B6E0E8C18498F83BB2B2281F31),
    .INITP_03(256'h4E1B0D2759C7E93FC0E077C60E803B99C7569677F69B8DCDBBCDE9C69FC98B5E),
    .INITP_04(256'h321E09EB006215C3FB798ED75052F667F2DAD701727CCC1808944B0AA6F24792),
    .INITP_05(256'h371D39F846508506BD0039F86AD8B350E17A130D651F55DAE4025B56DE97335C),
    .INITP_06(256'hB431F0F2ED56AA5CF145BF949B3C97592CD809A32331EC7AD971B5EBB79AA086),
    .INITP_07(256'h529D2F45C06F38E15104AFF96E672489672B9FBE51482F89D7665D8378E3DEC9),
    .INITP_08(256'hE01FE0F00B321EB08D01DB6257F6919CF4E818E46197D4DBBDB6C810A24C3FCD),
    .INITP_09(256'hA84DF5925F4EA0EF4A9DE2E7554CBA6724F18148624AC11CF7DC00090A643FA1),
    .INITP_0A(256'h202C4AB3310E91355C89598372B6DC7093F21E0FDBDBF6E21CDF82DE5E7EA26A),
    .INITP_0B(256'h845E03C52E48D3A0058BC8E48A631F546E3A4A2B4FD25AC95D3E4837433C0173),
    .INITP_0C(256'hB3BE4E9E9140DB35EAB325062668AC7B4031DEEAE4EE4702FF9F40DC480F58ED),
    .INITP_0D(256'hBF1B6BA71D975DA89FB0677A8E4626E800E1B6C10FD65D45A343A8C55A7CEBFD),
    .INITP_0E(256'h98B3C3F37C22A32761BE7736754847053F549704A6940ECCF879AC52369EA2D5),
    .INITP_0F(256'h10CAF7BE021EB02F69C77D7B02B5FCBC3BB73BDCF90E35FAC9C4A4088AADBE5A),
    .INIT_00(256'hB80AAE4B9EE4DE8790051AC5FD8CE637C8231671FA596C7C6B45B0483264B2BB),
    .INIT_01(256'h901F1D107FC28B2D5728AD116AEC941AC171B0EA701A0DBD3FB7298E725B5BBD),
    .INIT_02(256'h7FA8EFFF8922B2CC38E05B03A2F30C414FD56773054C31DE851AAE70DD8AFACF),
    .INIT_03(256'h82D5CA6B209845B30FE70B24EB2E5AB54AA8A25D443E5F61FB26485E432248A9),
    .INIT_04(256'hA1103B8E6FC9AB95DD57C8585044F5F34D8E6FD835401AE465DB32177FA91E49),
    .INIT_05(256'h054B42D573DB3769F9B470CFF832567C38B7FDC8C95F95CA19BC67C6FDA31161),
    .INIT_06(256'h39458FC27D2D3EEFC1C50CA8E598DDF138F1F72029143B45CE817DA0C37A62CB),
    .INIT_07(256'h21375DD5791F80FC4756362BFBBB53857D8A953E6E43B88463EE81D60751BA98),
    .INIT_08(256'hCF6FD13A067B1C211C634FD9F42CCE20DF0726FAA8590BF7F64A30F9B9F19989),
    .INIT_09(256'hF3E00F6E7AE3E9AEAEF4EF188BAD560382D2FBB1DA1BF3CAC99084C9B4AF18D9),
    .INIT_0A(256'h612A844F7CE90E09D1AAF5D22E8E0B8D056D0C4DF113E071A7682E598A9F2C13),
    .INIT_0B(256'h88872748F6FED8295F63FBFB7F7AD86D7B218B897E3D5D03D7BB83B6A20C253C),
    .INIT_0C(256'h81034169FE85B9D8616D633560DD757886F795F194B69E5E71EC1D974783864E),
    .INIT_0D(256'h39C619D0D73985566694DB11598E1FD3C6CD6A09DE1B0491C9D66272C93E121F),
    .INIT_0E(256'h75EA2628B9DE255B3922ECE148D65CA8442677F2618101FD34885245A5C52826),
    .INIT_0F(256'h7A129C7E529AA40119CA7907B97D83CCFF0D8F952891C91CC37D337150690114),
    .INIT_10(256'h16525A19A21619CF778DDC19E4850F429752484479D566BFD565195A5C51BADE),
    .INIT_11(256'h14B462C98B4555496ACA715CE5E3B4CC01A5196DEDDA0BC6F80DBDB49230CA7D),
    .INIT_12(256'h0BC4DE619AEA29049A643B02E9518DB6DF4D53B341DB0B9DDC22E9466022A7E9),
    .INIT_13(256'hD76C529D9ABFDA0B1D1111264A2CF5A75B495D12505AA1C0A821E18529A767B6),
    .INIT_14(256'hC17C2C208E45C227222B9F898C9B7A4A49E2BFB55B98926C0F1A3319E3B99673),
    .INIT_15(256'hC0C8F01A6CAF04F71BCC77FA57A493406DCBE9332D928D6857A10493DB942EA9),
    .INIT_16(256'hB5E557DADDA20907D6A931DD1F66CCFD7EFB58C4B1BBD074978DD76AC9999281),
    .INIT_17(256'hE7CAE7903EF7CCBB59F568713EEBB6CF5DF75C05417CA5145FD7D37755704314),
    .INIT_18(256'h156834AF847280AEFD9C743F475C0A67B08FB9C08521DCE8E7DC016B53EA78B0),
    .INIT_19(256'h74CAE4B93B238EA3E3952D030E24F5F6789F0CF32D182C1BF209100900969E0A),
    .INIT_1A(256'h0AA3CA6FB677C6B59BB4B48A0334313AF513200F8CBD60C18FDEBC269821267D),
    .INIT_1B(256'hE0C55C3FAC8C9A89C18EA175D208D686B07E52936E0B84463DBD244C67B122E8),
    .INIT_1C(256'hFFBEBF6215366FD05A4037995E4BA906599AA7070FEDDA2CE35AE1240828EBD0),
    .INIT_1D(256'h91C12436177D96B535CB2128C00ABEABF0EBBA89628B64A3F284F9B9FBD27FCC),
    .INIT_1E(256'h9E9850028348DBBFD9535D4B3CB74AE3CBF188586B105135ECA3A9F26E402AF6),
    .INIT_1F(256'hC82AF68EB3F195CB830179D711E01F72A577D26B7D22448D429B7FC0E9480AEC),
    .INIT_20(256'h5D96DF0D89BBC3D47F40701BF957C0B36E2C169F0C7F2AFCF5B140A135D686F8),
    .INIT_21(256'hB0FCD757AAAA30B6683E732952E1C3736E47BD5570568EF4BC9D38B7E2C511F3),
    .INIT_22(256'hB70B4B6B86B6D691DB17DC3BDFD722634C758C82C85011BF96FBDBA94D2BA7EC),
    .INIT_23(256'hC082235675C118B59A8995DC5140D7D01B76F41D99B10C753B72C13421691FAB),
    .INIT_24(256'h6283F5DB25A3648990700EE14EBC573B6C68CC42032B41ACE3C58F1BAB166A25),
    .INIT_25(256'h2C8E31BF458DA2B9B5E762D9516B58A49FC9E0063DF8328EC2BE9EEC8FC05D1C),
    .INIT_26(256'h5397F7CD58AED530DE9E339F1206A7B2231CAA8C3894DDB45A9DCC1FC6715E15),
    .INIT_27(256'hCCF5CEA7BC1F356285D075E1250E8AA5BD08B1285FC2B2730226CCDEA8B9377C),
    .INIT_28(256'h24524CCD3F051A665B611F24847DBF0E0F5EBB1153BC350E38331553A1F6902C),
    .INIT_29(256'h724E4889243F46DF5C432B2CDCD904FABF41E774D66672F3A0AA2B83CCE32BC3),
    .INIT_2A(256'hC6B134553E31F097047894E0578CCA65EDD85B38A4661A1315C893039EE0DB78),
    .INIT_2B(256'h8E4273773CC201021F2C731454207578F40ABA1A943BF5211A93D2466BBC4795),
    .INIT_2C(256'h20B7E316D6BB213F652EB08BF1155A3A2343D82EC1F821303BD16E1AF49DC07A),
    .INIT_2D(256'hA65AC25F765F06DCAAA8EBC59AEDD43B89B00B27FAE7C22218103883AC1D3087),
    .INIT_2E(256'hC95DB305F4F0CF3EA2CA37DE11469F76711B8DD22D0AAD9E267C551B85142791),
    .INIT_2F(256'hD04A6C096AB953B2B4FD0B65D291893ADEE0576BDEC4432CD22C3BEF1B0657FF),
    .INIT_30(256'h33EB4092E1ADDE1639CC9C3F18CC272E47B84B6F238E1210E2FD0D1ACFB59D81),
    .INIT_31(256'h96AA76FD2C1DA0FA71351D43573D813A1FFBEC0A7662330E7A9A72B834ECC77E),
    .INIT_32(256'h4103F637A52BE0A41AD76ECD81EF421AB8A68E1D25A3807130B173A8B9EB6D6C),
    .INIT_33(256'h077776A53692BC8B78BBB5EB3B4EC2F7630AC6A9741395F0B621BDC320F61066),
    .INIT_34(256'h058E96BE1D5F629C3A1D6C24B6F4A22861E3B6CBDAFF6DE600327E396ACC674E),
    .INIT_35(256'hDCF84DA0D3710B5FA56651B0E675858BD5246CBA8C49D13C5669471F68889652),
    .INIT_36(256'h242B1AAA4388CC188512C45A29E91D557CFEB317C7FD789C885A479352C049F2),
    .INIT_37(256'h04098B65BDF7395BAA6F4FCCA0B1ECC4670BD0B7C721A0BCB1A04D255C21ED04),
    .INIT_38(256'h126FA6477C72458583CBE09A32138ABB69DF0EC4D3E0D9D2CDC5F56420036142),
    .INIT_39(256'h76FDACF7E51E55079F79D77FB16AA5AF1B5E5E570D9B1FF1FA5D7549C3D3804E),
    .INIT_3A(256'hE309C651F15D6B8296F2AF92C6E558683B3DEC18F37A7B504FB9431C12697735),
    .INIT_3B(256'hAD19EE20E4C1709A6DDAC5F913CB218061299D4D25966ACD88361A6FDB39B21F),
    .INIT_3C(256'hE40A74FEA936134BBAA69F13B4C7B18B9192287B1FCB6A0618BBDDD38476A620),
    .INIT_3D(256'h735023F36412129DA683FA5460444B25289D169C1872E28D1FC8D3C8970E97C2),
    .INIT_3E(256'h6A399E8A123E62FBF84F9824D6133107D38D4C9F8D413294B6AB581437546B98),
    .INIT_3F(256'h18B46524DC3D689121DDFE4DBACA6E2685FC4E56B1EF3D74A68468E7C7318909),
    .INIT_40(256'h04B12C28C59C6EC8042FF713DE9FF3BB8DCC2C36CCA4B8F83DE954D8EE650956),
    .INIT_41(256'h969CEC790231EA41D2A85D62B63715EDC9607A1B240E3F6449467F120D4F5FB6),
    .INIT_42(256'hD0FB5EA15AF574703A1D97DF7D90CA069C45EBDC10F14CAA7DAEED537CD491E5),
    .INIT_43(256'h5C6225FB9C3DA428ECAD1D3013E7206BE80DDA475E3330519F3B8DCC0FEAA6FF),
    .INIT_44(256'h9D47E5E1850132725F2A3A19118C85C5952A8790D925B4783BB7F08E8895934F),
    .INIT_45(256'h2FDE4EBAAC7BE08C983A29515B9D9B882F5E06833CFFE6CA5DAEC88620542E78),
    .INIT_46(256'hDE15BCFEA666788E333AF2AF502D725108BBB4D4A52034BBF0AC86A0B5C03607),
    .INIT_47(256'h0F9AF7D312512705A86CCEEF9735127F83E9CB31CA793DEC07778A4DFB71F5CF),
    .INIT_48(256'hAB546DEECF8A428EEFDE50B32EA0C629AF0C472808CE1DC39F20CD7776622FE3),
    .INIT_49(256'h5EFFD5378819DA2EB6689253228679709FE99AC86B179A62264E331464E9DB31),
    .INIT_4A(256'h025FC4BB1721EA12730278C59A9E1327A59E6CAC765C113C30D4E40EE2609371),
    .INIT_4B(256'hBDA77129CC2A38A1B24C359FFF5DE71BD49FF1E7D208687519605355646372D7),
    .INIT_4C(256'h5207015BEAED136A7AE406912E89D2B32C727CFD7E30C4C9FBADA773030C9770),
    .INIT_4D(256'h570909DAEA13517624B19C5A1107037D912EDD8A0B0747C802DCE1B04F445B88),
    .INIT_4E(256'hA3D90C9DF48603AB82BE816C97519BF9DDEC08D8CAFE708F84AE83FFE84C7E5B),
    .INIT_4F(256'h1C74D9B29CC9481FFBC791758B0E1A1D16143941054162996BF81F381DC051E3),
    .INIT_50(256'h13E4B0C0E23D986BEE0A135B9ECB7F6881DF97F3A86B48224609AD661969CE90),
    .INIT_51(256'h62A77DE2A1E537C6633A0FADAC4EC83C09D2FA9A3E4F32CB1DC9C686E801DA07),
    .INIT_52(256'h22B81348EB3AC87FCF6C38E0A056C47C7447207DB4FC934C841F1E98F49E8CD6),
    .INIT_53(256'h1FDAF679AC57A4A41ADFE4D19FA17AB608936B75F2C67AB15183849DB12962DE),
    .INIT_54(256'h0F19DE57B420EB8DB3B5E06684FD4702450865DBEA0C6F74539288A44575F5F2),
    .INIT_55(256'hBCECCD5C6D9101645D632898D3E4527C76E19A41DC423A26244D0463549CE778),
    .INIT_56(256'h244BDF4BD56FE48176B109BF4CC4BDDD1A138A3C2FDF08307273E06E4F2E8754),
    .INIT_57(256'h145F485DA5965CA0A81ED92637339FCD09B8DC44C3B5173656AE2D1486049A04),
    .INIT_58(256'h8BA5F66C634A0657793D99B5EBDF23A6ED64C6F4A9BC1A928B79042BBFA55E77),
    .INIT_59(256'h83BCC385BC31E5A8CE010F118F5D18D2E98EC132676B1201D054B85A7F7F89D4),
    .INIT_5A(256'h671F41D0C2B4D001CC3ECE62A5DEE2E369C0B8BD0E08F2ADB28D61EB15941CB8),
    .INIT_5B(256'hFB8E5E2E3B74F8676F113D466BD983BAC310A08C4DB18EDD8C67589C1F325DBC),
    .INIT_5C(256'hFAD36FBF3018D57989DF1B984097BA036F74C7A9620348BBD74CF6217AE9547E),
    .INIT_5D(256'h9383E9C49988468EB002C79B5BB5141A8597DCFE11284A05284500DA73A38709),
    .INIT_5E(256'hE42FF8E8182178A6DA4C5D6A51BF960B878BA497490AAA09C58D96584DF58649),
    .INIT_5F(256'hE4ED9D48194A81493BC46439B5CDFAAEC6D73C9717F86E9050BDE6660A0594B6),
    .INIT_60(256'h61EC1BC8A3D2FBC1ED737533BB2E08178D407A0C1B971777E4418569B896A031),
    .INIT_61(256'h953A6B40F01FF414338EAF44EB92D8BC70359412751317C136A46D8587C988EC),
    .INIT_62(256'hD10682F0FFF54F58B6B78E421AC366537DEF192C5D4AE76B642AA8F52A1E8147),
    .INIT_63(256'hD8F11449C7A14C1776AC4CA4500948A8C0E84273235A679A102DEC755CA1CC75),
    .INIT_64(256'hE670D92C52A8F69699A95AC24BE0268187289B4D4AD6F6B98E4E5D86FB66DCD1),
    .INIT_65(256'h636991D8A121ABF33C80B7398CACDFF25D686DA0249679988EDD7DE90300B6F3),
    .INIT_66(256'h6A7F8D9EAB9CAA57F2B3F430C74B0FFD8E77DB2FC4D27D7350F03E02DA30D362),
    .INIT_67(256'h4D563B00AE1C6368BE2F728F49490E95DEBA0F375435078BACCA44114D4B2658),
    .INIT_68(256'hA18E52AD55955F9F8F3B41171BB613B2FAFD0F615BAB6CBB70B1045883906C24),
    .INIT_69(256'h6FBB18C9FE2E96246AEEF1B72F4B623D69407D708FE5A7D36ABFD3178DF30FDF),
    .INIT_6A(256'h2181DF43C01113CED77B0BD32A12D2CCC0467CAA7D3C2E9D1681C83DC3A2532B),
    .INIT_6B(256'h7520E547FB63A29133AC2CA0A23C0838B7E3ABDF7DCA75F5E25EB7453A674089),
    .INIT_6C(256'hC00AF90D57685ABA586FD63629B08CD4B653A4AA86C10C86ECA739EC90CD6904),
    .INIT_6D(256'h091D2EC3AEF43D661A75D595625BDAF5D7DB0F9561B9554578FC4BEC588A87FD),
    .INIT_6E(256'h06D6CD2AB06BEAF2BF637006026F75C6D4EBA2322524AD016ADE4781AE7E85EA),
    .INIT_6F(256'h4FDE7541D1A156BFBBA1F7A83AE52E675C2DF455018694A28811F3C8350246F0),
    .INIT_70(256'h76D19C4164B70E5C2815F4284B446AE56925A2AFEB0A202593FF22C3D31698F0),
    .INIT_71(256'h2FD07F396F9B352CFB38918150D19EA1000032B3442BA1E276E7468F98E9FAB5),
    .INIT_72(256'h4437FFB480A2AABD6425C1E3A6B3B29A167E01EFCDEC0EC2CE95550C13332438),
    .INIT_73(256'h31859286B39D1207D7D43A394629CA2ACEF772C10C562A4BDEFA0D5F3F289C0A),
    .INIT_74(256'h1B8AEC9F843BD76F717B4354607F7E867BDB8646F5296955842E891C46BF5E54),
    .INIT_75(256'h16E62F9D85D861AA0F4FFCA54D86DE3D65DECDA4C88FA09F251A951269BA9AE3),
    .INIT_76(256'h74941C60191D72F501D33DE31DFCFD5C01F52FD87C437A26FA2708C32176D1CC),
    .INIT_77(256'h31BFC5DB6B9FEDE0F3BD621001D68B844A8660741AC543BEE03DBEDD34DCB398),
    .INIT_78(256'h1A8C18782A5AC5FE6EDDDC542A9D9599F488A42654F26299070938A392E52A7B),
    .INIT_79(256'hFC874952903226313AB446CAC665B66B2BC67F7FD2B7E846551DC391B2ED55E5),
    .INIT_7A(256'h233623C1CF471487B4D14EE84BECCEAD9803573D313EC7667C45E9A43E013E44),
    .INIT_7B(256'h944662F5EDC71391C0CBB26D59C00DB7BFF69B3CBD549780EDE95D7EB1CAACAA),
    .INIT_7C(256'h29ACD22B0E78D7412EFC1F357F85565121D2710D5EAD37E76D37C0F9AF14E1EA),
    .INIT_7D(256'h1828E58E2C00C7075DAF7F82FE3F3648245812E0BA86F655194AD8E40DD860D3),
    .INIT_7E(256'h00FFF70A03793EB49D8D46AFEF689D2003E1088B2F295F77884495FC2AA7715A),
    .INIT_7F(256'hD541DC9FB102DA7348B2110B9057404B6A679BFF52CBACAA3F3FEAB619AF6262),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized23
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
    .INITP_00(256'h47BC665085DE76BA092C823BF720268608CEA01788A32B508A334262AB148B06),
    .INITP_01(256'h759C875CE569058C33C53EF661D5967698837CB8E74574E75ACEDDED595297AB),
    .INITP_02(256'h4F6539BC8DAE54294B2F360F67E6DC1C0B325E4700936D89FD3D3E8E9D62E6AB),
    .INITP_03(256'h535082CCA3395EC61541286569BBC2EA4F88BF87A5E007870C09F2D565ED80A5),
    .INITP_04(256'h9B0A02866C8E803B15BEBC6C1D07A81AF6C4F893C66FE5C1BFC301933223DD51),
    .INITP_05(256'h0B8031AC10B07B8949848030A69869E91B459E9D4591689A3866E45BCE4F0E1A),
    .INITP_06(256'hA6C13E18E9C0D8375A86FAC0F5BF76F7CC3811F92D002986F743C3414C6B5BB8),
    .INITP_07(256'h26B8A965ED227F919165E7D33A98B8CBC0CBF9632B4F27DA7A1AE4A7F4B275BE),
    .INITP_08(256'h6D2FA12923BF1205CF0DBFBBC69DB1770E5B8477B50A04FFCA4BB0C3DBF181AF),
    .INITP_09(256'hF1F9E7ADEE6586DD8013DFBFB7223C5538A784CD77CD4ABEC15E3133C19A8B5A),
    .INITP_0A(256'h51A6392A5144D32BEE2A88821BC961B1400789A92255235A8C66FCE02F598BD8),
    .INITP_0B(256'h076D2122B20EDD96B89ABA2534D0C55A980433FE494BFEBD7B8F352B52A070E5),
    .INITP_0C(256'h0CF2121D700230A03C7D13CE5729D13016F0091994E8177ED6630467B917229A),
    .INITP_0D(256'h0C460DB347057DE28A7CBECDA9CDFA00F0B3EEC6549E3F2DF730483A9FE4B37C),
    .INITP_0E(256'h4CB1F49B7824FD69C1BFCBD1ABE2C45D0EBD5361A9B1F662CCBFEC5C9A013F61),
    .INITP_0F(256'hC912385C1D095B3B893D06285765212DF1FF3F05B0884F5023A440A0B71CF0FE),
    .INIT_00(256'h34CB4DC35D32CB0F1DA76C893EB84585B73B5A7C50898DC5EE1C0A6BF8E8DDBC),
    .INIT_01(256'h53FFBED188C812AF03403892BE4C470A803715FDA39BB5D7F61395A4D9A54131),
    .INIT_02(256'h3A6715127FE04C568061409597F692E27C90E819E3AE3626EAD4298051592160),
    .INIT_03(256'hE457B88DDDE6AE2A6B041986BAF932A82EA98C946C9B2B607D5C5989E2BC13B5),
    .INIT_04(256'h8CF7214D7A7AAC68EEE3F17B3C4A35BC5BDED1FD363B9097B9A4E24FA2726C3B),
    .INIT_05(256'hC4DB23622567C4566B1368C1E39589C633972DB845EC1765C4D0C3293800F388),
    .INIT_06(256'h21B8CEDDB4DF710B772B395CFC77917D7F4D5A4080D54A7C0FB7BFB55F3F2CD5),
    .INIT_07(256'hE320FB6B48BC7443287D2712FAF758C342A2224EF038A33095C4C7D0108987FF),
    .INIT_08(256'h6E7857EF1EC7F1130EA1DAE3F7AF36DA663D99EED81E75B229516DCADD180131),
    .INIT_09(256'h206D5EF85B524B3F11B93034C20FCB80C45FB3DC5A01FCC11E39B3014609DB89),
    .INIT_0A(256'h9A65703216AFC3278D0D49AC7E9B05DE471A37169880D96201187B12D18D3A1D),
    .INIT_0B(256'hACCCB171776A6C4F05DE4679DF9FF023121F4D596C649126DCB7C59C211AC5F0),
    .INIT_0C(256'hD9C4BB3D2CF72C0C3617C51869690C9921BFE972792330FCCBE3DBBEAA5D755A),
    .INIT_0D(256'h06DF31E0901DC96721CED13888AE6B36F3EFCE14A7D50F43676FDD8435B0A17F),
    .INIT_0E(256'h12D571408571C192618ACC5142F1EA7F7FD0A47E5D9A994957A849B9B69F2B35),
    .INIT_0F(256'hA69C6CD58F20C7521D425D0166168C1167DDCA8C2EDD302B0ACBE8677E05E57D),
    .INIT_10(256'h0DB16ACB229005DFDB556B972406A181733ACEDB112DA33E095C64BE19B1B3BC),
    .INIT_11(256'h5F732CD60B86739F59400BC8D522F622F545495141104EEFD0F4CEDDC0CD052D),
    .INIT_12(256'hF9B1DD431283AE7168A9BAAAF3F02D9D6CA81DB61F9ADBB248D3871F8EEED416),
    .INIT_13(256'hFFE51F4B56991042DB9207D3B8275233E74C36C892013082AEA2DE55B022BAB2),
    .INIT_14(256'h286D2E5DA53F43724AA742BD515AADCE632B7996E603E70AC4AC6623D7062E58),
    .INIT_15(256'hB5D88C34B78C45BF51D070A02C568FE1B8AE5C04A736249787CA4C78BDEB54A4),
    .INIT_16(256'h9E62191B5F21FAD7790D7C2CFFE22EF9172DB2941810A9DF4CF47F1FFB03765A),
    .INIT_17(256'h12507E99E7244E679363B954FD63F6CBD28793FE045BF19D5798EA68676389E6),
    .INIT_18(256'h58F382C097D7B9C7C01275DE1038D168C491AEF6840A2344400BD3C39DB76E59),
    .INIT_19(256'h684830D835B23608447A07EB4393DC45DE27729280691AF01C7A29B4D80BF143),
    .INIT_1A(256'h72A90E920DD8B7D3F1DE2B853745B6BA5B376B3C8606EFA10C498830EB036B10),
    .INIT_1B(256'h2EDF4D37CD1C2734343D4C7AF7FB4EADFF7437BE5A0FC39383B4CA9C3D17E6C5),
    .INIT_1C(256'h4450F4A5291948E5741F912BA02CF73E19C22CE2534169FF3356A76E46F8D9B8),
    .INIT_1D(256'hAE9B34BE6415703284C310D466B6ACC22B562FC79AA1219833C8C0C8E030231F),
    .INIT_1E(256'hD314658FB5567FB2C8765FFBBC37CC680FB15A9F90A413D23F76908721949EC3),
    .INIT_1F(256'h0D343FCB85E020121BB66E1AC216F3099B652BAB0765D5CA96E7977BB64C25A4),
    .INIT_20(256'hD9AC326E20C3D224C1F3232DC276D6239FDF54CC21BC5A08316602A52193BA9D),
    .INIT_21(256'hD5E007E05DAD36412F1836F7B72715B271EE2EF5232BCCD7BC3E90A642952749),
    .INIT_22(256'hC3F394087EEBD621E8C94A65B6F66C67715CBA02BBA011CBA87D062EA36F59A0),
    .INIT_23(256'h2E2636C488E981D21EA9F8536D10FA170008F3C532E6A7ED75D2F52CF687342A),
    .INIT_24(256'h0EAB340BB9EA7B415DDBC230A4451B5189C73AE274B68BD01B86BF0C9447A60E),
    .INIT_25(256'hEEED72996EB233488C96F9666A2F08CECCBE2F8191D94324FDA53ADFBF0E9780),
    .INIT_26(256'hF9309FA7F05C0C8CBBCB8DB0468637819575896FC07F009B7A990A4C285D9024),
    .INIT_27(256'h89A2F43C34AD3EA2C55F16C3D4D65EAAEEE779EF5BCDD9E07150591BD86688B1),
    .INIT_28(256'h8BC955DD27EE45E8387B45A68433859775AF7A58ABD8FCFE075C208E700600CA),
    .INIT_29(256'hAF3C4FE7BDCF6024481FE27E4D53E3E450328C42EE73D6EBB8F75AAAE59BEA8B),
    .INIT_2A(256'h6D64AED957921D7B42DA42800C1BC8FEF3B54C50307EE9AE289F84D4474D6F51),
    .INIT_2B(256'hBFDFA5C6F7350CC488155748AA3D84E5AC66378649B65042153C8F847AB55ADF),
    .INIT_2C(256'h9B5E5EEA22360A5867FDD074F0201A9C00B636FA83451DF235B54B06E55481A4),
    .INIT_2D(256'h1135A80E12632B494ECC6E07172C3298B1B4F7CF1E8EA8D5E7EDAF649532F31D),
    .INIT_2E(256'h8E9254E0719068886D0FD9A1EE5346267CCCE01152929CB3DF0C66C13A3A4931),
    .INIT_2F(256'hBEDEB3CA93731F754ED285F08CD2F0E35BEF9CE90198A35227313E6AEF53881B),
    .INIT_30(256'h4A6E8536B424E5B397A53E0C128D9E5485163EFC8CFEC902FBB45151B0C35CDF),
    .INIT_31(256'h6E05C1F0354BD284DF4A2F0F4BC721178B336EE275E11373CF35C2B5FBC16C46),
    .INIT_32(256'hD15A2CAC195E8A91D9FC87A5AB7CC1792D48E200B4A0074F4215A97DBBDE7C0D),
    .INIT_33(256'h5F20B70E7709603B63D44EB2FA8ACCF6C53D1B3D476025D1F873888CB4F5FA7C),
    .INIT_34(256'hC026CC0B65A2C3EE6B19007B0C9F48AC407E3A3111E5E6151A4ED097CB0CD5BC),
    .INIT_35(256'h11367A041AEBF941769363C4F0D489BD26DAEB1B953B7451B7D8E17A56550B5C),
    .INIT_36(256'h4351D5BF478AE118D294E6D6EC33E97C07F149F561EDA3674B61CDCAD2DAD861),
    .INIT_37(256'hD7ACE270D52252817C98CC21F3591719F4E6AD7018BA6024A1A968CC56577FE1),
    .INIT_38(256'hC79AA5C04A695F04F40EC2C00DCCF8B04C97CF5C0CF46C8AED70F35E8CF17AC2),
    .INIT_39(256'hF13C2DB85C81C8FB72EDA8A25719EDF7CE4E3E2CC89A88552AB5483B2EA0E842),
    .INIT_3A(256'h55BE73273DCF680E623979E2E5BEA8D284ED5777F459E7E143872503200E74A9),
    .INIT_3B(256'h88EEA645194D9B279D7853D8A2C409BEC8F96EC2917799B8BAD3485B809D36F8),
    .INIT_3C(256'h8FCFF0FCA04A04EF46C616DAF7D8A56E0CDBBD9DF636001C0E8F2DDFED142E54),
    .INIT_3D(256'hE6C806C7ADC49BC44399183FE55631D3AB39110255B68A8DB78864CCA3C2EFC5),
    .INIT_3E(256'hECAAAC41DEA8363EAC66C46B42F6CF0FC35F56D6691815EBD26602BC3809CCFD),
    .INIT_3F(256'h371EF8D120E23ADBA5CD9C61CAEF604916356C12B61B04A424D6D3681BCC448E),
    .INIT_40(256'h5326009BC1AA812C1A28F5F4A8BF0B4C0BC0DAEAA712F71282F7BC83F05DDEA4),
    .INIT_41(256'hB73D2EEAD52EDE3E59A847EB6A59349BB58D8056F09EEC61615739BAB7CB551F),
    .INIT_42(256'h24318D8DF34823D16BD45FFED2652A4DDE3D2A5408C7CB4A1BA9BADE0E1C33B0),
    .INIT_43(256'hC87272E706C080B7C5BC9F56D4F5D56D63DA1423319ED8F2AF1BA8C8C3159378),
    .INIT_44(256'h1451A3AB48CE200983F220CFFF580B102A6D2ECE243BC3B4311F3348CA25BC67),
    .INIT_45(256'h623B832D2EB2DDDCC078D84B62CA146967E69F1B092B04D9788C7F4F8CB6FBA7),
    .INIT_46(256'h3367C9CECDCDB68D19F02A6212EC16C7C32313C20C23A7EADF274AB8A554BFAE),
    .INIT_47(256'hF4921CFD121411EBBBEDCBDD35364DB87307C16470B713B915668B9877DE51AE),
    .INIT_48(256'h3F908D63F3FE2A104367BE55E9BFE3F77520C59C5A2AA9C73BE91B5B5E403F4E),
    .INIT_49(256'h6FFF868BA8FDAA7F2A9B370B59622115BCFD4670802C7E3FB9CC92C0B2E07B12),
    .INIT_4A(256'hE6F36D249F4504973AF9728DF1CE52FC81A5DACF9618C52EECDDF00B1767C073),
    .INIT_4B(256'h19FF911D38331D258A9F9DB1DA11D68B4A62D6D538B5329381D2A799C8D83CE7),
    .INIT_4C(256'h6A20418B4F5B5F7845336B77FA8168B4A60510B3418FC9CC69D7DA29DB1E6283),
    .INIT_4D(256'h9A73E71E0999784A01FFE213EA95D67A017FAB0ABCB47C2A90D59D7446EC1A9D),
    .INIT_4E(256'h4A141CE180F7E3B32E1EFE4AA672C53BCF7E97751912403542D5181BD637CC52),
    .INIT_4F(256'hBF8D51CC255F55A2B74E6C99C84888EF56616CF8AE878E78BC8F3F1974C8EB07),
    .INIT_50(256'hD0D7D344106C93CDA33D200C0D5698EA1FDCC8AFF7F30403D67CC9705C72A92F),
    .INIT_51(256'hF511FC1D3A8CA8D5ABFE92B837E96EF5E01A3B0FE00BA7D6EF5ECFFB542BC0FB),
    .INIT_52(256'hE8D39BF8AC61CD8480B20E4F0836AEC46EBEEDC2A6EA4C2D63A169692C27B503),
    .INIT_53(256'hD0176C59C3A42ED17F0DBCA47FD3454A74C70042D27ED13D6FE1F914AED131B9),
    .INIT_54(256'h4F25553A5BCB65632A38F06FD316C8CEB6E522C9024FEA6BF4C492D9BD919F33),
    .INIT_55(256'h8D1805F6801CC8DA132522CFEB466BFBAB70D943CE62CA822263E250E811E0B7),
    .INIT_56(256'h7F2E939B15066820F9174AF2717A288406E0CCC957DA9B71157A10055930BD4B),
    .INIT_57(256'hBAAA2D6026AA4942A46E070DF49DB8717A238A9AEEDC890DAE31489223B1EE8D),
    .INIT_58(256'hDF324146B6145173FADFB78845130721694B400FB4B2234C4A54553239896EEB),
    .INIT_59(256'h80937E2C112837C7D6E5A4C734E1E556683F56FA7C204D38C1813B495E5C7809),
    .INIT_5A(256'h3965441512D99721E7E7052270F4D00CB287B02C19B5A879AECCE1215BB89B52),
    .INIT_5B(256'hE96435C44F321DE400BE057C9654AB138C0144BB47B1C76F3F37DECEA1F410EA),
    .INIT_5C(256'hD187F965AC00A8C8F45E94DF8B00BCAADBB11EB7E16AE847D52FE2EF2B24B678),
    .INIT_5D(256'hDB3E390737148BB1F4B792C44C86F979B0F71718B31AA4785EBE77DFE0CF2203),
    .INIT_5E(256'h9D0C5A9D1FE3A88B8AAF6210CE0921D14F26D9D7943720B42A68613B9506EA04),
    .INIT_5F(256'h004BD9CC9185C4BC9710013BCA5F5BB931A33CBC283F81F56E55E9BC1AED5B90),
    .INIT_60(256'h6B9D3C8178E854FDC69DC48D5BBD1B7E6208B8C36956F7270CA6682819CE3672),
    .INIT_61(256'hCC4BEB8502BF0EAFE38CE1CAF03967FEE6703A6EE19FB89728BD75436AB4F6F2),
    .INIT_62(256'hA6C4A3A8EA27F354615DEB151C4EEA054EEEED662670CA4C097245BF6B60BC03),
    .INIT_63(256'h44AA131FFAA412BEBCA02655FBCCBAAEDE0FAA74CE3F9FC77533CF12F7034E35),
    .INIT_64(256'hB4EF02AEC42C39B236C18644C4C31C70186BE60B72091B0A3E9824E1886C89E0),
    .INIT_65(256'h1F5B62A1705E10BB9046758840BC715FD6871CCE279A086C4805D67F96596BE6),
    .INIT_66(256'hA0B12B7241E287FE4E185DE290E1D1217FE8F5179F2EE071A4F6D3C20A764C4E),
    .INIT_67(256'h2DFC8AA28EB823B6B65E4C4136E754E95DB84A3B2D1E5759F440D6E8D52DC7DE),
    .INIT_68(256'h8AA2DF2457C1439035222ABFCC9A222B08AF7261BCB5D11D413D56D356DA389F),
    .INIT_69(256'h078568A06B397F9D97388CB595156676D8C3F9AD0C863BEBC99EA7F68D473D71),
    .INIT_6A(256'hE6BC2A13F4F8523A5B884D5DCE23B9A029673533C08310585091A56B6CDEDEFB),
    .INIT_6B(256'h2E26538F7606260B341613B682EC931DBEF0C9626BC5A36BBF39DD9C2EDB2B69),
    .INIT_6C(256'hBAE5A8186BF848C589E412FBDD01F01DF3E633A56370CFD695EE0C9190217597),
    .INIT_6D(256'h07FFA0CD2DC65C8FAFD373243FA3D6B067F660BF8322909341B036997A3DFFAB),
    .INIT_6E(256'hFA45DE9C64B0E4BFB63E68DC7B0AEBAA5E612A28D5B8FF0E8CDC64C02D9E7B84),
    .INIT_6F(256'h1FD6C25794A19EB4A9EBF1E1D63C75596949118AC7B4DA4D337C133C4D72C242),
    .INIT_70(256'hDF56C24F1BE4620B092D782B498EFA6B4D508843A532202ECB69197B6CAE1DC7),
    .INIT_71(256'h900B8F343DC51076AF5247680AA77CD5FE134A64CAB27580BD7D0CC495E98480),
    .INIT_72(256'hF9A433D10015BABB12E6C49B65C94469BD4D70FD9DB6A802F945053249178C6D),
    .INIT_73(256'hB48F6AAF6262F8E6C6E60DCE8A9D825A782A51D3ADD7E61A73ADE781302C0845),
    .INIT_74(256'hB4F8CDEAA5C112E340A95C97DC54FA4BEAE61C94C2711D1ED5E8EEBB879228A3),
    .INIT_75(256'hCBB8A1D82207732EB4B706FD941D8F8942F391E0143FE798044A710B9D9A88C8),
    .INIT_76(256'hC040A073B98903C25452BE45516518662485F470B452155679D6104018DA7F12),
    .INIT_77(256'h8434004FFF2AD3690ECE3FB49310AE3C8317000BC98B990C56D5B89F2468F2DC),
    .INIT_78(256'h1CE1CA422621183DD3B463EC90A34EF7D865A64529A912AE6C7ECD0D25D203F1),
    .INIT_79(256'h4C876C8ABCCA3CA63872A52A47FE0A647DE8FA85EEF9EC46E9D39AA4B16DB5DC),
    .INIT_7A(256'h165C88240744B1E68BAA1C5DEBADC83A143125BD4CF3577D59CF0964B3E6FB5E),
    .INIT_7B(256'hE1A6C4A126F89CE34B17DE09C54045832B8A1024108660B3423FFE21DC4FA62E),
    .INIT_7C(256'h31D015D1B736D485D53AE0A381616B69D2CAA7C860F7AEB34B8E8E188CE29DA6),
    .INIT_7D(256'h8CBC91E4A0A62467B99A41263C5F2536DF57BF6E86C622B4F66BF753E742EDDD),
    .INIT_7E(256'hE1CD5EF18B816ABC2937B1137DB6E9116F0494814E88635ED4AC022B7D543369),
    .INIT_7F(256'hD634230FDD32565FBDE948091D956968C694D9CB45274BD16BA64996E8F276AE),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized24
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
    .INITP_00(256'h8CD2DF8C2841A223BD278552FC127FC44A6611DED5EFBB8C6DE47F7418AEDF2D),
    .INITP_01(256'h9935DD44B49A9F4A23AA21FB9D8ED34A8D037D156B68C0E607038D56C297A5F1),
    .INITP_02(256'h818DDB27EA34EFB33E14B8383AE65A1C644DBC8AA626A1D106161C3F15ADBF4C),
    .INITP_03(256'h89FD1748E475FFDF674E971FF6B18F5CC9491A7BBBFE4AA9C3FBA8DA58AD2751),
    .INITP_04(256'h3E4D7021385A2FC9E7E7353FF3AFBF109A3FFC630ED1AA48DE9A9C1DE375E47F),
    .INITP_05(256'h58608CF581A8B4731CCCC58D35BE7A4E5619A6057C5E085987D99E4A982FA401),
    .INITP_06(256'h1F7113329EC832EE76A2FB254D18688A13C07E33B530B22709EE43A9A5F48B7E),
    .INITP_07(256'h68197E1AA8C8933429CEF428058E4417E62BBCF1F61D0B827FFBE9172C02CFB6),
    .INITP_08(256'hFF745E76E28B836C1757CF5D1F864AD25A1D91C85294168AF1E7565CE5D9FA46),
    .INITP_09(256'hA5CF52921AD98E04A0C900422960969DBBA0E6A683AB30A6634630E5BF531607),
    .INITP_0A(256'h1376CDBE965127287D72663F6F47F4C1E1DD9872B4F9CA16D3185920C6D6A9B1),
    .INITP_0B(256'h31724876B26A463D4D174058D8D5D25A1DAD18DDE8781C19DFB412CC0598CA30),
    .INITP_0C(256'h34C9FC4B89EE0F35B71188F5B100458426DB9F6D5B2A212B01338D1035954543),
    .INITP_0D(256'hAF9FDA5DE21943425CB179939A19BFE7F9331F9039533C94A71C700D4A2F5DE2),
    .INITP_0E(256'h347923AA4B17CC877D792B07ACAB2C3BE895D77D9ACB737468B86F1F4063F11C),
    .INITP_0F(256'hC7722C876E815466A23319643AF3B7F57BE97CB0333AEC9430F8E639656C8937),
    .INIT_00(256'h60B21C15EA80063D5E59F1A488E052A65178FDA08173276890324C5CD1FA0BE3),
    .INIT_01(256'h7BAE96E9859CC5E846AC356C72B75BB664A8DF982D2AA90762EB1FE638330787),
    .INIT_02(256'h4E05B543727A19878E2D09409A61D7D41F147D4DD2C4B239D093796C825C2D51),
    .INIT_03(256'h04A54FC9C069C340896E0564206D52A8A28BFBC9B5A1FCE7F602EDD6E221A4C5),
    .INIT_04(256'h94BAACD3560F2C1084CCD9407C49A53DF87A2D377840072B1A9583CE12333269),
    .INIT_05(256'h97AFDE9B8B245BF31DF73704524AFA503531C1E436D529A8EC1D9F72AC37C54A),
    .INIT_06(256'hBC4C326CCE96A5BFE2493213F1CF7580B22668330FDF4B346D78363A46F28684),
    .INIT_07(256'h958B34C525D960C1ED6FFAD4AC8319227913C4EB92E58943178FAC4E207660DD),
    .INIT_08(256'h216EE86915E5A1579CE26689F9803F59D952D8013482D3152BD3828ABE478B54),
    .INIT_09(256'h38531AD5A10D0905B222BC0B4F9A866B04161990009BDB521A600B50BCCD9120),
    .INIT_0A(256'h1B657057D47220AD65A1F3013FE54B003B8767A50C3299F38A38CBADE8564CB5),
    .INIT_0B(256'hA59266492FB76083EFF9451EDE8CB1D4BDBE63506422335D37069DBDC2E30247),
    .INIT_0C(256'hBBB641D21C7DA0F1DE8E86405B8C41300B3B00FE11C579639F0F814187095B2D),
    .INIT_0D(256'h73297172D6AFFCA626C922E71C8D42E71C6B27EDABF2BB4CF4F5565BBCF4A18E),
    .INIT_0E(256'h1591421652B9A559CE20EA30EFD7C5AC425129CBA34B75F23DEBCE48917C2003),
    .INIT_0F(256'h5397A535719DB5C14F65D3859A648D4CC22E5FC65FC65731FF9A7ABBDBE0347E),
    .INIT_10(256'h1279770352DBCB133516EEA94133B1D2AC3E124D2CA8959068E3BC971345B75B),
    .INIT_11(256'h207D9C7C0750A959D1199177D612CBB02D2FE63E08120AE638266241A8564FC3),
    .INIT_12(256'h224C2F244985907C4376E1DFAF4FC068B0161D019A9EA86DD4A862C66ED241B4),
    .INIT_13(256'h76018AC682CB5FA8EAA9B51D2D08144E5ECDAFC5CA5D29BD26AC1A19DABC7D23),
    .INIT_14(256'h5874EAFDEA9F516D5733253A5DAAF4F8A8FE8C0E3198AC383C0DBB8BA8AB601D),
    .INIT_15(256'h7EB0B377B236FBE4F20E0CDBD79BBA85D24F25C9FC0304297396ACEE863FE217),
    .INIT_16(256'hEEFC1FA7ACB209B723CF69A947770DBF20EC0CD3B2D087C479A8901B91AC0206),
    .INIT_17(256'h63E0E57BD7AC3A72CF4BA788CF5BCC69B5E7197707DBFEEB2F6AB86AF091DBD9),
    .INIT_18(256'hB23BB5D66C06069DCA3F5600078473F7DE0F89922BD23771C390F745B528E7AB),
    .INIT_19(256'hBE7EA86120DA93C41BDEDA8C370D0EEDF2E77A2EC75885BDC0B94997F9E2FDCA),
    .INIT_1A(256'hB9C343519FE2CD9438ED891ABFE37B18CF7E4A1A9110E9133F2C9994FC7FE917),
    .INIT_1B(256'h74CDD491396E8559A0DDAB795C73CC41DA5D9203528DC76D4B8EA0AED432A4AA),
    .INIT_1C(256'h687262BC549B8D821CD073B56996B49D607663BB79F23B6861E9FBCEC1AFF22F),
    .INIT_1D(256'hB165FDD57E80CB17B62BDAB8B0BACC3B0040A4565C851E784092A71700BB24FA),
    .INIT_1E(256'h406AAEA9D41966D3C027C3F5F3076B6F397E9926F57A8918C6FBC78CF515395E),
    .INIT_1F(256'h2022C302AE764CD921A61FBAA56E7B93D3F722D5BCFFB05DB738D3F2FCB9452C),
    .INIT_20(256'h5DE5C24F137BDD7707FF24B928B941470CA5732CAD5E1F4FA2E439B992EFD123),
    .INIT_21(256'hD3D5F5028BA7E6C30CFDB775CB3A98BE65BFFBD3B81EC6F88681AB4686EC808E),
    .INIT_22(256'h2D6CA6E5C83A11BD03052159C90BBD9A6F7E2BC434639945DEDCEC1ADD4E060F),
    .INIT_23(256'hC0ED8C51E624E59A04450E0BFE938B75B09D6C42AEB952EB78698A342533F98D),
    .INIT_24(256'hB41F4F2B01F32570B18E2DA69CF9AAAC6E2AEFCAFC0C96D5A203753CD4D665B5),
    .INIT_25(256'h437C2D109BEF91303204FE866CD4EF417BD2EB5A1813C6AFDF067914F284896B),
    .INIT_26(256'hC279FBEBEAF33157E225B8FE4474C86B3E0DC461E040A7214CA4791B41DA4A88),
    .INIT_27(256'hC228DD66547E6B844E0922AD34F8A9816863E702932489891E2965B7036F4DBF),
    .INIT_28(256'h6C902D0CCE41B307A636BABBAE3C68DC53E3D0FDE07F7E5336B8681569013D22),
    .INIT_29(256'hCC85E4EEB4566FF90AE8C30237287DC3C4B465726079D6665829BE7EC6BE041B),
    .INIT_2A(256'hDD85C3C8DF0B0A9979B69C55310375E0F316BBE7DC52DF3CF21095ADB432BF2C),
    .INIT_2B(256'h943FF739771DEF85CE070E0E9C76F604575109FCE48D1E6420FBA70F427D069E),
    .INIT_2C(256'h33ED6E39176C483AF50C6530A5761045CE791D7A28721CE66748F738AE2C93BC),
    .INIT_2D(256'hED9CCAD60044AC7F13311F74EC40811141F2C209B196C9240E8E8F386B4C5104),
    .INIT_2E(256'h84226740DDA12F108DFA8CFDF40042A944450AAF16E1ABCB98D455E1E7D034EB),
    .INIT_2F(256'hC2A510141BDD9B909774CBBE57A5F3D93F020C587600296DE63B796F6EA023ED),
    .INIT_30(256'hE385C611D21D26096E4933EA99B9763078B58E8985289C9338497752369E4787),
    .INIT_31(256'h4912CDD0376A4F7DCCF2D6FD09C7447BD8B5480FC83645F2AE1B63278DFCB1CC),
    .INIT_32(256'hC957FDBBA937CB37CE3098F128B8E96E91C97684616A141BB5C3E234DF38D1CA),
    .INIT_33(256'h98B0CE7302F03F90C67A6F4D2B202806B12C5FD1B1F795F58A87403A15EF87D4),
    .INIT_34(256'h380EA8D598A61C47BFDE86B0DCEE0EEE88B9C0EE5C4C910BDD634BFA53AFDF58),
    .INIT_35(256'hA3C4D5DA03D7451F3A420589D8C47921B286395F178730B9CFE11758AC8B8EED),
    .INIT_36(256'hCEBDD2F546461D925ADB444D4C18D4CB75A29CAC275F2683B038B212C7C85DA1),
    .INIT_37(256'h4E7B897353950A7297668E4F3EC3491F25AAA0FB0A7F8013D63602B3AEFBA29F),
    .INIT_38(256'hF60755384E7BB40D8E30307B0C61A8CECCCE11004075419824AD3F5343B8B399),
    .INIT_39(256'h82F813EBDCB1490787E42C2DCBA046F8FA88DF6F25C36CB2EA4A80F7A9914ADB),
    .INIT_3A(256'hE2D8F87072FB03FBB7F7F2261163487F01D26CFAAFDCF20597E6ADD5ECF89640),
    .INIT_3B(256'h7178074E5ECFBC604521904F340C1D5A3955E8EF330069D4F7A9C1CEEFB6C227),
    .INIT_3C(256'hE187BA0B576E49F2DB886496DC61D57B0DED7CED0246B28E7E3E9193294458FD),
    .INIT_3D(256'hCBEC6BD9CC75FB79A1BDFE6661FFB2311B2A05889DF363ADAEB1C0F79C02E345),
    .INIT_3E(256'hD6CA0B5DF504BE88B9BF974ECE0DC2A5BCB0FFCF7A9453E05A240DAFD6A7752D),
    .INIT_3F(256'h70C69C57D443ADC2A096B14D0197F9E7F98128A0D431A1D172E960FE390BBD24),
    .INIT_40(256'h55906C2FC16353197E19277ECCDBD489D0F4F70C4A61063E92D004C19D4B3F7C),
    .INIT_41(256'h6FF16022A7CF1CC56831547C5F2986C5DA915A122A5775E91039CA88634D20BD),
    .INIT_42(256'h5050283EFF0A2D8A54EAF56327D73AF4E12FF5AF863E24132F6C9EE614C2CD75),
    .INIT_43(256'h62DC3BB38B4D5EDFC099AD1A60F335C6F3DA48AFE77E2EEA1CFF8B24EF3BBAB5),
    .INIT_44(256'hB76C01AA4923EFD0674A1441AC514014BBC14297D1F2533332742E5ACE9CF09C),
    .INIT_45(256'h30E9936F767A6D472941B47C8402366D436A69F8990868CA0EF772F41375C82E),
    .INIT_46(256'h66AEF4CE463F66D6073149FA2F1D0831E2452EF5BE0E9C3D4565FB276B1052CC),
    .INIT_47(256'h188396F643875FE6803AC92BCBFE42BA5627BFD7440C7B2570836C1D3630F02B),
    .INIT_48(256'h0DBAF5BBCEDA6B252BC2585B131A9A0B6D4007F418883031FB8878076193F1A6),
    .INIT_49(256'h89711CAD4DCED560D22DEC26172A2DEF47990208256BB452F3A957D83B3F95BA),
    .INIT_4A(256'h064A38F34BC7332EAFF491C388862D1980C8234E352206C45D6FFC1443202272),
    .INIT_4B(256'hF2C6AFD7AE3603AAF0F42E73F8DF6073C0ADC87F7C6167913770131EADD3CA17),
    .INIT_4C(256'h89C2AA9B8507E21DB7DCB50BA0755577E62C9FB16B330235248E449AC29C440D),
    .INIT_4D(256'h5CC01E0D5C7BF541D460676D2067B547F81C861F60BB8ED2F906294DD38977E7),
    .INIT_4E(256'hDD356FEB72848B51F1FFE57780FA330CC8ADFD201E23C9585CE81569ECFBF18F),
    .INIT_4F(256'hB06CA9083DDC245DE291ECD56FCFB53577F216D6B9098F433DE067C265C8A1D6),
    .INIT_50(256'hE7B9245CBAA2713A48670ADC630281D15F60DF31C2F313454A90EDCACC2CE2B1),
    .INIT_51(256'h4F63EB4B1F03D404A944D11758E5550715EF72BC459D0A3659B200A7267CD13C),
    .INIT_52(256'h65D0CEB5CF7F99CACC49EC43BF24F4F7C076507353CF890BEE3D9D07F772E2CA),
    .INIT_53(256'h6E88A960F97C4C07BF06E75578EB19439A45144308BD579DBEC8EF0A81233B6C),
    .INIT_54(256'h4747ADBB5FAB4597516BF2FCA4ACACCC1DEB7826E7FEE21CF283A48417D7BBB2),
    .INIT_55(256'hF978806911D9F6FDE8158D64DB322AD2BEEA79F7B9CFF817EF5A74B844283BD4),
    .INIT_56(256'h1C9770307217E0C0FDE6E11FF9398258DB28FF7655445551AD643066D7163DDC),
    .INIT_57(256'h4FA403AC3E49A8118CF051C4E4F4C8253B748BC9C401F3917AE8D8705D587171),
    .INIT_58(256'hE3655738D35F372C33948578A1CF0D1B9CBDA01B9B244DCFA8B6545453330145),
    .INIT_59(256'hFDAC301B0A5D100DD574C36A3C57E54DA59823DF63363105EA741516EAA1AF6C),
    .INIT_5A(256'hF7F4C66452452EB9E1DE79FB78A63CA4955EAE87EDB16F952C8149FECE29F80A),
    .INIT_5B(256'hDE5D7DEDACE2E68547C6FB938C66E6A229803BA0A63440A3CA730449A5B5487F),
    .INIT_5C(256'h10165A416B150D744FC95FFCD773D8BF2697CEC98E169C19363DEBD19BDD9F98),
    .INIT_5D(256'h4D6D7BC1759249D0D3371ED903D9FB8274F72C54158360E2443AEFDDC2FBBA40),
    .INIT_5E(256'hB7E2D74935810200DA9DDD6F9D3259B235E6BDAB1C06387C546D7C99C2742689),
    .INIT_5F(256'h3B506BCEC0ECA37E761F80974CE9F5D2DAFBCD401DEF8B021F70B2DEC5290273),
    .INIT_60(256'h30ACD486272EEB413DB36F5A31BAD035F1416D5FE9B140E59477F70E44381011),
    .INIT_61(256'h66E141A448A05332E9B9B1B503895DB60AD265D9C78913CBED5B556021F18031),
    .INIT_62(256'h21982256CC2D52DBDA37539FE52347992BF1BB36E613703BE6B71D94A74729A9),
    .INIT_63(256'hA12B237F28F6F566BC66C212718558199F2FA315508E5C969F5A3306135DCEE8),
    .INIT_64(256'hDE070EDAD5E9B54F7E661D87EB77B6E90972BD4D8A321873F5365C82012027CF),
    .INIT_65(256'h04ABF2FC398C79B80E16E1FDAB0A354294CACBA4EE48B594B4724AC9020B6C69),
    .INIT_66(256'hFEB9E2BEFD014F4AD3AD40B4D09EC537646464EC93A8659A2E5677E8F694A5BA),
    .INIT_67(256'hF303CD47C6655F95BB7A7D856DDB9D7ECFFEE3E3DCC9558E7471EE293E98F0A9),
    .INIT_68(256'h1813E2B4E2FA9D9D23B3BE18FE309351469F64BCA68DABFCF36E3CCD30DE1851),
    .INIT_69(256'h30BD8AD57AA3E75F8D864E6BC3C85BC5DEF6DBF37425C698099D919EFECE619A),
    .INIT_6A(256'hCD5C5932B03D6CC8D0DA6F732995E43E295BC5607CBFE3B48853D9CBF0A1CE91),
    .INIT_6B(256'hC77FEB56146412D7C3E32D0C32F8248447E738ED999C99F3FAB8E92869F25120),
    .INIT_6C(256'hDBED6488C9D74329BB55B3E862ED25C7F20FA12832EAC088C1F4B63F16700F28),
    .INIT_6D(256'h8E4C8B29F42DC7EB71163E4F1846E82A4C6AA1195630D5AE6EB2A562C2AA5174),
    .INIT_6E(256'h6CFCAF711A9949E1AA73A8BB2894DCB1597A11BA0EF0D9DC064B3F3E80C39126),
    .INIT_6F(256'h6844A39B8F413B4AD98B01E9414283F9BEC427C28DEABB1906292B13EF7FED25),
    .INIT_70(256'h6F830D1D10D21474B1B1FC6D84E0D1E0537F4E02E317DC03C147A2303ECAABDF),
    .INIT_71(256'h8F2F783D63A31C90C805B4E6F110194A39871C928DA583ED948CFB7F61053B17),
    .INIT_72(256'hA8ADF3A1A92238BB0792633080CB709B7DA03A027C316E70CAF06118FCCF2DCA),
    .INIT_73(256'h9820B7D15D71FAF037E24FBFACCDDDB806F5E76326193F48E05EDF01F89451E0),
    .INIT_74(256'h16E37900102312EEDE3EC5113144F47041A65179B1824FE2FF73DCF1014130D4),
    .INIT_75(256'hE7F737E16A6D3B881DB4CBCB07177DEB2045C27FDBE7AC3EA8C463A9F68792EF),
    .INIT_76(256'h02984BA8E1F0343B087F1675A461A0EDD595778A7D5363B3B3DB5ABC877DDED3),
    .INIT_77(256'h244517A3F8132516D8C843833DC532F85409747C8BE1F1FBA19F26AACE0F43C4),
    .INIT_78(256'h15722606F3DA9DCD538A1B3F9E3ECED2109C993C1B6C7EED4A5AB63907B94B15),
    .INIT_79(256'h6AD88D92208C4BD1CE3042E0ED110B96426A9F59B6BC93458BFC0FA5428ED994),
    .INIT_7A(256'h066B83C95C437B785F6A6EEFED6A2F5FB85A565C645E1AE53588B7E73E236AC6),
    .INIT_7B(256'h51F6320FE89E810DF35BCE75990B861BDE6C276139AF3B21AC0E1CF9FE7BA593),
    .INIT_7C(256'h27F0C868411DBE51C52FFDC8508183F1039FCC2DB4B6C93732AF1EEECCE5A648),
    .INIT_7D(256'h09AB6C98DE805B85602ADF72CDB5FECBF1F0C4E5848BC38393B68B04C438C9F5),
    .INIT_7E(256'h225901617A09BD2D7AF0E2792A9A2A55638E161F42F3BF978DF35C3D82463064),
    .INIT_7F(256'h6CBEA528FDD724BFD41415229FF0AE0CFFF687088408A715C90C48EA345DA42F),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized25
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
    .INITP_00(256'h152D1B49E1159E1EE2B174BAC95487165E4064DA733C307346337351587EADFA),
    .INITP_01(256'h29F1FD3E98BCFDACD0C7889683AD011D4AD51FC54CFE6AD4F83B82CDE78B11C9),
    .INITP_02(256'h991A62F56CF94EA51D2430A491A1C85053C89B16CFC12B64B60DAC77C2E3701C),
    .INITP_03(256'h01F2AF70F60C9A121F580D66EA56C6D4A808AC954D825348A540255B49A41420),
    .INITP_04(256'h807EF8DC5F254C0E58A222DBC5613511B136B8C0139A7BFD0009726156D58899),
    .INITP_05(256'h4F6024210ADDDA7766A22604BBADB96A73307DEA41B6DC05DFF0CEE06F5ECC91),
    .INITP_06(256'hE291B4BF1335F14E9E0D97F4CFD3CDDD295185D44DDB7FDD45F4343F33CBE46E),
    .INITP_07(256'h937E44E08B908632EBFAA298486301E0ACD3584E7E80BD46AD83B0BF24819DAE),
    .INITP_08(256'hE6ABB3513867B7B034B544EA4490699CAE6C22C2B8412B5665C530661A5A845D),
    .INITP_09(256'hEE921AD40B38BFA7682CD7F8210ED90DFC7F7197954AC05C1A631819FC0F43E3),
    .INITP_0A(256'hFF39FD073A04672E5F2E780FAD2BCB41FFE243F0BD96C9C7CCBE6D025BB63242),
    .INITP_0B(256'h1DB4D65D48492DBB05248E5A19174FB3B993F40B80C6E8FB744245C4D80E78D7),
    .INITP_0C(256'h59564DBB824ABC2E996B97786B6EDEB15F4A123427723A11B3A840A82066A744),
    .INITP_0D(256'hFC856D9E5EC62729F7497701B93FC20567BF36F3BCAA9B0220E191B27B1249CD),
    .INITP_0E(256'h3E03B8FE74FCFC068D9B5166DE45D3CCEADB5930D5DB353807F18CB9923DABD3),
    .INITP_0F(256'h423171296062126A17F5E9798F2D8616EB68B0005CCF91F9B301DBD6F6234E1E),
    .INIT_00(256'hB2A8232E853084A0631143AD72708FFEF27685180223D0B3C672BE2C625418AC),
    .INIT_01(256'h084493907436F831CA88986CE36BAA4CEFE955EC08D193E125F8E6F7F434F734),
    .INIT_02(256'hDCD2927D6400C964C817FFF9D34EAD6F415345A20CF3D3F33E897137007E4501),
    .INIT_03(256'hCDB8E61D963C9EA69267A494E20A49025A4C6EC5BD0ADA0D01838E3A2A110FE8),
    .INIT_04(256'h244FA157212A3E82C32E6DDD690C609924945D658C2E91F161F46F0881B1E68C),
    .INIT_05(256'h26E5CF7A5D09D05792E076D4BB8AE89E71C5CE923905D20C607058604454E47C),
    .INIT_06(256'h48CDBDEEC3C5E60AF8D781DAB62194E640D75687F30CEE5A91627BEA910168FD),
    .INIT_07(256'hC5E47F263D308153754E37D14E6723A10439C5C633650334D848F1BD99A8BA91),
    .INIT_08(256'h3D6B80157DB2B717EA0F165772E621F0512FF5229A5B66C894E70981BB38D00D),
    .INIT_09(256'h8B03939AFB8F8E21538ADD66960ACA39A9605A3E8A878FF3D89D5070962E6535),
    .INIT_0A(256'hE208D147A91C4E929932FE6BBD7419F3FAD6350CD22D0973EB34728C419F21EC),
    .INIT_0B(256'hA8A3C1AA5779760B229747FB988726A71503E6DDE5E3646817A9EEC67FFB6A7C),
    .INIT_0C(256'hFC8E61D0A6BEFC81D593AD8504F9F4FBC96E23EF7A268C99A20379A2A9B002F5),
    .INIT_0D(256'h0731FE31845542D1BE5A98A6B7B9979A3123A777BB305ADA88E7D9493116CDFA),
    .INIT_0E(256'h1FE71BD53AA3164BC15C4EB05E3AF3230B84CA9EAE05A1663E19A1D96B615015),
    .INIT_0F(256'hFB021F7EC2CB93EA1804DA3E2D832DEA8518B97044999555D9B521299E3565B5),
    .INIT_10(256'h7F04466EBBF1CFC0281AAFCE2F72EE4963064EB16AC8470311C622788672DC4B),
    .INIT_11(256'hB5491CC38DD393764D6D0B9BAC2FA9C8457AB7761456B1DD23D5E88576B78940),
    .INIT_12(256'h3A6D96BC8A5EEBB0DF2491129B0502C6A2730F2F3BF4C45D549BDE8F4896BA4E),
    .INIT_13(256'hBF2D4CB14D78A99540C38B40C96FA03FEB60F752CF0F6F8178D7CC515EF4B561),
    .INIT_14(256'hA28396B1A026A9610227982C07227A3C500DC51FB15B2F88926D9449ED0C05C0),
    .INIT_15(256'hFF0CD14B8EB25F677ED673D7E1B854993141965FB2480E9130D2A7BC0FA17440),
    .INIT_16(256'h51D97F8770AAA138EACCB91D653F4525D90F969FA96ECDDD89AE9F05ED57008F),
    .INIT_17(256'hB415215DAD812608E45E6F9FCCD33A9BAEA2DAC393528A35CD5A20885B8AFA86),
    .INIT_18(256'hA61D5017BA4E2BC0C25C05119633161D1AC2958525F753241097B2CC2F1CA730),
    .INIT_19(256'h937D55883DE73E086C51C9FBA618669835C6140EA56962B66EAF6D21E09D8D56),
    .INIT_1A(256'h32926992CBFE9DECCCA47FF12B29E6A813084BF0BB4A553CCC5BF7C87AD978D5),
    .INIT_1B(256'h6AB4A3FF09B530FEA185A162B53DCB55AF29D1D5A9E1491683ED054FABBC9C23),
    .INIT_1C(256'h9E732ADAE23EB00FCDA72610D968CDB3353A6E68B8A46C9DA14D423B96F1D76D),
    .INIT_1D(256'h5DC17B1218BB664CDD08BE5FE11F2DC952AED79FCE80A39B309592CD952D6902),
    .INIT_1E(256'h37B8D27D5A04132844E645898095A63CB68D29B352CE70FC17130F0C4DE1605B),
    .INIT_1F(256'hB39E4082EE524B44CE264541C88B1B59FF7B081E41B62B00D8992E8CF3B64596),
    .INIT_20(256'hB609900603E9EEC52CED136898CA3F5F7AA8649EEA0F9DA117DBAB4933BE44DC),
    .INIT_21(256'hAB078BAEF6D03B6BF6A661FC1CF2E915D74458F20F38FD2FE2AB60FE87BA2E34),
    .INIT_22(256'hB96B2E39C6F6500F739E8C2DE341EB32A01DCDBE6755FE0E219E3C1B0C6D7A58),
    .INIT_23(256'h188CBB1ADD90F885F662735513C7685E9662648CFE5755C8D14E1DEF36788361),
    .INIT_24(256'hD8B93F89380B5C779E3C6292BAC992A6923A54A695165BE9291B9C74088238DF),
    .INIT_25(256'hCF177D7A0779BE7E85D5A26C2CB47FA602CA7B81349D2B876B4AFF225C590636),
    .INIT_26(256'hD4C615DF9C3CCE7EB3C906EC16B2D1DBBC7E2AD82FF2193896EFBD1CD7A671D4),
    .INIT_27(256'h6A91AFCEB76D3B86ECC4A39A5CBCB3A81B0F7AED535BF1F9E04739A4072F3B55),
    .INIT_28(256'h00885481AC057EAE7E3D6471F616C29948A2A4BAB24566FAED7EEE90D9B7BF12),
    .INIT_29(256'h220EE19F3EF19D90AF8B27808D45CC040264C5854180EFD09A94B58BE488FBD8),
    .INIT_2A(256'h9622844F1A8710AEE4DAC7FC6DFFDC51787DBF6515DDD864451928F96682C2B4),
    .INIT_2B(256'h62BEBB5989B50BFD56E21EDAB72D7866BD7330DCAC812456656DB132AED1A1B6),
    .INIT_2C(256'h13A42DEA474F6CCFE4C1ED7A170B2913718D47900C54B950D1DBC36E14126F79),
    .INIT_2D(256'h59D386BDE41004F336A84084DCFF3CC12243BD89EE6A266B6E8D8012C3DFBCB9),
    .INIT_2E(256'h8A02F0F54C37E2CF96E096C79DE21AA601428E0F726577602E969C6189A86C96),
    .INIT_2F(256'hCBFE26EB4761BF9B19030AC60BD895104A4B03A11609476D5975BEDAC74923ED),
    .INIT_30(256'hF248B8B7FC923C39D5603A9A55F73C238D1D08696933F11C9A0F2F4B73766543),
    .INIT_31(256'h1277D8EEEC3CCF81F55C6B05C91B4745EAEF183F5D8AC0C812BAEAB6F17AF57B),
    .INIT_32(256'hD630BA315C181946F03AECCD1507B020CF25BB738CC185495DA98E27DBC55314),
    .INIT_33(256'h1F7946EDE6D446687286EB0A581A2F1D9AB18315A6768893808646D722EBD849),
    .INIT_34(256'h6048987A565EBA080F2A801DD83EF2E1AFC7E76E561AE09961D35ECC61C6B787),
    .INIT_35(256'hA0FA0F1AC1ACDD54D9DC97BB247728E7FECEABADE30C46CA5D0AD88B001256C2),
    .INIT_36(256'hC203F1195EDCA2BEAAF07DE26ACAA393C1C86C8F3AB23562C95724177DBE291A),
    .INIT_37(256'h77916A5700672374517A4FBC993A3C47733CE182BD2F9FF39CE028ADBAF01BEE),
    .INIT_38(256'h81D17957AB69B98F7A0E3BC96E846B88A160078A010B6640BA5BCBD4C3AF6B70),
    .INIT_39(256'h0F14A1BEE9276B304FB84534F3E60B654DEC8E6F0F9DA35AD996376CBC67F3D8),
    .INIT_3A(256'hC1DE884D929743E9BEFEB7569F0AB94D6B016EE522AEC52FB839489AABB62286),
    .INIT_3B(256'h69879CD905229E6619DE759AC40934E9503B18F1CEF867F7CF7C7E2AA059C050),
    .INIT_3C(256'h0EFD1E5672AD0B700E81F8875770D389AEEF2B82B7024AE421DA5FFF6E0BE81D),
    .INIT_3D(256'h0C206C4EBD5725D67A9B3F5E4461899F97520D09F727925102C242E589C43A6C),
    .INIT_3E(256'h47D91F0F6816C3BFDB60D37360D3332813DBDB1B51F491CBE29502ECC62A89C6),
    .INIT_3F(256'h8D6A2B1DCA0976B3A005043EFCFBFD600BB0438D4FD3BC52862BA037B7CB85FE),
    .INIT_40(256'h31375E6C63F69BF68C3E7A58D4B87B97BE90399878777FA7C59916240A4B7546),
    .INIT_41(256'h1595A48E5A848554D958E392A610268E32FC00F6CB977147C0A378B542EC082C),
    .INIT_42(256'h82F409F6FA281244D39D9549B1AF72E6C6CA50F4D4DB39D85E44F6ACE6F8062B),
    .INIT_43(256'h7746292558FF6101BEBB28DC1033DF763EDD65D54C6280CB22A3786BEF6080D9),
    .INIT_44(256'h40CB38E6AD245EFE8326A6CAB85258C3DC8EDCCE4A9B699C54D4C3B169E10D1E),
    .INIT_45(256'h867981ACCD81F45E577491797862348588763DAC7A322B9A8AFBBE7E19BDF5B7),
    .INIT_46(256'hBC0C651A68427389D8E6051BBAC05527B75D3FFA72198ED2EA0A8B60F36E15E3),
    .INIT_47(256'h56B6633BD4A0181E4A77DC9D6C5FA234CF0FCEDF7C7F34FEE05E677EC37B9AE3),
    .INIT_48(256'hE30EE7DAE77784CB55CCA0C03DB267125B60B5630A5CE4EEC34B1771E0C0D57F),
    .INIT_49(256'h999E414CCF76FAB6F3C0E3630797787F42820A92146318B587D8ED821A6FB485),
    .INIT_4A(256'hB42CA791537D87B74A39EF1DA871621958C02A57C081FF5B54F3DB975F22D40F),
    .INIT_4B(256'h9BF9B51082FD8368678B049C192165BCE761B07DA0D399259DD429AA5AC41D70),
    .INIT_4C(256'h70AD418769B7CA5C54BFDA725CFC367E1091913AE18F9BD1DCA6ABB4A7FABB96),
    .INIT_4D(256'h0ADD22DAF51155CA9547874F7A5C2E17397D627387BD4D8E20D6720296A7F45D),
    .INIT_4E(256'hFADACDA7BED0D204A50404673887A98FB2393E45142744DBBE3923A8B9D6D523),
    .INIT_4F(256'h7991ECBB95DA09EE7E4331BBB92441D8E4F4B33DBA01231C45A37FC96400C706),
    .INIT_50(256'h051E91C507B385A1D84A891EA3D98FAADF7DAAE5F08E71DCAB263D5D84E7AF91),
    .INIT_51(256'hB40E888EF1A1ED69E0D660772406B5DCF9AF7C595A9D07E98F55470C13B33E89),
    .INIT_52(256'h98C1C680A73094C6626E2A44DDEFBB0A61B66496052737FA370AD94B1B4846A9),
    .INIT_53(256'h8F954E311D2F0CE69E8D722973A40A3B334162D776D3D398A73CF6B3B9823B5C),
    .INIT_54(256'h74F33E2FEF9F8B0C378B729A7DB0DDE767D484B04DCDDA9A53C70917EDC7A570),
    .INIT_55(256'h53E17A8FB93123F58CF10879EE54FE09EAD786D9A7BEE2EBD36B52AD246F9267),
    .INIT_56(256'h0D36E0E544ACC83C50B11BB62B1C6424378C79AE009C8963E570DA2507D46C58),
    .INIT_57(256'hDB7387A5CE7C56B48C5F3A41AC8E3E4BEDD18F36B1A857E56E70E1D29E05855D),
    .INIT_58(256'hDCD1E4819E9C3846FBF0C2D9BD0665EBBC8C5AF3E4C79B0914FD3C81827584FC),
    .INIT_59(256'h4C34B71D3B5F114E4E406D5AFF84CD8F969F2D5A8762E71E59421FA65E07066F),
    .INIT_5A(256'h5DE287B2D0447918188166DF15DCC75C0F4EC4FDB30BF0B748F21F5F790A7BAC),
    .INIT_5B(256'h60AAA11EAF18069D4B83B2030223684E4BA7CD1EA981B9FEEBC615FA1D3C0613),
    .INIT_5C(256'hF7551ED21EFA1A1FDB9F41A3B898EAEA299576C736649344C2B12778ED73146A),
    .INIT_5D(256'h0236EEA570D26AB974758B165488546873227331B3FCB5BCA4F73677BE0118A5),
    .INIT_5E(256'h9DF8B2E3D2F2002849EC9E2BF5195EDBA0C78F215EE3F02C3B9002AD838580A8),
    .INIT_5F(256'h5BE6B5005F2A1B8E7D0C801A491323A62844F5BF76C25EBB845AEF4D2AC18DC3),
    .INIT_60(256'h325E7C324AA6ABF4162710F4AA6FFCBC4D1BA0683105238912666AD240951C5F),
    .INIT_61(256'hA4383DC132577CBAFA1B46E9A347AEAF38366BF5D1241461D7DCA789F3FD1D6C),
    .INIT_62(256'hDD01D186FC5388BDB82F0FE64A91B21318A7AAF343B2DDD7EF9D3D314E6EE306),
    .INIT_63(256'hE36AA8DD2866C2E9612254CCD5A4E400AD0C8D4D77E208239D9662E15289DA81),
    .INIT_64(256'hE8F93CC91F01B5397B87A8C7D7494D545801738896026DE725F11E3AC063EC29),
    .INIT_65(256'h6D8D026745D720D7929D8D4BEFE41CEBED5A22F82E6077E7CF28B194C88C3444),
    .INIT_66(256'hB60AD0CA61A0115425BE2877C44149EB95BCB319190386D9FFAE05D27D1CDF4F),
    .INIT_67(256'h9D1504E13B7D77E7AD89CDE89A708E7CD93209AD30EA3F2439E0870AE2C9C858),
    .INIT_68(256'h52F96FAA33C6BE2DFF708E30E2014DCAC8EE79CE0C9A0CB8196698888881C525),
    .INIT_69(256'h1F0BA7F8404D6AD083EE085A8CF9146CFD2D884E648CAFAC1BE1827A771695AF),
    .INIT_6A(256'h10376AF34C4A2EFB8684D604EF2AB0389FC724554C0E92C4EDBA95A749197812),
    .INIT_6B(256'h10FE793BA36C38D323241B14A7203D6C273CBDE218F7B51EB4234F0604AD8589),
    .INIT_6C(256'h0ED9FAE6FC2F3CF7BE5BFAFE56828B4789961D93AA1EF2C40B7A6CA555C2F5C0),
    .INIT_6D(256'h8E46ACBB8132AB1669E0401B5515C4AA0AF8AD6B2A70A49995EB6B3B5284B1F9),
    .INIT_6E(256'h04C7F5F08E8C56CDD499EE8C42EEC370E19E18E8CA149D45EAE7516CD5084762),
    .INIT_6F(256'h3DF1FCB8A8B5C2DEB3356232FD044C17218279F9B7C47537335A871EEEE4645B),
    .INIT_70(256'h5BF45B2DDCF2822B80C73D6CCE90964E7ABAE2ADE3005A6FFC0265E77D367BF4),
    .INIT_71(256'hE52A577E47898AF9570AB32E7BC4138DC283B933DE8A4ECCB4CD082B155DFCA5),
    .INIT_72(256'hBE93B4E6B809CF5FB3A06C75FC95282276796A3CF8F81F435F52CAF83B7A88BB),
    .INIT_73(256'h11B253C598CFA54F00D4F3D26FA265545E08F9693304B67995D963DF3794152D),
    .INIT_74(256'h7514DD805261E4FAEA0819A30AAB8DD6AC93AF20B6A6E43A59C260080764D4E9),
    .INIT_75(256'h1C3B16B0402E302D5C32E10FD9319DCF5B0A5E0EA77ACFDFE219819501CDE17D),
    .INIT_76(256'hC7DE7D88365BEC34069E99B852A340556E69FCDA04DDDBC1916CD660FDDBB3E5),
    .INIT_77(256'hDFC878D99EAB8F51532BEB4720C9D9F2C2D533C816199975D13D26560DEB4807),
    .INIT_78(256'hAE89255301162645E1AE3C3852EA6694E8BA56FB43BC7A2041A758197486D3A4),
    .INIT_79(256'h9683BDE15683EF04AF247D1B942597E62FB4677182D8BCFF9B2CA7F757A2233D),
    .INIT_7A(256'hDE99FFB5E651A6CA552DD8F6FB2A8F87AED96F257D96517BA00EA871E09B6EBA),
    .INIT_7B(256'h6D05FBAFF835199292287D8253FCE59C741006D51024CBF9348642DF3E5F2411),
    .INIT_7C(256'hF48B080F4E4B404E85B127CCB272D403E8103785BBD9450FD4758F31446603CA),
    .INIT_7D(256'hD7AF112C7B863BA8579B91F8D6D0B0F6AD43D53768F1375A61B638C743F9F9E1),
    .INIT_7E(256'h3C54C45A4E4EB52ED41459373845587B0B4BDCA5EAB69FB8FFE22977B938F8AA),
    .INIT_7F(256'hE2097988AE4D7308B9E253C0892B01D4CF5CE876F8A5A2C99757082350009EE1),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized26
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
    .INITP_00(256'hB2CC6FAABEE81DFEC08802B0178A862ABD76FF648EF7010E96581CA5C0B771AE),
    .INITP_01(256'hC3828449E99D503ECBB8CB2AA300FFBE524B52225FDBA0F4056927FC1E5310D6),
    .INITP_02(256'h6A658BBB7E0FF485400F3515E2A09D873C484D48EC51CE35FAC2612931FACAC2),
    .INITP_03(256'h6ADCDA280B5584D502E1F2EBF7CDB132F3D2ECF50CB6F7287422E2ED38C1739E),
    .INITP_04(256'h4D4F1D2C738F35554F7BEBADC06FB033296E24E12A218E7D97838ADA6F65BB35),
    .INITP_05(256'h9749C0480F121B655300D9F35B12CBE258C7211C996B0532219D59CF14F22BA9),
    .INITP_06(256'h6D5A21AC87C9FA913D8FD0D632347D3AB15D65DEAAC5ED4682454229095A0787),
    .INITP_07(256'hB736BF74B5CC2E6ABFEEF64C99BACB1B039E53B692ACFBA4F62FEB05332C74E5),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h862DF71769B3E5746A84A5338C80C97968229184E0ABA64F5166B859F74D5464),
    .INIT_01(256'hE34945108A0E564F41836B6CAAED4BF48469512EDA808FAF9002C38A771120AA),
    .INIT_02(256'h6F38A9A8A4C3B4108C296279C6ABF2CE96DAB868614A98C33552C84C5174D122),
    .INIT_03(256'h6EFBD0279265FA7CC5E9956F4F43A41E99A522010D5E93A8FBFD12E0B5A037D1),
    .INIT_04(256'h5358A3C7B21823F3F5D20CC2E5ADFB758907D07156254E8E540BE96D067EB070),
    .INIT_05(256'h266BA0E40FAFD977D970379D8F69B03B9899D09C3B4D4A1CC9AEAC926E3CB4A0),
    .INIT_06(256'hD38EEDCE89AE16539DAC7CB69980D7FAC5DFB3032060077C4B687D72BF558269),
    .INIT_07(256'h357EEBA714FAA168B37E8C0E1BBD16A76F3B9AC0DFED4D35F6260A592B107AB4),
    .INIT_08(256'h0C317B4D88BD78B0215C938144755B3750F69D4EB98EA72BCEB7BE4EBBF22882),
    .INIT_09(256'h0C3F251A0F82459AE66680244D04B9FC1544F2019E257CBEA8EAEA1DF196D296),
    .INIT_0A(256'hB7B57124011307710DA30578BB20928AC3BC20CD949398DADBB035078DF8621A),
    .INIT_0B(256'h6823EE7B66EBB370587C5B2042E2A9DCD737B475ED5BC033A2177F93F97A1119),
    .INIT_0C(256'h3D19379711EB7548F550D91BBD3418DB6AEA02472B02D88C360602EA16F21B7F),
    .INIT_0D(256'h47245907AC02D928BE1EFA4DE94CD552EC00EA23E944BA5B79AD44214B94920F),
    .INIT_0E(256'h81623E6D556B078485EAAC2ECB1500F815D736891468243B6F3CCC0213A3A941),
    .INIT_0F(256'h853FE00953504419AD747132C647C6354019233B45A2AF8C71D8F124D7A19016),
    .INIT_10(256'hF3D0F2E289C9E3CAF961BB49DCCB38ADED90647C63385FD1AECDA3EA990A5631),
    .INIT_11(256'hD8D0C01847C995EFAEE197729615CA7933A4A1ADAD751BC91EDC83BB02FDEA5C),
    .INIT_12(256'h2DC3F7DCDF48E1B42AD53991768FE9172BDD0CE96D662C28574D27A684639F41),
    .INIT_13(256'h59CE1408EA3BDFAEEB838ECD130B32D5958DC73FEB8D0633F8ECEDB1A88023D2),
    .INIT_14(256'h79FDF9B8F268D52427AA779F50A0AE2B4B5EEEE1D42EBFA0229D1D77CD9E6A84),
    .INIT_15(256'h1E5DC24854379909C0A38761FAD7EECFA736E5CC01936D3E9EB3E6B1488ED4E9),
    .INIT_16(256'h55CF7977C222F772238B6FCAEE92331B4A834C018E6DDDCD8B6A31CA402EEB92),
    .INIT_17(256'h91D3361E230D055242DE521DE65F989C10A70AB676D2746E605CE81CB9957790),
    .INIT_18(256'h12B32464D13169C0B5D953096DCBFC2D827793085727C0C6CAE4CCAD191F8EA0),
    .INIT_19(256'h3D10508B5C6B98A281D60FABF00588B4667F364A0797F7B0274529580942C4C3),
    .INIT_1A(256'hF4775A979766B5E3EAA2833EEDDABC6BF35D2C41B78F71C579A89E0CFC8061F3),
    .INIT_1B(256'h6996C7C97B45060EF30795F1B5958A9A8FC657FB68C05273676B726E5E2075B7),
    .INIT_1C(256'hABB386B6CCE3D8E695E101E89F8D5A9F539E4EC6A6CCFCEC8DDDBF4F732DEBCD),
    .INIT_1D(256'h305C3FD7ADBB4C15F0F65EA3D36B685C840700260BFD26A3A7B56DF6119646C2),
    .INIT_1E(256'hDF8E12FE7F90FC31FD7BAF02A5E35F2232066F5FA81715C9D36CD34CC3D38638),
    .INIT_1F(256'h9132D359EA19A396D663A0F7A2C30FABFA361279C73B87D3F85E90EC5E4025C1),
    .INIT_20(256'h96858EC49AA59811A89419F38B83BE1096817B3D77790B5DFD5097889795ECD6),
    .INIT_21(256'hAA692E69FE4BDDB80A4D8445271E58805FA0D0B82D92BB3A8D2DE4F99039246B),
    .INIT_22(256'h0CC3A490A3A363F30DDFF9A283E550BC3A9A7BB768B3EDC951060C9CE0C1C036),
    .INIT_23(256'hF3B819702A1BCB0DF874351A28C14567C2F9051D2C64F9DA1575093C199B5B2C),
    .INIT_24(256'h134F987B512268B52C3B15FCC3E095DB244066B7E758EEE23C1B67581FAB8241),
    .INIT_25(256'h9362A11ABA95DDF6FA460F4988AC31E49AC0F0E50235B2E5921C07F4BCC203AC),
    .INIT_26(256'h1E2D23E4A7AAC74635CC377278FF7A6B3CDCE70AC9FC1887D65C3012371B0877),
    .INIT_27(256'h6B075E39F02C1138E06BF43FD15A2C7ED9C68B8B49E906F16351AE751A31CDA2),
    .INIT_28(256'hEFCD25DF335B2F3644542B644C8A27EF3C49504105890E367BF889D67E1EEF7A),
    .INIT_29(256'h99816A64103A44299EEAF20BA8B6B4E8BDA27C0D7F74AE2959D3AF583159233B),
    .INIT_2A(256'hFD7073A0F35C2BBDD1A08D675641EA49A6E9D4C5185FD40FA212267C58E81F3A),
    .INIT_2B(256'h486D6D16FAA4C2699D6C696C50E7AA45E7C7B2096880FC747CD4C6A21FC36761),
    .INIT_2C(256'h8692BEDB8F28A0DC796E0288005FA8FD10A735ABCDD4AE475A0947490F0AB625),
    .INIT_2D(256'hCC7D747091657B9532E75EFC828CD5ED3A661335F585D6242004297A07E68F0E),
    .INIT_2E(256'h83FC5D5ACFDD1462B3B34DBE3C85EA0860CD01AEF3F5AA69EFC5243A43FA6548),
    .INIT_2F(256'h37B7566DB75DEA6BF216CEF59F1B800D7E765E4474AA49ADE499152F9AF7A2D3),
    .INIT_30(256'hFA89368DB986EED4E6E8C4EFC152805FEAF36C0D607E273A9AABCBC7FA31505F),
    .INIT_31(256'hF9922987F446A14511167BC97A5A21BA1DF6BA46A00926B72FCA609F39085615),
    .INIT_32(256'h450C6E3E1582E5AA4F5BAD850C0C58D5E895BA847DC49411A5200FE053EE0B18),
    .INIT_33(256'hB57066CFB7A7F9A5C8B55DA572D4AD98E2B55329DDC061AC2F3C7246B2E2CE4A),
    .INIT_34(256'h2C2DF4FB7615B56D36B3D63239548A97E4A7DC172BFADB75744BCAECB9648353),
    .INIT_35(256'hB9296594DAE93D2E30ED5F5630B6272C844C876F2CBBD7B8E202408FB7315B95),
    .INIT_36(256'hF363EED218136E4F2FA9293950ECEEC80FF439078E730E11063F89AAA23BB21C),
    .INIT_37(256'hCC0875E1ADDFB28BD6E12652B240A718C205F8CD9960F48207C822D6E82DD147),
    .INIT_38(256'hFBD8A6667BB899ECDF44D88DE86BD5B8DF9F8DD6C5D0909EC35512983B96C59E),
    .INIT_39(256'h5E5151304E0410A660FCEA02D851892096307F0B31C9B02E1945A58BF28C6E82),
    .INIT_3A(256'h1AFA2FCC58FCD9E0FD9CC25675301BA4B681F38671769568244FDAA1D887280A),
    .INIT_3B(256'hAF5BC11C50BCA912DE74F717F35ADA71FFEE057E2CB5A3FD7653C209FC7FE97A),
    .INIT_3C(256'hAC5A73BC8804D21927D1CA6CA428579DA836EE86614A13B3C20B5E0018DE08BA),
    .INIT_3D(256'h96BB82DA488808E060E4240F7D4553A42DF0267B2657D0E70CBB0A60EDEDC30B),
    .INIT_3E(256'hC70E6F58374DD4B169A7AB6EDA1FC13E8FE3329A250DBCB0CC3DD8FB572E35F4),
    .INIT_3F(256'hF43F460894E5BD5B0170D82AABC74A07F5B4895C1391E61228B387F725110F79),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized27
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
    .INITP_00(256'hE645ADC4EAB6DC09AC63D6DC1F7772C7E9290921F42F38F11BE313189286F5D1),
    .INITP_01(256'hA7D4923D6DB48C6018F2B41EDF02ACB643B6F4BA64744EC5AD9032F67AA7858F),
    .INITP_02(256'h070D5989D4145A870628EAB4209E6789FE1BD7511705E7DAB0A6A5D9189E60F1),
    .INITP_03(256'hCA0F4515CC221DB9F27FF4AE686748D5DCBB68C59A71C5EB356CF36AB719A773),
    .INITP_04(256'hDEA08F4F8F2F0DEC1CBA69558CD69E3D08A425911BAE677458B0F322BACC1820),
    .INITP_05(256'h84F3D4BDFCE3AF488CF11C15F431833A807A3F8DB92B3A60DEEA45D605D6868A),
    .INITP_06(256'h204060B1F557D1EACEE50575D5A93CAD98E7BBEB0E366223CCBF9390763BDAFB),
    .INITP_07(256'hAF2D773DD28386B25E9E8CEFDEA64C49D42F2138C984D7DF47FB495483314B12),
    .INITP_08(256'h3AB3E427FE178DA2A734441B6DDAE8F439196383B983AB2CBD531A4D91D88FA1),
    .INITP_09(256'h34D3343C6E96A345ED2E56C9AA6806BEAC2898B52B470028F7010685F01CFDDC),
    .INITP_0A(256'h88964499AE4A9A0738E00E489C68511B6DC345A4211D01DF372C10A67C9956C3),
    .INITP_0B(256'h88CEBBC84454C817750CDC19A271A849D9DB12E0B73854C3961E24280296CDA4),
    .INITP_0C(256'h340E89F8F17BFEBACA817AD90A24E99626B53F665C2ED1A232C1FD27B3564068),
    .INITP_0D(256'h9B8AEB06DB29A03CA4C8162D6D475C31F9D92597D271BD634CE546DB55805FBD),
    .INITP_0E(256'h2D44F5ABC6CF2A8574D13F8AC4D5E161FFF4A3A98C72CCD0DDFE01D48812B281),
    .INITP_0F(256'hEC4B542EBC94BD3F624EF336ACE21067C643C2AF703ED666CB7D78E6740C6ECA),
    .INIT_00(256'h5CB889BEB8770705CBFD652E0A8A6C1FC87A6A2D2F70352FEA9C730438BCD640),
    .INIT_01(256'h50F35AE2C2086279F9605696AC4E536E290F2D14C1ED4552CC8DAFCB8730ABBB),
    .INIT_02(256'h4B962C3DB3A3A5B10A77007E7BA0D24EB40013746EFB99D44EF7364679BDF18B),
    .INIT_03(256'h59CC8EF47743306DD70B545CACD031D7C5101811E07017924859943695139CBD),
    .INIT_04(256'hA203321481B4420D140922012E5C554BC64A517420BD5F1C470DB5C8AC5193B7),
    .INIT_05(256'hB93C98D4A64E939E03F8554704F635D0971D604EA2CF10588752EDB4852EA522),
    .INIT_06(256'hA03E6EA662F373E72DFD82EFB2C4EC0F364FFF117010F572ACF8638200384DFE),
    .INIT_07(256'h407F1711A40046ED3DE2352CB08BA0CD93ABAD17A4687D3BE148254457252615),
    .INIT_08(256'h57310CA74D35997FD17C088BA185140F9D545044BF5F74C5B46A72A436DD0EA0),
    .INIT_09(256'h5959B3F0D8EE49081A81E8577A7FC10E81EBC8D4163EA80E74E8979F3AA77C66),
    .INIT_0A(256'h3F84C8A2FF1474E9D223903B24419A7BF8A3158A3DDCB8658FE9AB7F434FC94E),
    .INIT_0B(256'h1BAD868F5AF18A9503F88CE4F84A312A49EDB5A8DD11452FDDDAD1ADFA75891C),
    .INIT_0C(256'h2B5C73148E4B8AA06FD8DC7B5248882661A34E6ACEA33A347B21A7869B2F285F),
    .INIT_0D(256'h74A27CFBD422E7FC09A343DF28813F5A0503C9D8EFAFFA3DA85FA6AD6C806753),
    .INIT_0E(256'h6E5FFCD2BA880400B121DA89BCD8BDB0CC7DB3A7FE7FF59F8FA95E0C0D08FF26),
    .INIT_0F(256'hA6BE56B5716D4E54B2E98A75FE5FE8FB38A2A8CD60C7503DE05D79B24168DF0C),
    .INIT_10(256'h30548DB6AB78ABB07695E088B9E1BCCCAC582A40452FF40F07864847CE9D089F),
    .INIT_11(256'h68653B237DE36645E608A06CD14B0DC76291456C50FF54055D63BD61F5F0671D),
    .INIT_12(256'h4C1BA0150E95CAA91F53BCE515CA1A58E074ADFF71963EFDE298C2FDBFFC8C26),
    .INIT_13(256'h89F935329F5713799F4EDBD7AD28B9C13AB061847AB33863D6098E4E2210C7B6),
    .INIT_14(256'h50A073CB903E8816B38F19BC7DC893144AB4945DF96BA9715707C8ABC4F9D503),
    .INIT_15(256'h584A40223A14A40CF51111B84DBAA5984F078089EC9C059AAFD7F4AF6525378E),
    .INIT_16(256'h4F38E47F66EB9A568E114F160457FDA886225586AA31ADD05179A9A8BB1DC5C3),
    .INIT_17(256'h0FE443341C96CF45CCAA488143ED0F0BD5B103004D0BA1CC6F4B7FE746D6A85E),
    .INIT_18(256'h4AB510F2D95AD1BADBC41DC468A1B11990F45F3298EAE9232A4AD5DAAA5D825A),
    .INIT_19(256'hB88F897162834B9B78565864287068C7D282B4FEB47F42B525535F008CB7237D),
    .INIT_1A(256'hFED8E5BE4A5170ECC444DB9706A17AC2C364977AB4A09E306BDC7D572B88A9CB),
    .INIT_1B(256'h395081547772680DEF3569F955A29DD2D68D5025B3C6403DFA80438492DF4E83),
    .INIT_1C(256'h7E8FCC505FDF89BDCFAFB34AF539A95D687C521B5CAC10CEA261ADF8D9167517),
    .INIT_1D(256'h9066E33B1155CD7FE6DF4290ED2830EB1688067E430234A32D91C2839FE619BF),
    .INIT_1E(256'hD1D07E1AD1DB0727887356BA673E822F83CD04932C849B9BA85D53359D352282),
    .INIT_1F(256'hBE102C12983268AA5642BC68D609EC8CBF4095BE282E2FD10C92600BFE797068),
    .INIT_20(256'hE1662A0CC67BA1174E304819C9E197D825AD0FF0D6485F05E14A53AEE8E1197E),
    .INIT_21(256'hD03EBDF03D9FAC20E95AD77D4250210BC675853B93D533D4E2F23D9B61606404),
    .INIT_22(256'h4B081DA762C15B1C8BA781219E23504A3AD4F07912192152074DAB69594F5176),
    .INIT_23(256'h0AA02EFCF22DCBA8E3C549020D0375560F5633B4F83492DCE299AB0C0F05F37F),
    .INIT_24(256'hD1A78C3053138B3082237EA6C78623D08451C5600890540BD81DAA9469AB1868),
    .INIT_25(256'hDE4CD8892D273E04D250DD5230E48FF4BD82918D8AD1D6C3C3C5EAF6B12B7B4B),
    .INIT_26(256'h386C5D80FB13B514F1A27506152EA1A0964B27654E0ACD00B967021E39B537B3),
    .INIT_27(256'h4D36CCEDB51C376A4BEC3EA8394B100AB2060C88B024D09BF0FDCC2DA364DB24),
    .INIT_28(256'h8A7F48395AB95706788715F610BAFD6A539ED0543C3C54C8A0BD9810CFA9B008),
    .INIT_29(256'h9C873466967434384E32E3B94A1A6E9DD1DA6A77370EECADBB6517A86052F591),
    .INIT_2A(256'h6D761A716C96AB677E0425D1C2AE7122BFE1C89CCA06CD328F7B4394711EF890),
    .INIT_2B(256'hA3A4975B8D3583A36045519960437B755D337F886BD64A9D6F773E9353C7B53E),
    .INIT_2C(256'hA3D05C955BCCAB3DF90031549F36F3634CCDDEA71C11910BC9483575FF5735AE),
    .INIT_2D(256'h660A803C7AA88AE2D6A38009A2B702D733625685059C9201595E282054DAF652),
    .INIT_2E(256'h1C1CC15ECD2AAA779EBA551887ABB93137688FCD5C14D6228756479B19230924),
    .INIT_2F(256'hCB51F497DFE0962674C36AB7C8A860711EB04575A825631B777E2ADFCF65DB18),
    .INIT_30(256'h41463BD50566AD6DA5463A8DBD4E9F54307D7939135512C62D2B4F7DBB887BB0),
    .INIT_31(256'h2E0DB404C5EEEC819F3EBA3548212832DB092B59DFD79FC720ED280C634435A6),
    .INIT_32(256'h9405E989284ADCE7F4B85FE588DCB596E8BB04AFE6E1600EDB59B5F1931E13CB),
    .INIT_33(256'h41539B6BC8C4129921BC665F18EC047F72BA196FF33ABCBD30CE4AE6770B1089),
    .INIT_34(256'h7ED571023B421279BA40455DDB9599F6304C32215EEE20DA585F721092DF316D),
    .INIT_35(256'hD0012BA9E95C1A752CB96B71A1E407B0E35B96175AAAA0F67844BE0E03A85B18),
    .INIT_36(256'hFA4B4E22FE531B928970E98B62151FFD29CC03BF8C605214356FF2770BBC2E5C),
    .INIT_37(256'h196C4110D98F374E97309CAD2F39067CAAC4AD27CBA31B739B6F21E3157333E9),
    .INIT_38(256'h5050E0AE64EA449D4C0D598347DE1FE9AA4B812D3AF8A76687632A1F23A5DA03),
    .INIT_39(256'h67B06E9CADBC627156D9BC788831832E0EAE5D6BCD5B59BF800D9F3550F95B0C),
    .INIT_3A(256'h651DFA1D3BDC4DD7EE276E4D6B2CFC40AC253D2731D161E5E7713A39BB40A5CA),
    .INIT_3B(256'h6DFF17A158D2A8F90D75FC26DFA10BA9B89C1857EDF956D480FA64E131559D88),
    .INIT_3C(256'h3FD366A86FB34F80A87D528BE511877AFC421CC750FBA447AA75F5A9EA26B351),
    .INIT_3D(256'hE785CD6FBC5F6ADB797EFA55030E376E9353DEABC2A48E1BBC600C5D89EF8664),
    .INIT_3E(256'h71E03C0D550793A56FB01A23D03DC7C620C05EFACB6382A29853052F64DFB5C5),
    .INIT_3F(256'h889D1D9C341C086CE7777C9E84F343E9F75682C6ED5389F2CBF91000AD0B1B6F),
    .INIT_40(256'h52FC72D9365646571E5B52281B4C134AB28E4919C73B91E79B2F28111CE19FBB),
    .INIT_41(256'h5E676E3896A1FCD2F4CBA8625B0BAF3D13794A5549F9A3BA84EEA165789A0990),
    .INIT_42(256'h013A154EA4AD5C294124023B8697FE1F43BBCE2819F27E8CC329E1ADEBA6B93A),
    .INIT_43(256'h31D1AAA7385A9CF2A7321AC4B0141911F2F00D9834CE9A9CE21FA00777B3AF7D),
    .INIT_44(256'h25043645712ADEEDC2A652C1441838F75F8D36A5C15EB10E294B4287C942A55F),
    .INIT_45(256'h6DBD6929096EFB0518656929ED1F256709341AF3AE7141D46B512B213D2C6CF8),
    .INIT_46(256'h0F87F9BCF4AEC0ED1AEA0F1218E4689C4715A32FEC88384CB9A2C264E977EDDC),
    .INIT_47(256'h1FF79F5D8DDD173A7BC5F32B50F5DAB25C54BA816B9E47F0B1CBA746CB373A59),
    .INIT_48(256'h24ECCFE8CD203205CC59DC86AB9BD53C8F2DCD9445F9FF7D18278F5ECAC93BD3),
    .INIT_49(256'hCF1DE30D4EC0120614D2583B27068FEAEB6AE78BEDE009F729FDE8DFBD0A69B1),
    .INIT_4A(256'h251225ABC1476A999B26B3C6434413F4DD37AA0323C74F36AE580C1D8446CA13),
    .INIT_4B(256'h214B625AD08FFF20A6B49444175EF04A8030A71BD1808F74D5460603C8A6BF34),
    .INIT_4C(256'hCAF5F38A02D96A44CEE96FFA4A946B7C663B8B8F5CE8B97ED57963A23B0E0517),
    .INIT_4D(256'hB71888D2AF5261207CA59F841D51A5A1722439A2649642573195D57A3E58F8C9),
    .INIT_4E(256'hF40927FBB94EE797B672666513FF3EC508EAD3CB12667F1E4A4BBA5458452A31),
    .INIT_4F(256'hE87F90BFD3025873D5C027B41121997CE2DF5DB0F957FC8548F7E5FC126CDB13),
    .INIT_50(256'h48F1CF0805A719D2043BD992F7B5D6065FE80A338B3EEDD00032B2D84C15882C),
    .INIT_51(256'h2AB37FB18C5DA5B5DC43BB5BA0BF1CED6AFF20CC8D5C189BE38E4DEA2885C48A),
    .INIT_52(256'hA4DB4993E70B5BCF1B2AF88BC5BCF0CC9DDFA2191D00DCF1F4B97D08DFDB4246),
    .INIT_53(256'h33331B4BFB61AC234D21776E34E8DE4E3171802D5EB85AEB6D26F1742CDF2ABE),
    .INIT_54(256'h25FCE03DCC05351344A579030904EBC1439C1A8760EEA7B2676394BA400F85CA),
    .INIT_55(256'hDDD01BA2A93C7967FCCA95DCE0C52C1FAB3D395DB9AE03F1DA818ED1DE830331),
    .INIT_56(256'h954B3F7491B29972D31668C26900C11ED74A5522D557AD50F8DF4AFD7356F0A5),
    .INIT_57(256'hB281CD5833E398EB47331D961803849AB843D96407BD965FCE98F387A2E75DF7),
    .INIT_58(256'h3B36ECD1AC8225CEBAD343E1182B9EFDA38A14ED4C1B8CBAA69D99D8B43F6FB6),
    .INIT_59(256'hDB43FD796F7A13F6EA14E089D9261DD355A81FF07FED57BFB4CE7AAB140EF2E8),
    .INIT_5A(256'hF968C86FCDB301C4BDDF82530C432DDDFE86FFAB03042674FD50AA81CCBE0B57),
    .INIT_5B(256'h89CF6BD2135F153184841C2C7A62FB1AB887B16879071C1FF390AE0954B260D4),
    .INIT_5C(256'h09B94E7B8DF00C96103DE812A76C2C2BCD3DC850D576D74F7C507408F8557503),
    .INIT_5D(256'h7C6C377C8F318B5A76662BFBF96E5F06BACB1AA4331BAD21A3539C9B0FFE190B),
    .INIT_5E(256'h6021A94B8F44923D82474EE00858CC9A63AC516218BD26CB72A0DA76E8F23441),
    .INIT_5F(256'hB545DEC2028B5D5EA1A30441DF82EB4F3347C87EFE9ADC0D6A68C06ED3B83DDD),
    .INIT_60(256'hD9ACA2871AB78C6BEA5C6D32500E48B9228CAA2F580C2B0A9A15E2262C190C91),
    .INIT_61(256'hE079D0AD90B0F2456B872690AF4438A399D0E0D35BCE36C0CADC23B5B1AC88CF),
    .INIT_62(256'h0BA97FD87699E62E3B36B5591076A205238654A62DE6A2D3A79D016FE7C50322),
    .INIT_63(256'hEF2C8A50C6D748D609B60EFEC69230F139AE9FF4837B1DCED8482D5C3504572B),
    .INIT_64(256'hD38EF588E41E793A962552926034F93A718ED3D9C63FAFC6C119DAA3903172C8),
    .INIT_65(256'h8AADCE6F4B8C6202A131AE0DEC3F0AF2DDE7DD10878D4DB8E9388313BFB5DA83),
    .INIT_66(256'h70586F1F74F7651858C434B7B605C69CEB556F06A66520F10D4C7A9A9AE7A186),
    .INIT_67(256'h85DB6915BE6FCA0C7DCB3460B34948490E52203B30989656E4D7BE9373D9D17C),
    .INIT_68(256'h8B4E5F630FC9BDB26AB308BB513E81359E4C920DEF5BCE4B9F5875ACD5DB29F0),
    .INIT_69(256'h16155911F12B625CCBC06B032B4DFFBC9D84A207CBAACFA849E9AEF9BB47D066),
    .INIT_6A(256'hF2492228AF015EA9FAC17989C84E5FC2ADCCD5DFD8321B0C12A4F26552D94811),
    .INIT_6B(256'h93C19E3687448DE959819FE02C5741F1A4C8E3D4AC45E877C2FC1B0317567201),
    .INIT_6C(256'hCDE345071E3990EB18AC1A89FD7E67066A83DD812B84AB4C7704C44EE4F6B9A3),
    .INIT_6D(256'h19ED6FF6F6860598A27C267AF32260FDC625B32B1B16233521EAB5A085B4CA77),
    .INIT_6E(256'hECCF3C5876C412F4F6C81616B65E1227D847B5D95E6393063627D26E17C42801),
    .INIT_6F(256'hA983B47B7473AC6990C419F082FE4AF00C36DEC238EF117884E7F25D1A53010E),
    .INIT_70(256'h35D28513D5DE734DE683B59845394847E448B7409BB8A3915FCAFCB40B01741A),
    .INIT_71(256'hB462C8082F04039DFF1C29F30FEB3A4458721194671DC903789D75BF5D23CE9F),
    .INIT_72(256'h587F6075241214EBF43F79391F2E08F73C1B5E10C066C7F955CE7DCD8632A455),
    .INIT_73(256'h70F7349D3CD87E0EC5D503000835F35A96EF844FA87CFC97DDE60AC99B78E612),
    .INIT_74(256'h7B6A909BB0AE405E4E7EB6BC12A7D8AB03A11BA9EB2A18C60E12CF23E5FD6C68),
    .INIT_75(256'h76002417C52EC46F11FB9611D95907701403B4B03615DDC1386706CF751674B5),
    .INIT_76(256'h01861AF582A6C1B8530C69DE7CE4A2B3A9A8530497D46D65C61BA8C17302F0A8),
    .INIT_77(256'h305A089FF8B5ED77860249AED82E093D1536429FA22DC75698FF313DEB4B23E4),
    .INIT_78(256'h6219C30948F5CB2DB6E76C8CA7484487A305E642C253E3C794D6F0F29684F646),
    .INIT_79(256'h98E2F705CA37FCCB9DFEEFDAA59E325FBF144F4B868651097E38EFA36A6FEB2F),
    .INIT_7A(256'h67D505D048411ADC263DCAE22ED951A54135686CC70E734B604F39AC9E9E0BFF),
    .INIT_7B(256'h3C16BCB85B59E4C79C3A44235EB676484915D2FB02DBB81B8421B22B62AE1E27),
    .INIT_7C(256'h29166AFFD684EE8261E0AF30F6EECB402302B328A9055857ECB77DF1580275C3),
    .INIT_7D(256'hE5834D7C24046F8BBA60E7F674CCEB319B2FBCB448C614E668629197549E8BD4),
    .INIT_7E(256'h1622CF1C564C7AE483998D7DB2FA5EE4030E63CDD585C6F2C3ED791286161225),
    .INIT_7F(256'hAEEF80EA80E90AF7A7B201AC82BA816394E631DDE56E780FB1C36CF151CC75D8),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized28
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
    .INITP_00(256'h963DF9142D5CDB2723443A992684F7F07C37EA3F923432DE5A1D7EAE0FBAAF68),
    .INITP_01(256'hC0647D7ED02C5409A4BF84EF9E116DB0480BB3974D0C142D212A8E75A4EB2761),
    .INITP_02(256'h5937AF3456FB4FB08E8BE9E831C5FF57AE119085F9A1E3C40A4435D3E0050ECC),
    .INITP_03(256'hC9AEE5BBD9FCBCD1BA30F3B78B879C63D9E3C479A2668D98CEE853B562CD0397),
    .INITP_04(256'hC28817316D64082386DCA3835E0193EE8CC88AA2E338852AA7E91F5226A883CB),
    .INITP_05(256'h1BF7D5AE3FC42FD4BCE6BD8DB822EF4074D82CD0B4267D5C7246EC644F6ECAC3),
    .INITP_06(256'hA678C86D06F7EC721E7170BAAE092EBDD8A01A9AC0166E803791657AB101D412),
    .INITP_07(256'h3738A334C856A4574107D74CDF4B071ABBA4BC4BCD5C0ACE809DB2CE371E76C9),
    .INITP_08(256'h8EF03216A1AAA2038E35A2E28F3CDE3C1DB6B477FCE59464321019850CCE3BBE),
    .INITP_09(256'hE72810ED8B662AB75AB84A9720EEE5083F0B946BD8EA541C740CDE48B6A7EB05),
    .INITP_0A(256'h0D431159C48C96CFE4566A2E4266710650C75D31A9C0976FBF4A7E530CDD90DA),
    .INITP_0B(256'h541D8C213FDC9176E3AD7C3C05F30A7F5F01660C9EA7A0533A69CD5D29850805),
    .INITP_0C(256'h02CED6CF1727F9156A29F6F5F94BF355BF9237D4ADAD9EC0ECBE27C695ABA98E),
    .INITP_0D(256'hD95E416951CBC35F71B1E2EBB83A4FDDFFD988B572EA93B5D4EC1D4FBB25D14D),
    .INITP_0E(256'h1377F38706228D153645CA751EAEEB6170042AB5F22AFA1D2E2A4AD2CDCB4F3C),
    .INITP_0F(256'hAD379CF348FCC966F6121B90DB4EB14F6BF17A6DDFFE71B229A1AD2D8507C258),
    .INIT_00(256'h0B96B6F1C02FEBA6FD84ABCAF3481F3226D58883F1AA096190F4ADBF3C2C96AC),
    .INIT_01(256'h28E0C108C8FC84022A5205C8378115C19B7A3524A98E8024012D1CEF9B128678),
    .INIT_02(256'hD4ABDFE14A4CC1FD30670B923E3F1BA74EAF37A026F5897FA7E675B1CB26DFC0),
    .INIT_03(256'hF28D893DEA40D3CD8EC82019F01B4B9E4440B11EBD24AD9E1D05D07894A9023A),
    .INIT_04(256'h244B90EC03BAF12A9A0C73B058279115466EA6C62E180AD5D91A9A3ED0659D2A),
    .INIT_05(256'hD534954AF9654DD6BEDFF3D02B6B243EE7189E0EA8DE524FCE3F0A0331E9CED6),
    .INIT_06(256'hA8CA97768564F4785510EC0D2D53F4EFCED14C93DD9244F37690AD39C13B7808),
    .INIT_07(256'hB9AD01A434A9AB5E9DFEB88475CE396F4129C20AA64782E356F62A530EB94447),
    .INIT_08(256'h0D09F2421C88BB803557AD23630E3692D589418328F72718CE7481046565397D),
    .INIT_09(256'h4F108D8F81D3B33D2F782790098560C652FD41B4C2E582E8C52EB3EBC163F4BE),
    .INIT_0A(256'h4036874B829D793806C4901FCA156927F912CAB964EAC95857E81819BA899E1D),
    .INIT_0B(256'h0D2EAF2DD2593E21E711DFE867C6EA4DD886C451AE453D31107FD9AC052E888D),
    .INIT_0C(256'h75A47685A223D7506B6CFFFF563DA144DE98B90A87079B4A3FE70BF869227CB1),
    .INIT_0D(256'h18B1C036BCF69EA7D2EE1E41002ED42980A1AA21D223093BEB6AB22BE59B977B),
    .INIT_0E(256'h3EB48E6AE1AFAF23FD689896C0526FE143DA8B8855AD3910397FA1E3093920AF),
    .INIT_0F(256'hE541C8C52CD6E7202697DADE207D628722FE6529C10D5DEFC0240055443D7EF4),
    .INIT_10(256'h775B13C07D90312C60F856D18D229381917ADB16C338836F31850D0F017A49D5),
    .INIT_11(256'h671F2FA19E7CCAA3796EBBE7EA68D900747FFDEFB5EBA70A0744FEA98F42AF93),
    .INIT_12(256'h76FED5080BB053EDB9F7DF1197A2D2F85BCB3C9A2B85A4AC2B5A69ED0C25A955),
    .INIT_13(256'hB84B4490157E878CACA6F00DE67F28017E2446147A81C5B55B22745F9F768871),
    .INIT_14(256'h22426107F06ECD75DDC836EFB623826CB296192E6F44149C8F391E79598BDC7B),
    .INIT_15(256'hC8349A296703302BAC44D45E186EBB6DD8A59A70C9E399E3707674287E8E8CB6),
    .INIT_16(256'h1330529CA3AFA5BF672E7E81A8592EAA1821ECE2139B08CF1C8305CF8D94C99C),
    .INIT_17(256'h6C2E337DBEA260C4B89F9F7CB789514DB527054B3ADF768C2F05947250433737),
    .INIT_18(256'h214A3B61DA9CBEF9DC4A0AE51ADD04E0EDCE105F166280BD2F08DD545D74302A),
    .INIT_19(256'hB53C2B01CAAB630F374C9123B77483156420D597697EB2C16E0919DDC182F057),
    .INIT_1A(256'hFE5AA0BE27B16AFD6B834DC1F82E9AE969210A7C1A324B347BBFE76A6081CFBF),
    .INIT_1B(256'h8B7EA7E08AA52C348C78C3D5A562A57220FB0326A40B0B6DB5F46510AD0B2C8E),
    .INIT_1C(256'h9395BDC9CBC16E7568236AC492EB1AFF091057A5AC76C9DE30142DC94CB193D4),
    .INIT_1D(256'hB1F24F2FF042359F23A2EB84983B391B9116541D73EE961E20D12572FCD7DBB7),
    .INIT_1E(256'h7271769A3E07A59313A66414C1075AC5D4356642F167EBAF262E9F5A916060CC),
    .INIT_1F(256'h749C4AC9F1B472FDE22C35F035D5FAF29C4F4C48B7229EC62A7327DB3A2EAA48),
    .INIT_20(256'h8147103F4A3B2DDC010650E0A844A16FB5602D2A8815E3CD79C35AA6B2910AA4),
    .INIT_21(256'h49FC416DBE9B57584E469B1D8589D3CB866368093C9F1CF90CF097428D3D87E7),
    .INIT_22(256'h666BF15444294AD8E1A32A2E45319A03349C4F44168A28C08A18DE31A3B4CF19),
    .INIT_23(256'h014881E6E099216273F683ABECCD4841CA1834C87FF78B35D14D9F71163D23BD),
    .INIT_24(256'hE42336B303CB31B7F46F9EB60F414DF4C0E800B085E4112744DE2238E45DB750),
    .INIT_25(256'h5627FED5DEA1917963E0A96B67EDD16B626C42A54A5F31BEF615DD70058D3F47),
    .INIT_26(256'h8138DFE3DA5A538DCDE11F34BCF49D535FF16BB6A8127E0A53347511660E8B30),
    .INIT_27(256'hC5A713D518687359B420E13CDC1D0AB7EBFA6D613FC613F2F1BB9FDC89F42959),
    .INIT_28(256'h17E733F14C3EFF2EA3AB089187F924D0681972FF06641EA98B91A8A06D749902),
    .INIT_29(256'h2758E39CFB6FEC66B9D8B842AA3E4D0AC1D3BBC9830B29F7FB33C96F8E3EEF35),
    .INIT_2A(256'hA5D146D9C70709EFE6FC2160C014666D002155000FB5891771822AF4694F1404),
    .INIT_2B(256'h9AA78AFC5D856237798D227B75B35E8FB77B045E27C85EB7E3DDBAA43ECFC331),
    .INIT_2C(256'hE9A4F0E72705C1E3BEA647203960950AF92FD2C50B4FAB80018E759B04506EFB),
    .INIT_2D(256'h48A69E10C2F3327189CD5D45D16D33F533C776FB67DC8723D335FC6383F5ACB0),
    .INIT_2E(256'h4DC7C8F75F1177B17A78B8180DA5599F1A5781ABFACB72132EAEED38F3BAF7E0),
    .INIT_2F(256'h15D2471BF2027B0898F1F588EC0FBD249D1ACBCD26074B29EF8604BF8C366B14),
    .INIT_30(256'h9F4755AEFA3BCB69D12AC3861C597E9D01DD088A51BADE724E1A3B75D1F51CA8),
    .INIT_31(256'h93910141412160FD9FBCFA87AECF362D11CECF7EA0EACEE38FC355A2831D25D6),
    .INIT_32(256'h7383F98F3020A4C946117F71CC90B21F134ABE430B235181275C9AB8F559A6DB),
    .INIT_33(256'h7175094EE4923653E26FEFB6382ED3059FFC130BCE75182C36B8C769A638336C),
    .INIT_34(256'h11B89D0F2818249DADE4181A4F4174ADF4BB483571BF2D097D3960A8FB939D2A),
    .INIT_35(256'h05ACCC7F628D19151479535FF9516CF861BE2FB5BC252B0E4EACC6E612902F7B),
    .INIT_36(256'h24CD5049E92D42FFB79F5D65232D3C77CEBA7543F71750BDFCD72DE89B6F264E),
    .INIT_37(256'h506FFB46ED749CECC8F3CA3987A1D57D43767DA627BED381AF7944A66910D9D7),
    .INIT_38(256'hEC754231CC3E7439EF267399D98D09D50804A8E96A3652B049631422AB44E6D1),
    .INIT_39(256'hD657C9117D021114FC9627B6DA9C5D6E95CF0B8051B3A6078161E47A633ED7AA),
    .INIT_3A(256'h30F56ACAECF0979F1276FEBFE492123198B2B02B520D8B556599E803F3A5C58A),
    .INIT_3B(256'h304C30C01F2CD8CAFC5AFBCFC7C2F16A0E1AA6AC549C2719D3708CE5C9059058),
    .INIT_3C(256'hC6F9521A91A470A2BC20A2AE5220D3F88D8E090F03F7AFAEF60B00EC55CADB76),
    .INIT_3D(256'h34E428AC69BA47C89FFB4049385D740BE0ABFF23DC780FD5CA21536CF458CB0E),
    .INIT_3E(256'h03FA559A32BB3F4082C52AA2AD531BC4F3174F1ED8C08B7644D7DF65A5891AE4),
    .INIT_3F(256'hF08221EB70378CF151AA0E45A172724F64239A5E996CC9CDB897D82F0AEFDD30),
    .INIT_40(256'hE2DD42480E6D0B89402A7B1BD234AF7303243AE324CA7D9B589B82D1D0E9695D),
    .INIT_41(256'h66C1E08BC987456140D41EAFECE1135768A86C6AD4F8967D1328D95277E2BC53),
    .INIT_42(256'h3439D9752FFFE502BFE1838AAFB679747D4D32DD0AC5CCCA1457F30FB14C3AB9),
    .INIT_43(256'h004B8C46004F1BE6F27243330E49421F0B9FF146494A3D58072992C20D018B05),
    .INIT_44(256'h13113E691079E44DF8853447675B7B0164693F633537005A9071F56BE6EA60D5),
    .INIT_45(256'h54E3B6CE724C78A2E53067C22EDA16E521988698DCF4E1FCDBFC8AE7F4355C4B),
    .INIT_46(256'h68BA70EAEBEEEC4DAD76836083B06201A43777228AB3FF0BF02B75DDBDDCD7F6),
    .INIT_47(256'h9DDEFF5651580CC8F0A13627B45DE429DB6B736E5C95C2A43178BBBA6FD05379),
    .INIT_48(256'hC45E3F92113AE87FAC84FC94135835C71FB9084ED81F08BF86DBD968C340BF2D),
    .INIT_49(256'h39EA0807F3C20E5E0E93C61D7375585820E20CC37CD8E4131AB879D6F87643EB),
    .INIT_4A(256'h2B8D4156C4F74D113FBAC102A4E769D3CDF16630AC40521F64CDE90C4015C562),
    .INIT_4B(256'hA1D112422DC737D83CF8BE455836747D361BDE36FF476488F0AA87990A87F5E0),
    .INIT_4C(256'hA16C499FF8FFDFF8063678D26DB8908CA61506F2BA948670E8F48716DCC4806C),
    .INIT_4D(256'hA625B9C9B659D409B8001712318339100FA070F469EEE7FAF4ADE25DE05BDE22),
    .INIT_4E(256'hECB39AE437181C4393C1C45BE8076F11AB6938E2D86748B9F16B27D209C63848),
    .INIT_4F(256'h7DCC2F61D593F960E0F62CE0538FE79D9336D2EAB16BDCEE9CE90689E42A4810),
    .INIT_50(256'hEEEFBE2A64BE7167CC5CA7B8A046358A1EA5C186B255EFF19FE370233DE0AFE4),
    .INIT_51(256'hE889CD6FB73A5687FD49906777127DAAB2385E697EEE1BD81C7FA0FC96E554D9),
    .INIT_52(256'h00A177242AD4D4F44AEF95AA69C8E7D48DEFAA50D4E93C12E489C0E460CEBA16),
    .INIT_53(256'hB9643D260A26C661E8873CCBFDBBFB0BFA06D59121A29D5AEFDF39769F83416C),
    .INIT_54(256'hFE96A406B1E439AB2375603832A08B0A60AFA30A3EDB599DDD6CC673CD7EC9BA),
    .INIT_55(256'h7EB4A3526E81AB51D3B2E843E334FF8E0A953C31E9CE60E60338316EFA7AE479),
    .INIT_56(256'h21295F67795785AAFC7ED959AEFD42ACC9BB3780072A2C199F749A16DA0F23AE),
    .INIT_57(256'h79E983BA69581C08C6170F2B009AD46C7DD5586B37A76A95BC42FA305CA3E364),
    .INIT_58(256'h0A6F368AD8B04EC65EC2E7049844E6C5411F2DD081328AB577D661E7266CA125),
    .INIT_59(256'h4EBAA0324F4B6095E9101E3AB3D0788E0CF1D0969F2762DB7A1A2ABCC33D538A),
    .INIT_5A(256'h206CC7E8FD872D088B81D8E91C834AA9FEC60ECB1AE8392C602473E663B7E79E),
    .INIT_5B(256'h5A95FCA48904D16CFB144D54DDEDFDAE78CB6B654FB65B86CF20DBAD4D73117E),
    .INIT_5C(256'h6FF8A6563DF085B4BB6755C8202DD6DD588E9C5676F1CA548635DABE3EEC97FE),
    .INIT_5D(256'h61183CC1891C925454236A539880BE89F4CF59520F70EF4F10F1A74319F58245),
    .INIT_5E(256'h9B37A1CE295989421ED95DF0006C04CC0E20257BB643E1A6AB360618CC2FEBC4),
    .INIT_5F(256'hC5A34A40FF4B06C904EEDF59E981EF26A047144998562553F5C088E84874B7B4),
    .INIT_60(256'hEE0D83CD8B47B4ACF680963046BB6A52ADAF6EA297DF5E931F632EE1790C4CB8),
    .INIT_61(256'h612BE7B7A98AE1EFF5EB9F75A134C8F978262CFCA2A3016BDFB0097359AEAF5F),
    .INIT_62(256'h8DADD08AA8D5890106885AE1A0C8FBEE515056F19214CAAEB7EB054ABBF2D7F4),
    .INIT_63(256'hF737C42E7932A74C68FC2A8A0A19EA890C1A9076A61CF4BB82DC8D3E5A2049ED),
    .INIT_64(256'h445C6D76BC1A4C1B1333DEA16FC74977E7AA9B35DB7089410EDAD456E1EF2863),
    .INIT_65(256'h65CB0BFB2CFFA0E59211FA1EBB5C56EA90B3D5A5941332903CF9B84D2726C154),
    .INIT_66(256'hFA279D43BCDB44538EB3E3ADD890AF31BC0D6EF68F1DDDD74039F1112D028C91),
    .INIT_67(256'hCA8E398FAD7A8E5B4E5D1E3D157A7F8D0E575CE162333E500FD7828D10FC5D3F),
    .INIT_68(256'h43E8650027C616DD4FBC35BB065A2B234FFF88734A778BCEF142AD710D37FB98),
    .INIT_69(256'hEEFDA2FC4891BBE106F68BE4728C902FCDD485D10187B66553017762EB9F37BF),
    .INIT_6A(256'hAA60BC787D3A698F54B81ABE35BBDB150730E088955CE3B9217D38D9923C8857),
    .INIT_6B(256'h925AB7677CF12BEADF67D616F02515F08C7E646DE69B3FC890723FBD9D0B3D92),
    .INIT_6C(256'hB710DDCA531750C7BF1601501353F2796FE0C59614B729E9033DE111EEBA4410),
    .INIT_6D(256'h3021378553BB30EC5B37300422A9385883617839D7BDED292A5467095146F75C),
    .INIT_6E(256'h44BEA214E56BA4CD53A2D42604F368D4AF1CC064E273C709D725E6A967CD3820),
    .INIT_6F(256'h4C6FC0F60FF554456E7EBB7E5EF4A1B78D1D308512BBC176591CC8CA5EB47AED),
    .INIT_70(256'hA310EC18AC4A9DE6D5E300CE1642A3995EC1C87DD935AAE8010A04931C7A9A0F),
    .INIT_71(256'h56CD1CFD2BC07F5FC1127132C044D27A567A9BAD784DFE367322E6D5FA3639EA),
    .INIT_72(256'h7876C7EACA8193B1B3E2DC3D6C77CAE22069229842436E1DFB2A9AA940CEBA2A),
    .INIT_73(256'hE2E403EA4EC1D1963ECB171484D75D58EDC2444A990FBD35B623DC3402D49DDB),
    .INIT_74(256'hB4B1BDC38BB5E5E6216F2A756620B3E85E880CFCB10DE36F2BA138610723917B),
    .INIT_75(256'h0D75D840D0183B5DE162F4392B6EF33354C923AD959A527F602F3070A422EFE6),
    .INIT_76(256'h4DD27CE84754BED9CCEDCCFC2DE685DC384F3FA6F2E777E61FF364FDBA56501E),
    .INIT_77(256'h7411B361E04CE924FBAB4369AAEA45D66F25D7364E5EF8A34328F0D03F7E4196),
    .INIT_78(256'hBCE50A6AF9B615E7BA7782EB106FD3639F47468CE7F7C3A68CAF94ECDE17C6D4),
    .INIT_79(256'hB2082FEC4249B169D1C786DC6317D5B92F3C45654B1E3A8003ECC59AC6392DD5),
    .INIT_7A(256'h26E352330734E8C6C5A00180C7B92C32C663B7C403A91B6E42C41B088107D427),
    .INIT_7B(256'h4A315DA74622E5625EE7A8D0479CA220963C2D9F36AB067AC308646C81674CA8),
    .INIT_7C(256'hE60A062E856E86F641A5645077236BCA86D1ECA03594D1E20FA40A070F600560),
    .INIT_7D(256'h983122390FABD206479CB0E73FE520D97A78006C302E04287CFB4D3C5926901A),
    .INIT_7E(256'h86072A636B969887418FE7AE3A9AF8D3AF12223E417FB2CFFD94253166F70E9B),
    .INIT_7F(256'hACE59D4F4E96FF9AD02A5705AE03A7081923A406B589ABD810E338A6684B03C7),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized29
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
    .INITP_00(256'hC9DAAD557559A2E5073D910D6A61E32BC3AD7CFAD2B4F107157AFE1902EED191),
    .INITP_01(256'h61274574DEA67DE97B8240ABE54F65D5281E3C900D674019F84AAB3027DFADCA),
    .INITP_02(256'h3573D2D38ED4A7E967202C413BEC90766093AD91E522112E9FFF2DA84FBB08D9),
    .INITP_03(256'hA98CA0D1479F75640979C5053079F9E07D22D4A9867E135DC00AFD5752878CB9),
    .INITP_04(256'h887F973159E95A718453214B00F30C90ABA1E41FD47CCFE3FAF5AB9EE3F1964E),
    .INITP_05(256'hCA4A7A37DEA8500DD194DFD2CAEE0AE4E1879C5E172CD4C8F32B368907958FC2),
    .INITP_06(256'hF605E6F1A4309D8630280949B924EE999CBB50E7DC64B3103BA8DAC1C4F85821),
    .INITP_07(256'h18A760DB5BB379EFD662A391165720733E407F615FA792847020222D020B4AFD),
    .INITP_08(256'hFB39C9F077902DE82A0E1CD79144ABFDE04196B6B0D590E612C47BD614FCD416),
    .INITP_09(256'h3841D57078A277801D47F6BEFB2C4F83D6071479AA24516142640B660DCF2A03),
    .INITP_0A(256'hB8AF899CACEDCD87C7AD27A1C0E688DA399412A84098A1249BF394FB1EC2F60F),
    .INITP_0B(256'h6F5DA7FB0763CF0853BE61C5018C340AAB0D251D6BE5798A121D3E35B1C76F56),
    .INITP_0C(256'hEA8A6D75F3675701775CFEB4849A07D1E4A4B67CE4C75D1F816EB8E61553E5A9),
    .INITP_0D(256'h7843BBD0F9267A87A9B600390B9C8FDC7B818F882FE2B8AE6E5417391F04DE15),
    .INITP_0E(256'hA0180262F078D9BC5B8D4D0EC0A5CEAD1BF93E73D999B048899C453F421C76E5),
    .INITP_0F(256'hA8D7FD573E7E12B821CCA90A9150BFD1D8AD35776F2059F697DA0EC75CD25354),
    .INIT_00(256'h8C6714CE34A9180CCC874F21189E57D3B72FD041F024C4D92CF18073FDF2D7F1),
    .INIT_01(256'hA562C64651C51942B2188CBE2D4C553E2F26D501F53DA49953FBE7DF24C03B83),
    .INIT_02(256'h12082678BCE637F07CD9B41420452F740FD1F365E74ACF778C59659CFF919724),
    .INIT_03(256'h0A3E80B4C40BDE5BC495AAF675A53F21EADAAC34BCBBB0191C0EC0A5C1310E1B),
    .INIT_04(256'h90BBFA4FBA66E50723E311A6D650EBD1EB34306D8A904F1FA12B54FA1F79F697),
    .INIT_05(256'h82D883E87BDC97DFF643721A6127FF0D729047B0681E18D3460690AD4957D0BD),
    .INIT_06(256'hCBC642D4D81C6CCA8C5526127D5F4B51C725CC99866070C0B3572F05DE80962F),
    .INIT_07(256'hFC7EF615712D7C8896CC95E3832B7175C5F1783454FD84CF17932D3B12ADE930),
    .INIT_08(256'h4BB9107347A08AF17C01382636501CBB2D9457DBB40515E686D1619C8A437302),
    .INIT_09(256'h0BD6ED1A4D3F784F0B449496DBCA70F4B6DE8D332234F4160D36468AA5F59F1E),
    .INIT_0A(256'hB9C023DE6CF2AD92C332FB0A3F83895E147109C093A8DE0193137412E48E5E8B),
    .INIT_0B(256'h8EEEE816241A54357A658A832FEC472A3FC74C59A4D7713953E1E4E60324AAC1),
    .INIT_0C(256'h0336ABEB5108E66BEBF8251EF30BA5C36A4D5E01018368EF83B0FF41BA73DEEB),
    .INIT_0D(256'h50C0A13A45E539E907918E36BEAFC39377965212612ECDBDBE7A251DDBAA62F9),
    .INIT_0E(256'hEF3D4878EBE15F12EA5821D1EBD5124B3D48AEB95BF31A3191FF9AFB4ADFDE18),
    .INIT_0F(256'hB78B5163ADB9ED98CC1DA14D6101EF9705C4B21BDF715D2A4F804245D25A7560),
    .INIT_10(256'h7CE6BD4AB99F929232CB5B8B1DEFF271A56723D1DD19DAE2CFEAB3BE0C3A3ECF),
    .INIT_11(256'hE603D83009FE0E9EB0DE9CFD198C022EB3AAF18FAD76A34D094472F03CA6658E),
    .INIT_12(256'h79A04FA2CB1D281D2C2F55B13793E89B99CA437D013795C64E4FD57C78629CC6),
    .INIT_13(256'h087C0FB2B550A85DCBFD6FD9500BEC8F4B9503FD12E3754889AE927BFACB455C),
    .INIT_14(256'hEBB59A3CF4995DECDC4C043634C305525EBFBD32EEA7E6906EF82AF4616F008C),
    .INIT_15(256'hF3D0F552DAC0975720C83630D30B237B168D8F68F29C91A4CC7222A42DBCC51E),
    .INIT_16(256'h4AFD4817C23091CDAEF364B07AA66BBAB06ABA6672AE1CBBA4DE14147806BECD),
    .INIT_17(256'h6D6EF7558B504E6886B6D6DDD73A9AA37A92258D9E58331F014745E48CAD479A),
    .INIT_18(256'h0C12B96C4F94A5FA79B6F77B6ABF05209BF5F23E3F89E918C3791CA2DA7E0431),
    .INIT_19(256'h27554C0F30269BF09D4A1C00F9639A54799959C59FD3915CDF40AFA1588A990F),
    .INIT_1A(256'h9A6DD681774E0D5ACEE088DD061D683107EF2C053358FB6C1BE8636B56FD2686),
    .INIT_1B(256'hEB6C34E631250C25FC662D4C9C47013216F1800DE99BBF7E2BCEDFA926980C33),
    .INIT_1C(256'h043FDCFD50271EA8597EDAC24DE8F4071073C6A69820ACB41438E3CA983BA8F5),
    .INIT_1D(256'h0934BAC967B290DF07619F5F85DF898710728EF5E678AAA3A0DF752FE62ED141),
    .INIT_1E(256'hC2F8F6E9B8313DF01E8B6FDA38BBCBB9B0D3FA30B001575D35D55576B327C307),
    .INIT_1F(256'h465446E89124B4587EB5F8A1CDB00D122760FA8418FCE6F9CEA7FE5B416D981A),
    .INIT_20(256'h791821B093CD534E4C88E9DF66BAEF4AA24F3DECA3ED6B5814AF8B6F986973AC),
    .INIT_21(256'h71A250C53EF1FF9D221F9106625B4641AA10701EBBB3572C25C4093C774340B7),
    .INIT_22(256'hFEDFCE5FC46A15A5888EFA47C96D22C4A58F5421DC52439A4FB4A35475C38A58),
    .INIT_23(256'h0459B4D530A495A27EC011E1BD3162774D9A6D1260AC6B38703A2E4B2D3F9B45),
    .INIT_24(256'h9F73405A670E1898444D847A920163F5E6C87AF03AD97E63E328558864F128E2),
    .INIT_25(256'h4736DCD449910EBFB8B689AC62A3AA5E609E2EC817B367E5CB559F12B507B35D),
    .INIT_26(256'h08258A2258FA5574284E9E29A484018D279D363E22F18CC0A1BFF17CCB077789),
    .INIT_27(256'hEC4F43B810BC890B4CE43F15434510E4770D5E59193141219743FBF080D8A1A3),
    .INIT_28(256'h590F65FDFA1F5C0B1D7DD1C852A899659C19979421B0C460E86D414CDB7F40B5),
    .INIT_29(256'hB3CD6A85CE1DDFCB431181A02A130672C533750FA4E09764BC58E2FD5EE0DAE0),
    .INIT_2A(256'hB60B3CDA2D2513CBE5A7D9FA2808D2900C2D4D6993D6732FC47EBC1DEADED069),
    .INIT_2B(256'h78AD06B5ADBAB2CB83E9C4B09A54B38AF02370DC0F378DE44DCBB9F750EB1845),
    .INIT_2C(256'h2E13A72EA441B434082FFD73F90F9AC653A387F3D7DEEA0511661B4DB6B858F2),
    .INIT_2D(256'h49B8260935AA1CDA3804F2081CAAACD88A33848A2BAF6E332A8CBD43A7F98B3B),
    .INIT_2E(256'hED1CA10488EA416796213D2EE593DD729E71A05E034F4E4BB59489F33C226E29),
    .INIT_2F(256'h2E2CDEA40FB4EAA1C17A2D02EA40985270558A60F8396EC3339437F596727A57),
    .INIT_30(256'hD06A8E5984830B966743E2BF20687CBE171F2F83CD52E096316A3B52A1319472),
    .INIT_31(256'h3C1B424A029DB276BBFCDF72D62D429E2B2035DD5CD35E280F7ECBC05B89CEBE),
    .INIT_32(256'h6F3519DC773BBADEDB24180B5A41EA67DD0E4B9120CB94BB134AC2D5E6BDB17F),
    .INIT_33(256'hDE64562A7E6005C73D5CDEC11E3670A31C72E29A940A3314A1192F301EFA10B9),
    .INIT_34(256'hAB10593E31AC9C6B954178CC58FA035AB328BD525AB7274F72737506ADC957BA),
    .INIT_35(256'h17838C1B95872814490D8C40F99E0AA52981BD08AF96AC66154CAFA0AA1251DA),
    .INIT_36(256'hCB3CBD33EDF66D2564459CC47B09EEB1412DC8FB655BB7402CA0B64CC8F7FE20),
    .INIT_37(256'h392561CB0A1A577A4782E3F5267ED58015908B5D22F25D1BE5132E43A2D728F5),
    .INIT_38(256'hE2E88B6506B6776E6B2F121DB66AB9B6852B2F9AA4AF42B42493DD277E8171CC),
    .INIT_39(256'h43ECCD5957CE29B12017A98DD38D5973E3393FDF12C33D70B6D432F0AAEDDE9A),
    .INIT_3A(256'h8E3AB49AB0E8CB5BE72E58530590DD85B5A090EE4A5A35F10D6E3274F9151646),
    .INIT_3B(256'hF79245917D3AFCEA1FAF571D1404F9228AA135D5DB90F0061D30FC27105A1C5D),
    .INIT_3C(256'h757E928F9D03931F0BA0C5B9D4623A449712E1623AEB3A5C23DC8448C23624C4),
    .INIT_3D(256'h0D7CDFDF72F213F0473A2E7A4446D6FD174939D3509DD27B0FBC5537F7478008),
    .INIT_3E(256'h21ED223734ACB34C148D4B479164C1C725D1B02228A2370598FDF3A644EAD1AD),
    .INIT_3F(256'h75D246BF2E48AFF771B6538EB711775525BAC7A32EDDE9784E3A5F04A51D414E),
    .INIT_40(256'h038B53C8B0158852AF06F843181606EBE8AF5F18C6EE1D782AD30D4BE6552AF9),
    .INIT_41(256'h71E196255B5095E823DF4ABAB9D5C3D25245B258AB298920C67F574B665B8FAE),
    .INIT_42(256'h3066DD610B3BE38BD0E6DC2B640BF1FF4D870A40F7EDCCB47E9BED5BCEF4C791),
    .INIT_43(256'hBDB946940A32EAE6BC3054BC4582E3C682DC48BB88ED5064830F9011BA3B49EB),
    .INIT_44(256'h98AB6A70DF6D1B6B5C28612DA2D4873E150C16DDE47AE5879BFD30437DDB643A),
    .INIT_45(256'hFB6B97244DCB063337BAB18DB97240021AEEC0C207C1137BCD9767EA6FD1425F),
    .INIT_46(256'h4F3FD69A14FF226B74DD53A02AA0435165FABEFA930BEADB59C36423D485E7C9),
    .INIT_47(256'h58E713EDFF715DBAC7A2E73D212680769114EE78E8889A56BD88FEDC23623C17),
    .INIT_48(256'h25E36383F52F237BA531EADF4CBCD80DFB8F4FEEF2BE8812A8C386F1B580D56F),
    .INIT_49(256'h182F98B66CE1078326592076A86735CCD3D3453E0A3B7DBB2A87F8D944AA6BE7),
    .INIT_4A(256'h3E977E72A698F3FB4245EED668E0C9772A19725E7B5A4DF2CB2DF2F1FB1C9185),
    .INIT_4B(256'hFA93B3F8F8676FBBBEDE09306BC7FA7DFF35BC92F2B254BB59FBD83CC6773052),
    .INIT_4C(256'hD6FBD6AD2F5BC4ED5F06C9EEF0A6039C3F7CC159E58AF78CE8CF98632C31E56A),
    .INIT_4D(256'h1BB83F35AA95B679877382754936E6AE97C87359A7694BE0D736D172F11D9417),
    .INIT_4E(256'h47F2B9636C3E92D90F4CADBA9224F92213A6183A53C843773C61BF6D13160516),
    .INIT_4F(256'h46C907447109DD9E35823851556787FF25ED1072952A8516083108779C046AD8),
    .INIT_50(256'h2EA7C1441ABFA8A09061AEB08A6E4485B3AD5B41784851AC24AA746C68209AE0),
    .INIT_51(256'h268CC4F23FEEA50A147AF82CB5B4C113912E951146A97EC48012C56947E15BC3),
    .INIT_52(256'h302D6DE3E734C92F9B985CA36922B407835D0CF45DC0E0EE0F44EA7A8011F1EF),
    .INIT_53(256'h82FBCA342A4BDAD15F6BF5FA16A7222B84403F491F135BE2DABC0AC740B5C336),
    .INIT_54(256'hCE6F3F106638D53A9CAB0F25330DAA80FBA16FBDF9AE34E79B0FF4B96D21C94A),
    .INIT_55(256'hD62F9630ABCD6C108F84B552126B0CDBD9733739A32E5D7742AD4CCDAAEC42DD),
    .INIT_56(256'h15494ECAE9021D71883B837D1329693E41A036E859EBD1674F4A6454DAF50E24),
    .INIT_57(256'hC394E084D51DC2ECAFAB4518251470FC934BD06BC49612B1247D20B899139E25),
    .INIT_58(256'h7BB6B37E5C47247B7479F7F67E982FFACA8FAC5B6C7300688C968685A50C9CA7),
    .INIT_59(256'hEF98852D66C4E054EC2FCDA3D0EEB957ADB24B7560BE7021F163D86506559892),
    .INIT_5A(256'hDB757675EEBFF17CCAC03A35B1820D5C302748D8972B09A2571160DFD21665D0),
    .INIT_5B(256'h7A66A765DD5120AAB7669B7E7A52118634A970EBB45D721A4947DB58BF923463),
    .INIT_5C(256'hD3C6694AA3F1E9321010DB4DF77671CA3AD3CD7AB069AED6C52FE510354CE328),
    .INIT_5D(256'hE1CF5CDA91BCFFD937954AC7AD3A2CC47869ED79BD063EE3898E50D30220F1E6),
    .INIT_5E(256'hF284A62CED17EEAF000CDD60D4818B2B88EABC29E3CEA9CD0C79088288F51D9C),
    .INIT_5F(256'hE51B1445CF6B51B298815A8104603A155A8CD9DC54A3A15FEA7BE6C7C1A0A7F4),
    .INIT_60(256'h4FCCDE5326E50B2EE342ECF77EF2630039984ABC641ACBE3EEB041116A1755A6),
    .INIT_61(256'hD8C3E800A1F11B0D28FD956C1F120FEB35DEDB5ACAB0D14DD4B8D80955439B75),
    .INIT_62(256'hEDD8F5E541EFA885C6B7AFCD25CD8BD11F37ABB34FD3FAAD18748A1E518B4168),
    .INIT_63(256'h8911A218D824A1DFB9A94B8A8587F63B680874D8FA40BD19C7707DC3E017181F),
    .INIT_64(256'h0D89E05947581C48B2AED71880F61A8BC2AA27DB6F293DE8D8BC3B59F70949C8),
    .INIT_65(256'h0AFB634D5E36526B530550E923AB5C2D36FA2707E5CA05009938929FBE32C846),
    .INIT_66(256'h6804E0CA1DE96A2025520DF898D7738FFB75E1E777A16BBDDF63900ABC7BE1BE),
    .INIT_67(256'hB661AEDDEAEC06547A487C9E6C297C3562DE2CA56D11BADAE919132395873D07),
    .INIT_68(256'hDF7DC0F62FF60F29F2FB16CFEA8F323AD474E3C0F9AA6DF655163F2B0CA2A2C4),
    .INIT_69(256'hC01FA30579CFDEA3A06940187D209D7A5314B5DD6E5CF53A1853C88BC4C3FEA3),
    .INIT_6A(256'hC8D5B1EBFCF4041B35F350360CC604F24E2708218AE6A995CA03BEE23F2BE815),
    .INIT_6B(256'h7936143AD018815131D130B4E7748C48999610321F959D722F85594A27925998),
    .INIT_6C(256'h5538A5ACCB7645BB16512CBA537A6DF7D0307B88D4C6830CFA3728D4AF963571),
    .INIT_6D(256'h3F09377CAC8A6DE15C933373959741E6EE60B90EDF0A816A8089EE29FDE261E7),
    .INIT_6E(256'h06F87A60BB0FA8BCBFB2B9F3766ED277E866BCEC6DDFE50E9F4922454F76C7E5),
    .INIT_6F(256'hC713BF3F01BC0A6EC78F4A38F1A869A7C6BF5FDAA223C19FE6B429BEFC9B0BC2),
    .INIT_70(256'h4AD5812788B2CE0E72790B65A3761F0DDACE9046D3919F4A7C63B6A42617061E),
    .INIT_71(256'hEECA3A2AFAA89BAE53B2CDC9E2B99C144173231DF9B819D7D3ED4EA9D41A4402),
    .INIT_72(256'hD8B8176902F7019B7A480513237ECEEA265B29CC6BAC3B9DAE94959A866DA93C),
    .INIT_73(256'h6813A39F6F75268B66CF60874FA3B1D3E6992626C3C4DFE686C8BB6B85DC9F90),
    .INIT_74(256'hDF201E70FF572077B47F2841DA532777E474F91E8CE6F8419ADCB8C4B055D2CE),
    .INIT_75(256'h3E079AAC5D54702AFBA49725CF53BB28B279CF720E636C6886CD2CF632043A71),
    .INIT_76(256'hCE229F9DA213C40AC7CD86051A4DA65B60892E969C524DA6E5974B53879BC5BB),
    .INIT_77(256'hB1B6AAC85AAB0B714F77CA2EA3B6ED3C81B09B9C20F1F11823C81C20E6316776),
    .INIT_78(256'hBA45128928886257B2952B183D58BF024830F93C6E194FDF2D8E08B9E921343C),
    .INIT_79(256'h348004FE252F8E0216C94628ED3310664F27D353DF2E5327BB3ECB29B00DAFC7),
    .INIT_7A(256'h19027A0341CECF99305EDEF36205059259B0E4A8905D030C0BEFEEBCE0FD851F),
    .INIT_7B(256'h897562B2ACCC92503D7EFCD389891DEFC8190130935F86B85F01530849D74AFA),
    .INIT_7C(256'hED460C2CEED968C63ED4A0572DF74FE555EB6FFE2554EE5E9C90F943B7261C11),
    .INIT_7D(256'h713685F811C43C9EE8BF37B000EC387A7BC209F5D66E104B1B98CA2AF97DE61A),
    .INIT_7E(256'h002741A2419D92DECFA467A54230348EC39213D135864D82B44F5F1018DDA9DB),
    .INIT_7F(256'h49C3A6C6126041054E6BD8F4BEA524F2346CD4512528B15336A2F63A688F1659),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized3
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
    .INITP_00(256'hECFEF4EAAAA6416B9A781181EE83AC7F053B64669F445ADBF72D1C2E86F1E842),
    .INITP_01(256'hF1A5D9C67AC029CD95EA1F48CF9DBF3A43578182029DDADD6BA5AB8E25D1C442),
    .INITP_02(256'hFD8705C577D2AB9A98710DCE39ECE2A8D85D54333C8701261F55F18813F29AF8),
    .INITP_03(256'hB52A3E9ED4D86E3335C78A831241451DB8A70AECB9BCFA11A2D9ECB4381B3657),
    .INITP_04(256'hC61FCA580170FD57F8109E42C81B1E32AF1E74388723DAD594EF11937748D600),
    .INITP_05(256'h60F930CA8DE22A0947F59B513F2306DDF1C1C8462091F48FF1A4A52DD084FC69),
    .INITP_06(256'hA72BC0C9AE4B119F1B13500541D6F112578B62886742D9DB8913CE82DEBA045A),
    .INITP_07(256'hEFAADA140297AF5016112031CEA7F4C41B408EDE950D24BE571B15FDAC977D0E),
    .INITP_08(256'h77989175F329370FC1635A4E4F4CD118438B9DBA95CB06CF9C3D87C84E40F05E),
    .INITP_09(256'h847A879A614F1DEF0F40914512528F022DD2BD899E2ECCC1B78488D2FF4D7D8A),
    .INITP_0A(256'h40FD50FA5B9AC8C336488B3066F9B2EA557E6690CE662FC50995DF22A27C6D1C),
    .INITP_0B(256'hF58734DE3EF7163E36022BC9E5D1D5A8342646F50C3F3990664893F74480BEBC),
    .INITP_0C(256'hBC8BCF03296CB19C4B4133315FDF71B08CEE5E77467BE1E1B4C510D4F463E894),
    .INITP_0D(256'h98C55D38AC22CD7E13D818E37CBC8A62FC3A9FC42AA30AC6295A496F142F7C6D),
    .INITP_0E(256'hB7AF3AF723C9BB8BF0E656C660E57D7A0984A3A3E31A9EC1BAC4A5F56169A647),
    .INITP_0F(256'h513810D8D583DBCD76511DE6CDBF8131D4D60C46E0A399BEAEE57DD7A049592F),
    .INIT_00(256'h8A1544DE243B60DAD79805BF8E667D10493153825B640D86AE205FDDC1D73EE8),
    .INIT_01(256'h9178D518CF19757B71D95B261632ED7FB5E40C65BDC6D0749B1FE2B44ACB60B7),
    .INIT_02(256'h5AD1789D282DDC74D8AA17797CA9F0996628FFB23FD8F8FF9856327C5F39E6DA),
    .INIT_03(256'h5ED4ED480FF4A17111EA2B266330FCD2BFC747F136EA3950FD4655A0770C27EA),
    .INIT_04(256'h98C9432F02059D4AB7C5A3EB8CB855AFCFCE3BD0D0B2EEAE3EC80DF2F0AF3A0C),
    .INIT_05(256'h5DEE5A76D4622F041124A7213498C43F383168D6C12E3DC6F02C5AE031A3D9BF),
    .INIT_06(256'h25F07E94B8EF998D66F0B99954FD96AC869C77B74324481326F9FF9B9756F6E5),
    .INIT_07(256'h6B7662DCED791C012B1EE1CDC94A6B68F7089D605D3AF965A739090CB8C933EB),
    .INIT_08(256'hB2576CA34623AC2973BC22918BF664E1DFC7EE2030D6891EEB7EDD929D0FA403),
    .INIT_09(256'hA9C7F2459FB8121CB69E1D84B6B1F90065C45FA9E1B857E900005234C9005228),
    .INIT_0A(256'h7898399FCC2E2BEA2CA45CEC18DDF7C67D3B601514A25583C6CD3FB89E5B9169),
    .INIT_0B(256'h4F42724DDA8F507CB3FDB72324F234FF85CF89027FDD0EF05D8C54624B54D4F1),
    .INIT_0C(256'hCE442F3CD5ECFEAC97907ED193EBE4E0C4529974E343E7AADC2BA91D75B2FA81),
    .INIT_0D(256'hDF48D0EBADCB5B34CAB72B1D17ABA3BF7C94F3035D29AB08A97B9F7EE4454090),
    .INIT_0E(256'h2E5A6D4BB3BE297013C71B795371C3DE623C1AC9A5AF654A616D38321397A9B1),
    .INIT_0F(256'h758192493756285F3F38358B9613243A3BF7900140F88F177F8732844F509609),
    .INIT_10(256'h6EB80BC013DC6B050EAE2F6C72E949D42C3DAAEEAEE2A7EC83E97E4178771DAF),
    .INIT_11(256'h08D5D2B2608E7A7D1CE017D5357AA1844C6C2E4DDFA8928EABCF47356F3348CB),
    .INIT_12(256'h7A60AF6B635024D25743C83E9B57F36A98B8EA05BA7FE796E514D016395DBDD2),
    .INIT_13(256'h92D634261E0F1F60D4A0BC7D530B35A9D69CDFE463738EE013DB585AC797E420),
    .INIT_14(256'hC6D594EE2ED3FB54DE974F78E4A77E1FF4A89B32608408770322EE65B2648BBD),
    .INIT_15(256'hB214363D0C6FB399277C79C28FC70849480CDEB6C978B673790C7ABB9E6F345C),
    .INIT_16(256'h3F4514CAA5733914DF51C676975D0D78D397C2B08C6FD44C41D0407E07227AB7),
    .INIT_17(256'h0799DE967354507A7234A69797B00CC0B28325BB4032B35EC2000EE3C4055F9F),
    .INIT_18(256'h896248E2C4F33940228653757B21CE2A93CB7FB3EC7106980FB6EB23220A0141),
    .INIT_19(256'h70614E23B59143EA0896ADC3DF8746AC5A7C2F59485232419AEE8E9E010BAF44),
    .INIT_1A(256'h8AECC60F037487CAD3FCE5F5B575BB2429327DC4F05E94BEAD99BF9B66873EF3),
    .INIT_1B(256'hE655F6D22F1F47A23AA1604E2D342D23BDB6DE8EF79086B79ED531B543F59744),
    .INIT_1C(256'hA9FD3A2B31D39339ACACA0DF8E2887CCCB4F171267BA2954DEF9D63A01DB1185),
    .INIT_1D(256'h3F86F5A402F4E4EAF7B52087B4908F50F93B4F458D1A6FC2E8AF132DE67C84D1),
    .INIT_1E(256'h403A5AC1C5B5563BCC47BEC69C86DBD2512E123E076E858C2EB2A663C7198289),
    .INIT_1F(256'hC3AA3B6BB5635B85CEF973BFB9D0B41D6563D35BFA55F6757B4E1222931D8217),
    .INIT_20(256'h24917571A6A07BD9EBA2B1938B3260C107585DB0C86E9F7A4B3150D861F827B2),
    .INIT_21(256'h0BD909AD0C7568E79DCBA1D4ABB949307FDAFA3606C6B7C7B3122EDBF86D2F8E),
    .INIT_22(256'hCF6BF03594F23C163C195369B6608557055F0ED39C4DD311C68D4168A140C329),
    .INIT_23(256'h0C683D45D90DDE35A741DC36FA4771A7885CAB02DD13534CCF3E1BBBF5E9D5A0),
    .INIT_24(256'hE3B7FA01D537BD08A37829E894399DE0A2066FD5F834DA1A0CE7B226148C2C7C),
    .INIT_25(256'hC3C30B45B9A8D86F47BE244BB109A9FA575348D564C895EED39D9780E3235CA4),
    .INIT_26(256'h6D619954E12F166DD084E1F023CA418FFE8E5F3FA0012C1C05391351F5E085B5),
    .INIT_27(256'hF3EFE141A794B11969A3E549A88A0B5AE310C9B5FA02F6918B309C91FF087662),
    .INIT_28(256'h2B856A37B0F784CA80B158C038ECBF417F119D98AFD4C5690B191239DC5E7159),
    .INIT_29(256'hC83F9E4AC5B14D30BF7DB8920CDD014084D70B383B62A71BCF8B6CD73CBB8050),
    .INIT_2A(256'hE573B08601DEA48DE491F3FB58FA38A12B3B26AEF98543B0EDA1BD0286F8DB78),
    .INIT_2B(256'h2CD85C40123DB20BFC962A014636ABD5DBDF566E82903C0738B51C83EDD03C74),
    .INIT_2C(256'h5986E1D0A968BBDD68A870F3BE5C8DCC77520845698A00C5A32AC40F6C67E00F),
    .INIT_2D(256'hD4858416CBD3A34734C4EAB42DF646755C8D95572CDF3A52BBFD253FCD81C816),
    .INIT_2E(256'h04BEC8F7AAF9CDA34666250602A8C80536FCEC3FDA8FBECE4655D37F790D72FF),
    .INIT_2F(256'hBC22CE9FA9B02EB108BBE41CED498687F4D603FA9B5AAFC08D681640EC47B294),
    .INIT_30(256'h4D651742C047848DB7EA01E278E0DEA05B511137EF3103ACBC4F0BD246CD9D7D),
    .INIT_31(256'h9D58F6DAF7A72D3165C0F2C3BB28D96856B4630A20BA48C208203FE38A7A4300),
    .INIT_32(256'h99C8052CED5DFEEC8172042A24A9B23FC67384B0BECF80D603E014C98F61EE81),
    .INIT_33(256'h5C584A88AAA42E6C0782A2A015C5F53445C496428E89CEDA9C244196E4E30A2E),
    .INIT_34(256'hFE9EAAF3C064BCF4084F7AFD48B2AE8806FAE915F5D4D89B490A7F3B22A56C7B),
    .INIT_35(256'h01366F10D595BBE58A8E91ADC7963A4C8FF9835A0BB05EF0B866F09082E15CAB),
    .INIT_36(256'h5CB5D3C636EED7EFC9CBE4B9A1794EB52B51494D1983D52731B1152C1142B739),
    .INIT_37(256'hBF6E6020274805485DBCCC6B0D1B1F1C94E7FBDF1E159CF12ADFC44241975E23),
    .INIT_38(256'h9BAD4CEA4B856ACA197EEDC2EAE72E9BC062F096A484A2775844B2B992870A98),
    .INIT_39(256'hE1B15307D48A4D4C69B75F111FAF1B89BB9F46E46283EE4D2CA5F0371DA3838F),
    .INIT_3A(256'hE4CE2A5976715386FEBE285F80345F87ACDC12462EDA761590B28D6E98523FF2),
    .INIT_3B(256'h5293271F0C59523200B0C7A40F015E3D0CE60FB59D585A63F611825FD1228522),
    .INIT_3C(256'hD1B2BDB63FA566EC0A75474F484FB6D5BE77130ABC50859C57A4CBDC6A9E7571),
    .INIT_3D(256'h6129FA3D41DA237190404671397709F3E95D22AD1CD8F66EFBEF13A20CE82C62),
    .INIT_3E(256'hD816538C750A7774FA9D5D8E8520E571E1F66236AA7197A32B11BABB79D3BFA4),
    .INIT_3F(256'h2624B76F2F42D1A90B2F2170AFC7AA031D0B6DA3E9FBF7E18EC7AADD42EE9770),
    .INIT_40(256'hC5E03593E9339FE5DB80600108EA98628395C9227FD484CF5178B33F33EF4B4E),
    .INIT_41(256'hD0AE6A3A1E9227E253A3A2D3C27A43C79A16640504646B30A085D6C37B29729D),
    .INIT_42(256'hC99A25944881F56B8E688CD59432D6AB24F31F21511591173C11B442E41A08E5),
    .INIT_43(256'h45A6913ABA8E6791C0F8CFD3C4F260D7688796A3D19D35B5EAE5AB4365E460F7),
    .INIT_44(256'h3E7989A673222693B957C5961815C09F7CBC1B149367E8B68D0962B141494566),
    .INIT_45(256'h353C4A5D2236D80592C88FF35451D5F7C690F245653C939B2E78DF8471D55476),
    .INIT_46(256'hF30722A8D7B73B6E50FDB388EDC34FD0EC5DBA620555A12D883FA76AC8F31AE9),
    .INIT_47(256'hB991CB0AA5418176A616725434DD53876C3D6AC21BD31362E2D9427E8D7749AC),
    .INIT_48(256'h35B2F174E91E9BC510872D0C5F63F5311C74CD967F42FD204BD546A246EA90F8),
    .INIT_49(256'h988F77241655251D1C618BA48F83CE77CC7FFD241D9A97C986596FD996099623),
    .INIT_4A(256'h73472BD4EF93D6FD4EECE10B1AEBA7C1CF3758B4820C80B4A73B7C9169495E73),
    .INIT_4B(256'h4295446A5FBCADEA3A83210F364A73F3DAB6F374191D2ACCB14839FCCA2D5073),
    .INIT_4C(256'h5BE0D0162C4D1BE635393B6EE2022D87D6178EA2EFA401C5BFA60E6D287817C9),
    .INIT_4D(256'h365BF7E0CE3F93DAD8CF2A3EF0A5C5AF5B32B606394194F4023CCD337A989115),
    .INIT_4E(256'h3DD8F91B8406359AEF288B176396D1525BA7317C13FB046B93B8986899C82FF8),
    .INIT_4F(256'h80C14778A3A4AE84081ADCD926021026F96934A38DDCA7183169D93D356AD488),
    .INIT_50(256'h2B57CD3A8B34CB579038F753388032AF83893D45E502DB493F36326B5F8CCB2D),
    .INIT_51(256'h59A8849EB1C9ADA8CA83BB97E12959D5E36270955EDB9FA67DA0E57B8140A354),
    .INIT_52(256'h863CF4DD2217D013180593FA822DFB53620BE7E5496BDE9B3106C76A2E64E30A),
    .INIT_53(256'hF7CB012C1C81DEE63FBC229897EC3FB3FC9F671CF041DEAD99B2BB4A58A17A86),
    .INIT_54(256'h3A6C737498FC9896E5D361763CF53A9B2D08C331F0D3445599F4C196FF25AB17),
    .INIT_55(256'h8AB6BE5CD0747BE619EE1F2CC11941FD9FA4A318F22CBBDCBEB9B9E7F51888AE),
    .INIT_56(256'hF933113529D38780087C3247801F433B84174A17AD7310EB84656D159F00D0D0),
    .INIT_57(256'hADB3A0DA286AE0C4185670A04EFCEE03C347CBADBE7DAE2DC526A3877F92AE58),
    .INIT_58(256'hB025569D8186FE2923B923E07510FD6B9BC437100049A9A40DE88D7778B99324),
    .INIT_59(256'h7E3F54E3261AB32FDA962BE10175EA96DBD6A0256EA2E34C57DDFC4D66FFC619),
    .INIT_5A(256'h3DE06C0BA7AFBCE155E59AC1981ACFC986053F9975E2C5C11C20991A4206FBAC),
    .INIT_5B(256'hF2A9AD530F163088461AD27A0B82E98536EF76210C8373057A857CEDB01B2142),
    .INIT_5C(256'hB1373414DAA738FA1C17FBF079171CD7CA9F7F4E400F9BBC255289F8083799B5),
    .INIT_5D(256'hFCCCB7C7B33CCBB9E1041D9BE65BD67FE371972174DFC99B1CD046C8859FB7AD),
    .INIT_5E(256'h30AEC8793ECA2F45025FC4399CED793D2D5D3331D79C60E3F43E5E15CF3DF27C),
    .INIT_5F(256'h2FB78C61CCE6A0C381AEE1D6FD8732E5D4488CDF6F63A396057E50E8010D3701),
    .INIT_60(256'h7D780EB1D80795820D8C2F0FE5A898DDC1F3315C48C6C1CBDBC732E962920748),
    .INIT_61(256'h5A79651EC4A69C75084FA7B8623A2289C6D2CA60BBF052C139E10B98A4549C0F),
    .INIT_62(256'hADC7BE074B87D51B9ACD4EE63E442FB6A07BD76FD1335E42A80BA0237E0DEB98),
    .INIT_63(256'h9716C95B6814E7085F735494332991A04C2BEE7563822E662C140C31C7464B2D),
    .INIT_64(256'h694BA3077688C41A1A0721D16374D77501F45FC6757AE819E145B619155C2610),
    .INIT_65(256'h7B053851EBA763290C77642A3F1AAF906CB9827F976BF73A397DF5DD650EC971),
    .INIT_66(256'h337B915037134DCF517D1BBCAD903E2B3CFE095179849D6BD2DAA19E78CD3801),
    .INIT_67(256'h1E37873C6F7D6FFE2161CC0258335F86CFB335BF1EFC7D229A06FD999696E360),
    .INIT_68(256'hC0287F70D160A159C828741BB6E0BFB1F594281434A221DBA0C653175B089658),
    .INIT_69(256'hE80393861E96F87DABDEB7C0ACF91A74C3F23E31BBFF677C8E169BB9936D0827),
    .INIT_6A(256'h3AE4BFFB8F121445001B7EA320CC3E6C0C8D2A90AF8B83BA806503CD09B4C605),
    .INIT_6B(256'h9A3AD18C76CF95DBAF8668D6881543FF5717EDA754EA196BB7D99E8A83DDFCAB),
    .INIT_6C(256'hBD5D6A8838C54157060E74C9BD7DBDEC455635F0E303300EC33C3A63F376F3DD),
    .INIT_6D(256'h6C672EBC3D831EBD24BF424C43C6F08D5C7EFD07C407394AC557A3A013C31BC5),
    .INIT_6E(256'h92CE635FD9618C9C76137468C85D0CDBE1879A323AAD161CC74EC0ADD0898EE8),
    .INIT_6F(256'h7730B5A84E31F7EE698F7AD537B976CC7CE401F2E1294882B896192937069426),
    .INIT_70(256'h9188C3A1DA40B4B08B0AB2788785AA21CEB2D7D98CE4EB88CFDF94ED4A2A98B9),
    .INIT_71(256'h8C990A6C6DE3CC2FD7196090D4987C5802D39B4D64209695298FBD6CDD1F143C),
    .INIT_72(256'h93EA49D078B56B984D3C0A11C7A78C35449CEE7137D9337348D71DC34B570AA2),
    .INIT_73(256'hB7B6141462D34767CC75F52651C4BD87B7CCC5991259BF32F7F8BCA3F1E246ED),
    .INIT_74(256'h914A116D62EBD7A43068C20DA5525A2C5AD45F3224B9F0D22B24C412E0A3763A),
    .INIT_75(256'h25F7237078ABDF63B15B4C6AED139A61B7585240980353C6D012F9694B0B0273),
    .INIT_76(256'h03F2BCB449AE849A28CC1D202A4DA34E827241A5A64333A59AB19F41FDC2A1E1),
    .INIT_77(256'hE823057FFC0933999BC75D45F1D7DE97736ED89B626A1C6A808DBCF23CDF51A2),
    .INIT_78(256'h0589F7A019BAF884A58ACCCF9B82721CAA12F18560A2C1577B675830EDEFC4B6),
    .INIT_79(256'h3BAEF208E5F72369A20E3E79E829172D648A8BB8DE6E3E5E3A4BD37E236CDB3E),
    .INIT_7A(256'hAC49561EC991FF8F87DA4940DBD9029480F4D852A9365E1EDAFA4EF3A6EAD08B),
    .INIT_7B(256'h74D6FD1EC7CD6A6F2F8625839D51F529F2DE24E318D47C6C3F5FE11241135C60),
    .INIT_7C(256'h6E4484832BC681254CD2182639765474EEBED4B83E299556FF0D06EB28793840),
    .INIT_7D(256'hEA2F037EEB9855552E08B42EE401EB0697A0D5E252D101A85B4B4B2D91374958),
    .INIT_7E(256'h13F39C1B835018EA5F6A547ACDE8E37D35464FA8C065D0FF04BB3A11C4D4BAB5),
    .INIT_7F(256'hB6994C849748E0937996D784AF9AE14469F2173F1B93698C6A153F1757EA96FB),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized30
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
    .INITP_00(256'h3F78B9A92EBBA1B7DBD4EFAFDC36DD0B1046FFA591E7EA1C77554321CD0B2155),
    .INITP_01(256'h8155CC0713D20D28EB1163743231C5EB667E84E2008D2D049A18331842E605B2),
    .INITP_02(256'h7ACD6459D9AF1592E4AA59BB5CE913DCF6D29C8E249AE2F2CCD6B1055E60DA9E),
    .INITP_03(256'h27F575C247AA9D0E98CC19EBA555132FB597D5F0234935741E72646B91223CAB),
    .INITP_04(256'h5490EE7EDD9C8F55EE9CC8B0FF663BCC98997C07A9F56DE419C660DB43A2B333),
    .INITP_05(256'hEBFDD75FCDC0B50F8A534B0A565B3627AEAF55D70BEEA3567EBE9832ED06C768),
    .INITP_06(256'hB74337A25FA88390D26EA180FD21C6426796D10496C30028D533A93570CE3297),
    .INITP_07(256'h936E4BD216A9C2E5E3778BEF2CD121F466FAD63200D04CD982E9D6F790A0CAE4),
    .INITP_08(256'hDE5AA3066B8BC9A17332ED9D43181FE7358966449A6C295B12179F6121409CFD),
    .INITP_09(256'h8E02BF84703779C61B213E9C59541F8F1CB7EDAF578FC4EA96621C644F947947),
    .INITP_0A(256'hD009E1B9216795C7F81FB576443F1EBBD735F21E7888714B7EC9B7581B977C89),
    .INITP_0B(256'h3D31DF6A9FA56624FCFDF05262231B9BD4455F207CC561106692AA51BB03E30E),
    .INITP_0C(256'h0262F78C9A39118CFA3E488CBA94FDB2462BE938FC29A858F58725D8B24B9DA7),
    .INITP_0D(256'h3C9278B3473DA371C69D65E4992D365203B66CE3B1167AB9F289C4359BEDB1A6),
    .INITP_0E(256'h70B461FC5584815AB3282AC54D6B6582F572F292A217AF2ADF2E17D7B4AA7835),
    .INITP_0F(256'h4B5638DF33AC01D57D368F2852E560398118E1C7D3D7E502E6A9161ADC50C97F),
    .INIT_00(256'h2D068DB88D2389B2337CDB2F57A31786EE40C288D7D52DBB79AEF53396DCB4E5),
    .INIT_01(256'h5D461CDE130D5CE63C4B7DEB7476C59F8CB2A7468D60614B66C727239457D5CF),
    .INIT_02(256'h27B8C0214A29009FBFA0A38BCEA94AC0F13919CFEF68276D4140150B82F50361),
    .INIT_03(256'h541DD5DAA2F051DE1498297835BE0EDCB26C1F0CA7D4DA113829549A78022BB8),
    .INIT_04(256'h78D5B03C6CEDE989AE0F4B4CD1A3B36EFE70D5D905C53015E93BF47443FBC4C4),
    .INIT_05(256'h039B3DA437647F45BF04AD56CA2DAD9C38256D3F03EE09F929FA37D451402687),
    .INIT_06(256'h00339145B6D6B57065DCEAD63A435DF1A609ECBD2C564A81D431BB300544199F),
    .INIT_07(256'hA7386C19ECE3F2B0AB5DF2CA94FE1727BFB64D343B12049391645C30027C37F9),
    .INIT_08(256'hFDEC875039067FF388CF2BC4075B370DA1BBA1497F45321968981495E2503C5F),
    .INIT_09(256'h753001CB1EF68C7167EFA927966E1E2F975F0342D5147CCAEEE52897AC36D097),
    .INIT_0A(256'h6A1D15001B9554EDA2EBEA032EEA6BF85338BB2E645AEF8403968FD98E3569B8),
    .INIT_0B(256'h625D38082FF95A8900AF3240EBF57CA49759C93EF2CE528350E8A15C03ECC862),
    .INIT_0C(256'h795E013819E097F25977BEAC1A874D98B495562472C2B7E2AE8DA87B24784D2F),
    .INIT_0D(256'h97D67773B908AE217B735426F89C0A815E658AEB0D7A62801347500F94797EDC),
    .INIT_0E(256'h78EABA5AEDB7E709C36D5BC09D74FAF0E5FC5CB7428C9AE2936C4508623818C4),
    .INIT_0F(256'h2DE72F9DFAA1CD269E4EC11EEA42B243726BD34B15CE1B6BCFA1C88A2D5EE8B8),
    .INIT_10(256'h8480F422B266C7D302D9B7205231557BD68BE001EE3E3D7E7BE1346CE61F8221),
    .INIT_11(256'hE503239840C71D53252981B3CCBD7001771CCFB1663CCCBA1E1E203B991E11A7),
    .INIT_12(256'h0A9EAD8F445C5778A3E66F2B7B996532238C904B29E15358D2A11922B9ED02D2),
    .INIT_13(256'hBFB10E0E2D6270D67D45D5C380D358252F18F7EE035893F88A5D3F260FF0B69F),
    .INIT_14(256'hF75F0B8D6E2EC7B4B6C539F2557D6206DA990CEFBDC27330A1ADF0A03BD7B947),
    .INIT_15(256'hF2FE9071FD940D904B472F5C726B3EF1CF4B909E374122BB9CF0DEB2B2D4D9BE),
    .INIT_16(256'h79CA57C6E79CB5EE4E93C2A6177E0A0A9E3A356F12103A6E6EBD60C6B4887039),
    .INIT_17(256'h2AD23A4DAD36184739D0BF1C0C146C3BB35B341FA8F77B072CE548A66B8526BD),
    .INIT_18(256'h5B5F6A147EE5A2A2CFBD6E03EFC3220B806154C0C46A3ADA8941648225F8D90A),
    .INIT_19(256'h158B384345F59C14CEA6685FA1D5C302ACD0AD4997AE0C164C0CEC3D6E38C0C3),
    .INIT_1A(256'h95B698F3EE44D952B92FBF48D855B5449FB83C112AEAFB34B15AE79AA059EA7E),
    .INIT_1B(256'hDB1BB78C6F5E578D38F4A05B5AD64428CF677F756587BEBCF7643F18530366D8),
    .INIT_1C(256'h24C2C174DAACA15E0F252BE6EF2F8A80D7779F4690316548F6CB4E9821DD4FAF),
    .INIT_1D(256'h76F3483C30F8BEE08339F369224DCB47C8097AAF757B7B6623F6C33EBD345718),
    .INIT_1E(256'h043EB830A1A0DEBDE5184512FF6F8C7B0F20F9A051961A686BDEE1F7D3108DB2),
    .INIT_1F(256'hAA247CE00FF928199277C748A166E6F4CEEFB12583C743C04EC1D0ADBA7EA57B),
    .INIT_20(256'hE67A93EB99B4AB68E57984DFFDA943EBED710B117B02BBAD60979E9533FECDCA),
    .INIT_21(256'h4119EC599BB1DB139F6B1BC6953252F9841778DF4C99E95A3E58175C051EC278),
    .INIT_22(256'h758B07882B31AA63E3D6B5F73913F0F357926507FF1DC6F9E42A531DBA5A50BD),
    .INIT_23(256'hF540A8C9AD83F8334B2E811C56D241A5DEB36229B0E2D2E6377ED3B4281D22B5),
    .INIT_24(256'h45887B3A7B7B195D75DD31EA52249D017DADBC4D1695B142B086E8FB967CAA46),
    .INIT_25(256'hD676ED68511E300C3D22BCE79CBAE2E90EEFD0B18CAF9FEFEA0185892AE74E4A),
    .INIT_26(256'h220BB256A5B8C1F4FDD134BAE15BC8EA649B148BD726750EB2A497497C86F186),
    .INIT_27(256'h71673DEE603A23805726781989AABB7DB6E9A89EF0409EE0A4180BF33CED8D71),
    .INIT_28(256'h31040370550C45FCF37AB2A102A911D4115B52305E91466D442910BFA588C77D),
    .INIT_29(256'h048B03E38A55108DEBEF8DA0021385930F7570F04431053466F019F12FFAC89D),
    .INIT_2A(256'hABCC4D1E01C8885F58E87EA3163B7607539D000411A8F0AF7A38C64345115096),
    .INIT_2B(256'h95B6699F0C60ED795C08EC7ABB5883F451712D9BA8D98D5993BE16CA8A7785ED),
    .INIT_2C(256'hB91723429F755B5C9A95B06FFB9F1327DF532C61F1A24C7715772250E26FFBE0),
    .INIT_2D(256'h59B8EAF711BFB37F042D310A76456E72706B75FC2F87A5EDFF675CF2C8C4A6A8),
    .INIT_2E(256'hC486489CAC04C179D5C242E4C50872D040D9330F9003F260E69C327EEEF5CC2B),
    .INIT_2F(256'hBE35EDE8425F07CF7519C2335D58CC532FFBDAADC33D7CFF2FEE068D87EA5916),
    .INIT_30(256'h9EA7474C06951AA867E8AB482BE0585EEA153D76AB5D56B6C4CD936618F8276A),
    .INIT_31(256'h0749B666F5E10C1FD1FFE7EBDEBCD216E426358458068B4FDC497D2A824AA16D),
    .INIT_32(256'h45237DDF554839B6AAE971099DEDB6EBA2E61E43024FCDFA3A6DD730163EFDA1),
    .INIT_33(256'h6C2FE9320B56AFB0F369708E7130FBE300AB931A7129F2195F931177A01823DB),
    .INIT_34(256'h066C0BDD4960C7D6BF770D0018067DF986B399F3C7E2225E7B2EB59A597A382E),
    .INIT_35(256'h5843A88FA7C6BCDDBA766C09B149C78B55A179236DB79ECA011AC995BB2455EC),
    .INIT_36(256'h8B1D48CC9DDD68E93A4FFB236C3C05259C823DBECFE3CB2E1CF1110284B5055E),
    .INIT_37(256'h0E72D188FF3895D657E6871431ADA07901477D4A8C8CBC6EEE3032C8D80A4109),
    .INIT_38(256'h856712E97868D4798BBB8369794B3992B18ADE6141D7B02CCE43D19B3E611865),
    .INIT_39(256'hBE1FC0FFA8751BFB29D9E432DE13D7DA496996C0EE7EB112B62BE42D75F39E5F),
    .INIT_3A(256'h6ABF98E10A5AC2E57883A6D85989B4EFD665CD453629A734B1E4A4FC308BC532),
    .INIT_3B(256'hC11EF4E0D7D71FF40C38FA9CA8109FF4FCDFEEA82FDA3F1BBF66EA799BC50983),
    .INIT_3C(256'hACF731B476588FA13B20CD6E66F41DF49A2C21261F03CEACB0A743D700F6F4C6),
    .INIT_3D(256'h5726F10C1FCF07A325917F379BD5AA175B643C622F0B5A09313033FC4F6633BE),
    .INIT_3E(256'h9ACEFC1A5163D21A93764568BA95472D72F497DBF342A6A012B09A990CE949FA),
    .INIT_3F(256'h2C3D0A69B50FC86049845EB0CCF74578733B07F652CCF2EC939EE3F495ACB341),
    .INIT_40(256'h2B7F83DED888CB1DCC8789020CA4409014FAB99A4B06D9CFB1A3C118E5BB2292),
    .INIT_41(256'hCBED2284B91C358B8CC0E11987579BB4189B342B1230D7364B9E1C8167016FCF),
    .INIT_42(256'hA91123BEE0786E09B12A2BD57EAD999B424DA405C4C9A919E266E381C79F4D13),
    .INIT_43(256'h37B40C88F101F8AEECC3CEBA2DF386E7BD03749080B3430303FC2544CB26BD97),
    .INIT_44(256'h77A35BA4C01C6CE7F7F8E9E45E38E00D26BEE15C3F730DBD9F4155CACC7EF297),
    .INIT_45(256'hD844881F30F9812403EBE9722CEAA6376CCC7235715BA0C15DA4C2EB982717AA),
    .INIT_46(256'h60FC639552974771791591F83FEED9101DEED650BBE691ACFA3E693C708BE56C),
    .INIT_47(256'hDA968DB08DC34C39F8F655512C2D4B9F0E9EAE1C6CA7F9B74F27AB833D946625),
    .INIT_48(256'h7744AB4B1E28E08359A1E68402E22F4C7C15D1E90B6604A2325C148AF8A18F3D),
    .INIT_49(256'hF46C5D166C295A68A6B949DB4137FE0A6F91A1F0B1E5EAFE8106E6D2EFFC99CD),
    .INIT_4A(256'h0DA185CD298919FA4A0856A80595B0505BB1B9C4AF7B1AAE1277CB0E16A04778),
    .INIT_4B(256'h14BEB15B01E07A2453ACB815DCE74EEB58D76B64D0CADA6A0B2820E9621B4F4A),
    .INIT_4C(256'h436B27EED21E64AF91C20137050B19C9425D35198B1902934E023F0DB15F5F05),
    .INIT_4D(256'h70E4CED731F7EB961D13B2A780B71DE748EFF7B03DA6756ACE0505651C96F8FA),
    .INIT_4E(256'h518513900DF7D3C8DFC92EF940130F85D03A2BFB3C8912B223E5DFA8688C4389),
    .INIT_4F(256'hFBF64377DDA0AE83F235D1162EEC1C028861ECDCF81A7231910B80D2A88135F0),
    .INIT_50(256'h7BFD164BEF7D0F79B8496BB7DD06D9DB04B137CF48B0A77041F1FF3977CA6D69),
    .INIT_51(256'hC4026B51EB107AB8778F9A37EF4E5BF7DEA3F0856A2C5D9EEE5E832BA6AC04A7),
    .INIT_52(256'hEA62858A35B17AED5C5E8BBC892D1EB29AF6F8E70F99215BA082C16C132F4928),
    .INIT_53(256'h3C4B225FCA6C8A16A034EF4158E1CD8F06E2704A8FF31430CD6D11BC2DA860B1),
    .INIT_54(256'hCE36AF11E102A3793A4D61FAF819869EDF5CA7D1EE8170AD834E1C1E57610080),
    .INIT_55(256'hBA4394CC68DCE10C6B725C0DA27AAF20ED73EF0DAC9A8D811492AAC0C9BA92E4),
    .INIT_56(256'hC2B8137CBBEB6ADCE103DBE7D206CB7DB94045C97CF10CFFB133F7362F38014E),
    .INIT_57(256'hC58F2A87F5E6E0DD67EDB464F3C73AF85CF91E61AAC4A9946865E9942AC9EF22),
    .INIT_58(256'hCAEAEA86CB2DB101B153972D8E8B9C61CEDFB0E226C1DF3DE9C8C4810D62FEDA),
    .INIT_59(256'hA0E0FEC348D18FB1B1208C2F771A965B9D64D1698CD28C5658D45A4469266AAD),
    .INIT_5A(256'h58674DAE31565CA6E7D4CDEE90EE22E6BC58D5BEEC2294EBE97F3FC1C3209D47),
    .INIT_5B(256'h70D677B0D7188C131DD45B44CC85485770EA8241AEF399A7320890D7E0C05884),
    .INIT_5C(256'hE7A88D8CE9C46CB26F20B0A1CF0E2F43DF0AD5A57CCF779FBCC8F0A022E398B9),
    .INIT_5D(256'h969291D9E042E6785333CD7CA19FD2A059C3F7776E09CEF0CF1E815F063FCF9E),
    .INIT_5E(256'hF623A54595189152115DE2A9265D4AC7C9D891AF038DB922C3B7E98A37D729A3),
    .INIT_5F(256'h0E71D5541F4952F500D912E7F42C67412C919D447EB3C64D9A06E44970F513B4),
    .INIT_60(256'h793DE0384F96410A47E148831E0AE4072F16B472E00B7C8760621224CCDC4BD6),
    .INIT_61(256'hF6DBFF52831239BE7558E1A73A50D83843B53E2915A2322C000372F668E993AF),
    .INIT_62(256'hCF92D842E2724861B07C86105280F11758AA3288E4265EB0D4D439C5DA044A22),
    .INIT_63(256'h3BCBD9230ACC1A86A846DB522FA58207CF418B4FA1A1658BF8976E35A0EE1D68),
    .INIT_64(256'h5A48AC23B8E5F21C6C260CC3EC4126B3925C648CA502916B12102ECDB132F78F),
    .INIT_65(256'h801120A502DE2428AC898D0992E2E509AC60EB35A6EC5D758761E2CEC930D041),
    .INIT_66(256'h501C0CF698A9D2E73630D0D05B504677D80C86493BE0D5BA523E2EBDF0F5C256),
    .INIT_67(256'h9A999A0684600B92725425A63F73A8191337CE8CD0F33A9B4982175373AB6363),
    .INIT_68(256'h8E36975981EC43EB9C3445F9D32BE3F8806D943E1685F89F8517FDEF8F665F5A),
    .INIT_69(256'h13628E7C468C0EDB75A14857FDA296C4A97CD4A1C6A7F535AE832E139BBEF6C9),
    .INIT_6A(256'h86076E81299033A9A36C01BD4BC83AEEE72557A9978D7816017BB774E6B24E12),
    .INIT_6B(256'hE95DF8A3D4F97B5FF52899F17D01610437098143132B7B86FD7B8AD1D9C033A7),
    .INIT_6C(256'hE9CEC01DEAFF2FE3E839AD53AC795A26C4554310310FAB2E51A224979DFDD379),
    .INIT_6D(256'h17C4106BABDDDD299BD1E5A21A87D7C93374A2CD3B1025D0067E308852CAF9AD),
    .INIT_6E(256'hA9E75829684C9C5D1443AAB3E33932A70AB8DC84B1653C5B3C7AB8B66A325F0B),
    .INIT_6F(256'h941356EF1BEC59F216B44F3BE0274B3343299797E9AFF43764F29BE90D50573B),
    .INIT_70(256'hD5399D12AC7F57C008673B96F58C637D3911828D4447DDC779E556C3885A3EFF),
    .INIT_71(256'hAAA50706B5ACD077325398C99201DDE6806D7D5E6CCE4503D07BF3AA606818AA),
    .INIT_72(256'h590336E952923ABDFD489254586587CC63AFBBC62FC134E2D9D008C4E6AC5B9C),
    .INIT_73(256'h01D4B57A801E9F69029902D10A9C6ABCF49A15BA83AEE9A588FDFA9803B453E2),
    .INIT_74(256'hD829293606428ED64F4CD55553DDEC8E98C04E43841EFB6AB20F6059D4F3F15C),
    .INIT_75(256'h995A128B242993FE117F0E352889404EC07D8367BF3ADE4E3A8EE9A3ED799677),
    .INIT_76(256'hC74D2FF783ACBFF11F44E321EDD20193A01607409C8C3B31E6895A8CE65DE8D7),
    .INIT_77(256'h9A5CD5487D0E6697EA06E0760834B6BBD4513FDA95E79DDD34C905E7078E5F25),
    .INIT_78(256'h84990ADE08A550B376C9DA1D674DA1B838B04C7C2836EBE6661A41CA5266E1E1),
    .INIT_79(256'hEB478B1504E591F68635B2DF8C4511B89E3B41AA756D454743F6E0589759A42F),
    .INIT_7A(256'h7C780E9E9C1E52563BB90999BBD47BFB8F45592F2E86B0E48AC2B8D9063BAC62),
    .INIT_7B(256'h7513107C6902FA2076628C8E4A917E68129851779A8956D57EFEA86007A542B6),
    .INIT_7C(256'h9B1B11D1367410D840116D715C0C95E05C22B7130B8474AB239B130AB5E5C9B0),
    .INIT_7D(256'h726A9A8836F6777D382061D74C14836A2975EB3CAB2DE12A6E0094B16F210071),
    .INIT_7E(256'h52FB20D3CC1F2D5A8B5C338210F1E84AD05092846500FFBD7EF42C2630D75584),
    .INIT_7F(256'hA46A65593F3A389FD60EA72F4D62B40225C4BB4F81539BB960923DAF8E0FF0CB),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized31
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
    .INITP_00(256'h3E79664065245B7F4B372132525A024152603717075A11550C096801196F1045),
    .INITP_01(256'h4C4527255A3D3D5F584B3C0F1D40466D5054353A7A7D6B0C79333854750F4779),
    .INITP_02(256'h571B3F285D513D6E79254F651A0D51477A191157184B6F4A51570C0F44761215),
    .INITP_03(256'h464703643F7030565A7E491A42553A5931134E4F6F5F073A75463E7D717C3158),
    .INITP_04(256'h7950104D42172B0450251A5500442E2E5972337956571D283A743F6955443E62),
    .INITP_05(256'h5B597C252E62473919174E0849443F52671B6F5241617319531A2E192B50486B),
    .INITP_06(256'h660D700A2F5D5B034E54344B061E40207E161470275404565D037B2A4A684863),
    .INITP_07(256'h5B650A3F4C3C0A6F441C7B77091237471B27447A3D2250281214525B08500E4C),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h1F1A7E79A1521F0F3936A25F2FE7D15BAC405A1670273F9A94177451988CD4A4),
    .INIT_01(256'h59BE1A96BDA28B11978E9B67FF8CB2BCCE715A3D7AA0F26F297188BD81D6B9D4),
    .INIT_02(256'h5BDEDA3E9405F0BBAA0D3EC8BC93CFBEFE5BC8788784CD67CCF605AD80284571),
    .INIT_03(256'hDBF16ADA91665D534D0EC2C583DFDA6D39D6505D9555FF4D4221EE4E5390883A),
    .INIT_04(256'h454F50F849F8D8733C45860F4E0D09A379F18697C0A7FC825FF5E33D11CDC473),
    .INIT_05(256'hB3EB69368EDE5C8EEE22FBCEB3F5168F626D92EC9F590B803D1B012F478E73BA),
    .INIT_06(256'hA6A2DE631EDD920FDFE686735BBBF1FC2DB8F9AEB69C5E23748D55834DDA82D1),
    .INIT_07(256'h5951C02EA7248226BE4764AC091EABA735CBFAC4A90AD2834AE6F63F90C286CD),
    .INIT_08(256'h2C1DF15CFAAD1A0514B62448A3FAB3D021B2650C111B924E1FB232A6BF3848E3),
    .INIT_09(256'h1D6973551E8BA5163A2FBDC5D84E11728239F7AD034CAA7C17E3DD92C0EC6757),
    .INIT_0A(256'h233544B5324683A77B89CFCF061B48FFE6D92BCBAA22C15FE8DDC0FF6E2ACDAA),
    .INIT_0B(256'h4CDCD2688DC79C95F1F8765FC22E85CF744A476FDDF31A7D18574CC94C558278),
    .INIT_0C(256'h429A57E114E90AA8AB7DB507B2C9DD5BA526DD2D6EAF3AE2400D43EB850B8EC7),
    .INIT_0D(256'h9AEDF31888CF7CCA8A3917BFA9DB9CBD6CA524A08809601721FC9820CD139138),
    .INIT_0E(256'h7EACE599DBCE42A674AD552839440A09F8333E1C31B814DC2E767CFB335BD071),
    .INIT_0F(256'h26BFCD5F8887D51721F843C0B063F32706D5D24FD501A82F2C838005875133B9),
    .INIT_10(256'h5CD8CDCC6E449DCD9D1C1FA8E774A555E1ADD11F2E7A193D99094AEC1008E685),
    .INIT_11(256'h5339C5790AC8BCBABCF24254008E7E6C21FC0FBB5FE91F5D0469A9AE1CC53503),
    .INIT_12(256'h3A447F1CB30A7B4409379C645ACC1B7580B7C6E76719EDE8D66D0642BF5E36CD),
    .INIT_13(256'hCB9741794EB9BE10721FBFB8843E11BE208A18D42A0CD6379C3F29A513A8ABA1),
    .INIT_14(256'h53AC5DA0FCADFCFF451D6564CFB77342829FE8C82EEB7FF6FD42CC9CAEF5A8F1),
    .INIT_15(256'h7C0754C6BA2D97CEE54BDD3F5CA7CF52A8551B4B3E11C3AA0859DDF433E45161),
    .INIT_16(256'h0BE1657C5BC23E7F4D6AC70CDA0789E88429C405E3327084FCEDF302E407FF1A),
    .INIT_17(256'h624088D7B7C0AA54815AA3241C820E2EB9F4A551FC702EF5AE8139683A069E97),
    .INIT_18(256'hFC93D9BFA452E0398E799AAC34AA2BAA645B681422D972A466420813A3C66E54),
    .INIT_19(256'h6F8870B12167EC1DDD6C210213EB281C2C029F051853AC513F64E5DAE5BC7B39),
    .INIT_1A(256'hE214D6DEF526C022536AFAB64B992E5323856A8287921BA794D3E427B5539951),
    .INIT_1B(256'h56E332AA5374BA2FE8A3A64572FEC768A9A3D8966BB994E475FD011D849EC4BB),
    .INIT_1C(256'hEBB8AB7B5C32651CA3B2A01223BA9E185CB3BAFED53A94EBDA5767CFA7D27211),
    .INIT_1D(256'h866775CEB3465E797B4A550D8CE7BDEB9CBCC715D3D766007EA3990826434772),
    .INIT_1E(256'h16A0FAC02C309C0F2D57727FFBDE389E1C81CE77D2532022B7A5BABD30145777),
    .INIT_1F(256'h600FD8269998894B090E187C5C2DC1FDF75D61B7266656816909FD0BB2CA3FBC),
    .INIT_20(256'hC129B018AC6C81DD4D1D2A5D42B7CD83345D982EDD03CEA65DBBD8F0A5BDE1CF),
    .INIT_21(256'h34ACD9BA98631CA639F4731A28166639D8BEA5D3735AD8FD28921E8046DFA99B),
    .INIT_22(256'h942DC64B7A7140190D36A434E15A8141EBA9EC9582C95ABABF09F339C70C0D7B),
    .INIT_23(256'hCD8A55C7E2193995B574C29DCC19369E8DAC9FA08B3B55A048C4CE4D2B29EFDA),
    .INIT_24(256'h1965DD2B09C5AD04272092B5B2E6DA41ADC1867EC631CD85E36E4A367509FF50),
    .INIT_25(256'h092A30D2ED5DC0D70CE46187CF5F7179A27326782DE4539B9D6E73DF79709DCD),
    .INIT_26(256'h4ACDA6E1A2A2F18632B1110A5D93BDC1E626D80E7020AB81332CF9DD36577E9A),
    .INIT_27(256'h846AD9AEE9A2E7AC37B122E6F8523956E21CD20FF8A516E89CF777195829E9B6),
    .INIT_28(256'hDBA4E3C4A401224E71608F50126923D3B156F53BC268C2008D1057FCD022CF96),
    .INIT_29(256'h04BD6787F493C4B48AD98147E111BA4F2DE0757492F9FF81D60D0D5FBCA69111),
    .INIT_2A(256'h9D117F1CE0AB1B7E85D718502AF19E1C8EEAA72563F101AD6959E0A1F3A8F73A),
    .INIT_2B(256'h5D763728ED4F23A26B40CB9DB139863ED78AF0C7EEF609593466D79A08D523BA),
    .INIT_2C(256'hB0E86DE5FEBDB4942A23B8EA2FC907BBDB330476B47D8C96C6995BD3901AF645),
    .INIT_2D(256'hB66BA1F460F9E2CBAD7CAB2A1E7EBD69660EE19CD20C3A618374C99CC64348E1),
    .INIT_2E(256'h25E1694F7631440CA5276064D35DAA3E32FA50DC9FCF9CDAB2D27D02FB0E8A4D),
    .INIT_2F(256'hA014B726AB975C20BBB088D9DE7534EBA68516886FD9118D5593A20D0F7835E9),
    .INIT_30(256'h3A6D46C52B30FEA37E92B3D40FBF0E6148A8D6D6761ED1F5FCE3F0EE791ACA00),
    .INIT_31(256'h65849B17084ED445A701419677143A4FD6B8C7CD581090744C92B0CD944A198F),
    .INIT_32(256'hEF92D4286C68EEF9434706F33DD5C0C5E8776C917C5A2831B86F9DCFF20D62F5),
    .INIT_33(256'hFCB67EE119AB8384773E6682C8770D66E207BBC112B644DC40BC725522AD613B),
    .INIT_34(256'h5BC71B3BE91ED384FE75D187BAD1E4A874A63510D410A17C3EC36BD658F8B0B4),
    .INIT_35(256'h308381C784CBF19AB5190167BDDDA5516E050E085C5E4AE63D7DB7EBAE9E5462),
    .INIT_36(256'hE0B49FF837360D49BB69BB29E59AE1C9D106B8BEAF02C6085FE7A71D86F20185),
    .INIT_37(256'h50C2BC08247E11366F2AD8A021C92C920253B83284E6549A0EC57FA95D15772B),
    .INIT_38(256'h00BC2C9802432514ECEE42F2FCA7F38F8E186DEC65D3ABBB6D9AFE3D817004D9),
    .INIT_39(256'h1A3B719DBDC7D755218F004329424B773856007F5D7E1D75FFFCFD63D236641F),
    .INIT_3A(256'h584F1D370F9934FC9B6FADDDDB847F4B9C128997CCCD07C487BCEC5E08391F46),
    .INIT_3B(256'h09BB838B5689CEF422C3A9AAA65158FA967E0835EFB5FDFD26E7EE16FF056638),
    .INIT_3C(256'hFDB4C17A7FED338C2638EA1726E63709C7A163306545B2C0378CBF29D3537BAD),
    .INIT_3D(256'h12DD3098B2AA296D4A9D19C7B80234B0E56A51E1028DF629C39FE9E56AFB615F),
    .INIT_3E(256'h39C73217296596053CD02D594D75EDFBD7B89919FDC3A2EC5FEDC7BB43FFC0F6),
    .INIT_3F(256'h70874557E55B112591D4BF32F217AC509B972F12F6404173745C24451A7B7A59),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized32
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
    .INITP_00(256'hA1CEBC716E565AFF46E799DA14A3772618C25A9CA0360C00414C883401614985),
    .INITP_01(256'hA7EB1F89283145F1ED5DB5449A9B2B24E94B8005763D117BC8149460060E654E),
    .INITP_02(256'h79B28D1A5240B4E96AFF3D14291A2828D3F335A3265313C34574580F7D8B0925),
    .INITP_03(256'h481A407D6EE670004F92EBFACC439CDDBB903470B7E77AB4B98ED1716AB01C64),
    .INITP_04(256'hA0903DC2A2209D7432E61F85E6A196B7FC5BFC9241ED17F50CCA0B49CEEF2236),
    .INITP_05(256'h246AFEB4BE8A63B634343198A84507609CCC166088822EB4A3E5081D75D6AA71),
    .INITP_06(256'h6752EC394F1378A7E85E7BA92B8DB916B4C8020919275952BFCC74B66CC5B2C1),
    .INITP_07(256'h2EEB7C8D810AC00451B60DBBE826388F8144BF1453FD038475A4B4E38F0397E7),
    .INITP_08(256'h89ABA568BE32EBD6716E271B97E7B692F2F9830C8B683061A75D528391F4B4A8),
    .INITP_09(256'h24ED9B8739790C43417C0353D7080A23E67F928BE779C976FCD10A5C4B846243),
    .INITP_0A(256'hB3AB92778CD0B0AAA4DC79518DDD30DE5EE0488B432E4474D4FDCD9D1E675620),
    .INITP_0B(256'hC5BF87554036238E1D82DD36DADB1A06BF66D9CA8D4D07F3F26412728E395F23),
    .INITP_0C(256'h3356C30517DC7CCDCBB16589526848EDEFDA21D51465C103DE9267CA82FBD979),
    .INITP_0D(256'h252263EDB0049E0CA8A337CB174762AB9214E0167F4DE62AAA5DC8FEDA3ECF91),
    .INITP_0E(256'hF62B7A6781AF2F5353818B1C34355452AD4FF1A081174C6E44A4CDF814FBD4A0),
    .INITP_0F(256'h5CF2B04BC41638C9BB2F48FA02306EC3EC4F7B1E5B74057E3D2820B2D33379A8),
    .INIT_00(256'hCBD94B7FC50D7EB75C530699547DC2BF46186E865DC2D44E2EF3CD6DCE393BB9),
    .INIT_01(256'h4F0F8DA1234357A1D63688EB687283950D3BD27E0E031EEA58EF9B4474436C27),
    .INIT_02(256'hA77F0F3B13A120FA05E414C15444A8A32F209DED56F0C181F126B519EEA356DB),
    .INIT_03(256'hD7C07CC4904ACEE9C1A0852D8AD5DBFB54581EC12AB6AB188DAE2282E5C72472),
    .INIT_04(256'h4DAEF1EC96DDD387D000F775D8A230C34DB5F3027D4124B0AC8013E1D5EAAAD7),
    .INIT_05(256'hB8199D1A05B18909D39B78C230F67B1E6C858046ACEBC5F4B4DDB7CDF5B03FED),
    .INIT_06(256'h0AD30BE32236B3F852BD7A4577116F9228DB179DCC79D11DC45FC01548465057),
    .INIT_07(256'hA5903D656C63367A6A1EAA7A25DE2B000A731C4669AEE2E4DEC40E4980095236),
    .INIT_08(256'h5E6D86DDB9F094246CD7455080F114B2B86696655C7FAC02C746FE4871FF9711),
    .INIT_09(256'hE4B9E84A53CCEA848BBB2C78E8196971002A602BDAEF2186FD98F6B8C4384D7B),
    .INIT_0A(256'h758418F1F706FDFE02EF6B748B456CD562670D44A474FA8EF217CDF5CEFA513D),
    .INIT_0B(256'h333A74A7DCDFF5D764ECD79F17C6E993619C0DB09B1333DF0C30EC9B65EF2AD6),
    .INIT_0C(256'h0C3A5A2669ED3FE2C8123ADF12518018E12691D4B7A955011FF176D787948662),
    .INIT_0D(256'h59E4995F14E179134A1FA5C59DBE7B034EEC393A8FCACDA04E986F6B81EB35BA),
    .INIT_0E(256'hF2C531D8D9682C7FFF7E17D2E86757564759B8A405CC6F6BA8A79A88F93FC8A7),
    .INIT_0F(256'h804FDD8D8C337DF87FD765E6A6E26AD1F604A1349F6CB1484F2692CE7B0EBAB3),
    .INIT_10(256'h43B2EAA0A3EDB8B7B30F725A65BFA551BC0BF0D34B5A6F44EC45647F6576C05C),
    .INIT_11(256'h3DA34CFEE85874180FC977975773221DC544DFD264F1179531769028443DFBBD),
    .INIT_12(256'h9E86FF6B635531844F05521E209613DF90C274400EA360DC1D312418C926DFF6),
    .INIT_13(256'h690A7B5AE7218F899E72D8757374B7841A7B51473112F1661EFB674F46A1A851),
    .INIT_14(256'h40D6F192CBDFC383CAF76929A61A4AF3FF96EC7D682244B98FFABDC20293A5B1),
    .INIT_15(256'h1E97327861EA32C4E362121951CA5F3B65A3D571899D5548406E234D0E80E81B),
    .INIT_16(256'h6D4F59D6546D9163F477DBD09FE66DFD7125138F660D4B23463EACBDAF6001AE),
    .INIT_17(256'hD728DC4BD9AD2C81A2AAB1E4E59BA21EAEA9561F5E3895CE275F75960A5C34A6),
    .INIT_18(256'h3128640436EA1ACBBF7EE9758349F21629069856B8D13E724525FCB9AC46FC99),
    .INIT_19(256'hBD34AC832ED3C8E00009FEF1CD129CA1CBAB87977BC75F25637B6827E6022465),
    .INIT_1A(256'h2B0944EB6D107B01F3F3775259AD7469332F222292AD114857F33F5A7FFFC519),
    .INIT_1B(256'hBB7B8C6895CB320891211D2F0893D18DC8FF6CC93F793885EE07581745C370BD),
    .INIT_1C(256'h85BF2F3399B5907FAE5C4F9C5140D0CCC5C195C42F9D805E5341D3A814DD0C8E),
    .INIT_1D(256'h7D533C60A377956F5405B72C38A7F2D6C09A198D4AB568E7D62CCF4924BC1A3C),
    .INIT_1E(256'hB79E6EEA9F22BA6AD069A2B8B2E9BA879B417AB1C6285780288590371F363487),
    .INIT_1F(256'h7866DB3E864238FCB34F221DBAEA57AE7BE96D29678882D9F6C109D7800E2DA3),
    .INIT_20(256'h46820A7672BD994AA1AE515EDE4F42BBEB7203B675E2118C5A64CE16DE33DC00),
    .INIT_21(256'h72114029837211E0B317ADE50B9161BEFB59997D9B84A986EF7F087514DC67C0),
    .INIT_22(256'h733A536921B2B4F1D79FC178E5FA221C817EB508C2F4BD5A8E6DD0C893958A8C),
    .INIT_23(256'hBD4361ABE90D90FB6E28A355D066DBD8A2F14E24B9B140914E7FA18916B2C728),
    .INIT_24(256'h5C1B935ABF89BA9BE1277D938CD6EB1D97C1788B1909A30DD18FA12E43A746F5),
    .INIT_25(256'h1972016012713E40D09B2163AA895D6F084B5598B26BCDA0D4F2A6729E79E024),
    .INIT_26(256'h48B63454440C24CB3CEC418270C8EC2CF2C4F027374322E799DB6D3E0B45E938),
    .INIT_27(256'h5AF2546319847D983CF7351D869400AFDF769BBEBA5946C406BB95FF269E08CC),
    .INIT_28(256'h38F63257F384A62AFBDDA1D04489875FC914EB469ACEB982B2C59AF070A2F707),
    .INIT_29(256'hF7A132BF1A8FF94FF4E60732430BF0A6B2E6B05A0DC8B95AE8EFF37CD243E937),
    .INIT_2A(256'hC24B18E180E2E88514A95669CDB7CFB37A81FF861561C24EB5DC2F419F245D51),
    .INIT_2B(256'h6B574E5F7E7D6043D6CC3F319789A69286CCA93577A59B1AB941500732D96DA6),
    .INIT_2C(256'h718C7CF0E7BEAA42D45347AD4EA2EEF9F369202D34A50BCA7C9A27F958EDDAD5),
    .INIT_2D(256'h703E5BD50CB6C92EA843B4BFC7CEDB81B5DC991254BA44E731265801F8478FC0),
    .INIT_2E(256'h355A48264F3D5215E3E0EAE1FAD739FE02C594E9249BDD688C15E6578ADA0251),
    .INIT_2F(256'h2B999A828897A76349CBC0352C9A1EB9CA7F45A46760DE1A3C03524C4CD544DD),
    .INIT_30(256'h1CC5062E5A07E8DC2A7780A24F040385FB3E09C29CBFD010CA6710F942850622),
    .INIT_31(256'h6DB086C2595D7E3ABAD82CB661E38610B930D50F54B97760F249B68696C2D36B),
    .INIT_32(256'h5B6ECE505C66E3ADFF4ACFD8D13EAFC9901558E3A1859682CEF6EADB935EEDC6),
    .INIT_33(256'hB0EB08D003639F3A6BCB03658094AB960065A0F8E1E7B05088C8D61F865FA892),
    .INIT_34(256'hC2EF376D7007FFD52955D6280FA40AA4400448D019CB4EB73C8B23EE9BA4A1CA),
    .INIT_35(256'hA38A628DB78AD6176B12FD8A862778F57DEF6C19238F4E09CD2090B24DE96AD0),
    .INIT_36(256'h0C66EC4D43F4C784919802FDC353CD90C22986865156A61FF3E8F553ECC760F3),
    .INIT_37(256'h344185A888F5D4AD8D9F601B5858A7C6F7C1D2BB7D68F3CACD21CB8660B5AFFC),
    .INIT_38(256'hE7213E7233DCE8F2065E09373CB09EE97FBECF66C356E655193A6628AE1FBA43),
    .INIT_39(256'hFF6519138D3D6AA3839C184C33DDF820D5B40E51FCA980B345EA772D0146ABAB),
    .INIT_3A(256'hECEB5EEC28C216173EBE411F4FDBFD8C785E3434AF6861288B7A6366D097EF49),
    .INIT_3B(256'hFAE2FEEBBB5B340CE2B15A20A5FC21BFE73DD3F2BD3F4780CA10FC689E16F180),
    .INIT_3C(256'h63636B8DF17D65301CB91F5346D85C5D659865AE9D2F6BE4B600D886FA5FFAB3),
    .INIT_3D(256'h01247124B106E687AF1E0986CBB9A30DF3F7B7796B42F2623B6716671FF5DE09),
    .INIT_3E(256'h6A239C1F47C139421B663A41AECCE10685DA49D39032E4EBD921C3C6C7DCBB88),
    .INIT_3F(256'hE24525B99066B310BE8330BE59D6A9495A500DF609EA836DCFA0CB754BEDF488),
    .INIT_40(256'hF9BE3A598F898C83638E6C2747CF9E03E677D2AEF4AAB574D74A27C54A3068F9),
    .INIT_41(256'hEFE6543FCEE8ED09BD7A72BE6C6D7A501070077BADA231363863F1E2DB0BABA9),
    .INIT_42(256'hCE09609FF19A89E4AC1CEE56A5EDFA43787E181C3D3FBB5E1B99F0225053CBB5),
    .INIT_43(256'h1147DF40A6FB2C01514C2655ADFCB260E5121AF929E9D1D2F595F02CD5CD3B35),
    .INIT_44(256'hE9AD8D4C8068A8EE04946CFFEF63AA256F17083B10AA6B02A0F5558E35324425),
    .INIT_45(256'hFE7522814F68C6AEF7B8549BC0A915121D74D52E2B47FFD24F47D6857F7C2C79),
    .INIT_46(256'h28440F131FB63EEB94CB520FC91A34F22747FB9BFFFF6C2137778C470A39B420),
    .INIT_47(256'h0BDCD98A5756BD1AA4048299DEA8582545B5293BEFA85D94881C1B460F276880),
    .INIT_48(256'h6FB1A3B2F1420F261ED3C04701E4FF8C42347016226E256DCF02DB14CF2361BB),
    .INIT_49(256'h726449C73E747C38A2DF36E713698815FFC96995E0BC32174407EFD1EA295BC3),
    .INIT_4A(256'h8A3A5327957BB340E6F4CAEB81D5D67148FDDCEECAE5379C9767E4361B161E2B),
    .INIT_4B(256'hCBF643E6F273F38D0DA3DE55AC76622D92FB5775DC616C4B9AD1E34A9830629F),
    .INIT_4C(256'hC1B190425F97E113F48FF75E0071A24E6B64C12361A668F705AAE6980E4652CA),
    .INIT_4D(256'h0329B533EF710D2E7753ACE2A185DA34708FBC39A91CB27793ADC31716AB9289),
    .INIT_4E(256'hD5F051F8DBE14E3B32DB74960D8ACC0DE63BCE4BF92322D5AEBECF09FA89559A),
    .INIT_4F(256'hAC9263BAA1DFA764055965C4B8A485F84D76715FFEEB78A59DEAC9CC76ED1CF0),
    .INIT_50(256'hD9B3A82B919BBD1C13C8CE2AA19F7319B92631598FDA8B03F71F2694417F9C0F),
    .INIT_51(256'h397D660DDE40A7E12D4D11E3AB3BED473905B7DA76AEE15D7BC94E0502A71745),
    .INIT_52(256'h62C6DC499D89CB1C4237E320B12839E2174736A5B83B33774E0CA8A1065281E4),
    .INIT_53(256'h723F3BC57825C53EC1B31B85E19612EB42CFAEA6323ADA0E64ADAA473FF6E4F1),
    .INIT_54(256'h1C310158DC75063DC6ACCCB03541065F2637A605A9A7A4C0E6C1AC1D24CFC97A),
    .INIT_55(256'h49A5BAA8D6B4C4866466AD9B7334AA8EB551FBC7BA3A1DD733085972BB0B4DB2),
    .INIT_56(256'hF12E57AD044AF31013699C8A38F5B8C89A5A63137B9EFD3E58ED421D1D1CFF93),
    .INIT_57(256'hC661DC7E41BCFA38AE88571B860850812072575EC4CEB3749ED3EA0416F898B0),
    .INIT_58(256'h9419714E22C437CBAF7382012946665781E8CEBDCF4E4719F510EF2024A32CAA),
    .INIT_59(256'h2BB00CDFD7166AA647711271D100C99A019D18E343143D46A02FF94342805AA7),
    .INIT_5A(256'h13C0679ADA9B70B2A38E31B74A383B5F1BD953B5E219ED38A2456EFBF9EADF94),
    .INIT_5B(256'hEE26ADC68F7C7D58B39A40F368666F0F269705599E8D017E990A69B3C687E740),
    .INIT_5C(256'h6CB716F970B27D1D2B36E1806D1E70D5B1F19B12C7002F93C0996FFF287EC821),
    .INIT_5D(256'h825F672705BECB2566EB2F031B9EC22C93FEB9E4A46A008C5DFE5625C68BE6EA),
    .INIT_5E(256'hCB6E1905E3773E777FC78B8AD8AD9B96192C76867A0AA3ABC244F4A95E4D1AFD),
    .INIT_5F(256'hD46B51C7372541B674A9A553ED0E46D746ADAA50EBEBBC159168DCA8CDE7444B),
    .INIT_60(256'h24DA94594EDD85FB85D6EBAC08F3BE0A290EADE405E118E2EB4F25EE3D74774D),
    .INIT_61(256'hE1D91DF2D7420B4EAB4DA87D5916E456F5CC2D303E197E5522331ADA7D2DAFEC),
    .INIT_62(256'hF39B23CB6C42E859FFED6E5EC06EA4499D5472D9475522398566A57520959672),
    .INIT_63(256'h42613A5FD4CE36A530A3B88BB69E20FBED6012E70450EB04D4FCAA701A715347),
    .INIT_64(256'hFBA18B7082925AF5EE82CF3A1651795F36C2E6A1F22D4D70AF20072011033278),
    .INIT_65(256'h953679EC3AB3959FC5E0F3ABC5A67FE6B20B01EBDD3AE8F7D4AF8E6A8D0CA7D7),
    .INIT_66(256'h68C6487AADF4016AB44ADCC023E86019EE550BC63F742C190EB21E253E72FFE7),
    .INIT_67(256'hD64CF38156F129B4B2A0CC36A157CF879F08530E2154049A9727FF961741F54E),
    .INIT_68(256'hCCB332D2BFA882D8D9C9B551D27E75CCD1141C9592EEC4BC048B2A7142D07BD7),
    .INIT_69(256'h44C38716D2F820EFFDCFDDC3E5B8C74D607ECD44B4756E9D140574772EDB06FD),
    .INIT_6A(256'h91524106624120AA10C558C8037D1B56F9531D86AD754367B5430DBCCEB5088F),
    .INIT_6B(256'h198509234C7CFC1856F1C7CECA3D18F597765C2C95147A28C8B93BB42F983C63),
    .INIT_6C(256'h13D0CF3E65948C9AF8E6485C3C641E5E0DFDB1FBEDC47BD99C7F2D680C7EC21B),
    .INIT_6D(256'h80F4FC8F1F136B9693555FC5630A06137C4C5074227868A31E1885D83BA3279F),
    .INIT_6E(256'h5BE2BDAFA3A61B27E15E5D082297E946652CD28BA184D7E77EC086375E7EBB86),
    .INIT_6F(256'h4ED2F914C3024ECD58D13DE5AFF324D09A0F6AA587B56D7ED092CE7F8A728839),
    .INIT_70(256'h5895A7665FBBF35253856464D5C1732C2216F050BC4847200AE1ED60DFD75233),
    .INIT_71(256'hFA1CD3EFF3650CF2EB7B3A860692BF8CDA94DFD585D12429436BE86353ADAC2A),
    .INIT_72(256'hC285859D03762F2578AFB9219A871265EA9F6E79554FBDDB2D9276527E84562E),
    .INIT_73(256'h2A1E940EF7AA2F9A6D441A648C2C3AA22B01A501424335CB45CC4ADAB002D5BE),
    .INIT_74(256'hEDFF26587732AC12268B5448540E35AA2A1F1B08EB2726F2DD0EC6A49634EC55),
    .INIT_75(256'h1B6912B77702E8EAFE529EFC4E990A94FD3BF209A9A9CA333CCDDE76FC77F11C),
    .INIT_76(256'h53675B7D27E7567C1B5283C73D7907ADA3CAB6BDABFEA4B8C2C9964A0BBB2D3D),
    .INIT_77(256'h360C7F44E08AFFF94EE3AB613B9B5FF2A7C2B417BE82F392A7C0DA2826C5A534),
    .INIT_78(256'h88AAB43E05E7B35E2A6A95498B766E0B55BE5275717D5B11E6155350C1AE2B50),
    .INIT_79(256'hCD78FCAEB9B781655880ED8503EC76C64F1C1AB719A0CD3D4114F732B08283FD),
    .INIT_7A(256'h1D6E317FC22BB15B5DF839D0FF7233D5E4F42DF86BA4A92F68C83B9D4D3BF97D),
    .INIT_7B(256'h779156C3E2F964B8D5AF3B4AF9672E039455F8BD5DF6E3F17114951144687505),
    .INIT_7C(256'hB58E37AE15DF7AFC7CB4A5C81DDCD9200179977BE7DC4C5A82FF23A6BF09BD06),
    .INIT_7D(256'hB20897A0EBBDB94CC376633C102C2ED4BEC9DCBE7BAF4574C34D44D5F79C0F3F),
    .INIT_7E(256'hC160B687909121D8B129C55B6CD157E21DFA238EC97B174A37D0F10DF5FF9E62),
    .INIT_7F(256'h2A1FCAB69917D7BD757EE6E3F3181348653D6EF18391726FBF0C80AB3AB25C98),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized33
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
    .INITP_00(256'h4AE9563C426373F9CE545A97C99CEE4608EA23F3FE9D77841EBC44E804A7FB96),
    .INITP_01(256'h5FF27BAFC3AA8C84E55F832FCEC61BDEB0C6B06DFDCB0DDD236AAFF91551CF56),
    .INITP_02(256'hFCA13D748C30997A2CFF5A4A701F4ED972522C66609863A5E59C4D290724FF5C),
    .INITP_03(256'hF1C65829A595AB9CA43780B8520A5E1BB9176CB58AEB605C29E4D22441AD7E1F),
    .INITP_04(256'h6FC93DDDDF16E5432FFB4866F61B04C04CE0017A6430AA1D7616FC72E7E481C1),
    .INITP_05(256'h0E27C5AD0DDED8DF93361C9FD98D5177AC6A281014EBD5C47E9DA40C51C56D4C),
    .INITP_06(256'h9CB669789CB7A7119EFFB1BD0E32F9534B32113BD5D8ED7D389AC24817EB22CE),
    .INITP_07(256'hFD3FCF278FDCDD106A2C4D29B644FF040459248421FC783C8D2942B0430CAC06),
    .INITP_08(256'h9BAC447BBC67C8789D775D0CB4B5C9176FCA96855C9C60E37E69EB13BDDE2592),
    .INITP_09(256'hEA57BCBBF88E05C12E476FC6EC32D6F47B3E937ADA1302DBA96B735457B2BA41),
    .INITP_0A(256'h0889CD402E8D9FD3A8F83021A5986FB9BBD7E64823F99B297F138AB043527E6A),
    .INITP_0B(256'h99E7140585EEC72C1AD03C76F174DAF3DF795AB97CBECEDFDE9AB010A35684D6),
    .INITP_0C(256'h08ED8355E42F72620B0D6306256C58CDC8C0828AEEFC4313BE9F4F240FE19D7D),
    .INITP_0D(256'h5D2ED28BFE578EAC69A4DF2EBE2B471AF0EE2FBA7BB4B7F1338A31613902E1B9),
    .INITP_0E(256'h120B9BAA5578BC19F2BD45B1061FAB8C4B8116206924AE2613B1648BF3304EFC),
    .INITP_0F(256'hABFEA3F798088F5D0C124CC7156DCFBED158D302DADA441E18E7C8713486F4CD),
    .INIT_00(256'hA18593B8504A5AA84D9563BCEC8EEE0C57FD461253421F357CC75F49BAE7217B),
    .INIT_01(256'hD328B25C2B55900D53E6B94B4B8BEC326C3BD60E9AC9615285BB844E414A216D),
    .INIT_02(256'h5BE37E7A64B8B263B30436D947BE848E60C37239E738354A05A9148991AC96B3),
    .INIT_03(256'h4970BEDE0E5E2C4E88E03E84E77F6C6A68F0995DCC045832E47A8608EE72D64F),
    .INIT_04(256'hE615FCBC6C2E5971E95D84E01ACB6BC7B002BDAA38F17E3F360A7E3688058BBA),
    .INIT_05(256'h5B646518AA9FD6B4677484BEE0F74E8CD20D953D6E403E2BCEC5C2B0E6212B30),
    .INIT_06(256'h67CD734A0E99769B118A7A84FC031475FC29948D8E89B0762F8285E32BCC6542),
    .INIT_07(256'h16C5B5E70940EE2467A667BCEA26DC0F0F57E866DFDCCED04979D409B406DD26),
    .INIT_08(256'hF2814143899D8D0B95D3148496AF0AFF92CAD4752325AD73CA9101771F930A69),
    .INIT_09(256'h1D584C0BA4B7C3B1C55E70E05C17455400C16CE7BE88F2178E1AD17528C40987),
    .INIT_0A(256'hCB182C47B41E3E49AC06A2D5C28865A1B147CAA9BCEEA469A75353072CCE2EE2),
    .INIT_0B(256'hFE56663BBEA8E9D02DEBD2E3339F8A084D9372FEC9556DAE3725816E3CC5D196),
    .INIT_0C(256'h631CFFF8427124530547BE0C0741C62AE058F94F8BD5032E6917F426C9BDE00F),
    .INIT_0D(256'h2EA8AE59921FEA87E6691AB98BF3E4F4959593FCAD919C30D601E32A37BAA126),
    .INIT_0E(256'h3D67D98C2B052311B7EB97CB4BEF6434454124CEF93C261EC589D4002A56FE87),
    .INIT_0F(256'h565BA8BAEC7DBDABFE14EB2711A46EA85F1E7F14EC0B689C90FFD4C2E97412FF),
    .INIT_10(256'hA3971A28943626161007F4CDB2410E4895AA90B29FFE17ACF05491B773F37F72),
    .INIT_11(256'h81A65C46BC3A54492F31E159754D3FE0772291717695EB618628CDA0C2DEDD0D),
    .INIT_12(256'hFED5E20F4A314F8BB36647D5EC4874732005FA37E1F0AAB9FAA6E4EA924BE54A),
    .INIT_13(256'h3360B7C20E1795999A8A1906B908B7F8F7B92D8921176EE3BA1AEA3DF72CA486),
    .INIT_14(256'hFF5548E19273AAE1178BEA59B72D453B78E196CC2CA471B2EC4912A5D93FAC57),
    .INIT_15(256'h1139234C83F6CDBD85F5897671F248F67A1940F2D066169111ACE7AF832B2D05),
    .INIT_16(256'h25FC7FB49DC9EF4A7A792F159196AC596070FF0FFB9B149B3E276379674153E4),
    .INIT_17(256'h8C10D58E2D8EE35EFCD4894F488F362082C608D1436E2B0180FD751E765591A7),
    .INIT_18(256'h0FEF53D1D8A6FD9352140873B0D2432EE3557702BAA23A6E2884FD11415702C4),
    .INIT_19(256'hB316D25446A4B9868642BD6FFA8EA59555B71CCCC6DA08D96D46EE9BBD6CAA24),
    .INIT_1A(256'h97044E02E7E7000F45C74E1876EEB88ACB28708E68D55F20ED850582B881842B),
    .INIT_1B(256'hF1A3405A113E5FE9F5F9858E4A3BE8E456F5736AB378F27A945A11D57F3980A3),
    .INIT_1C(256'hF6821D88C45588281215217333848A57F63B7CFC0023CBFDEAC61651173605BD),
    .INIT_1D(256'h9FEE843D6FA2CBC242C6F8720C6054AF6208CBF0D99531C8D46CF31C9454540E),
    .INIT_1E(256'h753CB45757B1806AE99137C2EC59AC26F07ACC915D26469E1F46DE097EB5E20E),
    .INIT_1F(256'h8D53C70DCE0EFB80D4B089F5A1E582CACC16CA137C57DD4D2C7B30A125D639CE),
    .INIT_20(256'hC2F9BF7876A02C10FF3A1F355CD5270D597AD328E889E9DB51E8533715A6C7F5),
    .INIT_21(256'hCBC74DB1CC146B4073F820715738C815EE0F56F02528949247D6C8A2BE6DBF6B),
    .INIT_22(256'h9AF91CD3DC4F572EE02F5B2963ECD3CE43265207724B184D8CFE08D6CB50E3A7),
    .INIT_23(256'h330BC40C98275B8E9D40A290120B77A6AF031CA708BDBA22B1277873B27018FB),
    .INIT_24(256'h65193288496A2D3A0A73146D965019AD5B537DC68E1CDEFC92361E9CA04E4D41),
    .INIT_25(256'h4902FF054B79E7D6A917D216F8B5D62E82923FCEBAC64FED9BCFE4B154A76E00),
    .INIT_26(256'hB568C2B522E0ED27573D7ED6F4D9330ED7F7921C3E5FD64246BC423C0F57F167),
    .INIT_27(256'h9E19AC3D2091415C02D3132B654E6F4FC5522982980C82AF52C427C27B7B2F4D),
    .INIT_28(256'h7908E5EC0945576B4CBC80E4A95C7086BAAACBAA00B2B5ADF66E23B782875D46),
    .INIT_29(256'h857C1DC5EBC4DDB6613EDB47FB4B21C572EAE01DC882D735376D4FF1257BFF7C),
    .INIT_2A(256'h62AEE40F4EBAFB4B27C506A2E889244D07A12B6DD5A288D5D96A388EC7037B33),
    .INIT_2B(256'h503624688FC911373137DF5A41D348416F4561D5791DBA70F1C802D43D09AC90),
    .INIT_2C(256'h423C09C193C326BE49A3AE92EE7E8C419258F1102CAD0B9478B7177FF23A83E7),
    .INIT_2D(256'h60A9D121A7D88006A6BD9F6742776CD274C6F071DCA3A307C5FA7D2D3F22AF95),
    .INIT_2E(256'h5F941D6C733C5AEE1929D4BB6E25247D140766EF0ECE04913108673E3991E691),
    .INIT_2F(256'h21299BF1D7E70EA5C8188C49FB7F2F7F0CE500A83DD849D6C73B17045F5892D8),
    .INIT_30(256'hD6BC42C0D5E49D4C6D0C1D130E7D3D8C93519B0AB7E3CDD8E09BBE6903141F0B),
    .INIT_31(256'h6667D06D771DFBD09889D5AA0BB53AABDF732252FCF299BEDBBCC481B18EFD7C),
    .INIT_32(256'h9E5939CA005B24791495968E09B72EC74BD2EB8DB10210D086B3B44CD480421C),
    .INIT_33(256'h6F6DDF89D6A3536F931B3E60FC1A6C85FC8880FC2253325B17BC5148EFACBBCF),
    .INIT_34(256'hA71A9725F88C34ED098D4DA6E8A9921CD2E5F2DC7793193F6ECC38B26B699E17),
    .INIT_35(256'hCF307837164CB4B447CC38D64FF263320E06BBA480CCCD0D59987ABBCCE607E3),
    .INIT_36(256'h76B71FBDABA7819AD8500DF16B34CC40A099EEF043CADC094C9C017CA2F6B11D),
    .INIT_37(256'h7A30482A30F090B680458E6F89D3F585C43FF9BFECDD87FE0B44FA28E86C9888),
    .INIT_38(256'hA31B87C4CEBD25F5457CFA844ED9D4C5D16EE1049E42597062BF2F294D44F35C),
    .INIT_39(256'h098C46C2EB55185887E38A79B993A560FBD8A63FD7124799F8D4EC0C526A1D31),
    .INIT_3A(256'h30ED8BE657CC6133452B2C0CDF248325749CCF3BDD26EFC1AB7BC94182A42983),
    .INIT_3B(256'hC4CE7FDC79A4B1A4736EE3218F298CC6ABB0E19D83E95C163F864DF71B0BC851),
    .INIT_3C(256'h051D89A11082951CA15BC9F96184F2FE08B4BA92B373C2DB4476B960ABF6AC04),
    .INIT_3D(256'hADECF8530F25B6AD15EAAF8F6D80E31471B7EED216A819CF88ADB265113DB67C),
    .INIT_3E(256'h8112CB36032B9C717F68EFBB56F8A566AE4838FD0F9ECA31B302A7B6C4FE1696),
    .INIT_3F(256'h93302E0728BCC6D1F240F8F7B16B48168A1338D34B3C37FC845F7C48F85DBA47),
    .INIT_40(256'h7ABE8A6CD8B6B34880200F6ABA0F275B01A86BB9222A18EC9A080DAC7317543E),
    .INIT_41(256'hEC957B74346C25B4DFA3FA5E075AC0ED3378163D9628497D66A3372043A2D8D5),
    .INIT_42(256'hF907939BD9CF6AA165D24258572C4CAAB6514E1A6C4CE2C912FCB43C82C8603F),
    .INIT_43(256'hA0ADDF21C8029B4F04BB14472E734C325ED9AE3D163B537D1697AC3931829B77),
    .INIT_44(256'h329E29D9D262657C95C27AB868F9EF0E4C7B2CBE7A1371AAEDE7DCE1B3535F06),
    .INIT_45(256'hE1FBC8C4D4A358C36822DE519914F15CE7FF640C9351A77F278F678BAD0463F4),
    .INIT_46(256'h3692114E369EA32C33A9D02144CA1C7C9398742973C81BACF2FA6993BE752292),
    .INIT_47(256'h28725F4E0B6251253CC459BA7697D85903698FA1895DC1826D3083D8D094E1B4),
    .INIT_48(256'h89532872CAED898A8AD59C1BB22E09FC541C9FC3572F40CC690251021165FD02),
    .INIT_49(256'h1B2D149AC10FC7209464BCB2821531A86F7684D35CAEBFF134882F8D9072DEDD),
    .INIT_4A(256'hD5F1E1D2683684C5666DA388C25E5BB525B5C0D73F7DBFB482623A50E4BCDEDD),
    .INIT_4B(256'h765A5E3CCDF9022AF9B5830B6F64919807678F963EAD015299BAD506919F14DC),
    .INIT_4C(256'h5F444BE592C1258DAE80BCD1EB5CA8152FCF2194F277E31EBBF8F76AB100439E),
    .INIT_4D(256'hCB42F829632F2D4B89E01F4C558F1C17984F99E1C1E62F218BA9F9A0E978C779),
    .INIT_4E(256'h96284CF085C25C4063A216B939DA7B9253C9F5BC587DF9940A4CF32B37DBB05F),
    .INIT_4F(256'hF2416DF97C1B8CAA37CFB97E3212219F64CBF33B18D8E0F4F9298463404D832F),
    .INIT_50(256'h4877B4B398A414A4C1D33CA8E96329509037D0DBED08508615F1DDC12A1F5B5B),
    .INIT_51(256'h7E0AE0309E9EC9377437FB501473EA0FE7D6D1B6CF2504F8E9E8E61344258C1D),
    .INIT_52(256'hAE2710926B56E3CE66B954C9A71B5C6B4CB0394240B027C3627FABDCE07F904F),
    .INIT_53(256'h4BC31E52EC0366FFBB33A5ECCCEA7D1C48B6299B4B2A11441A9F2BE0032BE331),
    .INIT_54(256'hC6DD6D0F64D79FC0B2A27D48BDBBB8A0DE3F34F84C11652A26725593FA6FD91B),
    .INIT_55(256'h4EF4B048C56EC6F945F1F83E0857975FE6A32F245D758859DF2EB6D690658D71),
    .INIT_56(256'hC418F41D78F9D90EAE7CA1BB62C028881FEE1A0D0E004437D6FC0F9431E59214),
    .INIT_57(256'h1B0E3BC5D85809DE477A9DA53286291C794B40AD606272E1A2D50B35E7781A69),
    .INIT_58(256'hF11465AC1F90CDBA21819498FA0EA110AD05DC4068C8225E1F0E52D226687854),
    .INIT_59(256'hCD6EB5A10D3BB02EA7514E625AFFBE42AFEBAC1600898B36E0B1AAEDB99BA5DF),
    .INIT_5A(256'hA22FFFBB1FE6AD81459EDF64401F9E5CE26EA05C4DEC1E10E061D390FA2809B2),
    .INIT_5B(256'hDEE88FE793B9447A0CAFEF104BB48069370FFFE0668D1ABBECD9F8DCA2F10A21),
    .INIT_5C(256'hE0DE775C61231C191C7D1C0F98C667A230DB47749DE8843491EE81D883541C18),
    .INIT_5D(256'h7E500C83CFE085E45C6B0A02AC019B8F2C18040D2EE2117DAA6DF755D59D2A54),
    .INIT_5E(256'h7EC72EF7740B60BD948DB8EF167B36D4B4699E7C3E0B5EF2BDCD965A669168E0),
    .INIT_5F(256'h71361C8D5E311990E0FFD1D30EBA5136A0DC3A2B303FB621D832BD803190BEFE),
    .INIT_60(256'h6C901E3498C684F6C4366AEDB324270D85475EF151D9F59499C7DF04074E2711),
    .INIT_61(256'h71B49471897C10D1648F9A7374E87E7A66CE6F59280B6295071823D72E81FF84),
    .INIT_62(256'h6900EBEF0E3D2A1727026C16E09CB84CBDB7C3E1BB752E6EAC45E3B536E97573),
    .INIT_63(256'h85F472872E4C05E74D2ECADB3C85BB58DE3D36D28208F7EFAA89C1DCECA9E130),
    .INIT_64(256'hB1B0911B644400864FCE9A55988D5722DF60623390860238AFBF7DCEC23C09BD),
    .INIT_65(256'h361B67978F452C581F37126AC1A43A7718BCDB5DEAFD51863C27CC25A5E22499),
    .INIT_66(256'h2576EA8584F09F0076B66C45239AC0CCB50C1EF3C05EC901A282970D1CA1F823),
    .INIT_67(256'h0016B24F1E8C8F56DBDBED44DABFC4A7DA80E2ABD952A522BEE92169323D23B0),
    .INIT_68(256'h2B86AD51879A5C479A5FF9DD82B2C77E834947F87328B001DA800FC191502EFF),
    .INIT_69(256'hD9AAB0F1971CE9CE855C249DEEE04F351B5BB24CDD5C502C6A422B8DB9CF4E0D),
    .INIT_6A(256'h66B0277F57E042FA21BDFB6046B7D73B1DCF239DD798631AE420DF2E256E6723),
    .INIT_6B(256'hE2DF63A432403FFD21187A9308E086C3DB802E1EF2371F6D8A7AAA32BE9BCA15),
    .INIT_6C(256'h85BE6DECDE40FB0171B3B36C20ECC338B9594790753002E50924E8D5B537ACD7),
    .INIT_6D(256'h31A77C01778F5AEACA3D53E6789E76C9360A8218C7A87205F73F8FE72F914EF9),
    .INIT_6E(256'h1430131FC66AC8352730D446077D3F7D7350959051AD054A026134EE42039ECF),
    .INIT_6F(256'hA2B08F80A1E6CF216BC981F5E246515C24C249F3FAABB12A605187064E261BCA),
    .INIT_70(256'hA072C26E185084A4BA85EEE391FDDD579013111C5B866B4043F031A7FB8773BF),
    .INIT_71(256'hD5AF4F49E349C80FB91F8D6B21F090A4D1897560C19584C066AA2A23D40E7B1F),
    .INIT_72(256'h9F5EFE2DDFDF93A95566427CB0C4048A234082705C82877954CF780E9E2C69B6),
    .INIT_73(256'h961E235638755DDC7FAEC7C00DBB2C235AB0D0A21F93209033E675B4AE065604),
    .INIT_74(256'h49B13926E69DAB696A7F73EA1AE4DF352BECFE33447B03FB6913B26D183863E4),
    .INIT_75(256'hBBBA10807530FD2A7491CC247165F3F2AC91310C10A0B3C69F32F7188125D60E),
    .INIT_76(256'h39CE6833DF30E873F48AAA5C8D3A2BEF18B8F43CE0B45CC14D255092D63DAA39),
    .INIT_77(256'h7181DBDD54CE6EA90C87E42AC2A699C9F6CEDD82AC7DE47F3D947F9E3EAA9DE4),
    .INIT_78(256'h4DB5B37DFA82E18F523D46F8F6B8064496B54DEB1FFCD97AD470958E6527D2B8),
    .INIT_79(256'h61DBC2E0894032F53C0E70D77CC4556E3E6467619C8BEDDD806F0D9E76CFFEA3),
    .INIT_7A(256'h29B189F517FB83B5DF7C2D42708A9661E3E1EF852C9642B0C0F42395ECCAB030),
    .INIT_7B(256'h9B00F0B6F5CD91897B2B7D97F2AC5890334D40089D42CADDE9ECDE1E466BB658),
    .INIT_7C(256'h9F28EB4A2F2600FF24EEF6ABA5E1C80EAA7BE8C86DF6EECAFB453D66EE2E498A),
    .INIT_7D(256'h2BA3802330D9AC7D341960E76D91CAF44E6E95F1F9D889EF4FAE7D2897C5772A),
    .INIT_7E(256'h50B0F51AD36AB97968894C586F6ED971322EC47A377124AC6828F03A4DC4C9A4),
    .INIT_7F(256'hBCEC8017A3180FF440C8EE79E8AE71313F32350A05B1DC3901F03A99ED8DCFA1),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized34
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
    .INITP_00(256'h5050440050510451550110504014454554405404511145144415110100510055),
    .INITP_01(256'h4451141100100111115445054004145401440044050115140544504510501145),
    .INITP_02(256'h1444454455440510145451541501540441054011154010451441545054140000),
    .INITP_03(256'h5454010514050011111501501415140145401400514415040000555410411554),
    .INITP_04(256'h0510154440150450515515405401555550040104015141551411541505550140),
    .INITP_05(256'h4501004154000541411105401450155050510105414055104045150010150550),
    .INITP_06(256'h0141145554451511100051541551040114155141404105450055411544101155),
    .INITP_07(256'h5500015051415015004540445054410405455554054011011401110015110150),
    .INITP_08(256'h1104140540505141410155554105150511005151054450451110100415155104),
    .INITP_09(256'h0445154555501445445411515115454044011441511010105541144404410114),
    .INITP_0A(256'h1505411440011411541511500440044540011111514040450150505540110115),
    .INITP_0B(256'h1544404011104000500515414510401544044000455401410114055044100544),
    .INITP_0C(256'h4005045045105540055400114145050104150504541005141151404004445515),
    .INITP_0D(256'h5401005101151414101545044500150000150405550511010510144111540101),
    .INITP_0E(256'h0145014411554415100501511001510505450411111514415154545504540511),
    .INITP_0F(256'h1041545151545514104050511554540050114544405505104511145044140454),
    .INIT_00(256'hF5DB8EBA0B7605F9E2D8A2D9DCE3F6A25E8EA9F53682E3B343C75F8D7372E31C),
    .INIT_01(256'h65958639DFF8D27538687BF9B42B9017BA54237BA20DF0A7B8C7D0A53F614A89),
    .INIT_02(256'hEBFB4922357B999E546E2CAC94C2054638B911B296AE713C53F36EA335140F03),
    .INIT_03(256'h54A51285A292FEA6D2EB80FB2C79655FA933EA2FD0CA332A9CB8B2CA29891774),
    .INIT_04(256'h97396FB22A9C616826D79440342B91E3060AE1F6BCE7B902628A8C8768072B72),
    .INIT_05(256'hF161592F7CB1848BFC2ED0D334278A36EB602A5629578C5D9CC40EBE32973C03),
    .INIT_06(256'h8E143B32BB5C1FFA5571E843F970A6AE062560FD55FC4547C2AAC31957DC03E3),
    .INIT_07(256'hA9334EC095A0A49DEF8E6B13EA08776E857012AFB9E45F124E8B770B88E675BE),
    .INIT_08(256'h5B7F3B461D1946832406A741F8E2C997B223664CFCD460FAB4EE6815F3F4C784),
    .INIT_09(256'h89E72CC1194A1E2031FFA4B6508D537B8AB927A81C490A7F2BF2A083396471EC),
    .INIT_0A(256'hBFC6941E232E63EA5932E3BE92B61EE944CA47E76A01BA57A8E2119699099DCC),
    .INIT_0B(256'hD991E5CD5E30E62C36128C558B0C6E23823D158F7EA0D9C98AA7A5D1C1345279),
    .INIT_0C(256'h440400E4DAF66854AEC10D1B806242B88751550809B881DCE3CC4F0A378BBB67),
    .INIT_0D(256'hDA2DA4BBB2C553218E8DEB5471B5C062E37F45BDD86EA1EC81C044049583DD2F),
    .INIT_0E(256'hD7DA42F1511C57A44A1865D884943E30F6ADF573B50BE78AC13DA5BA0CE9A28D),
    .INIT_0F(256'h281C29931F3232A39ED5F74E98687AED831A62990482FE2F7B8B834F9EA96A7E),
    .INIT_10(256'h0E39C30785E3A74B0C791285125015F06B7905591B97964AAB0E335511DA13E4),
    .INIT_11(256'h2F60970309868040852B25578D9A5C53A47DE7B9EB91DD8E88DFE3EA02C4E6F6),
    .INIT_12(256'h63D616D2269C33DBA0782E8F295FC8D1045C507EDD9E874D4B936C1A076A4EDE),
    .INIT_13(256'hD6B2B00A3758CB0C33C4E65A46B1007956E6D15AFA8CD651CD25525867C522C1),
    .INIT_14(256'h8E61061548DB8A532BE25B47C09DA0F67E751A2A4F080C14D8400BF045AFE067),
    .INIT_15(256'hD09BE0EB064C9BFC64A2E6AE306BF2E79B8B273CC4A90963AA866EB259136DA1),
    .INIT_16(256'hE007D54B95E38BBC09431F598E6EAA5FEC127C539497B3D99C73A19296DF4234),
    .INIT_17(256'hB6EA563A295B850B00E7B8F5639C2BD8B4211EC2DFC99E63CBB708E19F0D4F8B),
    .INIT_18(256'h78472C71A491DA6CF5146666AEA699F8793A1BB982C989CAA632718EB9FA35B3),
    .INIT_19(256'hDFA2CF3B782862138DE7A001526E3282953911F9B4E8A7891EF8FA8F90A50499),
    .INIT_1A(256'h36035F07F0E7E5905BEBAC19DD1CEB5D51D59D5E6BA56DFD6CDA661028D6FF5A),
    .INIT_1B(256'h78685C4B22C5F0EE3B8ADA08CFFD661B1AC7E2136E84FA609C15C98FB077C832),
    .INIT_1C(256'hA960588015E7B703DD711C5B86C6BF9ADAEEA825BBA7E0728F997044B7AF1AE4),
    .INIT_1D(256'h8DAF094226C7E5FBB82EA9290B1FB0ACD4B54F93EDA2A41A0A598C7F222FDE78),
    .INIT_1E(256'hB74530498FD7101F7A1A4FEF297DF561CDE10B5E361AAE7CBC254CF043D08377),
    .INIT_1F(256'h87DA4C18DD2076D9570925A19FCA7DB130EC98B28741ECAD6A0F21CECFB89EA7),
    .INIT_20(256'h1FA131EC4340BA38610D842B744410D5DD8B593B78375634698FD84D5E4D7503),
    .INIT_21(256'h1CF4D978C58976991209B4E874418E2448358FBC4F8DD190E42BFDCFE5EF1148),
    .INIT_22(256'hDE16027446DB1926490EF3765965620BF753A64624818EE52EB83F4B655AD071),
    .INIT_23(256'h86F3BCF2B7A0ACA76F70301DEF5644EC203D6D63215F22CA14EC8500B295FBCB),
    .INIT_24(256'hAC3CA874358ED3E8B33B2B3534ECE8DB265ABE59A8C16CF0AD5331CA53BDA07D),
    .INIT_25(256'h038AC277D6A910A4E6673E3FA499572A9A42BFE1882E8AF4FE5D6BC7D963A966),
    .INIT_26(256'h1E929C8D291439E579EA1949AEA7AC15A6D39B5DDFD438938F69689907F99217),
    .INIT_27(256'hA3CEFB137599C15BEAFCFEECD8A9D3EB8FDA767009B9A807649B35AC83072D8F),
    .INIT_28(256'hD975E272227F89BC08968CCC3B75BCAEE8A60073EF209E22B8438B0856570414),
    .INIT_29(256'h4BB25AE74C787DE3574D89EF2D6643F90423CD39797AF87C2E613CD4C7124B03),
    .INIT_2A(256'hAB70C29E34339E8778EBE56F5D64E95A298E7B14BD49679290F5FD352F5AAA0C),
    .INIT_2B(256'hCC731F47E7E4964F799BCC6F3D63F98348A9A4F48245184284E30B7F650E0DBD),
    .INIT_2C(256'hE386D7D3CE54A460C68EC3381E56509F176B6DC1016CD2329199625F7A96657F),
    .INIT_2D(256'hDCCE7452D917CEED9BA6DCBE96B9AE7E562417F9B8F871269B619838A752BDFC),
    .INIT_2E(256'hA23DCEAFA14577F7218B44EF461C564DBD304DA8C109D29BDE29C88E76A5851D),
    .INIT_2F(256'h5003FF84E1309520D9B471F31A296725E3F4C213BCF6A2A5A2DAA952358CD356),
    .INIT_30(256'h88763B73AEA7DA34DD9F706EFD34AB1C70407B1783AF3DB2FF0A90BA2B0AE4DC),
    .INIT_31(256'h134BD53A4A9838F241B65219E9D3B4032550553EEA0F010FE4D48CAEA9F8BD3B),
    .INIT_32(256'h32FB4A3C31EFE775E952BB25AC708B9B56161DEB985E8AF7CDF0F97997D6536C),
    .INIT_33(256'h4C2416A10D3DC6622F7E2E4ED5BD20C424D204362CD02A73E6BF569348829E6C),
    .INIT_34(256'hC6E925850CC2C4A8907B014C62663FE918F3693BD8244724AF7279F14F932BF9),
    .INIT_35(256'hE5352DAB4ED56012B89CA56EC73BA55274126C71C32D1B576D77E6AACE181739),
    .INIT_36(256'hA947E4793352F3C9ADBA8034142D194173EC3C5A2D9B753FEFEBE59FAC573E59),
    .INIT_37(256'h46D2E480A1CC20E856011B3CB9B6A126C6D572CE23B6EF9B643CC5DD52462119),
    .INIT_38(256'h17AEDBA916A56152C7E52DA85A2E5A036AC2DD432871F38FDF05F5E15F48391F),
    .INIT_39(256'h7DA316D4087E48F61068717DE639EB42D567211BB9EF3EF8E9781649CF4F1606),
    .INIT_3A(256'hCFDE813B27253590B4E7BA3E2A0B14059AE4CBB5A0F727BBAE7CD8F86EA2CF8C),
    .INIT_3B(256'h94B6C31ABDA25DF09AC90897917FCDFBEE4617ABC8BF249FAAA8B28281918472),
    .INIT_3C(256'h7EF6C2D86F4E4E64CA110885E1E3A62CB28C5B2E14B9DFD47635F621536C300D),
    .INIT_3D(256'h67C63A522194F0FC81B84C45C5B8F45C216191C6FE0E300778E6B89A5A69DF4C),
    .INIT_3E(256'h82164B0E7A64FAE936B2FAF5B280FD32B33449E023241020869E5D9ACF90A9BE),
    .INIT_3F(256'hC299CCA07A9DF011A80B168A6881CCC62BEB23F8A3686C7DF6C7D44F94DA72E1),
    .INIT_40(256'hAF0A898427D698FBF8AA0FC45CCD329BEDAD1DF03DC5847C6F01753E2DF25414),
    .INIT_41(256'h813F5BE864AA7BB2EB0BD93C5059C3E189A02CB13C874AB3794C751A69EDB04D),
    .INIT_42(256'h4920829083FC57849C47F6FD9D22400A64ADED059650A1B89687C3E2C0B6BD2F),
    .INIT_43(256'h70DA14834E6E77A348D0B31015C4854C2A5BDBBE2A382BE4BE9907E335C0E5FE),
    .INIT_44(256'hE478F21035B8995034A4EAA33C188D25AAC5857D5E8D8FCDA933CB83F585ADC8),
    .INIT_45(256'h49FCF17946EFBCFB3352EB4940F4D0CF16AB75D6C5BC4490BB415D226AB4856E),
    .INIT_46(256'hD27EAA21EAAD414A1515668AA070F7527CBAF578242E5E9FC1370AB2F1D00344),
    .INIT_47(256'hF67D09DB9878E795DD33D234A8CF82CC7C0B4922BC96038A64760DC94FA84DEE),
    .INIT_48(256'h6803A721BC63494679C26EF1EE099BAF6F761AF4605593F854CB0FEF4388A41F),
    .INIT_49(256'hA9C706A6949903624A2CEF5986A6AC132427C341EB7CE0BCE4A1176F463540A1),
    .INIT_4A(256'h3E0CDBDA4217CD35014D264CC5AA48900F3FCA90FB0D22B0C7EB38923B274EC6),
    .INIT_4B(256'h6C01757680F8DC38D760971138322DEBF4989BE8A4D5CBA5FB997B34DA5EBAB6),
    .INIT_4C(256'hA7EF5EABAAC9CFB857E4DA64E3D3CF8092FEA67866247ED87A8B31DFAC98C363),
    .INIT_4D(256'hEF3E40AD7CC524E1C5F0DF7A29793E37392B2687A1692F965B83D33EB7CFD09D),
    .INIT_4E(256'h2A55CBB773B5D0E7310E2D5C1FE30871755FE6AFA62F52790C6BF4BFEDD3A88A),
    .INIT_4F(256'hF33A893474E9574FFE3D8E02D012C784F37CD9CEB5AB29838B731D4836D32742),
    .INIT_50(256'h672663575DD1BA5A8A63193EBCAD9620125C615929D8183962993D0E332BE338),
    .INIT_51(256'h4473A519ECDB67219878FA1F9D5B547821B9ED12784F4CCAED7AD900644CC47F),
    .INIT_52(256'h128106D9D50305C8A34AF0EB3FB97B81B53C881274157BB1CE0A120CA185E61B),
    .INIT_53(256'h4CC77240FDD6DFB26B6F2CE0DBC60661911AC3C4D1A9ED92038A6BC197920227),
    .INIT_54(256'h56C57A9F8E0A31EFB00AF95F50DD08D236ADA879125FC7BF208554E1A514F1D7),
    .INIT_55(256'h893EB71ADC1306C214A6C9710F49487754563D7AC960E810508A5107E9FC2E69),
    .INIT_56(256'hCEDCD09C8B8FAC6B556DD3A89742D48A3641076E0C60FF57B0B5FC97369ADBD1),
    .INIT_57(256'h10AEE24CD254FD0F373010E778967A42399B7EA8B3D56232686B6D1E5AB0BB78),
    .INIT_58(256'h7E6CC40B58DA597F68937D7C8FDC9AE6A80073E2D5609E066211A914FC5FC7A6),
    .INIT_59(256'hA6E6AF3BE2DC4E80EF2D7D108D109A8ABBF30AE5DC968E9959D69F4507A0F7EF),
    .INIT_5A(256'hE078F957BED4C405F2B40BF6ADCA05D825FA78207C165D19C029B99E4F40BDCD),
    .INIT_5B(256'hA7A7185874D5FD9DB2DBFC8B5B91FBD2BDD8981A32BCD97A21B097EB5EB79B2A),
    .INIT_5C(256'h1DF8042CA25B8BD4A33A84CE7C375620D1A8CDDD6D6E9C38359F22E9F04F0DD3),
    .INIT_5D(256'h49A333C76644BD17A8694ACECFBFE49CFF46B34F5D7E9B452E36CEB387B49529),
    .INIT_5E(256'hAEFBD1C4D873AB6EC7F193C28F03129C06803444AF965B74980C5F7263B76AA3),
    .INIT_5F(256'hAD7124F13B7824C748F9577BB395D30E2244B64D3CE3E202F339E580D10D107A),
    .INIT_60(256'h5320FBAE3553BD5D9927CA2DF8757636FD4C57DED5F2B614B32DF763393D7E01),
    .INIT_61(256'h8EA00FB4E180745F34A7607B078B288DCE3E95272D5F73DF006B4C3E9AD089AD),
    .INIT_62(256'h128CD389C432BEE4171EA2080ED1ADE5569ED7E2D54469A1B6BE593E98A858A2),
    .INIT_63(256'h525105BA77CE4B2871FD4135F3FCF53746C3016929ECD99B77C4E188C27B28F6),
    .INIT_64(256'h232C8F7D9CEEA21882B0AC8CDA00E9D4C737CBB8907555FFEF58535876DADD89),
    .INIT_65(256'hC222391713BA726FF86EA8E03E056DD1081ED934645036495518AAE5B17F0698),
    .INIT_66(256'hF96CCF38087D682FAB0BD6ED43CFE5896896A15E0F982F49BA284D892672E2CC),
    .INIT_67(256'hD02D76B0B52E1BABBF50283ACB2DF7D81A4D09A9CBF66E399524D2F883B722DF),
    .INIT_68(256'h296672E207477E27E9F5E782BAC0DA656021DD3D837E94B696AC1D05B6E8F83A),
    .INIT_69(256'hD901797C03CBBAB8FE51E71A46C6080580ED17B1CE68A483C6076A717B7BB2D3),
    .INIT_6A(256'hCA27CC382025A1D3CEEB029FD700D11B5346F399F95683AF3ABDE3F21A71C64B),
    .INIT_6B(256'h4848D01BA99DB977F9AF557B4CA204FAA493A173603AD235FD2BBEC08DCC6F25),
    .INIT_6C(256'hB3A26BBF7B23CF1042FC78160D1E572E8595C9F35C92384458DEAC76AEC7ECDC),
    .INIT_6D(256'h03130577FF11DA396CD4E817BA9424A03DDF12C62E2CB9B88132CB46A188C70E),
    .INIT_6E(256'h740DD5ED98E56AEA49610F978D58044CCEFC16390A8DC60C52669326821991BC),
    .INIT_6F(256'hD275AF6ED15CC9AA64D7BC19318752021DCBEFB6C7A197DDCEBA3A31EAA22068),
    .INIT_70(256'hF06BC886D338E384328C7AC6F45902D179AF74B0E6CEF65FB6C935FA6D82AF87),
    .INIT_71(256'h3B1FCFD94EEBFD11E1392309ABA1338EA29EC4A58BB94D95E0DAA26ED0D60D37),
    .INIT_72(256'h2F45AC77C227FF4A4B20B6EC8DF168975B7EBEE447C78DA70440921DAA7BF4F6),
    .INIT_73(256'h8C004D23F47247480139D84560035BFCA10F6B54C9266FBEE9C609D42FD035BD),
    .INIT_74(256'h543419654AF609430BA1FE36F554EC6429C0FB75D6EF2AF8A32BEEAE90644714),
    .INIT_75(256'h7AEB42384F9FE41F59331BDF53944DD8F86A976CED1F2FE030CD4E0485F0AC09),
    .INIT_76(256'hF44AEF026E32AD8E9F4FC8735D70BA8B2FA5C40CB0CD7324B4415142516B6E05),
    .INIT_77(256'h2D59538F2C575792DD9BF8D5299BF41E6261AA224566CD082BB2DE41932DEA7C),
    .INIT_78(256'hE96A337966132334A69B7BE036A956B482667C490222762CFCF6F056E6BEBE69),
    .INIT_79(256'h4B7B5A01C21E18CD312020F51BE3B8A29649F05F1A43096E6043B63D1B576255),
    .INIT_7A(256'h8C18BCFCD7B1FF289C2DFE8F554B65038664E8461378A2A1534D6EBA82588171),
    .INIT_7B(256'h0F85D1FE425BC392FAF5D056FD70E4E2DCEA9801046F1330CC7BE7E6D90F1BA1),
    .INIT_7C(256'hC39C46082835D5BC6C4D5ED0FA2B747B7B9C7E84A4907B20D868554193E39961),
    .INIT_7D(256'h7408C22BBED38C37B2521B8BE687E53339A74A96ADD85DF8D2280476D141705B),
    .INIT_7E(256'h58807EC87EBD17851806709B89A888BF2F14652A6C21A7EBB98E40D3A06854CB),
    .INIT_7F(256'h5798351A5BF9C690B3325438AE5679EADF9D7C56ED51BE96B2ED6354317D8647),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized4
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
    .INITP_00(256'hE47A23F26AB9C712A83B799DADF4CADC7F5CB86961B0605C42D3D5288CAE79ED),
    .INITP_01(256'h4242897CFDA916D4880768CD947D08522395F4AD435332BCA8B2AEF7A88E79E9),
    .INITP_02(256'h7263064E080F1C19A56F5F26A478DE6821B694BBA521FF54E962556CD854D5C5),
    .INITP_03(256'h2A3E183BEABAF017F7D0B6E4594167844AF0DF3BC0048028935EB3425AD4F38A),
    .INITP_04(256'h90EA783EEF7EAB29C94584E32669F4C799760CF521AEC9E80C86820D6573BBB9),
    .INITP_05(256'hD39415FC4FDE1A567BB7347B55B58DEF81B1BD94D669FE35EA91E93EFD185F43),
    .INITP_06(256'h559FB85D9B9AC248881B31B1B6EEAEA6A11B463377399953BFA2A07B4504A591),
    .INITP_07(256'hDFC3F2B4886060B922C08488B1E819D3580896D0A30130F958CED6C2960F953A),
    .INITP_08(256'hAAC49BECD417128800EA05C3445B828ABDF4C6E1EC5573E9046CC4FE69C9B1FE),
    .INITP_09(256'h34CE1908B920ACE5A79AB28835A11F69E7AD42CC823DEC8FB5DC4302132C8092),
    .INITP_0A(256'h234F9EF0DA2794017800C04304DC80EFA1C74DC973D68B6FF3E4AE05E578485E),
    .INITP_0B(256'h7BCEB5E083BB41E0D9B5F596FB32FB43444554557D098034DD8AF2CE70745ACD),
    .INITP_0C(256'hBC88989618BF9F17A3A4432E56D0B992855F9D29E2DC9C3C9336D01722224A20),
    .INITP_0D(256'hB9F059C6F1653FE791BA66A21BE75D7F36E60ACF7EC8B64A115CAD3D481EE36D),
    .INITP_0E(256'hB1760F32FF273E7BD332096C4CE82D56A428D3C41D3B723219A39352781D4B39),
    .INITP_0F(256'h2FADDC29460E99991D0092A1EE51DE76EC66076CE1CF631497EB6CE92DFDF07E),
    .INIT_00(256'hA60DF43E0B98BCF4E75AF4DB68B297A0144C7CCD2916F92A860CF2F4428386A5),
    .INIT_01(256'h12DCD1F7425C38D09ABAB833824FB6694641E792810A969E688DC8D08A33CA6A),
    .INIT_02(256'h534302E289E2C64432D5DBE953A0C26B61C414DAEC1D0EF2FFCDDBC81C9E614C),
    .INIT_03(256'hF079C8F220CD06B5F7300BA58020058B993F56FE1FB0FCDC727CA2C017E6D5DC),
    .INIT_04(256'h211DFC9500ED56189039388011D7377451D9E62A9378C195A0E2A459CB711623),
    .INIT_05(256'hA4A663C991805B01EF600FA0C623EC93689EBF3DFE31358E4F471BB2DB382456),
    .INIT_06(256'hFDAA143B270FFC99EC077503F424C4ADD4A0B4F6D840707CD461CFC535C0B8E2),
    .INIT_07(256'hCA4B41E5F6DDDC38BA504EB86ADC530E670774DEF8F96DF28F6E6610B9F33FBB),
    .INIT_08(256'h01B393EBC447C92C84BFFE97E63C32812BAA9582040FCB7A02E4D239C82571A1),
    .INIT_09(256'h19BAB7481CB618DA12E4ACB4361581A5852F4500A1A97D0DFEF2A569FD56C00D),
    .INIT_0A(256'h048B59ED68CCA336FB4C691E335E8D68EC167A2488A833596CFDB44701AE7D17),
    .INIT_0B(256'hE88C830CABED459CE540F245F3F169EEC619EB8641B6A8E289FDFF1091C23B88),
    .INIT_0C(256'h751D0F1FA2CAE36586EC2405F5C39156056BBD367A2418AA3F64D0B8BF7ADB2E),
    .INIT_0D(256'hFFF62C2BB136960A5224FAD38A598A7BF472E7E332EAE162EE301F1A7D36EAC7),
    .INIT_0E(256'h1CB93E48E05D848C2330235372E1C3A6F9B18FA906D6FFB3E200647250736428),
    .INIT_0F(256'h401C6E56A15CBF97D9A6C1A267056FAC464F7A52E126D8DF3A0E054961ACA17F),
    .INIT_10(256'h4561023F773C345699529AD002F72C819032597457C38108216BD69B863207F6),
    .INIT_11(256'h47BEB34FBD58E05C1B1639C5E20FA83EFB1B51BA9A7A1E89BC807D87953827ED),
    .INIT_12(256'h04905A02AC137395506F55799E805755293E096059D76894957B5301625886DD),
    .INIT_13(256'hD4F2C6389BA149CBC3A10813570A376C7E2F0703E8448E73293B45CC8A078D6E),
    .INIT_14(256'hEA201F9938D33DFAAC57EA36F567DC176528A907883A62E744924D3091893372),
    .INIT_15(256'h47D018D42F07B82715253CF874A496C861BDD54D042F0CB67017211F1EBA96E2),
    .INIT_16(256'hEE5199ACFC7353F5459BB369293441CF6A2075177E1F80CB4E6D72540D25830C),
    .INIT_17(256'h58BDC0FF1FC5FB8CAA65F9588FB17BEC6A6A04B681D8173366764E587E9A050D),
    .INIT_18(256'hBECCB22FF8FCF822BE0491D1E270FA3598486467122DC4D8D0B14A604E8B40CC),
    .INIT_19(256'h727B9530F0A98BD3288171B32881E4CBA062B9F1370E5B2C3B798B76C022176A),
    .INIT_1A(256'h130AFF77B3E696321B88F7BDE77573F5EE76C8BAC438D034BE2786654BD0BD68),
    .INIT_1B(256'h62150F4B13D9DC89A9C1CB5D377DACA35C63FF2C7A1310FF425AE424C3FAB2DE),
    .INIT_1C(256'hAD5B152C285C7157BEE006AC53794A26CE63BA4683649ACD065E3FDFFB12F8DF),
    .INIT_1D(256'h9D2B6770C6F20DD3D5EFA3D1996031F9899DB5E5C5BA1D541675EA4B59504FCE),
    .INIT_1E(256'h06E4F5D5D85ADED69884D219DA1D4A61087A3D62EED38D2616E50C8F0738A50D),
    .INIT_1F(256'h319883604CB45637075F23D0A452DF16973B754495184EFD41AAC757F8269EC9),
    .INIT_20(256'hE6488584DDFA68FBEECA344D2E14FA0A0ACDEA35851B99989F50FC982E2A0A6B),
    .INIT_21(256'h3E92E709A591246EDCDA078E2AF6A7CF72AE588C7A3EDFACAFE70AACF14FCB8B),
    .INIT_22(256'h8D5F2CB3909608B6351553D9E5DE568A11604B13C401CF31DFFBA264B1F275FD),
    .INIT_23(256'h70EDECE2DF8AF7ABB97EAABC357E90193421840FA7C9F39DC0EC383D2CD63ACB),
    .INIT_24(256'hE471E006FD9ED286EC7881A8B60FF3BE2A474D7CC841DE718465F96222028168),
    .INIT_25(256'hB85E32524ADE4DA982D7CB8D8276634659D8FA5037146690670268E457990E99),
    .INIT_26(256'h481DD65D3EB285CBED8919FA39F05FA0036B4DA1500AC1A1E66982FC4D4279F4),
    .INIT_27(256'hD10AD85BDDA90AF44EBDAD7DA421779093DAA46F709736BA4CFC5DFD59B3A61D),
    .INIT_28(256'h178EF0D3B0D48C44048D5DDA11B62D558E7C64C1A4828774C8FACE0551ED6BB0),
    .INIT_29(256'h9ACF65E5BAB6761BF0DDB3A48AF0178BE46AD88DD93EC066487E9B430F0AB6CF),
    .INIT_2A(256'h6B619202C04AF8E985D3966D34D3B74463D2416CA4A0B01A98D61129C3B9080A),
    .INIT_2B(256'hA894A9812AAC1D36B2518235CA71029173C3D028C35F6A42FA8F9AC490769BEE),
    .INIT_2C(256'hD5CB77949C5AC9D89DE9E515315C7656617AB157424A9C9E6578D51B93E694A4),
    .INIT_2D(256'h8B69DA4EB0C1D6C656B77BA842DF34FA2CEB4BF08F05872B7A61E237E84186C4),
    .INIT_2E(256'h90BC13268A17D04CD05AA2EAC7C9077E8F62FAC278D24AF3BCCC81F04938AAE1),
    .INIT_2F(256'h0FDA438C199C31E1E25AC3CF796290B00A9AE22A6C04513555D38EDC3D668FF9),
    .INIT_30(256'h313A89BEB88898CEE925BFCA352B88656C045E5EF6C5DF5ABC7E5EC983CBE7C7),
    .INIT_31(256'hF59C12309C885B73F5DB3CF4B0E502275D495DF8E7A11E8194B496E061EF154E),
    .INIT_32(256'hB3298FFCB2C118A73065EE4BC62D7DC5C7E0B752835B0BD5B384764CF642838D),
    .INIT_33(256'hAE349E29D4363E79D6B92DA2DF346FE781081C775F72A04AA84DFD32EFB6AB52),
    .INIT_34(256'h2194E8C91E104E9F9B54B61F9E1937D1113AC0AEFD5B967F7A54D75214684434),
    .INIT_35(256'h5FCDB10732C2330FE26406F2F46EE79DF4B17470A6FBFC0E797A86473C54E5F1),
    .INIT_36(256'h8A21F15A7E2FED169765D4D07561C544BFDA4FB456EC75D7605A9D5138C50CA6),
    .INIT_37(256'hF50C71B23FCE4FE4878A719F219B25CCBDF02ED39A5C13390E65EA76F8B5BEF3),
    .INIT_38(256'h16D819F27BF219C7BE007DDDABAF8D00EB4854F28D8719DA443F119DB18F1BDF),
    .INIT_39(256'h891C37DA90DB5D0C4B6604CBF17F9C36514384C29A3950DCAD287AD0DE717E2E),
    .INIT_3A(256'hE6DD17C09B31084D096C955741EEA98A1CCD39D0CB544FD0A7FAE16747D4CA35),
    .INIT_3B(256'h29D9B455E94F3021EA714163C97C4129417969DEBE5D5C805D00749CFCC969BB),
    .INIT_3C(256'h697D33B6A7F9F48293CEA57A27DFAC51484A35E1F9052C5632CA5458E15F70C2),
    .INIT_3D(256'hE8AFC8A475C369BB787D87BA9F8A78322EE12B7419126A961897FA00A5D52992),
    .INIT_3E(256'h1C9CDEF1B848F9EF709B72E06C4089348E59BCDE8F5313A539A84FF012F02424),
    .INIT_3F(256'h9C40058EBB400B084C6F495E3C251FC8DD33DD58378A56D738CAC33479F30FF5),
    .INIT_40(256'h134BFEBF4628B8BC8D7FEB8C25620226D5A5E440E44BCDAFA8A2B49DFEE95C33),
    .INIT_41(256'hA124B21A43BCCDDADB02407A1F6749B61A1BC98FFF18C6C0FCD42D37719FC2BA),
    .INIT_42(256'h9CAAA107CC0ACB267BF1C3D7FE61E1B1FAA63BDDE0D63FE417FC8B28107F1BCE),
    .INIT_43(256'hF7691D6ACD0639C79593929320D9117D4F217CECFB11D17EEC0430260BA4A82F),
    .INIT_44(256'h10C8624ACEC1ABDEA4B0EABF89547D09DF58F4CA5544FBB605172E0D49F1DD58),
    .INIT_45(256'h5C784A5B6449434C39FBCF48B8AA23AA019A70B2E70A58428F0A5C0093AB2EDF),
    .INIT_46(256'h83FFA457872C381389493FCC0F63605C776D33149B294109FF7579951F1BC1C4),
    .INIT_47(256'hAA54B95A2B9FFD118E11DAD87485E94F49BBCA5E6E15AA599BE8821A757147D2),
    .INIT_48(256'h1521C3779026AF9EDFA6D1F87B49664283D46755C77F365925446E69EFC0C62F),
    .INIT_49(256'hE8F9389C010A1B4049F28D6323DA7C0E9D96F03E66E481AF5F60EE6670D36A09),
    .INIT_4A(256'h4CB49499DB568E69D47C57ED7AFF760585B127506D3D25EF038F3F8D7625AB84),
    .INIT_4B(256'h94AE14050E171EDFDF151A12D639B13624211EB61B25ECC9BF17294463CB7C6A),
    .INIT_4C(256'h6C3D146A0900E992666D77FCF56DAE02DD67D36613A52214B777BF6E6864391F),
    .INIT_4D(256'hA05E31F56CC983041A4F05A89FD1766E0FC3A563D858C65EA5EB0A0D92A642CE),
    .INIT_4E(256'h56D869944BF65C9747816430EF83B0D949F9FDD14FE48D67EF0DA7C1A1E0AB5A),
    .INIT_4F(256'h1B7046EB783E83B7E6CFB712D5D29014AF0AFD11878F8E07334F1A2C846D0CA7),
    .INIT_50(256'hAEFC20C19477EE5A623444075F6BC7C848D351B0854806D7CC6F5FBD452D3A24),
    .INIT_51(256'h2A5D5AD8A8941B5D5A901F20F9E16113BF27211D81E0BAD17EDF4230F8CDF593),
    .INIT_52(256'hE8179ACD57DAB96E65A84ACAA4005A8A583841886981E9F368FB43E2BF57CA85),
    .INIT_53(256'h832B90020096C5A16D582E095B703F40F876980EF2EDD03346EE54234904889A),
    .INIT_54(256'h4AB717B3C44CCE195C7181B0D10099FBA89E97D73F803D492EAC8D61E6FD0574),
    .INIT_55(256'h0CBA97CDAE29B2EC4B4D15695FB6B09A637FA796F37CD1EC5EBFA730FAD289F1),
    .INIT_56(256'h398B89494DFB189AE1D74CB01FC6D9B96B5294BD8939E1E49117E8FB130DEA44),
    .INIT_57(256'h2646F32821C3DAA81CADEF7DD2D8095C1F15CA8A0720DD2431B276C92CF6B626),
    .INIT_58(256'h6D0E160ED68BBAD810FBA263162FFA9450F0125639AEA731B1BFAEDAE7A81DA6),
    .INIT_59(256'h1F0B2620391B43D645261EB40764AD5A936A021DEC62BB0FA41AE0BF0B0A2ECC),
    .INIT_5A(256'h18DA2EADD549C132DBD3603484F298A7796EB5A8C077829CAEC7F82A1F828D19),
    .INIT_5B(256'h5F5E3D88675ACE84AED371203AC3DABC35FA85FB7893530C53BDF60394D3F7EF),
    .INIT_5C(256'h481927CD393FDB4212804E6BE4DD413E0873B6C3199413024F630E5DA4B03E90),
    .INIT_5D(256'hCFE4665D4D63562D4ADA7E35C8AAFC7905685146937A3090DAD5754B2BCB4552),
    .INIT_5E(256'hA8CDB9C878DB119A70AF99EF88CB84D5A7868C756BCF9F36001B8EF2F7A44C0A),
    .INIT_5F(256'hB569C8AD3662FA81133C8CB81660FFA480B507F6B491059AD4FD87AAEB80B8CF),
    .INIT_60(256'hC435F53001A75DA3D2F6BF656980419A5F79CDC784E60BC1306C5B16CE5F238E),
    .INIT_61(256'h85D1CA0B8E5517ABE22F61DAF4B4EB30EA98A69F6C328071A7F436BDCCD822D9),
    .INIT_62(256'hC78153AE5C89CF623D71492FABDBC6E0CC3AD9EF605AAD203FE8BF4AC8A8AEB2),
    .INIT_63(256'h6D85A635778834B3A33297AB9EC85DC8B709FE771AFCD767FECB3A66CDBB45B7),
    .INIT_64(256'hA55716E1D58CCBA7FD7BDCAE7597846EEEDD4ACE76C7D8EF9BB0C0DECBBB3C80),
    .INIT_65(256'h0CB22FA57292A6403AA772AEFC4EFFD0CA9C469E94D4DCC639B4B0E944486FCD),
    .INIT_66(256'hB41AAF887A087967DA7C495B5732FE8FFE4E0360FA56D988C85C95CB5F8571A3),
    .INIT_67(256'hD0C8365AE01C4ACC2DBFB2A511796FCC6BA93E38BAB4B8056FCB1BE7C4266B9A),
    .INIT_68(256'hE638961DF33EBD6D90E6290320D7A479D7842CDEF7C1C414F7F5FB874E32356E),
    .INIT_69(256'hF3331050B39F5ACCED7E1AC7DFF7715B82986B28EA375D5F862E1FCF78DEBB9D),
    .INIT_6A(256'h156A95C2BCF0970529AD0298050908CAD35791C6E90E4CDC05B923B571B205AD),
    .INIT_6B(256'hDDD095C3B34479ABC582B09109B157432797D69D43F270B9FA77B5C8E329D357),
    .INIT_6C(256'h8E95B207352FDE5E600FC99B9C48424B78929C340DAACA5E1AD3715DD7194963),
    .INIT_6D(256'hAF6DF3E3A83083F470B8FD2F8B548DBF5B2E00D314AEE05CF1B4C8FCD4EF8830),
    .INIT_6E(256'hCBA1CAFDFB0D51C85132354DCC41E1A728E417F3076CED79F04E803AF5A86CF8),
    .INIT_6F(256'h5FCB07E855687B303A16F1294F600C546DD5D2057A3BDEC80419209B86F84F2A),
    .INIT_70(256'h8D9D6099853C10C90A7555E529C5C2D85EB2039A90C66E63FAF2D8FAD32A44E9),
    .INIT_71(256'h107FF473EA0F70DBA45E8EBB196E67CA4B14F6A1FBD1DE91CA72651D3F99CE3E),
    .INIT_72(256'hF8E7D2466740D065FF014F3F23D4ACF227940E6493398F111A40D14544908F70),
    .INIT_73(256'h1E0BE5669F38CD5C8244092AC1E3001168E7BE24B52E2E687ACCA1CF56734505),
    .INIT_74(256'hD23CC3913107D035E023DAB44BD9A880C1D349A62A664317EE7CFC3333789253),
    .INIT_75(256'h7DF38EA6083BD7726CA43B2D6E3EFFE6F95E5D40E7CFCC35F41DB71CC8C7150F),
    .INIT_76(256'h395782192A3A773D196A4C177BDDC9575B3020A6CEDA72ADDC66E738255B5230),
    .INIT_77(256'h1584282D15947E90F1CDACD2C95998E6244FBAC8D82829FE445EE947BE22759B),
    .INIT_78(256'h584D0C506B6E454EE3E9BEC3BEA1D16C3C4F3FB64226E27D4536E9387E40ED0E),
    .INIT_79(256'h765169771082B04544FEA062044BA32921AB3A9673852A771E9D588DC2648C79),
    .INIT_7A(256'h0B752E02372BB2070D04A27A8C3B8D3ECE48795B3AF6A0D79AC88C13F3BEDF7D),
    .INIT_7B(256'h238E53A7D86922D461C30937509D9F93A40EBB50B18DBCF04693A7E0C7972F81),
    .INIT_7C(256'hA9AE5424E22152830A2A5855B449B002D2FDAD9FDAA5D43171D727824255C86A),
    .INIT_7D(256'hA8D3900EFF72248AB4FB7389C8AA14B141ADC01989B13E0AEA2B26C2384FCA14),
    .INIT_7E(256'hBEB3D239C234E20C78783926F16A66280F51FEC568060F43B79502B79B2DBE92),
    .INIT_7F(256'h8A54EE105E01D6026E612001E81662A0603D63F5995F497E7029862346A282A1),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized5
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
    .INITP_00(256'h131E8B5C8336CCF318DAD46205EEA69513442CF0ADDE6D175DE1A8EF461A7064),
    .INITP_01(256'hEC3D2812B45B2D14CDE50F01B427EDE4405C3CA0F0297E0545A5315EEA1BCC25),
    .INITP_02(256'h5C0BB4DFA56E685DD320866E64CF5938279216406609EDB61059ECFE4CBE5CEC),
    .INITP_03(256'hA90B258D15E129F25821C863646AD887471BB7076E9081A2F5C343AEE9AFF1C2),
    .INITP_04(256'h05807F330A2D04B25ED0273A518C2A1C4ED253C266D8FB295CB1FD1ACA5D714A),
    .INITP_05(256'h22AA189CA5DC60A66FA60A8830FF51ACF2EAF69194A2386E7F73F3B051FD0705),
    .INITP_06(256'hF819EBBA71BD6622E9D339D0FF4CF42049A9D62B9B6C46FECC0C3413ED09143E),
    .INITP_07(256'h85532D514B587A6123C6130CB1123020BEBC0DC976DD64F88FEB48785CCCCADE),
    .INITP_08(256'h341E4FD977CAF538ED6C96C9A7F85FA88056B18AD9EB68603235F9471E1485CF),
    .INITP_09(256'h2E5A13B9B38B3D93A04376141548184FEA119F7A36DF08B087CC64BA0713B045),
    .INITP_0A(256'hC408FAC7C4AF21ACB599B72C13830BA4367A7E6066CE373C470B0E344B0C4B0C),
    .INITP_0B(256'h36D7945E298629CAFCE04ABB81CD19821BB9A7F95DAF3CCB1E0C8ECE6A2803C6),
    .INITP_0C(256'h97002104184A03B1F8A08B5CD95B9D6ED298665E8F7F6E4D8AFD4DCA3E82DACD),
    .INITP_0D(256'h9706F89135C696ECD97C1891D5B977498D19D4339BEA186AB12037907F9DAEEF),
    .INITP_0E(256'h4DFF7A03806F0EE591ACFF40BF56195B92439E3E2931147715178A763F237178),
    .INITP_0F(256'h945C4C0C0A6A21761BB53001F1BA7DB0395774B2F75334636488BF8314BC25A3),
    .INIT_00(256'hB33AB112F4703518CEFAAC7E5FA1B3F1CA4044C5A3BE4ED420E72D10BD726794),
    .INIT_01(256'h246DFA3244AA0FCA954F7DBE84BB46657E92FE7E02F3463FC3D94C17C5AA7C00),
    .INIT_02(256'hE131EEACB7C91AF049A4D2D345E1D267484F580C17C1F932C782FEC68C6C1CCB),
    .INIT_03(256'h5A021788045A872B7633FC46D3AFC5B582801F508AFF7C51582A3C2D77EA7F18),
    .INIT_04(256'hD6856C0CBC8C4A679E5C856C33B1177BC6537FEEAE6973FB3D5FB887AF6A5BE4),
    .INIT_05(256'h2D7AA084F7C31C2696D8D46EDAA3433708BD98BED6929835E8735C4FA19517B4),
    .INIT_06(256'h82F8ED1E8394AE976EC41EB5BED8BB232A658A0D067E6DF1C21F34ADEE8E177D),
    .INIT_07(256'h7B2C368A078F8F6DE4EA0FD41F0250B6B83B91518AA07C483343EDD82D3C4A2E),
    .INIT_08(256'h195448EE191BC68E9A7D4CDF1E34D43DAD69161DAFBBE16D5A796DE9281C0D52),
    .INIT_09(256'hAA7F627A3B4CBDC57E8A4A6B0BFC5374E5E620E3D6180FB391BA231B1BEF749F),
    .INIT_0A(256'h42CF8C355481CB5354803EC8A09F01B74D250144286530B3ADB38D080EF8C222),
    .INIT_0B(256'hF25F8AC813C7D59662F2FC1B65CCF06F6DA3B89B3BC41ECF145225DA81AC99A8),
    .INIT_0C(256'hA9270BE8507E0AE6F77CDEE2CF857A47F3155F51A49E280DA0B9BE03767D11B0),
    .INIT_0D(256'hBE5D1634DF135AE029FBA0209E5B3D875AE64056FE40AC6C9C6258901661A335),
    .INIT_0E(256'h5D835A11CE890F9D0298AE38926CD9C85137B5A3374FF6BB1FAE5B4D029EC122),
    .INIT_0F(256'h3B881DE4DCDEB6FB60A4CE5A6EF15A1E0C43BFD227C2F2DCBE6DAD3591B31873),
    .INIT_10(256'h1C0345E5B6043D1F1E47E75BE7D265BE81F2C6DF0225B33DB7937ED0D0C3867A),
    .INIT_11(256'h1ECAB94368EC0CA51E87C94556F0879D133E289475B5F1D3E1AA6380604FFEBA),
    .INIT_12(256'h565AD5AE6D29D6DDF9046697DB6B61F4D24E99F12BEC18D69778F908E85E8338),
    .INIT_13(256'h703CEB879D50062AB41BBB100739EC53C1F66C405211831D06955E005674C82E),
    .INIT_14(256'h21C500937ABD59DE0F8C589D53A21A25FCD856CC48C792BAE80EB9B83FD99DEE),
    .INIT_15(256'hFF2A228C5F68372C61BBC38978A8B0B1E5A3798C515643C2CD621CA5DD76EE61),
    .INIT_16(256'h2C91D7388CA38161FCAFAD88D5B28A2974262D8982EFF04625CDD0401466BAC5),
    .INIT_17(256'h3865BCCA3EF114379772577F4E25384E88C4E67611A3AB2CAB11239DC3EC285E),
    .INIT_18(256'h0D34C82F0DB51BFD31D935D415A63949AE0D27A3C7EE7CED45072A64CE1E91CC),
    .INIT_19(256'h3744C01A6910C6600C1CAC390515D79D1B52BE69A895C1012FDB4FB26413791B),
    .INIT_1A(256'hB646B67C5C744B6EA7A94AE2C7B39564388BBC4CA04E6CCADA031F7252A9A1C2),
    .INIT_1B(256'hBA78369929E9AF4C2662DF14396AF072D7A0460CA87322BBCE2BEC77E9574B20),
    .INIT_1C(256'h172A20EC83794DCE3A3C36CB49C06E237F6C95B80A430ABA9F4B83A870E617A9),
    .INIT_1D(256'hA1CD2021339011E0B71550525C38069057D99235A7559EC98FF903F095952FC8),
    .INIT_1E(256'h715544D5F7CA379924F6B2015E66591CFFF0C66EB50BED4EF431D037F1D04D95),
    .INIT_1F(256'hBF708EDDA6D2A42DDE60B69D5F9E92F3B5F2923D19AF223DC0DEF2341817ACB9),
    .INIT_20(256'h9E2A34D75A6AF7745768F380EB685C823035B10340374B68899A7B90598523DC),
    .INIT_21(256'h325BB267DC8180A7AD3AE22CB545F0557B2F32E245B7F24B5D6EC91301C6EF2D),
    .INIT_22(256'h9A55AC7291FE5E77C81439A7643C7999B306B0D832226DF0AF56B79D935353A0),
    .INIT_23(256'hEEE1D19EB74D53E1093836EEB4081CFF177238602BF13DA165E701393D175364),
    .INIT_24(256'hA58AD2A817DAC9970ADFCDDEDECA55EB856C23BD101E913C3CD30A9DDE34A10C),
    .INIT_25(256'h3E472C99D48B56C5924932639406FD4EFA1AE55EB39E72C5A6D0EED75D6D7335),
    .INIT_26(256'h4305156B1A94E5CD93BD6886AE4EFD6E80460D85BD8BFD0B63B87FD50210056D),
    .INIT_27(256'hF7BDE18438EAD6CD4EAE9669A90A627BE6C4C8EC5AB7797A0931B54A9C6447C8),
    .INIT_28(256'h9755EBD4210BFF1EB1794992E577E52153980D6683BA058003B2EC88B69CC30E),
    .INIT_29(256'hB1E3D5E93FCCB361A307C025F31EAD3294901CB52F44D4E097FC2452EF246824),
    .INIT_2A(256'h3B5D4C8052BFB95D018C9CD63121110B7B286A1D2F3652628F7E55D585CB3658),
    .INIT_2B(256'h702E72CA2DA19820852CE644AAAC7E6A10D40110209FF5A1D607D0213886D765),
    .INIT_2C(256'h04E337FCBC69AB1936CFA1AE65B3A5A183A44F1F9E115694CEC809C7BCB77DE7),
    .INIT_2D(256'h63C7A87D5369D4DC32892A8D66787C21338A9661E1F79D5FA20EB4EF8983319F),
    .INIT_2E(256'hC40ADE5AB8781336692A9154182C22AC39C7D65229659F32A210CAA2CB38C707),
    .INIT_2F(256'h3F487E11A5714B5EB25B7735202C0A525DD6C05C38133E0001560ECDE0471DA9),
    .INIT_30(256'h1E03ECE1D11EC7576A93FA3A3A7EF1B09C3E4B0CF1118A9939A4C0BAE1FD1652),
    .INIT_31(256'hBC80E86829DD46C0BD705BD3079DA48FAD31BBEA9E64491CFE59166A0283ACC3),
    .INIT_32(256'h665AD10BBCB2A21AF563E5A3431CEDE8A67A95056CAE6BBCFEB1777A5C165A30),
    .INIT_33(256'hC14C600E2ED6106B87E3A9618C9B1AF8CFCAC05CC20473B915087FB3AC8B6EE2),
    .INIT_34(256'h891F68029BFAAB2FE6CF04281E6063185A8C57336C64F6FF89F4B23D2425AE1E),
    .INIT_35(256'hA12D2EB6F5299DBA4C5646F84B634DF33BA3F944143398B42BB35BA7EEE81BC7),
    .INIT_36(256'hC81896C884E34A10851E494834FF6C3149ADA90859F940E8E76026EB622F3878),
    .INIT_37(256'h66F082D8597FD9F3FF2036CFAB7024F627465DAC843DED7BC52513ED59682273),
    .INIT_38(256'hF92ECC34EFB86B88B2392B13D524E1E37D872368656CD9545288133A96FF99FB),
    .INIT_39(256'h0D9EFD48F0A4902D3D935F423951CBB96C839B7D7538AD730BB04D1B263D0208),
    .INIT_3A(256'hB3FA4484B6853F46790B105C738B7383B40F1670963D2122C64843B8BC9E0E76),
    .INIT_3B(256'h45315E2FF942D8928991C99892CA0F9081D517E5FE110D10D21F3D61BA77BEFD),
    .INIT_3C(256'hFED3BE68D827D2F64A13C2CFB5527BF0124D8A26B871A3A897835AFB2B07D961),
    .INIT_3D(256'h6477223154059A6BD0E32026683C8782EBFF46F9EF320F585D8E4CA5E4FC3B1F),
    .INIT_3E(256'hD3D8336411573C8911DDEB59B9C7D22F9BAF5F1111FEE85D5CACDB5B6BC13C5C),
    .INIT_3F(256'hE9345707E16AF9505C4CEC2224D8679086CB85D48AC4F01CF5D07522CF3A92AC),
    .INIT_40(256'hC4D928C87987E0DC07F5C85242F3B473E321232A00BAC4D5E8CCB7C4E66F3D03),
    .INIT_41(256'hAACB92466F75831390F92EDCBDDE7E0802A2A368482BA05545B040DDE514965D),
    .INIT_42(256'hF01A0722C1285CCF45DFCE25FB755E5621FB838E2FD45E28EA6D778DB718A4F7),
    .INIT_43(256'h8923EDE77B45D9F8C4D3CB59CEEB269D41AB659056A79C36A765F19F4C94E938),
    .INIT_44(256'h4DAE9BB8099F20C7FC4B8F393992DB655F38C50BD0B7AF0C1559F062D94742B7),
    .INIT_45(256'hDB1531511706927CC1D1260012E565889B6C4D2E0637D9E40F78F04EC2EF3EAB),
    .INIT_46(256'h5AD9B71B4365F6E95103092AF85D732E673610A218B0026FD243EC1C394CCDD2),
    .INIT_47(256'hB7364C282657B9120594E53C5B40994CFC25E82946F771A1664E7349F9BEC0CA),
    .INIT_48(256'hB2FCEE1A4E4063066828505D5B81FF5540A005AD1818444451D8DBA71F6438F9),
    .INIT_49(256'hF56091888CBDB9D6A515557A6EDE356B2223F2F42B61D0711EAAB28FE6AF750B),
    .INIT_4A(256'h1632EFBE7182175FA2F76DBADE5970B53854B6F42DA536DB7663BBFBE2A5BFDA),
    .INIT_4B(256'h22F12533C8E560ED3E86EC2352D0B9F923D23598F015B8BA8728DEDA8C76CF9F),
    .INIT_4C(256'hF4B7271F51BFCA1217DD3B3A712C22316B5E0B24EC499002351F6F2D90742326),
    .INIT_4D(256'hA74942797769975B87DDE88F3BAA4526942EC48C62001452A9EC802C37D28F27),
    .INIT_4E(256'h12EC9294BB9C8939DD018A90F08A796C5FEB8C7A56DAF439EEA7CE95AAE60046),
    .INIT_4F(256'h66CACFB573C4F54A58C694740B9672013F997DCF458143801582A295006B1809),
    .INIT_50(256'hECD90140C396AF51C80A5B311BAA025BDE6FB41B39D9EBE981B53D41076A0685),
    .INIT_51(256'h51A29079B7B2F451378EEF25738037EA57AFB729BDA22F2CD514A949758BCF1D),
    .INIT_52(256'hCE4EEA1EECD227FD91A6AA019AA7D44C8AAF85C276E3176CEA1912E60A5944C5),
    .INIT_53(256'hEE3107DAB3F5ACE666085D47EF87C61FA9A1AC05BDC99A3BD9514C36524036C5),
    .INIT_54(256'hBFAB23C22B5DE026D7EEBBD4B0AA6987021C43A968C31A53A5279161692C4C5E),
    .INIT_55(256'hE5F738378A62D70EE76741B800590E64A78D649A5947A64D8DBA12613DA567C9),
    .INIT_56(256'h4AF8009AC5B1E309A056481394E35C5C728E9CD0A4D8F9B3864526F71F60A929),
    .INIT_57(256'hAA3C52DB3FA22C0132D1256235E1F07D749D2266E71E56ABB03B5B49C1DF475E),
    .INIT_58(256'h65A26982D813EBAB62A099D2765E333E1478B0DC90306930D462D535E64FAAAC),
    .INIT_59(256'hC60D248E4300AD40D8484183B290283EB64C831372CE2D410C62D85CF3B871F0),
    .INIT_5A(256'hBE2F5F31530A8C91DABB0419629A41CF3038A33F2E07C597FBEE029231DD3F54),
    .INIT_5B(256'hA9F233AD72F54A6BE1B92548AA83EF127F32B6814FB72D2B0F4C260853658FE3),
    .INIT_5C(256'h4F54DF05673DE44B428B3D01D3B3A7CD660CC6373BA3E6430A73C846E6714067),
    .INIT_5D(256'hE7150140EBDF1CB92F7D5F6E96D46FA8A3B7ACAA52DD6C4AE72CDF1B74D21EF9),
    .INIT_5E(256'h36C2EA9A861193FD247340D39B28A93C63F17E20D97EFC60233B4316CB18D868),
    .INIT_5F(256'hE366601D24555CB1A9014C7C1C4DFC98B130944903ADEB4CD16EFE9E2FA9D276),
    .INIT_60(256'h96E185D845BE1AF111C73B7C8394BF93310C5BC4DD9A10E0FC9E90657921F394),
    .INIT_61(256'hF72A1F9CC27DD02A80EEA85A45BE71036193114700C20B35EE8C697E28E7DB45),
    .INIT_62(256'hECCFAFD22C0840B276CAE14735FCE8C86979676E35A9D1733BA47FC5D6DFA977),
    .INIT_63(256'hBDD652CFA85DB7901A9EFBFB1A70377C49E434763346C4AD730FB1D752DD6A3F),
    .INIT_64(256'hA51804B43641D079F165D6D1404424184DB257B678F3DCEABEEE9C4E10E60DBA),
    .INIT_65(256'h1CCB29F9AF47DA44AA7C1471F821B2945ABD3A60C83D1782978D59D374F6E0A3),
    .INIT_66(256'h6DA47FF983811D78609733F16DB6887043DD5C4D19B61F4A4718B0687BC943C7),
    .INIT_67(256'h667DC61E59E58030C00A92A5265F538318D4A8BBA7EFA66D92EA4B3278AFD0B5),
    .INIT_68(256'h93001E04C604CD2F69487686F685851DA699258AF21B95C7AE4F768E7F412E80),
    .INIT_69(256'hDF740E466F28DCD12C00E1E2C1B42D5226D1B2FAE22BC988F6D3D238DE07526B),
    .INIT_6A(256'h9FD9869A3A0E99916DAFFB4C29170C5F0F8BFBF68E08081AA29FC9DE40E73B91),
    .INIT_6B(256'h6A5819D36A5002913EF44D9923B5C7FB61C6C37E3D9E2A21873B5CDEF4395256),
    .INIT_6C(256'h917300B8D1252B5409EFDAE8B0FBB061A17327150F57409F26E723AF8BD65293),
    .INIT_6D(256'h22DAEB3A3E6D1CA936B5FC42ADEE9006B4C1F2822A401CA6CE135F4AB4E6A38E),
    .INIT_6E(256'hE4FE207703DED2FAB60875CCB6B9B55B678764942CD2857729915BD183B7A25A),
    .INIT_6F(256'h8AA51B0DEAA6B2ACD43E941BB9A3280A88AE6D6796FE8EA9979A0F116B08F25D),
    .INIT_70(256'hD77533303A1D1F1480E01A5C17B14CBD550E344E4542A1AF3F8B1E09A7907F9B),
    .INIT_71(256'h7D3C6149D8815A640F9EE442EEEB28AE947A4B8C4B6393D7D5AB87DD06485706),
    .INIT_72(256'hD2A60D55AA5F4639825B12456E66CE16B3902206E2D321BA4F11841EE404D5D1),
    .INIT_73(256'h3EE468A4BB1081FE702B69B177BBFFD3E37700091AE2F43BBB1A34A68DEF561A),
    .INIT_74(256'h12B235C5EE6E4E2316B3452B4B013166BB5B8764119BC7863C815AA2521EE833),
    .INIT_75(256'h6306677FBD0B4322BD6E72AEF902A0A1977E3B9E1CCB588B1D0B2F5D4F06B1D4),
    .INIT_76(256'h10468B3A0E5BAF0EBFB4197499C312688B3877DD2DEEB412E097383D01DB7DC8),
    .INIT_77(256'h153DDF0524EA0FC31BB00265EAD65851239129C4BF12C6817FB617A6007FE118),
    .INIT_78(256'h09A317C6C341BFB3989CB39EE07A28C6FCFFC1B04038589F053F57E47C2D651D),
    .INIT_79(256'h2A0C875B4210982107B16049D835893C3DCCA6C49A0FEE8EB238B0A30D2159E7),
    .INIT_7A(256'hE74AFB6136CBD02EACCA975401098BEB353EC8C62AFAD837757EB53D3162E7A2),
    .INIT_7B(256'hFBD2D79EEB1727AC2B289E07FE079EDC2B3921F6164F0DDDAF8FBECD5D0BBDC4),
    .INIT_7C(256'h852965EDCBC82E926019C39F3E8EFC9458C7F9558AF33E2F5C7B8EAFF9BD6693),
    .INIT_7D(256'h9565CD65D94342E342568AA63D1910C270EB0C0445EB56BCD350750CB06BC116),
    .INIT_7E(256'h98317E55F152A0C960295D24A659562CDAC6B528E74D79382282A422D706B35C),
    .INIT_7F(256'h7A2291DB1112AC3003C06AD1F172227036D7A9944D68233BBDD6D937A1C34F55),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized6
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
    .INITP_00(256'hC117FAA0F82DB553D6DE4CF351B27C52C6A7F183746696F6E9A9A7C12EEB939B),
    .INITP_01(256'hF977499C72249958F4870EE69C610B1B9C1D7F9CA83988A87EB5EDD3C3CA4250),
    .INITP_02(256'h62A3F1E6F087D86C20F8F44FCB31CFCF10FEEB100CCDE55CFD4B9E18313E6341),
    .INITP_03(256'h9ED2E29D0A2796C3AE8B58D0045CFF123C4C6F2852F8FFBAB32C01BB147696D8),
    .INITP_04(256'h9F35E16AE9954993BDEA057F721F55F689F2695D0B6A6CB4F1191E4775A2A4BB),
    .INITP_05(256'hC6007EC6DFF523272D3FC4E101B0112942A85B00183ACF8DFBA174C670BC3668),
    .INITP_06(256'h3329AAC252B205223BBE06AA158EC852C9A87970FD4B8908544072C820FBE2F4),
    .INITP_07(256'hA2E31A0580A075FC018653A29B6D1D8F5F501E269F3350A329EFCAA92894E741),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h56A2D246B3595A94E0325D16F2DD3C4199ACCE9066E285ED3890524D97EB34E4),
    .INIT_01(256'h2D30E96806119AF0C0730442CF4DE989B818B5DF4D2A39BF20F21AC6770E213C),
    .INIT_02(256'h4398C847D9BA6A43DC6280783A59B8A4A32B6CBCA6A142E201F6DFDE48F7E006),
    .INIT_03(256'hF95008C76056D13461978B083DD43FC9B05CB26D4799A0898957E2DF0F932BC4),
    .INIT_04(256'h20A4907A9EEFD756E588B3E97F55B3199244D8D51B1241AAC46FD35FD1BD5557),
    .INIT_05(256'hEB1732679326799A831E33619816FED229AA0D8B1F19B29D06E1538A7881FA41),
    .INIT_06(256'hC9192F05A595396A1631FB76F6104075A30357F1FA20272FA441855354718B60),
    .INIT_07(256'h29D17A840BC1005D524B368692D787923F32E1DCBE0898394F8A69C8E977C02F),
    .INIT_08(256'h0D68C6B44A029A8C3351F8582F34A89EDBAFE0AE1AA040DCC9518BDE31324C6F),
    .INIT_09(256'h5383ADD76680D509D448753D2D8F2347B20682360B6DB44EA402745502FAEEFF),
    .INIT_0A(256'h1C4EA3BEC251AB250AC72E3EEAD2E6030B99ADBF8521E1853779A8309D428ADF),
    .INIT_0B(256'hCA27F3B0A26A323D5CFCA0A8B8DCEC7A08E5426B61D48674D7B1459255F21F22),
    .INIT_0C(256'hBA1D0F31FF303AA1377AF46E8BA423C90D8E32533EBF9A779D4F5162DA7FC39B),
    .INIT_0D(256'h975202C98CAD314A078B19EC0203F2C25F0DF1CCA80889B4867C27F13D3CC3A1),
    .INIT_0E(256'h86803D74B41142BA768D576135BF8AB5234B1ED80D313F479691622323F6E346),
    .INIT_0F(256'h3BFCF691646FB0D3E03165549FF05F6A1198921E56070061ADE4B7FE533F4B95),
    .INIT_10(256'h3E2C383107E4A7C286DB5578E556448CC77B7A495FF223F772A76D6A69CA58F3),
    .INIT_11(256'h79DD50B09946930CC6843AFFBF6A8506A7C47ECFD2BABF2E526B0E0434D64DFC),
    .INIT_12(256'hB070F26F2636144DF215BACDCD19E05CE9749A937301CD27BD2DCCEF5D398EF2),
    .INIT_13(256'h33CFD7F69AAE815F608D63E4B3C6D00299FAA10673E6DBE2527418CC39C93425),
    .INIT_14(256'hB0FBEF60E3A4082B31A589AAB86DED7BBCF47B498E35B606E7B99027F3F216FA),
    .INIT_15(256'hD77E7AE5B9DBFB7C24296FD77B57312A2A251FCA9EBFA78F74CA5D40683EE965),
    .INIT_16(256'h5DBC3735CD1458EBBB2B37CBA07F631652F8977C041AC0E31CEF25CF4711BBE6),
    .INIT_17(256'hFB703C7962A50EB4E8DDD8EFFC1FA3EFDFF5AA5906D4FD6F04CBC0CC9CF66B98),
    .INIT_18(256'h6C0A3F9FD466FF5F46E8C9BC42596DFFFBAE62794857AEFA64B7AE4D1757F89E),
    .INIT_19(256'h6C79BDDC0E092131F040519113A6A653BC91A81F2C67FF57C58608A007AD8391),
    .INIT_1A(256'h60A392B1DE30135A09D5347AD42B3C1D1B2C8A5CCEDEB43A2DCB9869EB0779E9),
    .INIT_1B(256'h4E714B91F921C3724F1849460A568EB63506CBA762976B79B25D7D63328FCADF),
    .INIT_1C(256'hC8442B17C0D3EB998495959D493E5D4D2C8563D0107B45B248F12B22A55F7705),
    .INIT_1D(256'hB940D0548003F0382679FE2908C75AC4E4DCC8DC9F1A7747434840A726BF40C6),
    .INIT_1E(256'hB4222D3641C9C2344A0E5329C4A5D7F1CABC341D46BE9EDD5B6C050308D6922B),
    .INIT_1F(256'h8B2EBA8390DF6D954B11CCC95FAD70BD46E31505DF78FF54C013BA92850E6765),
    .INIT_20(256'hFBA34623A6A9307BED9655230825E69083AC5D3CD0F34740CB9570E90688EE11),
    .INIT_21(256'hB4456CCA5FADEF220B2548F2D9E0BF1E2F61EFA29A534C4466433A9D32D3DC55),
    .INIT_22(256'h6A365C630596AF608F758AB56EEDB43BE8494FF5FC05851A0EC6CE1B8E4F1883),
    .INIT_23(256'h4881CF5D952ECC52D087BF6F5B4C2AE9800D374C769D8775256A9ED539E0CE70),
    .INIT_24(256'hDFEB6EEE210D89EA5A9C2E0A3129B175339A86FFB9EC8CE4259E60032B8F8650),
    .INIT_25(256'hB995A01B3DFA977016F5E2ED275F85D3F57EFBD28CE3AA6ECBE1334BC99425D0),
    .INIT_26(256'hD20D5BEACC7D76BF8E82D5104E0E503C9AB7E6683B23AA5FBEBEABB444C90187),
    .INIT_27(256'h799D9EBC7A0E889DC8F1ADA971CFAA3B45D66131CA14BE4B4F4DB5321AA93F3A),
    .INIT_28(256'h0E91DF1528D068737332BAF6A41F3C1874D98B7D2E564CE79B7FFC01FE88CC68),
    .INIT_29(256'hAF98C8562B0672AD425A80E1A459F48C2B09D663837FB0BAB62BA7B9684436D3),
    .INIT_2A(256'hE60F0D1A19D3C41864EACBC4BF9EA26EDF430164F80A142CC6D28443EBDD2D1D),
    .INIT_2B(256'h8E1DF31E6380818DFE59ADE696358502D6384713382E2C62B8DB3A2907730E3F),
    .INIT_2C(256'h069B602F5137363BA22E726E8FBF23C5BEE482CE70C095C86BBDD8FC0AFC764C),
    .INIT_2D(256'h4436D9F8817E88FDDA41B34598F2340AA9127924EAB1B37B7BAF8728B6ACF306),
    .INIT_2E(256'hD998725251637BD4D0C84DF52D387317065922081A517DBE1EA87779FBC4057C),
    .INIT_2F(256'h788B5C4F8B3CC3058E702EE2B89CBE4B016033A2F5AED004FA4095A859CEB21A),
    .INIT_30(256'h6FCBB5EE7B1B34731C6C2AFFCEAB3944219545AF03D0BD84765C220950275200),
    .INIT_31(256'h2B6E8EC502252CC5C0F73F9142799215389CDB6629EE85F6855C7E566016ADB6),
    .INIT_32(256'hA4BE15580659516829B8AFF622F64E15048BD803ABE27C51F7D24E235036CAD9),
    .INIT_33(256'h4BDE25F46A1A354A702F0881F73FAB2A30AED0AF9670F1C1914A715C60E67852),
    .INIT_34(256'h4E89B53700D0A822897671BE875BD877CF427516BD56054AD40899C74F91AC70),
    .INIT_35(256'h799F368903C7FA5C1E041A84EC6EC5B174E8C6C695D209570E6EA0F6AC5BAC1B),
    .INIT_36(256'h859AC339D24AA8ADD1F18FFEACE4E71CFDA14CB0F5D7CAEB017C276283DD4F01),
    .INIT_37(256'hB0B0C8ACE90C975599FA7737B8287B9A7E8E6489319A5234CE4C0C594B0E123D),
    .INIT_38(256'h24C541FE41C1227E909ACE799227262448E3E551D08528037C253B35CF284BAC),
    .INIT_39(256'hBE148E77B8190E37FEB0D4946E77621645CA64DF841A2E40C9AB297D2721B6D8),
    .INIT_3A(256'hEE9D2CDED41FC1DDC544E763305653A8CF04A747DED16DD0BCDE2CE3FDBCBEBE),
    .INIT_3B(256'h073730D3E2D4AE40B5E86CD003CDF645ACB28CC938E8BB8A4F51A2D9770428EA),
    .INIT_3C(256'hE023EFE3111969D0E02A606B5EF27F4D82B433D554F8DE0A2E792081D576E17E),
    .INIT_3D(256'h6069953BC8D5C1FC52DD64BDBFF622B4CA1C97896AA43AB76965CF128DBA9401),
    .INIT_3E(256'h02AD5848D369689D59C97AE061EAF1ED19856CB9536069F53BA590818EF2DCD1),
    .INIT_3F(256'hE2752D636256B741D7BF6111F3E304A6E9C3973375B2B9EF377310970E5F4A08),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized7
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
    .INITP_00(256'h536C65492B21E7A6BB9B31340D286ABBF0D0994B573141CEE14281625CA39D40),
    .INITP_01(256'h65D81C01B39B33C2D0FC9A0EAEE4DA55A6CD451844227CBBF2AE55610403CB20),
    .INITP_02(256'hB2CA220E84EFFC53F1AD13921B6C387A3C58161711BC39B2EB83EDF4AFCBDC51),
    .INITP_03(256'h13A10DF641557CEBAD61240769188576FF7219EB1264F7E9AC49060F25ACFA40),
    .INITP_04(256'hBE408E49AA8AA6CF13F2CF3FCECF30A7D9355F3DE3B3C0010BBE8BF18F890DD6),
    .INITP_05(256'hD3285A9515CE64643686FC9A7E2690E5A731F6DE9AF9B750B06264518E228F12),
    .INITP_06(256'hCA9A149DC312E4F860F5580613F81EB2C2854DB66300D413337F23956C8314C9),
    .INITP_07(256'h86FB7BD07BA04AB9021C290716A56024D54ABFA214C3558F27606FEB60BD7540),
    .INITP_08(256'hB0394F792B1233B0BE6A485F6B8FC7C6C3A230DA388CB8923CC0304B879DD4C8),
    .INITP_09(256'h550E9A20D9364F8069A4CE27109338ADE68AB1F991F0FD871D58352D862DC3E1),
    .INITP_0A(256'h3173F4FD3A3DE40A9DC622A68BAF0365C7881C62AB3EA1A96D874D9BBB14E8E5),
    .INITP_0B(256'hDBCA7B9D221941A263B49C8C0208A201929A3EB3C4E0F8F3D3A742E4580C03E8),
    .INITP_0C(256'h9E52E5233727793B8E3D44C9EA174FB276AFB6B3EECEFAB81EAF22CB5D84F074),
    .INITP_0D(256'h648F664E8C3038F2A97AD648AA87F50697BFC33A6A569AACC7A2003689D68434),
    .INITP_0E(256'hA4886725C24828A7ED936F25089F14430FB6BC58A0B9F4A406BEF5E3B6FF161D),
    .INITP_0F(256'hF481CB651BDF3EC76981DD60FA2D46633ABE1F4D9B73328E32AF5B8BE16F3C57),
    .INIT_00(256'h37CB2D3125282C359DAEA0842E2AA6F688EB9CFD2498011CE020D7EE789E0A97),
    .INIT_01(256'hB055DAB2C95ACD3D0E7B1AFE8FC570B8E09CA064D4371EA590F92EF107FC54D6),
    .INIT_02(256'h8FF863B14BEE9C950D4262CDCEBFFCA812ACAE9373DB252EB338C69D127560AD),
    .INIT_03(256'h53C094C35D117EA4CBBEF2F163D938C0387D773AB8BD8C4210B6E76E224C52E0),
    .INIT_04(256'h91DCB7EFDF80493DDB9C291B53390D52098BEB34179C88FBA2F7291B0618E6B7),
    .INIT_05(256'h4CD1B531C04B6A9B6822CCCD2787965B5F4FBAAEDF0E81BBDE49BC499490CC9C),
    .INIT_06(256'hAAA78960675BE4E00C565CD2B785345D4FF49B660621056EDE19C51D5F40C0AA),
    .INIT_07(256'h4CD2F0A21CEB6F9C5028F0EF1B31EF61E12A82B1C29917B4ED3A356EFDD4BE9C),
    .INIT_08(256'h4F9A1DD0E3A958C3281D41720DF97431BD0DE66ADB56230CC425CC3D8900ED70),
    .INIT_09(256'hC66A64DC103139A3C174832CB2074E4877934886FC54CE470EE290685B365606),
    .INIT_0A(256'h5610C32BBD4484B2FB6432D71E7CB883599601EF388223395563330262F62851),
    .INIT_0B(256'hA0302ECC81EC69A9E3B895FE4C65B7D3746FB61A22B604495EF2386B1595C9C0),
    .INIT_0C(256'hA7AC091DCA1AFC4C2E4095E8C42B9DB6368D035D4572E98F81ECF9162DADB918),
    .INIT_0D(256'hF8DF3A4F62930CC1EBCAEB8F03068F6BD9539FCC86B0D649F50F57F2D3247FED),
    .INIT_0E(256'hB743A4A305415AA74EA74E6E08F0F1DFF492F22D9E9538322D86B4CBE93BA913),
    .INIT_0F(256'h15D8A5C4DB221CC2886FFDF9819F12E8A00C37DFE1EDD13414E2E50DF0EE23D0),
    .INIT_10(256'hC65D5E913EED6CA67001F1D611FFD6562053C73F23B946F4B146B05A7A3A4570),
    .INIT_11(256'h58B37FBB4A780F8E829F3DEAED897F23C48FB9D0F00714F94554EF73ACDB655B),
    .INIT_12(256'h278CBEA64DABDD722452499D8C606134D6DE268BE7A9AC8B0830C65173ABCA4E),
    .INIT_13(256'h0607C69C82BEB48AC0919572888EF4DCE56E5F9FC2E6BC4DF0537F8725519323),
    .INIT_14(256'h1DB2C313BBE08F7EEE286158B645A73EDD898294EDA27487422FC853D51B6C8E),
    .INIT_15(256'h92CCE5A3E522BE618C98D11981D6D1512A904191A17EEB7D7E8E5D3AC39BF970),
    .INIT_16(256'hE9B9A0A705A55F71AB85091CDB1990BD27A07145884377A312D13DAEB3FAE948),
    .INIT_17(256'h274634944E147D5D2B2B24738B39B25F14B01F3721726BA6F12849FF8886213A),
    .INIT_18(256'hF0E6424C7D3F2B334BA54217704F8CCC85B5445C637D2BE5023D8DFF905F07AF),
    .INIT_19(256'h67202F2C2CE2A7F689DF754982CBD60998C8658EA0F066936DF177C74D279B51),
    .INIT_1A(256'h393687A849EB18E2D08CBC001AA4FB816F62AB529CF0725B61A5F5EB07D1964A),
    .INIT_1B(256'hC72E4976A408F09939B3A1D255A0731DC757A00927BE5F1AF083DA68D52DB129),
    .INIT_1C(256'hB980303BF44E60660A1669C69EAA1F87DD5563FBEBFD9E3226C52147D504D911),
    .INIT_1D(256'h8B5AAE98E24F45060B83E5E56C1694B7CF40B08E63845E2029C349839463E9B8),
    .INIT_1E(256'h3919844FB6C57B46D44943DB02F32280BE1FB513A9BAB534CC8260911DB3F2E2),
    .INIT_1F(256'hB5F93ADEC8BC4C765B9CA827D8484C8CB9D51BE59A1AAD292C3852A209CFFB14),
    .INIT_20(256'h2FE6180D665B95CDEC6C2C850307017FB45653B91E2DA4FDF057D3168A5316C4),
    .INIT_21(256'h9B4604B240E0C67D84D09C5F27835291E4C67404B80FAE524F95DE2254238088),
    .INIT_22(256'h5C9FDEC2FED08A000075089F7472C6ADDAB543D066F22CAD0A192AEB9A13D97C),
    .INIT_23(256'hC811FF60FEEC91ED50B4404A11D451FA815EB1948BFD223311C253C2AA5FCDCF),
    .INIT_24(256'h650E9D0328A18E57EB9898B8B72226B94602305727729FB2FDF065D91232DA05),
    .INIT_25(256'h3168B6089F0009E0273B1495BEE0803B47C58208BFAB2849F4C4EF56D5145F61),
    .INIT_26(256'h99FD5BA53AEBFAB05FE7A5E7CBBED58E25F05DDAA624180BFFFF58B5BCE026E5),
    .INIT_27(256'h27EF7CD951545B8DD56800EE3692A839E966E9F4DC09C052EFAC7F52F0141F7A),
    .INIT_28(256'h08AF0AD0D0DC5F37A8B4503AA57ED0FB52F7FA42FD8BA5C95584F34E745659C1),
    .INIT_29(256'h532593AEBDC08519D28AF1110F7E35ABEA8BF1DDE72F21A8800D49EB650C6555),
    .INIT_2A(256'h2B7AC0924145CC2B32D43D5B75AD5A9E8E30AFBB7B6CFB3D1E1585C8029F5D2C),
    .INIT_2B(256'h4010E6D5BDAE959A4B82C6E8C864B52DE36B99337FD2B8C131A4CC61E5133151),
    .INIT_2C(256'hAE1E71DF18E12357F3BCB859674F03741FF6181735033B1C932A2A09C0728C56),
    .INIT_2D(256'h4A928025D0B96EA0D42C54E46A6EA756B49E45C94E507DFF6682C6E868B3DCFD),
    .INIT_2E(256'h60E0CC5E8FD07E10391D51DCDD7DBE83567FEDA0652170E19658B27C4CBD1373),
    .INIT_2F(256'hB1EB9D5DC368159DDE15547E972978A29733F9D409A29F97E183CB3379B44D3B),
    .INIT_30(256'h3FAF8DB47E7458C136BB3E99870D6B4B862AFA2E65B44E182573601D21FE655F),
    .INIT_31(256'hDD8B13E41BC71426EBC98842B2DB874A40D1718E9F681D02556FF701BB852532),
    .INIT_32(256'hBB40671C70599DF163616D76F3395EAE39D51B6B596B6D8A9F861D9BBDF6D191),
    .INIT_33(256'h99B6218E4B7FA4463920C102B0F794D17129D06698CA7245988069226893ADEC),
    .INIT_34(256'hBCCEA6D9173683FF24A4F275942F7EA3B3EBB0DF4164CF09E93FF9D8851BE72A),
    .INIT_35(256'hC0F46C9EDD061BE6292CC0867241FE628077EB61FBE04A2EA1D01EE3EA97B2DA),
    .INIT_36(256'h814B5BAB3DF763406235B1060D3FDA18CF177F58CCFCF4EF13F89DB03F350AB9),
    .INIT_37(256'h662CC135B42D24BB7D41D97EEC087CBC2EA746B422F150C9B087B73E58589162),
    .INIT_38(256'hFCE14E9744007CA6C815874EDCD90B206F5C464C5E44BDFAA032BF6712A1692C),
    .INIT_39(256'h741C149ACA94A1B2BC13BC71BC2A591BB076D47A3E8DB2E6D86592E1EE9388FB),
    .INIT_3A(256'h6F4E72B102ED4FAA88D103E5EE88BB846BD996CF67BA910B8BE226EB132FF719),
    .INIT_3B(256'hF3CD4FAC166B6AEDBA06315DFB75F77ABDE1BC1530052FB5E129270F1085F162),
    .INIT_3C(256'h63B3CD3B821C97ED7CF94E8FE9E9B8B31BDC742770D34A35B1C21F7CF8FFE03B),
    .INIT_3D(256'h1A9D5FD5420176C8CE6E75D9612722C5AD4BAD7C7CB16609999AAF165E13E1FC),
    .INIT_3E(256'hA9807177283632DBBBD7E4877354CC0BBA0E0224DD4E370C61253C775BB5DE41),
    .INIT_3F(256'h8D25668F2A1FB41C62E26E2D8163BB7855F2802B0A7EE27B340BE57A5C9D165C),
    .INIT_40(256'h49A03154343773A7B812C73BE829B542A5BF043914E930B01EB22B809CA6F882),
    .INIT_41(256'h817D5528DC88020A67B35B7F9A741D34AFAD3BF58E230EE5090C1C8AE7582EED),
    .INIT_42(256'h0863AB128DA10124D1FCC2D17C19341907B162400134324767E73EA15B6325B2),
    .INIT_43(256'hF45C468860DF8E6280AD09A059661F7451E13B8682B4323502D635044F7D9097),
    .INIT_44(256'hE561DA74DFED0B74179FB9B91D0DAF61EB2B1C5630A34C46C58AF8FF50043108),
    .INIT_45(256'hD5A99E4682A6BD8B0B9CD7084CD399005572700E2CD43DA035E4023F9EA86807),
    .INIT_46(256'h63E7B4938B2E15889DAF755EF8F87ABACAB78F33CA588E2768B8D19827962B8D),
    .INIT_47(256'hBB0B29DEF22B2E6E996D19A14245645C9F2D5F64A6EA59E2B8DCAFFC829BE62E),
    .INIT_48(256'h295DB219775A2B046612A14DD842A588BA18B99CD8C815177076716613F146FB),
    .INIT_49(256'hC77AF91A0A1D0A896353E25DEF18C799008FE0CBE4C30F1A0EE6E0109343EB39),
    .INIT_4A(256'hAF5E29DB497404559831FF842FA6676CC6D82E6357BCFD015B67CA501D5DB939),
    .INIT_4B(256'hBF8B52FE448C16D1E11368EEE5EFAC6FE52D01AE8EEB9B5F8CEE61E65B8F1917),
    .INIT_4C(256'hCE43AA885835C4C77896526EAA5B91AAB4DB742419ACF556B957B0A6E03E8918),
    .INIT_4D(256'h5151EF8F629AA9CE8B5E62A0CD6F7C833035BF2D6AE32D77134A21F7DD206578),
    .INIT_4E(256'hB7256DCB17A33D90FB5752E203965BEE519CB06DD5D8D008E1A14019F06E606E),
    .INIT_4F(256'hACC41D3AA6F2990233427EBE83F1A73E23427DE22D7B5740950E038F959559F4),
    .INIT_50(256'h75248E2777538B885D870617D39A06950188A3EC74B6D9A12905A4507EC5EB32),
    .INIT_51(256'h2F69E3A6D8ECD1F9DFC6968BBF23D4B2560FB0A83DEED8F5159DF2FCC17E496B),
    .INIT_52(256'h37D33284B3D23FCAF0D80CF139A5C447C99486A56B07A5901720EAEEA98226D0),
    .INIT_53(256'h2F573A7CECADB787FAFFAD3647D2F1F8E511EF7515127F8F4D4A85DAE17628DF),
    .INIT_54(256'h667DF1C5B98CE0DEBA039FCC452EB28F47ED987CCE796436E5C1C2A121DCD20F),
    .INIT_55(256'hB1798AB55370134A750EE1FB20C63C46BAB7A52FA3A7CC3C0813874AF06DF849),
    .INIT_56(256'h01AF569129C87BBB6DA634F38A65395756FB264012529F1FDD895053712C8E3B),
    .INIT_57(256'hC3FC65E3E75E6C2AE32F4B0D9DCD07801ECEBC5C46A2EDD8237662AFFD7EE7AE),
    .INIT_58(256'h6A975B60866B757600E194E94A5A5B002388C5F95663AA6A0C483072CC8088FB),
    .INIT_59(256'h71DE0836CE0F89EFA0D9F53209B0C987F322C819E354FF720911DC72DDD53C4E),
    .INIT_5A(256'hE86A18F4CBFCF72DD03871DCBD401DACE0A6055190566C05E2E737D26EE75722),
    .INIT_5B(256'hB936CD26538438BEDDC37E9338FC491C9FBB62D3D1E0137ED8550E5AEFE501F8),
    .INIT_5C(256'h25680C79DA2B7F99A91CC0A91B72CEA772E268058FAE64183DA83E09B22C4128),
    .INIT_5D(256'hF93B9CDCC9DCCABE372A0AEE295EC00D4B9254A3ED9F69819AD1EA63ECD9266C),
    .INIT_5E(256'h2AE64653A53D84A2507C30DAEC2B1624430B5F2A2750BEB4BCFB8A743BB010C0),
    .INIT_5F(256'h000B75749F5A595DD70204ED9A5992EDF6EDD6A1075CBAC49C3819A5C54FEA12),
    .INIT_60(256'hF55C38AE463DA3FD43C3C08302E97A735D1F32ACED3591753782C78FAF398084),
    .INIT_61(256'h9F492542F8E57A9631BAF5DC5CC6A34768166BC49D8F52B587D2BD2EF92F6ED5),
    .INIT_62(256'hDA7014C7B56F92A63FE2F83EF408AB6010C5BE26FEB99E83BDB1731B508392C5),
    .INIT_63(256'hE98FEDE0075BF6476B5A9B30A67FDB26112093EB5D2DF9137441899875B21DD0),
    .INIT_64(256'h82761DA319F4AE50079A483A439ECB64548F8CA83E073EAC8749AEB776F1DC43),
    .INIT_65(256'h8E3E63289B58BE761E53ACF5815307B365D5768BF78172F22B85ECAA44DE5611),
    .INIT_66(256'h53CACB498A6268A3C89B55CA7F74D2E1D4A93BFAAA827CEE5E3B5045AA097CCB),
    .INIT_67(256'h087CD95176A2439DE0CE531591AF7EE77E59544F836B31F00D2C81938E21162E),
    .INIT_68(256'h2A673E2A83780BCB2C42AF88B1179D82C4B9F3E1347AF5045A5073D877007AAE),
    .INIT_69(256'h30C71CD5ED62A2ACF99E23F3FE94245EF78CC83D548DA8CDC9CDF4F32FF23AC4),
    .INIT_6A(256'hBC6D2D101DE4FEDDC861F566EED5BA114AC69853A7022F41A5D64FC91F4F83AC),
    .INIT_6B(256'h4D04F0E425ED4891D945AC00C833984D935D0A633F86A2C67F8B0EA9426BDAD9),
    .INIT_6C(256'hA8CBD8F3CA1FECCF4DCE452C3F608345D01A8C92D26CA6B0543C4FA7EC9F8333),
    .INIT_6D(256'h243AAD11C45B01F3A5666B1B1F94CA8A63A0A75AF3BE0F93DA63BC9D43F7B723),
    .INIT_6E(256'h425C0368031563F07954D5D71E27B2E28B3116A448CF5BE14AE5A81470D71861),
    .INIT_6F(256'hE6A3A53A344F8FAA241BD2C0F1B1DC32A5D66371A9982A34847BDADBF8A3F9C1),
    .INIT_70(256'h4B9CECDB69EF1BC821C172605977BAA294E6BB4D706CAF2BB6B9B187B15F85C6),
    .INIT_71(256'hBC176DE97ED32BD65F32831030D8021796DE7B8784E237C097385D11C90AA568),
    .INIT_72(256'hB1EEBA0B620C2E9A9806A4D950BCEC08B66F1356A044C2F43119CD6603BBE122),
    .INIT_73(256'h1F4E7B1135C6A8B3DCA58DDAFFABBF5B3F3F3B9FBDEA12362922A63FB12A7078),
    .INIT_74(256'h37AFB6FE5EDBBAE84AFBBA9A0EBAA71B9A5A86A6631FD06C5E9304A53DC11325),
    .INIT_75(256'h7C81E20A059DB15284CFA02AAE2C601B859B6CBF584BD899DA3B596BA6EF7B33),
    .INIT_76(256'hA5A103596B0B53737438CBFE247098DC393B849BCE6E91BB66A31251E47457C2),
    .INIT_77(256'h399B4AE9549DA09DB6789C74B418D83B57ADB61E5996C9A55202794041615DAA),
    .INIT_78(256'h6D63B61B827DD4A33D80F91AD2B9F4934445DB20191B4F8D7476C962906F80A8),
    .INIT_79(256'hB9AC1F6A95C3BA869C754E1A30141CDD685CABEC7C503E63C37EC2207A68F672),
    .INIT_7A(256'h26AC5F2C23DC0056DBBB75FF7E7141FF95DF01024DD6DCC5C65D244AE5BBF6D1),
    .INIT_7B(256'hE9FDE2F7A5ACBDC06A23E0D305E0BC54667EB207C0B4DC42B684447D2EA91B45),
    .INIT_7C(256'hB6F4C1B1896B3018B5131DA45073F23BB984F9FAA277E3E447CC330B9A8DD1C1),
    .INIT_7D(256'hEC77D1D96AE67643BA3E8F08D96F2284FC1FDA6FFFAB26BCAC1F8643DC08F3C7),
    .INIT_7E(256'h023A246A99B7158421A5AA514E0864AE6F8416E482DE78A5F3EE9848293A0EBD),
    .INIT_7F(256'hFE113C044B0E0787B38E20751D18649714540B31EEFA73DA96F3F4B9EDF0E1DD),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized8
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
    .INITP_00(256'h2F84EE9DD08228C1B82F50524678FEBE7FF78E929C8BDF62E5F365BDF1959250),
    .INITP_01(256'hF884256C7853EA13FBC9B78C0E02A8C3A9E71292556E1A099C39E7E95EC9A453),
    .INITP_02(256'hFA8B589B9541CB320353CC922493ADB3341CAE976CE0BFB7C6BD9C0477CE3DF9),
    .INITP_03(256'h93BE210764BDEA721733A6023B4C6B9AC087BF3A70D09437E0BB47AF54E58C41),
    .INITP_04(256'h81FA3C304C14912D2F208E0C4449987501D988272CE61C179F41E0B6184F5D43),
    .INITP_05(256'hCF57D700D02FF6DA4F9A312215DAEDA51E0CD4834856A84C8A9E7D92248A843E),
    .INITP_06(256'h7FC6CEAE2CE23A3F831AF05F59B4AC5A6A5DB4E18011643CBEB6375583EC9FE8),
    .INITP_07(256'h1EE4AFBEF2CB4340EF2CA74F6C50258204C04D29F4582F2FD1989D5A18E7E7FE),
    .INITP_08(256'h87422620D202471EED3FEC089F45BA0F12A4F963A47AD3BE60718F23B5A0BBE4),
    .INITP_09(256'h6B718246C12219A0EC7D910FD726D78A3EBE4C03614E9C9FFF1255D34B314E0E),
    .INITP_0A(256'h050B4EC0E4965F6452912DEA4A2FCD9D0E2497F96EBB76E6A3302561F09145C4),
    .INITP_0B(256'h4B0A345455303936F5CCD53A5C079A50C6BD9B9853C773EB0877AC09F413647E),
    .INITP_0C(256'hCBCCBC8DE5C7FC2E2EE145D10B15B1C70C052A43766A483C3BB3896965600316),
    .INITP_0D(256'h3864F4BAFF48629B80D8BBC6C38BAF6DF2E42D1DDE2279FEAE4F89D61DB1F4E6),
    .INITP_0E(256'h8480E910B005939A397E6C3B83C1F59F30ED7B02D7F971DB399AAD0234AAF3BB),
    .INITP_0F(256'hB3E4864B2B0C2E688F8DF0BE46A4E23BCA7A96A33586ABA837105999D14E44B0),
    .INIT_00(256'h7D96BF7CC89F31563F9A67981F7B603F47286822E7D0D597EB390748C5A215BB),
    .INIT_01(256'h54AF482462E0BC2B9F08B9E437371AC612A8259B29BB18D141FF10FDCFF34CF7),
    .INIT_02(256'hE330FFD7E50341856D48856C7A8E53042ECAA4D462B45AC2D69D7CD07DBC5761),
    .INIT_03(256'hDAA3253D249E3F67F707D4647A7F33CA2CFD7D4E898BF3FFA6BC2D6BFC4C1EF2),
    .INIT_04(256'hFD7E2AEDD27B6C6CB94C1BA438979AFBA77D894662BD2F5122CE8058F1EBEF0E),
    .INIT_05(256'h9D9505B363004D1DB3C832F58A65F4D6AB47031038994617985798D1A6B50767),
    .INIT_06(256'h2014B814A3ABE5D9026A9736B57BE75EBBB12ED44857097B03DF21AE0F9A825A),
    .INIT_07(256'h905C2E5405974D3600FFDD00746EB2890A382D9B993B764153E5641985A8D2FA),
    .INIT_08(256'h715F5D95B5BAEC5E0329695B5B335E95F0EFDEFDFE31E3D72A00F200DFD09A37),
    .INIT_09(256'h93E77179CB23FB13F98CAC4870665C80970EDC651300E5F2611A6257F572B969),
    .INIT_0A(256'h1B6A8235D31A17CA6E2ECCBD128265A2862666F7FDC0496B13EA1555354A793B),
    .INIT_0B(256'hA4BAE3543B0F718CCF3E6C404530079F0E80F0FF666008258079F881ABFB4B81),
    .INIT_0C(256'h3579BBD91D332D97ED6E143B949750F2948596B4B901931D81121D0BD356EB76),
    .INIT_0D(256'hFEF6237AD3C4E818845D8E7A5DBF31C6634D02D5C57B3D85555F0745C9289C60),
    .INIT_0E(256'h664DE6E929C3289E52FE4ABCDE59B27E1E3251522194EC468140C97D24DC7A79),
    .INIT_0F(256'h8CCA9E21059BA6DEC02CCCE766854B510A2747E8F4A16F0DB8D9BD5D046D09AF),
    .INIT_10(256'hE1731EFE3680E1B0A64C41960995D084C523DD95A1282EC0E8FB499B6F49EDE9),
    .INIT_11(256'h5B69D3D92E00B95BC57536429A37285B6391E46EB2FD2A9637EA6BB82DD73413),
    .INIT_12(256'h494C4EAD39795B3290B9E8A3DFAF4DC2EBB9243E5A753D144E92851E64D9B878),
    .INIT_13(256'h5EA36622EC9C6745CEE67C16DDB6EC70782E4E242407CF62A46C4D0AAE1A7B0A),
    .INIT_14(256'h545CB38CB62E919D1841BD337394547C9DA72D462F0142AFC044C682524BB996),
    .INIT_15(256'h24BB92F9B5A10685E9DE4DC8B0D8BCC508C2474322238C6539F0D42916531CFE),
    .INIT_16(256'hE5721432D9B1F5D0202AA0A87BA995A30A523B5D5DB9F3EC103BA2C4946C440C),
    .INIT_17(256'hFB3144346452D2D85DCD8E7E07E7BFAFA5E8D75CD906C0E2C462875E46F95789),
    .INIT_18(256'hF06D5362A251A14FB91E471395E728E70434349C67A764FB299EC4A5068582AC),
    .INIT_19(256'h5D00B04F0574817ED5EA689DDBB038891521772130CA1146C3C7287B892332FE),
    .INIT_1A(256'h405A62C83DAFBC04991698FD88150B65D2545B4323C6D4578AD432072D949A9E),
    .INIT_1B(256'h3D9AEDD7994AB25C8FB5943067AC8121DA2321EFE38751554A9E9B79E9CE4BD8),
    .INIT_1C(256'h2FF3A5616B36D9750819398DE755401BC10E0DDFA946F3B4549A408D2D3D6A06),
    .INIT_1D(256'h9E148F9232BAF8E50E92441D4AE1CF9ACC126428F883F496B732B05F357F786A),
    .INIT_1E(256'hCE8D476A95C495EA7DE7B2559A2039E988D5B14D677BA60165508F6407CAE181),
    .INIT_1F(256'hDA14C09B82D3A270C139E0EFE813314DFB01481EDE497DA5F2B5429E9E3D5A59),
    .INIT_20(256'h9AF3184B55E784B8441ED142897D3196C447C4F6CACBFFF0D0BD434695E8E2B8),
    .INIT_21(256'hCE1FABEEABB8BDF41B20AC14BC30A1EA4B09D6F67D726FB5B19B009B31E1A485),
    .INIT_22(256'hF50F58FE939310C9A3A2C625E8C2771D185342CD75731118978400D8358E0E42),
    .INIT_23(256'h415970906196EB5E1D1AC7BDCD4AC01ACCD8CDBF1C42683929288C493D94D946),
    .INIT_24(256'hCB7EABA3A7A0387C6A47CABED547E14EF69145DB88CCC41B06FDE9C48309DC36),
    .INIT_25(256'hFD92A7061F820DB3D40D4EEA14B5B5D0CE9105E90BF3651034927B0C0B93B875),
    .INIT_26(256'h21C49009D352BF896517B46E8F2778C462BF0B749F6035954A3E12E735EEED42),
    .INIT_27(256'hB8DFFF8139ECF1F0E2260A13D85E10ECAEA3E159334049D8E39CD0FCF4E4946B),
    .INIT_28(256'h832D0906F56E952662CBFE0CCEDF3BC7814F0D4EE8392C70C8AF0C1B51EC030A),
    .INIT_29(256'hE3B3C7907198B640D1D7CC7545EFA8DA5BA1BB3C257518EAD49C3B0BD169C80B),
    .INIT_2A(256'hA29C27A4E0516539A4535805BCEEF7FEDEAE23EDBEBA97319D1C80B34C5A2941),
    .INIT_2B(256'h5561394AF469D1AC49844F9E1742AD0D241EAB66F0437FB81D27D15BCAA42290),
    .INIT_2C(256'h0BAE10678E00C8C2EA9F6F550393BB619BC0124850CF673F29D4F0671B3DE6D7),
    .INIT_2D(256'h31D2BC8A7836969BF1F6564E34B5322420ECF04B6346BFCE7F808320C0A2B38A),
    .INIT_2E(256'hBABCDBAB949A4A28D4C2246B77E6FE2778FF1BB5CB46DB085AA049811BC9A64B),
    .INIT_2F(256'h1109F8032F0FA394A7628288EAF3C836AEAE9BCE5B7B6C53BA2F89D8FFD7DB39),
    .INIT_30(256'h3E42FC00DB7A154910759AF070CE22733FC3DB75082479D4A050B53A0128398F),
    .INIT_31(256'hABDA465639C2854DAE8ED81222F847B8BFA00256237500CEA3C215D047F63C2C),
    .INIT_32(256'hF439C6453DED0B126419B73B40583CFED73A73BDD6376D5EE8E2B53A1E91B260),
    .INIT_33(256'hE6CB773C8304D0A4B9B2E2F6A0AC4944A4E0EADE7D228C8119B0D86DD9E9C598),
    .INIT_34(256'hBB2F020732653327EE60E6780E3E1B1D9CDC5AA2E3495332E0EC7161EBD2CCF1),
    .INIT_35(256'h0DCB2BD5DE62C03706C6F6473B2BD00A9BA22FF388EA99A4112FE33FD1C2FAE7),
    .INIT_36(256'h8409930700E32D32E1D476112AD86E2AA21EC9C0635498631BDC096323B7DB20),
    .INIT_37(256'h7AD7A7A4D391AA99B410DFA80046A55B9752C5F84EF84C2DB227E3DF065B8594),
    .INIT_38(256'hA84329D5000BE87AAE992DA23A05BEC520BD9D34F606B34FF440CBDEC7336FDD),
    .INIT_39(256'hB33E4A96EA2220FF79DA497AF0A6F8433385FFA5E301F44EA4CAD1CDF5229D11),
    .INIT_3A(256'h1887FAD1085A6E9817EE636C628753269FB9F9633CAC420B31E617DE79B32252),
    .INIT_3B(256'h3B94D07C4B0C7F43EA1338A495C2A3167A2BBF474F770B887952E243E7A1DC21),
    .INIT_3C(256'hDB2CFEF3993BFBF08A98E7DF710B5E699A3D2896CCB28E06128B5F0CE9D4A5E6),
    .INIT_3D(256'hB12A0CB28A4FCB409DFCAB3DA3ED7343643B4EDCC43EF49382D1863EF9DC6ABD),
    .INIT_3E(256'h88A1F7E69B87D1196EF3E42E4B3FAD56C6F765D6632BEF8FD919C2DF0B70AD44),
    .INIT_3F(256'h344E4991D8064885F9B0098A98B8D71A2609830D29E8F640EFEFB1BF9698A905),
    .INIT_40(256'h530FD073B7CD2DACA9CA3204ECB03BAB68FFECA4B0F81C9E0AD5148F9CA185F5),
    .INIT_41(256'hBA858E1F654B50C1375770374DE8A02224D69942845A4CA467BD37F8A90DC243),
    .INIT_42(256'h04A9137F98323795DEC676F90F0D44550DDA9994A98653A4F17F7BDDE2907075),
    .INIT_43(256'h20A9323A495CE8A4EC1B9F2A8B45A02195CE42D2FDD74E1D2BBADFB1308D08C5),
    .INIT_44(256'hCFCAC810D91510FCEC3A98524501F182ABFBA9E7C7C544A5D74795A65431D795),
    .INIT_45(256'h99779E5259F32F68B064A66C746EC374D550E440C067FB89B40308568292046A),
    .INIT_46(256'h07A9EFE424EC13D9D45AE16864486F46EE30431D01A5A22EAC893CA7AB3ACDA3),
    .INIT_47(256'h5D38459D887E96464DCE6311EDC09FA44D3AC65D6DB3B4D3D3701A49DC5EBC88),
    .INIT_48(256'hE925915DEC077EB295AAD6B52F310EFB70DF7942CDD09F03F11D6A5AA2326952),
    .INIT_49(256'hAB6D05535DCD535B0C405393268E6AAF01236D69C33FB0BE1B92C6A7F6434EB7),
    .INIT_4A(256'h122765171A722A8ACA561AD277E119CBD424E5CFD14F67987D548BC3DAC8E86D),
    .INIT_4B(256'hBD34147F283C35C7236D503E277E0730D678588E664B0E8BF10F00C1CB8BF89A),
    .INIT_4C(256'h2ADBCDE6F30888561A6A40FD01A322D1FBA50680E91B0723AF45C4E453BE423A),
    .INIT_4D(256'hE08985C1DAE0AB2A915057325D2F5718F50AF7384A393650B0349884C088ED3D),
    .INIT_4E(256'hC857200088F3AEB67FBDF1E48E6369622A00765E5D4691008626CBA32206A034),
    .INIT_4F(256'h417E6FCE0C4ED8B7AF79AD5D3DA0C39BE500B875CA2B3BFFB16BD3435F38A2AE),
    .INIT_50(256'hB25FDE6979E76469ABBE84535C5BC09B808AB5480AC3CC05F0BA8879D76CB3EB),
    .INIT_51(256'hADAB8487AB6A6D02972C73A39526511D003193121FC6FAC6A67EF0D2A1E5E258),
    .INIT_52(256'h7C5E4DD2F8EABD4127D342E91C3D17CD4DBCA034AE10CE0A837C72BD04D3B3B7),
    .INIT_53(256'h81862BD6668467A62E766797B4A9AB912BFBCD0D80477D2DEDBA2D38969E95BA),
    .INIT_54(256'h9EA129C02AB6A1910898775C59616262E272660A7B9C4AFDF6A81A1092D758E6),
    .INIT_55(256'h38E4C8B56D90D9F145DBAFB480936148E7F58C1E6C8FD4F999E121A6EE0D7821),
    .INIT_56(256'hDC622C62C9B4005BDDA65D73ED54551D214C842991436866F9C6D19339E78931),
    .INIT_57(256'hA89E7A32985176815666B8C48EBA12EB6977F2A68D71E72875DD01A49BA9EF55),
    .INIT_58(256'h9364F97B2A63F8D6F284EF76474CA74BFCFA17DE9208CD4BB717D20129B72BBD),
    .INIT_59(256'h5EDB6C6B9F3C7DEE47C4023915C1009DC5BC702D772D5452396945E182465330),
    .INIT_5A(256'hB3D49EBF33D9655956625A78F24CCF1CF499F26A2904D116BDF2AD41ADA073CF),
    .INIT_5B(256'hAC79EDDED3C7161A505D7BFC8E58F62590CF7883EEA5DEC4DF0D888C277D7EF1),
    .INIT_5C(256'h57592F52906C3486D4126325F64358B490383047C22F4D2D3D0ACCD675FCB265),
    .INIT_5D(256'h45F12A7CFAD7648CF6E822D3A3ACEF1D9B5E38ED07DFA072FCDD53BAD48E29C8),
    .INIT_5E(256'h4D2D18C8512AE1C059D946BD43DF9BB7F7F66987D1C8E4B2A42B38DE3B57E65A),
    .INIT_5F(256'h0CEE1F99F46DFD244202181B3946B95BA9FE602915A1EB0F093DFA341B6E3654),
    .INIT_60(256'h4032DB2B23293208E7144AF3C3836242A9EBD4114CC88EC576E433C7AD9C6D43),
    .INIT_61(256'hA8C011ACB654BB3865BFFB2D9FF3C11227F2785F9F40D3A54A6C375E610AE40B),
    .INIT_62(256'hDADA697AAC66301DA3507135279180B90C3C744891D81D31A9D4144F4188047F),
    .INIT_63(256'h30C6CEFAA9A63DF077CFD7F18BFAF1F3A56BDA885F3ACD86427B77A8555C416E),
    .INIT_64(256'h52309943D23D2A70EAC762703811D111DE60477BC425A2912B0A8DF9AF2B6ED2),
    .INIT_65(256'h9723F9A2A4E5E7642EB6E8AB9DC85BD0B4B964715475FCF40E1C6A3CCA9D33EE),
    .INIT_66(256'hF31B868A094C5B272124E2C05C09D543072D0DBC74A62A138325394A5A66E4D8),
    .INIT_67(256'h0F4B24CBAC4BCE0CC6DBF6CCBD327928C52D411121F4DF1577DBF95FAE6F1699),
    .INIT_68(256'h5B46F12C72A58DB6ACD8E32518D52FFB8D25D8748F065186C9B2A41372EDA23C),
    .INIT_69(256'hA208B65D319D52511B8ADF621CC6A6F6AE3C13CED952DA14A129E2650B0B439F),
    .INIT_6A(256'h4EFC5A5E7B7D8EB5AEA417BF4D0119A1030C3EC676B208875E3E9FAAF7D39E79),
    .INIT_6B(256'h1C7F49EE2F5D75B5EEAEF250921939C53869F6D809196FFA00149D8ED2821CF5),
    .INIT_6C(256'hAE4760D04F15B048DCC4BA7269897608E62B0D6C2F1AB960059AB69132100565),
    .INIT_6D(256'hA0AAC18D383E9A38DD0BCDA6BD1484EDB17720AEED7E76DE23C7952835C0D0DD),
    .INIT_6E(256'h71A498A081B5CEDBE04ECE34F978395671800E0B808C2528581E92773B6DF43F),
    .INIT_6F(256'hB27028AFE5960BEBD6F3253721BDC94C9558EC769E0E5477D8BDC32F8300C319),
    .INIT_70(256'hF3F94CFB173C2EFD2BE169F2CA460CA70B0AB9B08C59FA61F721EFDB5844416F),
    .INIT_71(256'hFEBFA9372E33C4C7820C348CC1AD2C23516FF098A77FAECA0D58ADB87BAA78FE),
    .INIT_72(256'hDAD5877F572BF8E3D41F54D47049462A56734BF0937CD4023F7EA655BE0ED8E2),
    .INIT_73(256'h384B77B5B693A793056349E9924946D914D10AC049A39AA1C3CC703D82E75D6B),
    .INIT_74(256'h647574EBFCD5E7A57B04FD535B57C5B4C31B7EF9C21C73F20F7E16F3D75AC09A),
    .INIT_75(256'h98D99DDF55551C31F34FBB9AFBC3BD8B6504755F682060CCD5C5D8B4516BF39D),
    .INIT_76(256'hFFA11DCCBB97FA6EE9B6679C8719260482ED6C62130899F0F111537BB4CEB552),
    .INIT_77(256'h5C0312C8EAC0F3872DD2384CA7C915B4210AA4474E855F9C72A5CD17200A7FD7),
    .INIT_78(256'hD2F24BAC906B38FF0F447306709C8DA1D39D764AEA6AF324B31CB7C4AD9DDBB9),
    .INIT_79(256'hEF16C494FEA178C19BC7E977A85208AC251259974326B2E766918FA3D37C5865),
    .INIT_7A(256'h6A55EA06248D7E0C8B3EAC6894D53B225870A824200837DCAE8862C0EF11E9CC),
    .INIT_7B(256'h5E11D8476C09EF9F099CD8D360DA11C1DE086FCD085A69AA4980366E8CB6A4CA),
    .INIT_7C(256'h692FE4C4FE59580AFA1F9079E7259543758138C3135CAD6C3410976C3535C3AB),
    .INIT_7D(256'hAFB701F31A2407A0137954B3C436BF26212539351FA661DA3B052D0915257C0A),
    .INIT_7E(256'h4102BF764145E036F11C405BE900898DFCDBCA0BC6ADAE178DA734EC5576739D),
    .INIT_7F(256'h0632CAF7B3E2E452AAE5924E5D945139F0C060158631C7D5FA301C9ADE4BB707),
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
module weights_buffer_ping_blk_mem_gen_prim_wrapper_init__parameterized9
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
    .INITP_00(256'h2E2905CBEA4BC7E91BECED93F3D9965923B94B4B8FF2A5FCDD21CD7CE53BBD4A),
    .INITP_01(256'h6A8CB2DCBECCDCC1A8AE4645045FA5CB62317F419E3E0F2C7714AC19430BD03F),
    .INITP_02(256'hB23940AF7E17C69E736C56882D8DE79458417AF76B0760F40186FD31EDBCFFD9),
    .INITP_03(256'hED836B6AEFCC6EACB3A08B0398C3919D0EABDEC51667EF63E054DF3D05BF09A2),
    .INITP_04(256'h939F27649832B75F4523E5F747E691A39980008C6CAAD6CAD0A34CDA0C5AC722),
    .INITP_05(256'h6B8D18DE574213D3105655B3505D0A1F473F8D214379E414C23AA0EC25452239),
    .INITP_06(256'h52528B37F1F159F374830EA3F9C5D5D9A90512A5B68E8940B5585D26A8BE9541),
    .INITP_07(256'h29DCB2589AE56133FBE0FF1B5E59790166259967EBF2BC84E9B2E9C76B8AB654),
    .INITP_08(256'h1A95C4FC09AFB77F7E0502F039F7757F6AEA5DA77F360EBC9B5744CA2C386D98),
    .INITP_09(256'hD29B45D3194C3F3C3E1C04EEEA6144E969A3B259590A8E144B974ADDB2E4EA3C),
    .INITP_0A(256'h833C7E66FAB44C2A821B07AABD357CB99FD82C0ED3C8598E849CC33C7CD0681C),
    .INITP_0B(256'h8B79492AB6DF0CD199F0786DF0AFE41C89B46E8C8BA0D86DA04409CDE392CD6E),
    .INITP_0C(256'h1918641AE65EA2596DCFF0AF853EF564EE5DB98574EDF105C43A2D4C4D505D61),
    .INITP_0D(256'h8E6E558E8098643B1C28D5B22C31293331D12AF682A8280A6F9ECA1811437961),
    .INITP_0E(256'hFFD483C0AF3EDD043D86E348607697AA4F75765D588FB68B0C90AC1C71190548),
    .INITP_0F(256'h9CAB991E9663DBB0C6AAC48ADDC2BC5AB5621109D33BA693D50A942DA1E48864),
    .INIT_00(256'hB193A10B818DBC9D9CCCB4C0F7109F81C4D744F944117B7AA2B6C426FC9463F0),
    .INIT_01(256'h60222DCBC1DBECABC40AF36E71E6C31625AF583560EA1DA6EC48DA26E4C43D87),
    .INIT_02(256'h11D209B440AA863FD3CA73212010AFBB6C766D5C2507C0F9BC9651540BC1FA14),
    .INIT_03(256'h7154F545CEC78EB95103C40AD662333D52E289AF111897843F64F99BA99807E5),
    .INIT_04(256'h0F9197977CE177F7AE4ADBDE5897A9201BDB473EBCAF5B009A58B66DD70292A3),
    .INIT_05(256'hD17FB306F8906B913020023B8CA99DAF962E194EFECF0870E64155933EFAADCE),
    .INIT_06(256'h1420B364C19F05B9856723F16DB1BF3EBA70DFA940DCAD236A9B09C108A76ED8),
    .INIT_07(256'h1860C1B1FFD381E79D72FE08040351A6F29EF2A62E99409C0C1B69B8DACA178B),
    .INIT_08(256'h64F68E60911AF8CEA0881390E83412670E8A34E10B29A1132A9EE7DB7ABA3C58),
    .INIT_09(256'h71089C81110089C4BF531508A0775A506D374193F8D57485C59E9D01360BF9BA),
    .INIT_0A(256'hADCF379C67E7A9144853F349A014300680EDD17AEC1B32EAF76FC4E54864E37E),
    .INIT_0B(256'hD320653620930F940C6FD04B104BDEF2459F2E96575918A2761AE0C48A99354D),
    .INIT_0C(256'h6D1BC6ACF1B834B2BD306AF5A1F7240F1B884ACA3A74A0C1DB8AC918187E4F6C),
    .INIT_0D(256'hD84551EF017C2101B27BFA4F348838CE1295B838B6368C53D0A5622A78924A46),
    .INIT_0E(256'h41E862D587C80317529A3D29A69856B2D5FD757CCEDE39903A2B2E8785836F87),
    .INIT_0F(256'hFF00D04BB14269B0046AC3AE50A593D6827BCA309661347D0849149392D73348),
    .INIT_10(256'hA84A6C22B022E7CAAE7BE20D32B3896787BC60C5920075E622C04BFFB5204AFC),
    .INIT_11(256'hE2D258A8D0A0C83994F18ADF0FD72A4A1ECD839C03B04B84219FA061FA780E7E),
    .INIT_12(256'h207F7549D3B8E1D512EDA5F3679DB3091A58E1B2F48C0D6BC152CEBA86333428),
    .INIT_13(256'h0885DC45A207A0299CA4B2A98B471FEC55AE0F96E1F721F946A62352448D27BC),
    .INIT_14(256'h9B7363A79259F6A7989DF788F1341CCECA0B7C013DE8B29CBB29D6A175B66C76),
    .INIT_15(256'h17A43C60F4DC5A0279337991217FDC43DA7FF8D3E656DB08DFD500E4AE064E7B),
    .INIT_16(256'hF93D779FE87C03653E35AAAEF88839F29330E1162E6E1C24F47BEDC8BB08CC4B),
    .INIT_17(256'h120ACF6E52C2FCFC31FBB2A510D7868AF225D9BD43E062828CC41C5FF01DE0EC),
    .INIT_18(256'h895DAB84C000E32ED709661AABA616E73B6F0A00EA75871837531F3242FC93A7),
    .INIT_19(256'h0AC3EC0D4DACEAE13DC0F102BB1BE641A5221B6188D3C9051888C5BDD03FEE6C),
    .INIT_1A(256'h4AC83D329C7A562D80CA1AF4EA8450326FD1A76886E30DD66BEADC6177498DB1),
    .INIT_1B(256'h9197B355541FB1652394A497C9541DF320DC6142EF94B696B423CC6B2666E13F),
    .INIT_1C(256'hBDB47A5D22A44DD4A7CBA5DD92B674086ABC5AC896ADDCCCBDA48DAD433926E8),
    .INIT_1D(256'h90573C1FFFBFC87B026512F56EB6B19031685016DD936F0367406B60A421FA31),
    .INIT_1E(256'h68BE73EB256ED540B84EEE1AA77E34C9BAC15CEF5F09251E4FB947F87912C119),
    .INIT_1F(256'h46CD8E7FA57C0105133F4FB53E4203F19748F98E3CDDBE9CEA89B5DB9D2C9C77),
    .INIT_20(256'h31D9551D36BB5748594DD2EE04F19C71FAEA1F4877E4EF7A7673080058D3CDF8),
    .INIT_21(256'hE57FAA65AB08F851B1566FA93A559DEC747AA8A86440210B87CB6C0B79B048AD),
    .INIT_22(256'hA51707486165669859DAA25B6699BACA0FFC3685A9C2483027425D0352F0014F),
    .INIT_23(256'h10EDE2363707FCC7EFEFB08F5E3CCA122CB1D99813AEA2D40D6F64B6000A1EB1),
    .INIT_24(256'h59C8C235A95A22965AA8D4094960642A22C8A580A5F819FA6A30274D154A1164),
    .INIT_25(256'hA9CECA8B87524582436D8A13C22CD094D020281CDAFF7C12570CF90BD9F6E21D),
    .INIT_26(256'hBEF8541F40D5BF55A95C709B56EAC7E6C067DFBEBD1D3FF78E5D512F3B658E5B),
    .INIT_27(256'h6C823D24839159CFEA0A0AC4427576F3A8B76818F3F7866ECF5B8F41ED853C8D),
    .INIT_28(256'h75098288BD93266C3E27056D8C8E19655B7B4A3A59D67108E10930F1D3FC0FCC),
    .INIT_29(256'hC0289638ADA4398476C5AB5E089670C31C46899EDB05DCE745F0F819E0718027),
    .INIT_2A(256'h7BE4B5FDE54D75D502970743126D4F10280A6CDC45403A89C074A4A0BA640CC7),
    .INIT_2B(256'hC4A3214E29EC11A8472CDECE2AF712E6CC8BF9062CA7D8F4EDE558EB92B2FE6E),
    .INIT_2C(256'hD8FB259EF7A8A7271A5B1974F9A8937F4A2AC495AA22B93E36314127094E4E6F),
    .INIT_2D(256'h33D0CC7FED522AF897E9884CEEDF308C08FC7BF281F6BDD3FD63BF4EA1BC82B8),
    .INIT_2E(256'hDB246F1E0714CFC15FF031CD6BD7C23D625B9762DCBB5AF02D6BF3FBBC23802C),
    .INIT_2F(256'h16628A46F93ABE4D001D5A192798B08E922D6CBA33F586EAE5031D31C22BF29A),
    .INIT_30(256'hC5608C24D8699CADD8B067C2209225F6A357D570F962A10EEF0DBF366407B71D),
    .INIT_31(256'hA90E9B7B9B47528D2DA67D47FD46F607123ABB0033C3E4A04CFDF446F189518F),
    .INIT_32(256'hA9EDCE84BEEEB5C85E3E22DE2A9FA382A15AA1563234C72D3EF2FFA68663DB5A),
    .INIT_33(256'hB443EED1308277B12827CF13CBD19E09269302A6285D11F97B938E03BA131CC2),
    .INIT_34(256'hC05A4535CAF78D0AFDD2ECD9362DEB86D5007133D882D32811A6CF883711E288),
    .INIT_35(256'hD0DE2CE6ECF72DEB3B5AD277536DD5C52C1B8B2BFAB507713944F0E44AC27197),
    .INIT_36(256'h9FC8E614059A0EC1603EB893A68659E8A34D2AB16417599001E283711003E8B3),
    .INIT_37(256'hE4D58EA1E91B34FAB8114F0E9B39E657C7C3EDA9836915B78CF23810624CE67D),
    .INIT_38(256'hD9A8C794892F9568E6FC6E3AD80B22833795502488394B0C540F4C965BA736B8),
    .INIT_39(256'hE215BD9FE80FA106231A65072E852F9F76549A5518EAF624D829AADA80DABE60),
    .INIT_3A(256'hB0B5B2B1EDABF61205AF2ABADDB88106CB3FAFEF6ECFB2040B45B323DF359C49),
    .INIT_3B(256'h1BA663AAB4DD20EF93DC3D1FEA4A1F8BF47EF0B8E034D11795CB5B2AE3DBD75D),
    .INIT_3C(256'hF56D769B4285C46299EAC8A1E93AFA42B18B459C8234A8E4A1C267570B3E6ECA),
    .INIT_3D(256'hCBAD0025DFDF7607DB73742D742F64617586A4622D302A8E5D78DC27DA3097B0),
    .INIT_3E(256'h3A37AFD07C2B625861C8C8DC5C252FA10B115E9070CF4596842ABEF946466170),
    .INIT_3F(256'hEA771CF8AC11F9CEC69B2E92F3897E272A38EACBC7E6CDFDAC7F797C5A93402A),
    .INIT_40(256'hFFB045DEF9EA85F8C6921B27D40BB8EBAB3AB321F3CA1AA59222A382D17D49B1),
    .INIT_41(256'h45E82CC3B4E48F096111ECC77D503172798227E178BCD887B16500D35EF6A979),
    .INIT_42(256'hC9C2B80E6633C9AE6FF5D9E5142353B46EAB07898136C2D1F99B4247E2FDB4C4),
    .INIT_43(256'h5D3DDC8ED2E96DF690312DA61514F11498F279B8661905A66A41012CE01DCA91),
    .INIT_44(256'h4CF3999BF4540946794CAEB7DC7972D0C0F85B016CE822088B0A980E3D05DD12),
    .INIT_45(256'h687D20F619CB13C82E46DA755BDEE6F3D79C178A849B63B8EDA5EA6A886AF0E1),
    .INIT_46(256'hAA5A3C6CDFE68350672EA24B5F44B0B708BFDE78E9D4072DFDB5B7AADC150A5F),
    .INIT_47(256'h00CFD3A35CA5973403C2FC0393FD25285DA7CAA1E1744805223EC12894A76BE9),
    .INIT_48(256'h0295F75C920D02C4594F232BA44978F6912618F818F016FC3EC5BFEFB3017D3A),
    .INIT_49(256'h11DBBA5F67D466048022E23BCC66295989FAA549607CF096B35D8089F7473745),
    .INIT_4A(256'h1261BF7208864D2DC0193F6AFAC8E22179F829CAF3B41C83958F44440DB3EBC8),
    .INIT_4B(256'h9E25FE777728DE755F7386D5913071934E310D35638461B217B2D01962736FC4),
    .INIT_4C(256'h3423E77A6347EC4F1AA568228A6B67B16C98E7F8349712B89F94F504C4D51888),
    .INIT_4D(256'h08A84E574077A0E832722A5C919597CF0B2C5BB979C6D476FBA7D38E4B77BD3C),
    .INIT_4E(256'hAD3822C6EDC4ED5D1F1431EA035F2707DA32F016585E6AEA315C5D2AF59BBDE7),
    .INIT_4F(256'h270877928B877B0C0303D66415912565FD6CA4C561F7F3F5298605302B6E8602),
    .INIT_50(256'hDCA4BBD49C84A50B55C3070A273CB43BEF488548DA8042DFA03F227B99943549),
    .INIT_51(256'hAD7CCE7CE0BC766B9B213D0071EDCED7F7A6C84581F7A37D626F3D5C03DA9025),
    .INIT_52(256'hA7459AB6A280D603825EC2B641C4CC43868D06D6848608CB83642C63C26CCCF2),
    .INIT_53(256'hF5314BE02E9D6F1E212BAF3353352B52231EB8B524245130393AFE5DBF353E18),
    .INIT_54(256'h73C06A0984799E80C786A0BC21DACFA7AAD150341D4EE1F4899859BC3B3BAA2B),
    .INIT_55(256'h24BD6D078A2EBCEB056B6D00D1818BF18F5B56D3A72F0361B3E13A761B749922),
    .INIT_56(256'h9E1BBCD01772291354770C50EB86C883B5D608841CB948DBA506AB74E26A7588),
    .INIT_57(256'h79D2CD00FC7C3C1E2896244ED33247300FF3AE85E75CB01A5ABA8AAAE394F62C),
    .INIT_58(256'hE3C25FCA99F13EDE0EBF5E58B79F0920E5DA099C054D7ED8FCF77E0F94433597),
    .INIT_59(256'h2167E30350D8928845C0F6122C0E6D1CE73BF46D868004DAF4C7963DBD2BB0BF),
    .INIT_5A(256'hEAEF1B3D78C21853BB3020BC213592625210F1F2451AE4171EBC7E3D618AECE7),
    .INIT_5B(256'hAA84450EF4070125E99E2E914896254D0A4DAF3B87766CC5FC395990910D977C),
    .INIT_5C(256'h65AB3D10024477C91FCEB5D28E5A5FB0831881219A091BDA052E3E7244B57536),
    .INIT_5D(256'h24899A7B59BBAAA76AC29CC9F32A1CBB8DC41ACCF6BF0B6C8D7E1BC81D65E3E0),
    .INIT_5E(256'hF33A30B193D94EBA77FFBF467964C75924A0E445961FFA6DA07008F287877526),
    .INIT_5F(256'hE0145364FBC03EB334122C5C99480175587000BC0313FCE54891D042A03CF7C0),
    .INIT_60(256'h2B525FD9D596BFAC0126BA3F3DA3F70B7157557AC8EE65272756EA52F9057B77),
    .INIT_61(256'hE4E8256B747292B4B37CEA4B1BB25F3583C12D4A51F8531D877277E404E2D691),
    .INIT_62(256'hF9665A6851DED745EE9F089794232885E5DEFC27CB6D10A1BDAECC20469B0E08),
    .INIT_63(256'h9BDB2C1A80164BD30F4B3BB3EF013E7801A4F918B2FD9AA2209E9309A78B73D9),
    .INIT_64(256'h1F718972C03B5C177A7F0D9F431605D9AF83825217E341D22507A32D79981F07),
    .INIT_65(256'h42452284973955354F251DBF98CC12C92F538A8BBA8B29A575DA73205AD531BA),
    .INIT_66(256'hBBFE21A28BF733EEB50163CE1611448B704589856222634DC718D8F124874A03),
    .INIT_67(256'h234397AFE30C2C2E3CE85A528308AFE5C19AA324FE9CAF500A3946DD14C7D0D7),
    .INIT_68(256'h97D8A3840AD159E2D3663B43CB51F37AD2AD1A1461EFE0B9C0D4B656F288EA92),
    .INIT_69(256'h153C697EA59446D1FA6A366FD7E0AF61906E49275357886A08503438BD918809),
    .INIT_6A(256'h9A49506B2F5C702045DB41D53F1BC2E6D3FC80EC0F361D8D501B9C1E2A5B9126),
    .INIT_6B(256'h87D6AA70E9025CC6DE46790534412782047D55B9667B2DA3E43C8F4EF1690B02),
    .INIT_6C(256'h19CB9AAF01E59D568D34A97DD6C37646EF94DAAD78C8DB6C834BEF18802FE94D),
    .INIT_6D(256'h9FC0D4C34CD940381BFDB18BED5C4F8B412230D638F7A7BACE51BD604FE0EA72),
    .INIT_6E(256'h0BEA7193A28973A81A38F2287A8D237F2AD1DD3CBE7C72AFA2C31C21E5A2D07B),
    .INIT_6F(256'h3B1170E1628D0DED5741C18CCEF879D99D0E0664170168494B5CCEC23F580EA2),
    .INIT_70(256'h22039FD7B09441687EB03E795817B522A04FA36BEC9A7693681C5F55DE4DA8A4),
    .INIT_71(256'h4453F9351933757AE847C6FE3B0D647A316D6F1518CA57535E8D7BE1052FB7BF),
    .INIT_72(256'h60B05A7D8138D453B60D2BD221D8B9D04C31653BCD36DC569C69B01190CD4CE2),
    .INIT_73(256'h615C871936886EFEC8F328839DC5F2118ACF76C7BD0CE7E41202C447D7947364),
    .INIT_74(256'h7361AE2BBCA8F185145F7403FA00CFED72EB288D5382ABECD66229848DDACC4E),
    .INIT_75(256'h19366644C3593611C445372525F0B959A4F80DFB5FE1AA1F278B468223D45465),
    .INIT_76(256'hEE0904C15526D80D5A8FB0FF30435A3799FABBF0F8664A824366239351115078),
    .INIT_77(256'h0B984A003F13F916D643BE53CDDFE26557C38C8701ECC312EBCE841309D599BC),
    .INIT_78(256'h02E2602EEE35969537C6DF67D63B993D89200453CBFB8AAB97D6B47810FEE2D2),
    .INIT_79(256'h6FF8D00EFB183626D9BF9A5C61F7818E320A033F65418F8B9D063DF8FDCD3728),
    .INIT_7A(256'h34AAB684A0D7A274349C80BF07AC1399CC07DC74E72DEB0089FBAB13C40E4745),
    .INIT_7B(256'h10CEDD03F40F6FEA358B96C998ED02A627A758E8FE5A98F67B14D17493AFF8CD),
    .INIT_7C(256'h425EC69F212E9A33FBC88B6FBA26DEDB81B382B992EC558CACB5A0305FFCFC2C),
    .INIT_7D(256'hA097A5A801E2A75CF6721AD2BB76E4B45C656E5977DE0FF6EDC36AC91A9B0619),
    .INIT_7E(256'h9A890D218651F582F7B87E1593EA58816D9C640518BC01D7C8A83CC33692415D),
    .INIT_7F(256'hCB714E7F556D1365FE0E739BD0A4C0FC00F9E2D0C0802CA3FB2873A82A7C00ED),
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
module weights_buffer_ping_blk_mem_gen_top
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

  weights_buffer_ping_blk_mem_gen_generic_cstr \valid.cstr 
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
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weights_buffer_ping.mem" *) 
(* C_INIT_FILE_NAME = "weights_buffer_ping.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "2560" *) (* C_READ_DEPTH_B = "2560" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "512" *) (* C_READ_WIDTH_B = "512" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "2560" *) 
(* C_WRITE_DEPTH_B = "2560" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "512" *) (* C_WRITE_WIDTH_B = "512" *) (* C_XDEVICEFAMILY = "virtex7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module weights_buffer_ping_blk_mem_gen_v8_4_2
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
  weights_buffer_ping_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module weights_buffer_ping_blk_mem_gen_v8_4_2_synth
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

  weights_buffer_ping_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
