// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Sat Jan 04 18:09:35 2025
// Host        : Chiaro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/ip/music_get/music_get_sim_netlist.v
// Design      : music_get
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "music_get,blk_mem_gen_v8_3_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module music_get
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.65119 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "music_get.mem" *) 
  (* C_INIT_FILE_NAME = "music_get.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8196" *) 
  (* C_READ_DEPTH_B = "8196" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "8196" *) 
  (* C_WRITE_DEPTH_B = "8196" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  music_get_blk_mem_gen_v8_3_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
module music_get_bindec
   (ram_ena,
    addra);
  output ram_ena;
  input [3:0]addra;

  wire [3:0]addra;
  wire ram_ena;

  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module music_get_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [8:0]ram_douta;
  wire ram_ena__0_n_0;
  wire ram_ena__1;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;

  music_get_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:10]),
        .ram_ena(ram_ena__1));
  music_get_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[13:10]),
        .clka(clka),
        .douta(douta),
        .ram_douta(ram_douta));
  LUT2 #(
    .INIT(4'h1)) 
    ram_ena
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(ram_ena_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    ram_ena__0
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(ram_ena__0_n_0));
  music_get_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (ram_ena_n_0),
        .clka(clka),
        .ram_douta(ram_douta));
  music_get_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[11:0]),
        .\addra[12] (ram_ena__0_n_0),
        .clka(clka));
  music_get_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[9:0]),
        .clka(clka),
        .\douta[15] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .ram_ena(ram_ena__1));
  music_get_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (ram_ena_n_0),
        .clka(clka),
        .\douta[15] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }));
  music_get_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (ram_ena__0_n_0),
        .clka(clka),
        .\douta[15] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module music_get_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    ram_douta,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 );
  output [15:0]douta;
  input [3:0]addra;
  input clka;
  input [8:0]ram_douta;
  input [7:0]DOADO;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]DOPADOP;
  input [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [3:0]addra;
  wire clka;
  wire [15:0]douta;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire [8:0]ram_douta;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[0]),
        .I3(DOADO[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [10]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [11]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [3]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [12]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [4]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [13]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [5]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [14]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [6]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [15]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[15]));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[15]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(sel_pipe_d1[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[1]),
        .I3(DOADO[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[2]),
        .I3(DOADO[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[3]),
        .I3(DOADO[3]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[4]),
        .I3(DOADO[4]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[5]),
        .I3(DOADO[5]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[6]),
        .I3(DOADO[6]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[7]),
        .I3(DOADO[7]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[8]),
        .I3(DOPADOP),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [8]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [9]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_get_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    \addra[13] ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \addra[13] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[13] ;
  wire clka;
  wire [8:0]ram_douta;

  music_get_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .clka(clka),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_get_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOPADOP,
    clka,
    \addra[12] ,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;

  music_get_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_get_blk_mem_gen_prim_width__parameterized1
   (\douta[15] ,
    clka,
    ram_ena,
    addra);
  output [15:0]\douta[15] ;
  input clka;
  input ram_ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [15:0]\douta[15] ;
  wire ram_ena;

  music_get_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[15] (\douta[15] ),
        .ram_ena(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_get_blk_mem_gen_prim_width__parameterized2
   (\douta[15] ,
    clka,
    \addra[13] ,
    addra);
  output [6:0]\douta[15] ;
  input clka;
  input \addra[13] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[13] ;
  wire clka;
  wire [6:0]\douta[15] ;

  music_get_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .clka(clka),
        .\douta[15] (\douta[15] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_get_blk_mem_gen_prim_width__parameterized3
   (\douta[15] ,
    clka,
    \addra[12] ,
    addra);
  output [6:0]\douta[15] ;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [6:0]\douta[15] ;

  music_get_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[15] (\douta[15] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module music_get_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    \addra[13] ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \addra[13] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[13] ;
  wire clka;
  wire [8:0]ram_douta;
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

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h300005B6DDB6D9B6D902000081D8A837AC52C22B06F58A184562DEB14B08AC03),
    .INITP_01(256'h83DFB44B3D70442A65E0362B08B079142490DA9E68A609B0C133E30000828080),
    .INITP_02(256'hC8C2E5798BED5FDCE83662FF6EAED9E6CF14EF1E31E12B9D0B667393FB178BB9),
    .INITP_03(256'hFF084467D38886FC7F1CCC194F472060651CAE31A008413D9C3CF872202A380A),
    .INITP_04(256'h709E2AF3259F94A5816834F849EAAF6EB45C0C7FC2F42B45F6D7DDA1FBDF1B32),
    .INITP_05(256'h8B062379CBC7F43666B766F272410F9BDF7D828BDC2204126137CD9315B03FF7),
    .INITP_06(256'hE2FCE36041AD12865D2C35A897703C7585D0F29703347671205FFFCF263486EC),
    .INITP_07(256'h3EE4A80E312D358E9AFC1D0C4E14D5EDD98CACB80D0B6AF4350F5D72364159F7),
    .INITP_08(256'hAA8FA33D9821313D1971F10BC1E4F393DE3EE829420D40341A03127297051700),
    .INITP_09(256'h4EDEE2818EB86F7BDC055831E27957F9F6FFB818B70BFF013072C14B2621A09B),
    .INITP_0A(256'h983B7F22D54FB2D3AC0EEBEEB2DEC921A0E387403F99D77C0FD73EFF58216085),
    .INITP_0B(256'h58F0FBEFE15B3DD453C1C117F72210B3CA94C88C57ADE0C10CC781F0FF57C65B),
    .INITP_0C(256'h48A6020EB1BD82BE4E48493F2CECE29F87277EF882BB8E3E4BB093CD810E5613),
    .INITP_0D(256'hF8B8858F96F95AAC0C0C75F67DE3F5CEE4235A2E06120C74C527FBC462D7ABA0),
    .INITP_0E(256'h108931731BA7DFD298088FEBC438189E900369AB9A26593D0EEE301C08EBEB83),
    .INITP_0F(256'h2D694FC7F218B3506313F4D26D6DA72331A7765C30717C3DD1FB36B032F5AF99),
    .INIT_00(256'h030000004C54296F2E6169636328C3C2C3C3C2C2C2C300210033493400000444),
    .INIT_01(256'h636328C3C2C3C3C2C2C2C30021003150006D637A6E682E7384B2988BA4B3BE95),
    .INIT_02(256'h0021003249006D637A6E682E7384B2988BA4B3BE95030000004554296F2E6169),
    .INIT_03(256'h2E7384B2988BA4B3BE95030000004F54296F2E6169636328C3C2C3C3C2C2C2C3),
    .INIT_04(256'hFB000000000000302E2E36764C000E0045530031320006004344006D637A6E68),
    .INIT_05(256'h2A251F1A150F0A2E002F000F006F6E0000000000000000000000000000000000),
    .INIT_06(256'hCAC5BFBAB5AFAAA59F9A958F8A85857F7A756F6A655F5A554F4A453F3A352F2F),
    .INIT_07(256'h008A5D2E0000005B24000000000000333163610000FFFAF5EFEAE5DFDADAD5CF),
    .INIT_08(256'h50D219DE06CAE104904008000C0200002000080069000F44FB00000000000000),
    .INIT_09(256'h2CB44EFC54374874E029AF8B7081DC38C3E1C39EAE731789D0275DC0A1D9D890),
    .INIT_0A(256'hB82FDD71BCF122C9DC517A6911A24826BC0E505C1801040C844800005D8DCE57),
    .INIT_0B(256'h105A11740100086921E9702399F80E64FB4A884C51E45D8A1DE987BC8104C757),
    .INIT_0C(256'hA6C2622700A3B938952D62843CE25D8CFF8B61CE888F28A26DCA31D062080129),
    .INIT_0D(256'hACB1591FAC74B285C567A22332AC34E5C438B61BE6B2DD41535929968A53A52B),
    .INIT_0E(256'h1820148144810952FF1228FFDF1120451CD1022D21CA3AAC3232A5C262907401),
    .INIT_0F(256'h0DD181001906D4FDA15FC7D642D1A66879EFEE679D9F9D50269408612A080004),
    .INIT_10(256'h775DE23FC320480D898458E410F923DD51B6D3D80F1D9E7D37BFE5284739732C),
    .INIT_11(256'h0D0411661E636AD5DC15E915E1F8FBFF3BF1FA4E72007A10AE4641D3FF68BE0A),
    .INIT_12(256'hE1C8E1101BC1DD05230A2446285C04805B4B801C05069C65648424639D0064FB),
    .INIT_13(256'hE56883720D85DF1C6153FA24FA8D98B850FF3F44C1FFFF8D60000440FF931FB7),
    .INIT_14(256'h0D121929C3D5902AAC847416B7CEF9B7FFFB7BFFA8080048E5E5FFFCBFF9CA54),
    .INIT_15(256'h22CBB582F796008200309395440000061B52FB33C21652FF258D47D3FC7FA424),
    .INIT_16(256'h733A0037B212548144D7B64F2122004A9BF6D74DE33BE4F93FFFF4C4C3697761),
    .INIT_17(256'h3A98DFFC1B57FF5057412AE42448A4636592D2FDC2128C69D3B91FEF29957908),
    .INIT_18(256'h48009C910800D080003C5E240064FBB265C47262D9011800D553C86AB22FCCAB),
    .INIT_19(256'h7AFDFF0A7808717B84932D6BD54658755BE7112D75B2193F307F729A91048059),
    .INIT_1A(256'hFFFE233D9FD713A2B007ADF6B14299C85E9DF94FC191017852F0ECF7EAEEF59A),
    .INIT_1B(256'h447918C10852FFE95FE500295445850DF8A0AF06AEFFFF3F6BF5479F656981B9),
    .INIT_1C(256'hC0F2CFAC40D26FD657A06B44CDEAE6C54BD3833EFB0A408DC085812400001615),
    .INIT_1D(256'h0CFEE4F2D4FF589A0323463FF6D8353C75D9F97C7D722312238959F9FF4F9FD4),
    .INIT_1E(256'hFFFF0EFFBF9E6CF13F2C51BE91F148D3ACC42F18C0182FC3BFD6BF3EFFD46403),
    .INIT_1F(256'hAB83FFFF4B7F414B3A00300870101C49F0A4EF05221C20F0735B888164FB46E3),
    .INIT_20(256'h52F6F15FFFB10EFDD07F78A1FFFFFDDFCED12BC4FFEFC0392714BF7218006E0E),
    .INIT_21(256'hC49FFD8B833F1C89090865834499FB17FFFF83806B3A6A12315ACD51271C0060),
    .INIT_22(256'h7F579833183C0350BC7FDC080426103C693D112B52FF33F8BEA0B9B5E16DDE87),
    .INIT_23(256'h90E70E442C4C251C00589AF6DF9BBFD5AD7617002EA0A0A85399E9FF3EFF0708),
    .INIT_24(256'hF70F06A1701660A0BB5FF69FDB57EED360DDC2A2FF7F11FFEE533131FFFB0E64),
    .INIT_25(256'hA7EF0522D060A0E0DA8D8164FBF52706DB934AFAFFF9DFEC5584193F35FFE610),
    .INIT_26(256'hFF4AFFF79CD401FFFFD54520F30EB51FB93C01002CFEAA2FB37FFA1800594941),
    .INIT_27(256'h31FFFF4103FFB7C9887F3151F0B85AF3D30480BBFFA57FF7F6B7FFFF8F8829FF),
    .INIT_28(256'h3DE15152FFFFBAD99CA95EF1C83E50200D4942FF63C1AA6FF9FFC6676F40FCFF),
    .INIT_29(256'h2D79A9004004D0877FA0FF8C21FCF1FFD4C40A5F8097C08C6F240000160E5351),
    .INIT_2A(256'hC1FF81ACFF88FF0601C7EF8D2AF20E431F03D8DCE3405D1200602EFA2FBF000D),
    .INIT_2B(256'h20DBB9F9FFFFE273A9FFBFF0FF67D61C828AA9A25C5150105159855687408080),
    .INIT_2C(256'h5ED029800700CD989EFF7800E647A7A47D0605CEA1042F5D920064FBF97FFE37),
    .INIT_2D(256'h00005B92FA261D37A4263E67B304E13245FFFF84F7FFFF6F82FFFFB37A430C58),
    .INIT_2E(256'hF43F4C1DFE6CF6A519282F70E9F9FFFFC4E6D5FF2BF1EB0B23A448BBCB66B110),
    .INIT_2F(256'h400F98700400616D3900041710506949117452FF81C0E904B653298D48040224),
    .INIT_30(256'hD52F896A7D45312000027BF6BFD59F5F01AA390055B64E48F9FFFF26A0FFFF0C),
    .INIT_31(256'h6E673663300008BB15FF70B436FFFFB75CFF4A4CFFFF7FFCFFFF6DA0FF5F5A9B),
    .INIT_32(256'h0576F0A2B020DB7C0264FBF86F7BBFA61DFFFFBF78FEFF6A7A5E7A3693C094E2),
    .INIT_33(256'h59E77A24565652025621CCC8A906E96CAC92FFEC9F0CFFE2D507136C57B2A927),
    .INIT_34(256'h0FC34840A000856D4EC7FFFFCF22000002C10182FFFFDFC031BAFEFF3EF8AF99),
    .INIT_35(256'h9652FF77FFD734B200397030FFFF6D31BDBAFE4FCCFFAA0AA8C7B1903D576887),
    .INIT_36(256'h66C024BC24EDD11B8024C6004AFF6D7F9F5A019540816B41E20896156BE849F1),
    .INIT_37(256'h08FFFF79C35FE2F1C797674BCEFFB848E1CFD30EAF4EC73C5D428B8B5023883D),
    .INIT_38(256'h8D8DF513B37FDE5E84BC782BACBDF5D571382E002039FDBEFF5EFF5777C1D702),
    .INIT_39(256'h2B791E77CB79167500105D5648A32787293CC0848DDE038064FBBE1F3F8CF19F),
    .INIT_3A(256'h37FFBBE577EBA98A98A91A1C31DC04FDFF7FFDA7FF21646FF0FFFF07608E718C),
    .INIT_3B(256'hB29399F9327FFCFB90122E208F0C180C821D3080A063C060709849DE3BC5532A),
    .INIT_3C(256'h00088040E46B7D0004060DA8AB49C2A852FF1F29325DD707FFAAE77FF9DFFE33),
    .INIT_3D(256'h8105D2D145833E1FF1278360A25F68E8A850FFF672385611418FFB80FF5F9494),
    .INIT_3E(256'h1C2AFFB080C08D781B618324AE2DD22A7867E7FFF1097997CE723A2FCE674660),
    .INIT_3F(256'hF0C0B49353BC8E64FBFFFF6BFD568686FC54A493F58E7300006002AA06FF3FF7),
    .INIT_40(256'h33F5E54FBFADB4FA6B460C0441E6FF49349C59E3A2F09F70102A52A70CD90C02),
    .INIT_41(256'h0DD7C92483BEE00FF87B0824C904FEFF93FEA0EA120060010A7A06E8054E34F1),
    .INIT_42(256'hFFFF74979CE6FF5A9170EAC928649425B0A84C801072606AA83555097CC5B2C9),
    .INIT_43(256'h0C74F5C1FAD996B90170FE91A4D2880CB88900D33C6800041A15DE6B35936852),
    .INIT_44(256'h224B7510101038FEFFA505320B9D0E9D29FA1F1DDDFAA0A0A035D49D0FB73113),
    .INIT_45(256'h688DA3A01A376C411D0E060B013018A3FEFF99A81F62C1ADA0A05B46FF584514),
    .INIT_46(256'h92B55F40003570101B33970ED30A02008210A64FD70F64FB04A78C9190065474),
    .INIT_47(256'hA5CA34864148710020885930FFFF7191A74093B04CA00622F83AFFFFAD3648AE),
    .INIT_48(256'hB7F6A5C058002980124CF51C9767D5FDA3A2559A83D94DA920584C99CA03430C),
    .INIT_49(256'h19C08E559000044B159CE933123B52FF0D58047DF2A5964A5709113920DCFEFF),
    .INIT_4A(256'hB43A06FE2220EEFF8B9561F080EA81D5F7FF65DAA42D3DA617A00412E2950F00),
    .INIT_4B(256'hCF0BD3D22E4E9FD476D49054A45A75BF07B0F07F3830B42DA29722F12625C000),
    .INIT_4C(256'h2083D7388064FB563CE3AB724AB7B0E60E90806DB3FDECFF537FF7F7FF600214),
    .INIT_4D(256'hFFFFE0C7FFC22721EAC70060601B49367FE3C6D5B200001B46F6A717091EC280),
    .INIT_4E(256'hF5A080CBFE6F57D62E38DA28347DE4228022BDEBD565FA96DA9FFF6FF0A04242),
    .INIT_4F(256'h808078ED6B3EAB08FFDB98908783F8B6FFFF1D9E6808F8FA084248867028461C),
    .INIT_50(256'h32C2E0F4BAD6AC4D6893AB2530D8408398C57531000406106DEB44F23552FF8D),
    .INIT_51(256'h8E150207757916FF4FFFAFAE98832E0E68B201FEFF56FF40C3FFCFAD2156E79B),
    .INIT_52(256'h12FE40C3A0FFFFFF49CC33F5FFDA6C016000317F905BC0ABD6EB7AA3BD070FEA),
    .INIT_53(256'hFFAFFF6FA8101B5854E7118813DD882021D93E0064FBA9A9AE7A3DE0C2D80300),
    .INIT_54(256'hBB9CD1FF611AED9ECFAA9542CD4D88EA348875CB6E1D62D6B8E805811848300C),
    .INIT_55(256'hD7E658EF7EC5AB0004A2095102FFFEB0FFB2FEDEBEC9FD50FFFFFFB7C8FF9F15),
    .INIT_56(256'h8573610C04D61495EB44F21D52FFFF7F9780C0FFBE4FC49CC91CB71D55AFAF7F),
    .INIT_57(256'h5620AAD7551C62927840D06CB6F4BF6DEFEE12E0FFEBF7B6B123ECFFD9C00CD0),
    .INIT_58(256'h6D56471DFBFFAB32FF66921742FFDBFF1F98FF8B4469C95901B7923DF2F52AAB),
    .INIT_59(256'hD8128064FBFFCD48FCF521ECA504495AB326C140AB4A2EB96944300B3249002D),
    .INIT_5A(256'h7CB970B0DE6DC9B72AE86F17FF43898AA8FFFF0000585614A7110800D2E0F0E9),
    .INIT_5B(256'hFEFF3F003F88FFFFFF067EFFBF4D93C811F3748C0C44399DB739E491565CF2C9),
    .INIT_5C(256'hAD3A6BC5E132DB286CC3CA2CA652A9223116E6F01D0029DB76928BA2D1E1FFAB),
    .INIT_5D(256'h0170306586E0F2FFFF7F1C084800C08D715901000D0089E944E21C52FFB15F52),
    .INIT_5E(256'hC2DCFFFF7E92867930FF845E04412710FC8297C02DCAE3FD3F777C02594FA7A8),
    .INIT_5F(256'h7266BBC9D4EA9569B84AA362AC4665ACF99310006E909835F4FF5213F5FFFF72),
    .INIT_60(256'h970400001B4DAC0CBB0922F240A2E3DD9E8064FBB8D6E7AF9C52542995C8207E),
    .INIT_61(256'h31120D20BFBAE94B454506FC656D2F73280015E97FFB5DFEF4033FAA41B2B224),
    .INIT_62(256'h130007F329BFFDD0FF153354FD0A1082510624482083FF5AA9451416FE45312C),
    .INIT_63(256'h1800000616A5632FC21952FF2BB4C830AB7BE3FDDA73CCA635FAB24F169EF883),
    .INIT_64(256'hEA1F114434FE47FFA9704FA6B2B7010EB3334E6041ECFE7F6694D8008240A659),
    .INIT_65(256'h4DFF67B2442E4849B5FF52A6DD4941A4A4D6670A37E0F0B5B9DECE0B3937303C),
    .INIT_66(256'h8064FB3EAC875ABBCEA64DCABCF25749BBB98B00109306F4FFEFF4D9BF9B2E28),
    .INIT_67(256'h77FBDF8821010891FE9FF679662E72759302001B3876ADBB083EB020A063553F),
    .INIT_68(256'h3AA07597DCCFF92C5DAFEF9F7A352D893C9404236B4A9F7B7C47F55F3FAE16CD),
    .INIT_69(256'h77555A5AD1A2388102251C12C4FFD97BFFFF9EF4BFEAB8582ED77280D80E1318),
    .INIT_6A(256'h8A308CB808733BEC82008400900D658000000610A5E32FC21152FF67F97F7777),
    .INIT_6B(256'h5FEE29B7C94C79793B5E041A912976E8A8FFFFF40F007F2C4DA0907445F7EF52),
    .INIT_6C(256'h2724297ABB1AE2FEC8FFFF0F6F0D48FFFB9A4E36E1CCB5C6AFEA811B3F9829F7),
    .INIT_6D(256'h00005C3D56A7BB0836F2A292FB551E8064FBC7EFF692F2C9A60FC7275E09A300),
    .INIT_6E(256'h245415050A3773D5FF9FD643F03C0E27624799FFEF96D066DD602F2DACC9D9E0),
    .INIT_6F(256'hFFD5DFFF90825044C2FF04AAFF275B2B673B0C69F3AEDAF5849E3CCFD3C46ECD),
    .INIT_70(256'h04070C56CB3F321452FF96559398EBF2CA3CB19425D12A2517343C01A86A49DD),
    .INIT_71(256'hCBC937B03095FFF74496FF26CB0A168B31A2E287A8EE54943CF804D0D7571C5C),
    .INIT_72(256'hFF95F7D5B2A7C31E51B51CC98AF40F17CEED556F5AE40810009342FFFFFFB7FF),
    .INIT_73(256'hFB74B4490025D8ED55FF919A88C416C11A016A8E71490C35E5AA76E4FEF4BDBB),
    .INIT_74(256'h2036265274FF6064FF9D0656478B53F810DC3A4EE7F588294E4034A1DDFA0164),
    .INIT_75(256'h1F72CBDB9F133C2F628887F4A14F61940F911E20411AC0F3087135319C7C96FF),
    .INIT_76(256'h001C8CC91510FFFFA3A2F06046940C9D57FFD51011595DBCBF1336BEC960B8A9),
    .INIT_77(256'h690AA0FFAD1C2075C19190057994B400E6125CE93EF20B52FF44D82B1E89092B),
    .INIT_78(256'h9800B0552122FAC6FFFF17C2BF773F0B0312557639CE5CFB1FAD9519D4A4B2FF),
    .INIT_79(256'hBB1F68FF870B6CBBFFFFEFBB279C31EDEB0077A4DB2C2EA21A533992591C0E63),
    .INIT_7A(256'h2A4E0FE7F70802E620D4EDDE330064FB56656B292D1FF223802EB86FBDF9EF78),
    .INIT_7B(256'hECEFD9FAEFA00044EF3512E94484FFFF44B411EA89B8FBA7B0AD9224DD6AFA10),
    .INIT_7C(256'hF4C6FFFFAA99662A9654FF11FF6B15944F433E27234CB520005A607855F9277F),
    .INIT_7D(256'h1546693D620852FF641E684E0006BFCDD4FFFF600852A4B3EA022A9B3DCFAA90),
    .INIT_7E(256'hA2BD69FF91E3FFFF6319BC5EFFF227027FF2E5C7262A847480C0987168007C26),
    .INIT_7F(256'h899145C0C8223935B4FDE8D96100DBBE9295FDFDFA456C10FF8FC43B411C85BC),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
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
module music_get_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOPADOP,
    clka,
    \addra[12] ,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
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

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h42242B09DB8248F1D9EB6E77C22407C74A40EF5561948DF635002352E2787AE3),
    .INITP_01(256'hD7A58BDF3D40854F88FE36EE2DB3695FFFC52449CF02307BC39B3A1D731D8D90),
    .INITP_02(256'h20000001B19BCD39FC16FDC102DEFDF3FD0FABB83878BF920D9150A3ECC3AC3F),
    .INITP_03(256'h00000000020540000000000000000000000020A0000000000000000000181480),
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
    .INIT_00(256'hA1E218C100BA5B2ADBFAFFFFFF14009808FFFFB243CA66C66A7733F5A9AE1E55),
    .INIT_01(256'h0347F5FFFF1E34010B28A087610031A45B45A73905026008AC8959470064FBFA),
    .INIT_02(256'h2C66F8E7C1D069514E4439201507A7F0A2993A0060FFC38EFFFFFFF01FBF789F),
    .INIT_03(256'h21B11EDB038D8A6DC230B4E6D273D00F80EDBE14C5FF57A5EE482EDBD5484ABD),
    .INIT_04(256'h6056C07876004880808123A000041816196A24D11D52FF14D0FA2CCDC6B288ED),
    .INIT_05(256'h2B2DD3FF7254825A266C02EC3FDBFDD22D20ACBBAB9BAF0A28D8001900F4F5FF),
    .INIT_06(256'h7F020DF0BC74A84CE6FDE7532804579B7D620F085B0412CAFF66522461C87F99),
    .INIT_07(256'h6C8A7D0500D2A01C4652738164FB4D7F0309EF3BFAC14849576BB3A4FAD50054),
    .INIT_08(256'h58837C2C1B90A05A4B83C2A3189439CF45C45067FF458480B5AF4F0600006357),
    .INIT_09(256'hF9605D346E1D68472A5BA3846B5988CA2A2A1CDC9C0ADC0F9DA60075D701D5FF),
    .INIT_0A(256'h6B23D13852FF443DB765C40FE7FFE60B9704206779009149807EBFFFE931538B),
    .INIT_0B(256'hD4477BFEFDD3D21603FDF9160F9344B7C6E3BC6200488070003D6C0004081618),
    .INIT_0C(256'hCB18F34FB9AA0064C2FB56DA37D7020511501DE9E05715C29DCEAE3A68006E00),
    .INIT_0D(256'hF6C835BB00FD4CF41A46667E7232386851BA8E28B086E50057DA93B5D545EAB5),
    .INIT_0E(256'hC1124800FAFF5F200A385A00202365602D7B0523B1E23A66C8888864FB2ED736),
    .INIT_0F(256'h4DDE3A4158A91D3AD200FB6F7658B11812064BD96D847FFC695343559F839E68),
    .INIT_10(256'hFDBECE435BD58A4649BC7DC2FB33E6C8365AA4112FA0935A0FC0032BDB7EDBA3),
    .INIT_11(256'hD851DB8C0880281820BC0018181D19331BD14F52FF314098880023B249AAEFF5),
    .INIT_12(256'h241491C5220099006209384D3750F763353D1BF57B5BF9DEC3EB90B4284E5E6E),
    .INIT_13(256'h35FDFFFF264A5D410569FB11249593D1030C443257AD80156A792C9112407072),
    .INIT_14(256'h7F8722D1807E6650900064FB40D7CDBEF24FFD1AF07DBF7DFDFECB6538095FFE),
    .INIT_15(256'hD5707152EB865AF6FE7D6529BD119E114DB3166C7F14DFED4C64000063576527),
    .INIT_16(256'h4D4C200D1D25683A96797B77BEA27F2DCB0E0456052D6B55A7CFB1F7953F9A48),
    .INIT_17(256'hE06B52FFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA303133),
    .INIT_18(256'hAAAAAAAAAAAAAAAAAA3031334D4CAAAAAAAA00C4008084924800001813140016),
    .INIT_19(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_1A(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_1B(256'hAAAAAAAAAAAAAAAAAA040000000000000022620008019CB80F64FBAAAAAAAAAA),
    .INIT_1C(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_1D(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_1E(256'hAA0080002000A40001000D00000000F0A952FFAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_1F(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_20(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_21(256'h00000000000000000000AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
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
module music_get_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[15] ,
    clka,
    ram_ena,
    addra);
  output [15:0]\douta[15] ;
  input clka;
  input ram_ena;
  input [9:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire [9:0]addra;
  wire clka;
  wire [15:0]\douta[15] ;
  wire ram_ena;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\douta[15] ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module music_get_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[15] ,
    clka,
    \addra[13] ,
    addra);
  output [6:0]\douta[15] ;
  input clka;
  input \addra[13] ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire \addra[13] ;
  wire clka;
  wire [6:0]\douta[15] ;
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

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
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
    .INIT_00(256'h00100021200036313D3734173942594C4552595F4A010000002A2A0100001924),
    .INIT_01(256'h173942594C4552595F4A01000000222A14371730343131146161616161616161),
    .INIT_02(256'h0000002A2A1437173034313114616161616161616100100019280036313D3734),
    .INIT_03(256'h3114616161616161616100100027210036313D3734173942594C4552595F4A01),
    .INIT_04(256'h7F000000000018181818333001000000292A1A1801000000292A143717303431),
    .INIT_05(256'h120F0D0A07050013000000000033240000000000000000000000000000000028),
    .INIT_06(256'h625F5D5A575755524F4D4A4745423F3D3A3735322F2D2D2A2725221F1D1A1715),
    .INIT_07(256'h004D1E130000000100000000000017171B3B2600007F7D7A7775726F6D6A6765),
    .INIT_08(256'h30346100006B0D0000001000001A000006000000007800287F00000000000000),
    .INIT_09(256'h4450232B483A205D1E4069414D074A453A4A2F34221943696E1A0A370E2E4F61),
    .INIT_0A(256'h7F6F040B151F6F4E0E341D7F227415481B00275C0148046201507058783E1446),
    .INIT_0B(256'h425104426E384E12092D260824612A297F13292D400E6D246923275F09267547),
    .INIT_0C(256'h3C69453B452C5A451447745E4D3B2D2C0842622D0A2309486248287606035A46),
    .INIT_0D(256'h2C496741561251301C1D4C1E563A5674534C2700245F340E5E5D373713670816),
    .INIT_0E(256'h703001614F47327D6F101E4962383E471C570C666408193C793102587C585219),
    .INIT_0F(256'h2569000008000213557E443F0D7F49507E345D30097100415239400A77041146),
    .INIT_10(256'h670B7F4E6E446F0844220E34525D6C3A3D3D27073B2C5E4B7F7E761F7E4A5110),
    .INIT_11(256'h0040155620436A674D7E0C6F643F7F63767F3F01585E7330126C44774E74093E),
    .INIT_12(256'h00785B6D00690B58305F6C78285500734000793A2A00610C0A22770A0003297F),
    .INIT_13(256'h4F432F7121213863207C37352E2C596B4B7F013C467F0B5B3100007F2F5F5C67),
    .INIT_14(256'h663063352A655D7F0310350E5042777E3F7F5B5B0006023F0D6F5767533F535F),
    .INIT_15(256'h403D52647A00420D33007A350401503078076E3D00327D212D477D7D1C193463),
    .INIT_16(256'h04000D11142544306B6A6A460303365A287F04073B7A0B15721763371E5E7323),
    .INIT_17(256'h452B773B5A7F1B09303A6B174A21394F1961603B6539791A174E5D5E7F4F2746),
    .INIT_18(256'h007A3B3000600B0A60530E0104297F1F3823324802300010391667612B3B5776),
    .INIT_19(256'h6A7D4C7D375E5A363F24271A00624D3B5B3A3F7B7D24037D3552326E45002340),
    .INIT_1A(256'h352727616A4477444031604561227166543162155A171034234C063F457F5F2D),
    .INIT_1B(256'h71303B00327D5B644D0E00013201151A357F41037A7F7F027375223C0E173C7F),
    .INIT_1C(256'h0D7F4A0D10773D747D2833431F3F7F7B5A6A261908082E2C2853570311512014),
    .INIT_1D(256'h207F2F5F7F73356B005F060C55314F720F7D6921664900481D263A277F42764F),
    .INIT_1E(256'h767F107F5661197F452D522B13414763612B0018031A4A7D077F507C08577A30),
    .INIT_1F(256'h477F7F775A256167400804104420402C403F2400020D0D29741E000C297F2171),
    .INIT_20(256'h56097F7C0F5B276B3033617B7F057F2C73044F7F7467604962392B0714585575),
    .INIT_21(256'h7F3E3F0F7E105D4E070721541A5E7F097F27777F14037A22174922264010066D),
    .INIT_22(256'h186C5D2878762B5552790201706052502F4700327D3A324F7D7B2B1B01001700),
    .INIT_23(256'h612D40697550001C0876157F157F05704370100000440614557E7D187E7F7B7F),
    .INIT_24(256'h77412018521818774A617F447F755F367515347F7F647F6F2F0D1528671D0109),
    .INIT_25(256'h3F7800000B0936741E781E297F28441D156E7F7B237F667771797F2A2A672419),
    .INIT_26(256'h0E7E7F77212367753A08002156353D674E3540187E6A7D717F047F0620422C4C),
    .INIT_27(256'h147F776D7E3A0843396A76346D456F5C397440605F327E3F517F771F23197D7F),
    .INIT_28(256'h4800327D7F7F452B306323197D1E0A402C377F3F42566B0C7F7F637F42547F7F),
    .INIT_29(256'h3B6902000300667F52235301726F7F4A6F7C24086D29775379030060504A702D),
    .INIT_2A(256'h7F731E7F0E7F104C0D741F75192D2C3D04303F1F523E0C06097A681A7F410632),
    .INIT_2B(256'h5F422B7F7F074B59677F7A7F347D3A3D0A0C4861170256643549524A612A3147),
    .INIT_2C(256'h27317E0000085F227D1F274052604C421E12065D0A15341E7832297F7F5B7F53),
    .INIT_2D(256'h00340B5E3A7C094A472C20202053510E7F7F7F2C7E7F6B427A7F7F48314F591B),
    .INIT_2E(256'h7F6521174F421F436E75104E2C7F7F0B777F7F75755B4208324D2E33533C2570),
    .INIT_2F(256'h7E1300562C575113031118306A40714540327D11074466241268674A07145845),
    .INIT_30(256'h581F1A3E49151D7068550B7D374C2100387459462B31321A7F7F676E7F7F6D70),
    .INIT_31(256'h35332B29706075077F07117D6A7F7F217C5670637F7F304B7F7F687F7F4A5173),
    .INIT_32(256'h32022B0B3635240843297F7F597E59194E7F7F39247F7F10507E3224160C6254),
    .INIT_33(256'h092B1D13047509604A2866724A280409766C7F71347F7F3E23025A406040347C),
    .INIT_34(256'h4303240028126A1433457F7F7F2A0100287166457F7F217701557F697C7F076A),
    .INIT_35(256'h327D55746F17203A6C56067E7F7F4E7115557F39547F2D4E562F096911663266),
    .INIT_36(256'h620F2F390760233D0205400A7E1F775B64300E2D5B5313030B7833406C2D4240),
    .INIT_37(256'h7F7F5F28706B61394567534B7F090C0B7F62611702183923740B5031080C1518),
    .INIT_38(256'h141B435A7D1E55364D79122B2F3D75556B003A5C19276D7D57567F7F2A464047),
    .INIT_39(256'h6376255177511C7D4454006818395C000035092934242152297F7771236A6B50),
    .INIT_3A(256'h534A6E175C454C54454C18202E060A7F7F2A7F7E412044447F7F370522311F4F),
    .INIT_3B(256'h1F7E160B10217C481F297F722A552A1B181803070E701C18604653297A5A4F53),
    .INIT_3C(256'h000D1C7A5313050048402807687B40327D7F794E13211805147C4F7F73647D2C),
    .INIT_3D(256'h2E580071042E123E606F67410D11545463682723330501202B7D3E7F7F161800),
    .INIT_3E(256'h360F3970006037714A131A03030C167C5F67735B51332B0F3C390F0F16783221),
    .INIT_3F(256'h0B076A451A1949297F7F6F754D244149277A641325350C40006A00667E7F1A24),
    .INIT_40(256'h156C3F242F6B057F6D461835237F527F381A0079607B7B443040607B20740000),
    .INIT_41(256'h15104471177C455F70120E0800347F7F44050B570020100027276620304D3437),
    .INIT_42(256'h762843172F7E7F29754B2E2554127E4A0D0833253F3D0C512B49152F78231249),
    .INIT_43(256'h03185E17123F7E3011407A4111601008751E4B5769061177701040690341327D),
    .INIT_44(256'h28160C0C0C0C0C7F1E614E53785D0C6D4E7F0A02145050500C333441110E0E05),
    .INIT_45(256'h23515050223148032E5C4A552B6822707F7F32742B4521000B09727E7F7F2C12),
    .INIT_46(256'h1652604A03150440050069207C0F021B0557411A7925297F15580335600C2711),
    .INIT_47(256'h785A5772350E4D50401719547F5F3448250331312B552F62384E7F273A54452D),
    .INIT_48(256'h6E1D4B2400440152240321020767757F5535256A6B7D4578241533786624343E),
    .INIT_49(256'h1F464367042107300A706C1440327D393507175E3243734F1D23400044507F3F),
    .INIT_4A(256'h3255684B4540697F4A541626522C2C2D3E3F7B46353A7E622D70631E240C286D),
    .INIT_4B(256'h636378650E4B07526A3A2E46256A510F2245634E3E3861210668452004003142),
    .INIT_4C(256'h513419611D297F706A6C2663363B784A2A0664094F496E7F7F7F1F3F01000338),
    .INIT_4D(256'h7F67637F097F723275104030785C267F175A453B490624006844392201004309),
    .INIT_4E(256'h0449553C345A5B0A66355A28713F2E3B204B566D4A5F36567A7E7F38085E7171),
    .INIT_4F(256'h161D5F4D6573687D68397F1D2D14387F7F2F5E5969547F3209211450210E243F),
    .INIT_50(256'h78172E21523A1F1A5D4A234D400F2E2C275308041160601E10313D40327D5F34),
    .INIT_51(256'h3E4038223C137D7F7F7F3F1816613A0F2F00117F7F7F1B607F7F0809432C1C23),
    .INIT_52(256'h41544A217A7F765F1A60507F0B48001B1100405503324C7B2D775C122E203E14),
    .INIT_53(256'h7F717F7D2C204648464032620E6D184A3D220118297F7E4D110C28085B1E3748),
    .INIT_54(256'h2E270E147D41186D3B732B11554C7013005C4005413111300921100850701E7F),
    .INIT_55(256'h1D7B79631B77007024120D66657729702F0857676B086E7C7F577F607F7F710F),
    .INIT_56(256'h5309040B606110216B0900327D7F7F4862477C6F043C75715F1805682A145777),
    .INIT_57(256'h69724A54547D741F0F04126F1D664D3B7F0E617F2B7F535100337F70006D275A),
    .INIT_58(256'h6D6E1A3F237573412D647945737F7F7F447F7D46484148087E033D3B10084F1A),
    .INIT_59(256'h22610E297F1301667F7E74556B4E255B45272027564D5C4B4A460D566F00705A),
    .INIT_5A(256'h48020C0E6D257F2B5F2F7F747F347D357F7F7F4444006843374A000003085034),
    .INIT_5B(256'h7F7F0C52497F7F7D7F0B7E7C1A051244177578161E495C2769355451563A6A4F),
    .INIT_5C(256'h6D1D554C22681E0B411671472312616364410631000C36332A5C675014157F53),
    .INIT_5D(256'h69092B2A33607F7F7F0573000E1F2A7309040010006A736C0E00327D1A7F6C25),
    .INIT_5E(256'h797F7F6F0F11442029275013005C10001A7408715A536C4A476F067B05483F2B),
    .INIT_5F(256'h490508136C760F6D290A2264410C3909293E000306443250233F5A647F7F077A),
    .INIT_60(256'h074A004A00606D2116000003082A7C172111297F531E7F6A6A6B353561203878),
    .INIT_61(256'h2049466116386217172903766B6A33031500037F1D454F740C7F284C296B7952),
    .INIT_62(256'h6840106C2D4F473D7D7D3D787F1C204064540C60007F7F5B754932426F021750),
    .INIT_63(256'h0400735051306A1300327D5B20456B6B27562260161C7B39123B375C275E701B),
    .INIT_64(256'h0040204F407575295D176B5C7F154A1022083618124C7F37670C006D2541535E),
    .INIT_65(256'h357F556C0140680A7F5F336F5E05080A4F6773043834096C6B461C7505266734),
    .INIT_66(256'h09297F1D005D0C6E0E3572795E7E65680E28206C221F6A0A7A6A3B7F217F192F),
    .INIT_67(256'h297F3F641B2209627F5E3E2207496D0E6500220060032E520202530B4E751761),
    .INIT_68(256'h231A5D436624397E611A3B35651E1A7E374014346D757E297F347F7D7404304A),
    .INIT_69(256'h1C3D25257A4B776F50222415516A1F7A7F67037F6B5703237F4F4640040C6458),
    .INIT_6A(256'h4C2470701B27566500002D235B565C0411411058202A2000327D4317065B2C77),
    .INIT_6B(256'h30347472491D0E1278003862165A377F727F0C7F1175764E22031E69227F3132),
    .INIT_6C(256'h24342A59083E7A35737F4F054B334F3F1D164029441B622B621A1F776179145A),
    .INIT_6D(256'h44664040463614490043085230176108297F302C677B6A296B666D0F2D673A40),
    .INIT_6E(256'h277B583F597F7E7D2B567F334F342C6860386A7F7435225563571A1726524062),
    .INIT_6F(256'h7F6B7E0F405C16387803187C7F4E624D501039253B581D054C3C5F1D1E4A3E59),
    .INIT_70(256'h303000132C6040327D2F153965497E5719671A7A65693B3F0E176310000A5833),
    .INIT_71(256'h39015E3A14337F240A7F6F1D525915190B44062D0A545C2710572528237C0511),
    .INIT_72(256'h2F3D7D257F52645B10703F4D4B52597B64723E4A1B0900001451407F7F417F3F),
    .INIT_73(256'h7F532E1B0E0037291F761140635C2134205B2B556F4D6B4A425E1D4F493B0E7F),
    .INIT_74(256'h6E101644716D017F1A323806141D5D0C000528463F000100650B27741E680329),
    .INIT_75(256'h1C64263343275837384C3C277378041111570061006A633748325425763D7F22),
    .INIT_76(256'h0A0016280D287F7F38487F624A3179526E7F76284C6A695D2A6E507F75184B16),
    .INIT_77(256'h6A367B6E1E2F5C300D1E28767B041B70233A792C1840327D635905264D531002),
    .INIT_78(256'h3F704370312D4570767F185B7F161A201E4261677B1C4D7F4C69365253057451),
    .INIT_79(256'h407C70554D175E7F7F395C594353352F46504A3674372B437E27726557221D49),
    .INIT_7A(256'h47285A3B5C0000030A21341E2906297F4B6C5A16362A64040E205B5D3128036B),
    .INIT_7B(256'h4C5B677F08037C080046082522757F7F226F484C445D7F3A2B7E466E5A5A0E24),
    .INIT_7C(256'h1E7F7F224C3C33301D5F0F6A2F567132092F2A0D792D473C18003B3B226F517D),
    .INIT_7D(256'h18706D1240327D44523D64150E4016597A7F773C515408471F6178410F4B6144),
    .INIT_7E(256'h782A7E7F32467F7F6E184D692B3C590F4C17482F5902180E2024567C04017130),
    .INIT_7F(256'h1641605122130C5E6D4966277A40006E772D35757A63597F1756602042031021),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ,\douta[15] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
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
module music_get_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[15] ,
    clka,
    \addra[12] ,
    addra);
  output [6:0]\douta[15] ;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [6:0]\douta[15] ;
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

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
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
    .INIT_00(256'h2B242440393B197D7F7F7F7F47200049147F5A26564C551E5F546F062D33730F),
    .INIT_01(256'h0C537F7F077A162B151002225200240058422C7A372064090C30046804297F21),
    .INIT_02(256'h0E407F305900704853622667330D21582C1C0F106D36177F7F7F3F7F7E396230),
    .INIT_03(256'h664D0947511D53045A07586266736D005A7F2D757F7F4C6D1742047E4B432A74),
    .INIT_04(256'h6049306D0008112E03273D431168703E236A4900327D073955037D765070241B),
    .INIT_05(256'h7B01082D26106174444D03662F7D557E0F5073642F7A2B0421004256443F7F07),
    .INIT_06(256'h7311603C2A12424474055F250C537F0A116900360D20156B3B5F1A304A321577),
    .INIT_07(256'h0C1C440004140D0E750D4814297F604800756E570E382146010713565105247E),
    .INIT_08(256'h752E20322750197F05741210343A1249596016157B4844417F511224000C405C),
    .INIT_09(256'h481749404D5B6156603979636D32294412301E7E50287B530F1B407612067A77),
    .INIT_0A(256'h264E40327D11656E6E4969751D2E5C7E0A03145A02521249587F7F7A6D35491D),
    .INIT_0B(256'h0774557F5B77053002236A00256D1D124F2A6700181136615631030068705420),
    .INIT_0C(256'h384A55282B6D485B3F7D2E6E74306B546A3C551511191A72002C43060754200D),
    .INIT_0D(256'h7F0D293C4E48244F4579491103163C770C127E705625166445683F7F6F1F0A3F),
    .INIT_0E(256'h7D00374A7F275859244842442440404C1050170A140D0C650B6821297F355229),
    .INIT_0F(256'h686D72122F631E2770782F7E734E4D491054001D64307116554D303808300F53),
    .INIT_10(256'h5F136D77281F1624641410431668230161522F6B174C696664785D7E5F17512F),
    .INIT_11(256'h1A6F0000112B306636021158102033234D04327D06653F2618306512077A0C4F),
    .INIT_12(256'h591E04625F720B580F562740382966271B38707F7D4D23011864000D5D613341),
    .INIT_13(256'h1A7F7F5B645F330063244654746616201D5634335A4724556425112563711249),
    .INIT_14(256'h000000040A0C740A682F297F6877595D117277772F6A6D232B0E3F6B71540A7F),
    .INIT_15(256'h46307575577E51502D555B5B6D72580B7E6D0A3235752B333F36002440604C11),
    .INIT_16(256'h20110A1116263C1512311D1222673F0A3B0C113216486A732A4452277F183448),
    .INIT_17(256'h07327D5555555555555555555555555555555555555555555555555555181722),
    .INIT_18(256'h55555555555555555518172220555555550000283D2510000111005010106151),
    .INIT_19(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_1A(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_1B(256'h55555555555555555500000010000000000009110C04007848297F5555555555),
    .INIT_1C(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_1D(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_1E(256'h02001A00000000000010000400340007327D5555555555555555555555555555),
    .INIT_1F(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_20(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_21(256'h0000000000000000000055555555555555555555555555555555555555555555),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ,\douta[15] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
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
module music_get_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  music_get_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "4" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.65119 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "music_get.mem" *) 
(* C_INIT_FILE_NAME = "music_get.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "8196" *) (* C_READ_DEPTH_B = "8196" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "8196" *) (* C_WRITE_DEPTH_B = "8196" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module music_get_blk_mem_gen_v8_3_3
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
  input [13:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
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
  input [15:0]s_axi_wdata;
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
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  assign dbiterr = \<const0> ;
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
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
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
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
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
  music_get_blk_mem_gen_v8_3_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_3_synth" *) 
module music_get_blk_mem_gen_v8_3_3_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  music_get_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
