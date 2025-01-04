// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Sat Jan 04 18:07:59 2025
// Host        : Chiaro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/ip/music_lose/music_lose_sim_netlist.v
// Design      : music_lose
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "music_lose,blk_mem_gen_v8_3_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module music_lose
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
  (* C_INIT_FILE = "music_lose.mem" *) 
  (* C_INIT_FILE_NAME = "music_lose.mif" *) 
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
  music_lose_blk_mem_gen_v8_3_3 U0
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
module music_lose_bindec
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
module music_lose_blk_mem_gen_generic_cstr
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

  music_lose_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:10]),
        .ram_ena(ram_ena__1));
  music_lose_blk_mem_gen_mux \has_mux_a.A 
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
  music_lose_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (ram_ena_n_0),
        .clka(clka),
        .ram_douta(ram_douta));
  music_lose_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[11:0]),
        .\addra[12] (ram_ena__0_n_0),
        .clka(clka));
  music_lose_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[9:0]),
        .clka(clka),
        .\douta[15] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .ram_ena(ram_ena__1));
  music_lose_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (ram_ena_n_0),
        .clka(clka),
        .\douta[15] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }));
  music_lose_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (ram_ena__0_n_0),
        .clka(clka),
        .\douta[15] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module music_lose_blk_mem_gen_mux
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
module music_lose_blk_mem_gen_prim_width
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

  music_lose_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .clka(clka),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_lose_blk_mem_gen_prim_width__parameterized0
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

  music_lose_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_lose_blk_mem_gen_prim_width__parameterized1
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

  music_lose_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[15] (\douta[15] ),
        .ram_ena(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_lose_blk_mem_gen_prim_width__parameterized2
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

  music_lose_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .clka(clka),
        .\douta[15] (\douta[15] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module music_lose_blk_mem_gen_prim_width__parameterized3
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

  music_lose_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[15] (\douta[15] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module music_lose_blk_mem_gen_prim_wrapper_init
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
    .INITP_00(256'hE01FD56055964A61E5F2315364345A13BD423653C624343A6650324407A13CD7),
    .INITP_01(256'hF72CF71B078EEBF7A0D40B150D61F6206434B59E8DDE4B5C1C2234361829D097),
    .INITP_02(256'h9E1FDB4074E471B61E2CF7E70A7007D798D20157EECA3285DBA2C5F9904C0324),
    .INITP_03(256'hEAF6CB9B913EFCC440A81595A0CF10DC5FB27254B48AE645A25DD232E7312E55),
    .INITP_04(256'h3D76D87A1330B69C7C4CB7A004C330157CABAD045D1E4372958ED821AF26A1E3),
    .INITP_05(256'h903AF6FE4C0CA712414034F7700FF905DF7BE7BAD58B7C2071851E27B0B65FD1),
    .INITP_06(256'hD236C22C3C0DF0D60185CC64F8145234652D060C000D80933437807BAD4C37FC),
    .INITP_07(256'hE2E3B8773E79732878586462D487BE704665A7D7E0D7BE791F34FC2D3070556C),
    .INITP_08(256'h3EC761C0144273F857C456500060CCBB72B4E3E3508679CB9668B419E86B033A),
    .INITP_09(256'h980370E8552A06A49B080E46B0F6746302607B5B0B20647C334505EBD9A23294),
    .INITP_0A(256'hE49EF27792BDB50072667E17F8010FEDF278150E3A2DC33293A63A57445028EE),
    .INITP_0B(256'hC0981797609611DCDBC6084720F0B726363681C99475E6B72D116EC51A360932),
    .INITP_0C(256'h28D78101E1B6B23D052017C2735370B621D12284F23A325D8815912894CE1715),
    .INITP_0D(256'h591DD4D7303054337C4C5B2052B378948544D8E741E322E055E2B14D4617C493),
    .INITP_0E(256'hA172F7277AD5BC735487B076414352D3A31E2030D412D1CCC050875472963649),
    .INITP_0F(256'h762A25C08D4070A46D786156C6D6202A169BB0954177C855E2F570672BAE6101),
    .INIT_00(256'h544715002350A3F47FAE198FB188A184808C110401601815105A0010CC18FF63),
    .INIT_01(256'h3006E06C34814E00FA5FBA23079B7FC10AC461C20812D0B62CBC20713906C10D),
    .INIT_02(256'h44A8EEB6F908E080200821800108291410EB0010D518FF9810D0C6B7F0BFF737),
    .INIT_03(256'h0F14F8FFF83F9E7380A129350C7055BDD6CC75808348694100B9EFFF3737C406),
    .INIT_04(256'h208425EC4B080915104A0130E318FFAABC88037D6209FFE47D1AE2E81D004AB6),
    .INIT_05(256'hF3C11C9C1E00EB6D8C47C67F177FC170403826248DE9B0339152FE22AD0A5092),
    .INIT_06(256'h106A0010ED18FF0C13DF21C30F017E7F0FC433E087A0060600081400AACCDFCD),
    .INIT_07(256'h290B3F60DF9363B38552EBFFB1D656F087B500A44D08A480300437C49534981D),
    .INIT_08(256'h20003889496257D669F724732C6686A2977E6B7405E2833840A740936DD63519),
    .INIT_09(256'h2614D61BE0DC22169D40B528A08CE088000C13601C348820282A2411F118FFD1),
    .INIT_0A(256'hA6A408029A1D5EC40BF31090EDAD0496BAFFE4DB1AF7C66A0CFBA9FF90FFF798),
    .INIT_0B(256'h494DB0FFFF88240F0008111C0E34581D10AB1B10E918FF11802EAC86F6EBD73E),
    .INIT_0C(256'h6D61C4966E22813FA23D3C1CA59DA2009852FA733B502A0D7DA1381F46C90600),
    .INIT_0D(256'h708829400104191410680110EA18FFB20E5E65CBE236E0D4748646936580E61A),
    .INIT_0E(256'h9A244607A1001EFE6E11CD60FD780E59EE5937D16E011482992FFF4ED5097480),
    .INIT_0F(256'h386B2411ED18FFFD75FFEB3A1474DD5D2E698D72F64A0A0A5260ECB2CEEC86BA),
    .INIT_10(256'h20480859077388709AFD2D3061B6935818B000800030160028F11B584B0C0817),
    .INIT_11(256'h1170A18C09985E2855862697AD4A4360E4211049B691C3CC7BEF4D319AA65DF9),
    .INIT_12(256'h62E8013D964A30C047CCE4020020230108C138E800C4091D20862902E818FF01),
    .INIT_13(256'hEEBA072706ACFA93A08B2679470D583300000126A6296011C8E36A31DD546CF3),
    .INIT_14(256'h012800508030978800852ED001A3A91060450701D418FFFAA1BA0E58DF1CDD34),
    .INIT_15(256'hE3F0770B0D35C4350F9ABFDFC161029610C147F1238274FF7B06B48D6D04D3A9),
    .INIT_16(256'h00862CAC00C6992C60062902C218FFD86EA55AAF0A702B82685743A7D17D7CC7),
    .INIT_17(256'h2540BC42B8BDF8813C00A64A12BD99DF769B1D87E15925EEA0D61FE30190970C),
    .INIT_18(256'h20EE1D018C18FF003588DCE1041E30F1D07FE88539FF87F83C30C0AAF3054F8B),
    .INIT_19(256'h1CFA529DC545EE8C3780254C0ED8113C222958A82970438508F562F800C7FA26),
    .INIT_1A(256'hF853C45860FFACC06735155614FEED2B01D44B58159760A48281686B3F24F287),
    .INIT_1B(256'hB7E48625293F653FE7005BB6CD9CD402A8986F2853244A0E2AE91F316F18FF09),
    .INIT_1C(256'hF73F3FC28F24A069E44D35FF15019121A92DD4E99150F1C497EE8798CC8A743F),
    .INIT_1D(256'h9DF300293E2A000F40BC6BDC52283A0F28D91FF16D18FF243D4F26D040B70221),
    .INIT_1E(256'hAAC1249A1500C787977AFF6671FAE16930A6EFC793C85268FCF586C040C98568),
    .INIT_1F(256'h00946400213C0A0F13E816306C18FF00B7EB42CE6F9D05F55FA004C52B8065B0),
    .INIT_20(256'hB9B9C155C0B70CAE41C095DF19048E098417CF1D120912D47F411F4A20885486),
    .INIT_21(256'h1BA913F07518FFB05A107066EBFA0EF3510308D07220547F39D0AEA446CFFEA0),
    .INIT_22(256'h00E545C96587AF00020C684085F88DFF26492D42FF254083803C6AD8620CCA10),
    .INIT_23(256'h08FFF860424D84FDD8F691F704040EDD6E805A0001CEF758BA2FE8FEA6214138),
    .INIT_24(256'h5A208C0038A6BA83ECD6E622B088900740BD66483004BB0E38E018307D18FF90),
    .INIT_25(256'h924A1DBEDD47957750CC59477610E9F10388190F038FFFF7A4E719C31D686428),
    .INIT_26(256'h9033C72C060C3882C0BC67AC00008A0F51801F308818FFFAD2E295FFFF00ED80),
    .INIT_27(256'hFC81BC943F8576B0350EF8123FD33E00D0DE8FFE6E0C878508C5FD03BF468DC1),
    .INIT_28(256'h00BC648C10009A0D11F80C319218FF8979F092FE2B09A6A3C1EE1BAEAA6318F8),
    .INIT_29(256'h7F8CCD294E67996728388C03580E635C9C004034C8F367220401D8B400081080),
    .INIT_2A(256'h486806709C18FF88C9077612872FA2FF730BCAF274457DAA02040151FF252981),
    .INIT_2B(256'hD842B8104C5FAECDC753BD88FDC03772045AFDD0FB0CD08308AC5EDC8628DA0B),
    .INIT_2C(256'h82CE454150D0703C34F878BA60F35D35B9E05AAD811A0F0F0040092A5DBF2F1F),
    .INIT_2D(256'h1919A6760000D809261802F15408D406C0A84CE40000C90F28802090A518FFBA),
    .INIT_2E(256'h919F58B8B2C7A5D19902008009268A20872F3B01D8B08E8247EBF7B496B031F0),
    .INIT_2F(256'h423B317E0314408900843680380039102A2820B0AF18FFDE31D9E2D36F60A514),
    .INIT_30(256'hE6F86B40C2BE304C5D6D5BA19340BD360002F5C22E80D9C0C7E4FFEEFFD33532),
    .INIT_31(256'h2831329000182910102801D0B618FF30013158AD051249070050CB159FBFCCF8),
    .INIT_32(256'h02BAFC1C80C4012886D1C246FFD098ED950F906A2D85B1B9727455E302204200),
    .INIT_33(256'hE0B62501BE18FF1C3FA2E8C81B029B8C60B27699D6F380B02280AB469CEA0800),
    .INIT_34(256'hA1E206B604404F0A80104053688C3AFE8CEEFC81E500C38410F4715800CCB935),
    .INIT_35(256'h0781012304F840FF8B47F872670CB56A12C0A75994FFD67630FA16F401283FDF),
    .INIT_36(256'h9E0266288728A3A5A26893A781B0D08268A873C001E4AA0F00A721318F18FFD8),
    .INIT_37(256'h830957E01A77E08F00C223202C93C10D600E2B4166F04CDB139F2E6E938D1B2C),
    .INIT_38(256'h6F38470CFE36C80FC899651482149A0C68DB24D18618FFF55F29C238F3553B4D),
    .INIT_39(256'hF5AA627AF92D162BB6A93AE00A914000D38CA22204407CBE27E79EFF7B9E99FF),
    .INIT_3A(256'h10654C480804EA0F65E324B27118FFFF33D9FFB904A907543EF9CBFF78F844EF),
    .INIT_3B(256'hADC100DF0423DEFB838939EA5FE6929D88F21E2035A4435A978C3101FF082000),
    .INIT_3C(256'h53C324F15718FF1C7F08AA79939879FE0314ACBCA834A280554A3F35AF17072E),
    .INIT_3D(256'h2428EA1E5916C44CE124F4557D80A37C28A1CCC63C04008148A45EE40A08EA0E),
    .INIT_3E(256'hCBE1829DA7C9891305105A5C7CEBA48131290E88EF43DEBF74AA8320195B3001),
    .INIT_3F(256'h9BFFF29922CC6252CE1C9653719C4003A82075E00200FB0E2BA923F14718FF93),
    .INIT_40(256'hDDDAA213209435457E7C8D3FEC5D70FFBA01C9A92A8811C5F9F1862A3810002B),
    .INIT_41(256'h031277808088548200B468740804BA0C1A5917714118FFC3BD7F44FFE5AA0547),
    .INIT_42(256'hEE3C0378022A0E1F99153600003D78E212461F21DA539897478E43C142B02F12),
    .INIT_43(256'h009C6DDC1B187A0F685813304518FFABCA2950284802AADFF32CE8C89CE876B6),
    .INIT_44(256'h28C17508C228FA971627C0506200F23391E52F56E20CD6656BAE4072EB949003),
    .INIT_45(256'h2AA913304C18FF68A8DD9C178AA0537BB005519D12D006254F9B1163AD98B6FC),
    .INIT_46(256'h170000CC324399C807F1A591D63FCAF1AEFF555BD394D08400945ED80318AB0D),
    .INIT_47(256'h030AA4FFF365900EE108212CF9CFA767D016E94B70BDDCF6CCFDBA9CB1721AF7),
    .INIT_48(256'h7F4C73D8529708957FC702390B00420400C25BDC0901190E29D920F05518FF18),
    .INIT_49(256'hA61E7F7891651790A66703D9B375282210A38C00103D52FEFF207E0EA3B3CD29),
    .INIT_4A(256'h1C723671C620538008F46AA800C00A0F004E29025D18FFC556CAFE1A83E30001),
    .INIT_4B(256'hF7BF0625FF531983E2831C102E069700C27597FED93958A10382E27BC6B2FEAA),
    .INIT_4C(256'h00BC68BC3108DA0C50801E114F18FF7B33AE4D9C98DE2A2303C28B3080FEA2BF),
    .INIT_4D(256'hEDF0CF55B8A60E3C108FB03C801D97589695892ED42AE81E15A1C41FD808A000),
    .INIT_4E(256'h50411E315818FFB3A26D67109680FA02149257B7436E8002870CCFD3C7FF8FD5),
    .INIT_4F(256'h4028420A672DC1306422420E63115B5580152D648288908000AC67784850690D),
    .INIT_50(256'h57754501DA2AA0104E6B7C0800000CF2A0761D57C0076466B4F9E074430D488F),
    .INIT_51(256'hF28FE13212E779E45E12FE6A0804788180346254410C3A0D3BD91E315C18FFE1),
    .INIT_52(256'h04070482C2DD6FC89A3E44BBB0CC738AAE6857A8E49C9889760013641386A28B),
    .INIT_53(256'hE1B4A1A2BEF40085C0AC541803197A0D29211E715A18FF7EEF7C8C1DE71A638F),
    .INIT_54(256'hFFFE80E811049F3C88AB402D40018605FF7A503954B1C86000BEA3A612789202),
    .INIT_55(256'h0086507800A13A0EE0451E015A18FFBDD55D865921CF129DE97414A428F87FE5),
    .INIT_56(256'h90ACEA3EAD7AE4200408CB5A792BE52EE9E95176C0525BB5581E22B4B1A01794),
    .INIT_57(256'h800620014318FFFF90EAA953F58AEA8F620846534100460599A9EA7FAB124580),
    .INIT_58(256'h3E14A9867B806906DA1581E5C7DF59A8CE9AD6B11B00D30000F56BF400C69A23),
    .INIT_59(256'h3732860231079F9122A87FD71F1A0187C38FCE76BDE5455FFCA529B0A32412C5),
    .INIT_5A(256'hC73CB18E5DC20B13570AC11C1808D80000E55A1079047B0A2B611A912918FF09),
    .INIT_5B(256'h169CE92B692C7CA877B8FC176D9FE63905B12128348A0050F2B4BDB9CA582579),
    .INIT_5C(256'hB553913402600003483D61280504C80E394B1FF12218FF90CB6849D9C9954410),
    .INIT_5D(256'h803FD99E8967E4968949404AAE81B38F667749C14AFF638FF17F1397EF96F599),
    .INIT_5E(256'hC0B061E0110BE80E394320F11D18FF385840C9B3E30E3093FE22D30B7FC6ACA9),
    .INIT_5F(256'h565049102023348F0A4085700D8700DFFD8E44AA925E7C1F232F9B140998C003),
    .INIT_60(256'h28A01A311E18FF4AF1624BF2FD883CCFC0E008B6DB97FA2226DBE258AADED965),
    .INIT_61(256'h022030BF38A74D7D8596063D7FE102FDB51F2A4D8220928630B1790412080A0F),
    .INIT_62(256'h555C4FBF9C60DF4CF12F417307A742027BE09CDE953525439869643C653F09A0),
    .INIT_63(256'hF963FF16A0DC67CF63A7FA89B820838300F46C7C00C51A1A40AE28012218FF00),
    .INIT_64(256'h62B0A8F0E5882F4CD5C625DF91CBF52DE847949D05827CD1E2D3A5C4F49A1010),
    .INIT_65(256'h02E5D72C988C40838088752001E18B0FA0C70F700418FF02E400396D396E7F5A),
    .INIT_66(256'h2CEB5E8EF52559FEC08DE74073012062A0C84F5FA06D512050F0BA20C486C753),
    .INIT_67(256'h88186B401363C90F3BE113B10A18FF69F95248962393808943AA8666B965C9CE),
    .INIT_68(256'hFF997471847F24350059089706A02D107232810D88638AA7F737BF43550D1087),
    .INIT_69(256'h28C121511118FF5396EBD3F320990E0CB4D9BA10C157808303892FE44E48FE7F),
    .INIT_6A(256'h6F5F0572A90257A2435ACD2419618A7FDA0800009314F48C003C66705F047B0C),
    .INIT_6B(256'h6DA9A02B5B4D0005BAAA6E4B28D6D7E20061861A46002943B5E1F61401CEFB30),
    .INIT_6C(256'h040290D90E7FC7030AE293A44298500230809150133FD90D306108301918FF01),
    .INIT_6D(256'h093C6CAC4AC3012815D601F576872C76208F68069EDB01724415A54FF29A7013),
    .INIT_6E(256'h46BB01F37B88E084403D6CFC0400DA1039A10D302318FFE51DDF5E96DB73D868),
    .INIT_6F(256'h80888907806B4740AA02B0BABCC271FF034E08D256E849980384FE44FCCD3418),
    .INIT_70(256'hC0A062F40B008A0F19D912302B18FF05800E29B08589FCE4B6E1D6409B5A2098),
    .INIT_71(256'hBDDEA9A23F8506A000674FB468E3BDED0046402A006D79588A592B1262189006),
    .INIT_72(256'h40F80B103118FF1C13B7E6567F79E100C01FFB9F4F4C00804FA1F64658B5402B),
    .INIT_73(256'h934C5E1B32CBAC0AD60FED9ADAF0A77A39418F82CB097484C0AD61CC00007A0E),
    .INIT_74(256'hB96439E010B21136C473FED52A034196490F325800C5DD7D1E084EDBE2EB68A7),
    .INIT_75(256'hB1E0797D06DF4B0A6B729CB55F00D00100185CC801001B0C4A5810303A18FFD8),
    .INIT_76(256'hC2252A8A990880242658C544D55317BF5E26E352B432DB6B11B16D047B2B2A95),
    .INIT_77(256'h2E551E17CA085406C03D50E8123C791010830B704318FF5E1CC63975B754676E),
    .INIT_78(256'h63F26945C445FBAF06BDD9D18EF2FE86469A6DFFAD2AD9AC0A4BEC80966443AA),
    .INIT_79(256'h40CC442422347A0F908314F14B18FF1A36E6FF8348309855FA3F49F5594788EB),
    .INIT_7A(256'h010800D1E400875B40F76F5FFD61978F6FFC1E0520076484C12414A8181C4185),
    .INIT_7B(256'h398321F15118FF575DDF002023FBFB6234283FAFC1969F7F3C2828B768003C20),
    .INIT_7C(256'h4CB7CF454952689C90E7175E18061902187422A40E254106C06540880003290C),
    .INIT_7D(256'hE5F2291AE89CD4D079EAA63AB800491527CAE702BEC3FB66A0001D902E84FF0B),
    .INIT_7E(256'h80C7EDF5ED38CB1667ADDA162620D388009646B000AC590C006D13015518FF1A),
    .INIT_7F(256'hD2530A693DD71C0FFFA881F8592E389236399DBF286D091F6B5307A40100FB68),
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
module music_lose_blk_mem_gen_prim_wrapper_init__parameterized0
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
    .INITP_00(256'hF996F2F6C650E74F3B80B760B7654FCA6ED2DE4832146012A9F0A4A4D260A63B),
    .INITP_01(256'h51441ADDD20214E877211480306261C160F62771E0529B22BFB8B7B6394A10C3),
    .INITP_02(256'hFC5F9370D6FAAF4A4D90A166B8969B8CCF7249762170364EB01F3DF8628070D5),
    .INITP_03(256'hB578A0C5B507E057F6B4214051835D050360D5936F4085B12527B0B5F50A56C1),
    .INITP_04(256'hFB6709243C35F4BE4F67171FC264B5A3DF07EC37911434551BB8580B3300A3EC),
    .INITP_05(256'h36F5E104FEADD4FB7336B7AF5FB6176095D0B4F4F02920E6CBE05676D5608A32),
    .INITP_06(256'h5DE4E487A6A435351904D414390224342857B9E5DD30F22094D1E015CE4570E1),
    .INITP_07(256'h92E0163B02F42E618946E0F4EC1A8BC4325C3920B4691D98A8670586E4745770),
    .INITP_08(256'hFFFFFFFFFFF36CF7FFFFFFFFFFFFF62437FFFF9D0E9CCA41221430EB80034003),
    .INITP_09(256'h00000000000000000000000000000000000000000003FFFFFFFFFFFFF92CD7FF),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hB3BD3509AA205383001462B000C24B1C602E20014618FF015915BEE633A90024),
    .INIT_01(256'h632B1EB6A34A2632167D59595C27858407900D1A38660644690E9F9630F70A00),
    .INIT_02(256'h300593C01748090A11211C313818FF111A380420FA1656BF498DDA9534102F0B),
    .INIT_03(256'h00DE28C968025DF1633CD51C78D2ADE952BFC05AB650828F19814502FF98D082),
    .INIT_04(256'h195B1D313418FFF714E0691A7C1CC604AC3DCC2CF55761C74043617DC04EBC02),
    .INIT_05(256'h0052FD6E050A962446D54645448000A424CCF58C6E08D00240995F1C1309DB0F),
    .INIT_06(256'h5599583E2BDDE23E7282904C81A0066883E0C6B801E67E174777B53F4CA27E75),
    .INIT_07(256'h2141637E325B0CABAABA36D934A4100320A46FDC151C0A0F11A323312A18FF1F),
    .INIT_08(256'h00A7653067D142E8FC7E217AB41D3649BE84009026C0D51F09B86C768001F087),
    .INIT_09(256'h2014EFE48308D000003C67604020EB0E13631A311F18FFE9600E08313FBA8E37),
    .INIT_0A(256'h666DB0086C0200FF5CB15E0300C58E572F59FF9CE359D025A715DD4D5B86841B),
    .INIT_0B(256'h40B16870001D4A0E31210B311818FF7AFB9D941500F46AD5C40C0004005B7C40),
    .INIT_0C(256'h656640FDFB0DF5800A1940E59F0C087BD6194155F8B29ACB1308001D10A4D003),
    .INIT_0D(256'h10F808301C18FF7308290312B654FF552220C0A00440F10D2B68ADFAE0350000),
    .INIT_0E(256'hCE8D00A4B503611E05B5D26FEEE4CAC11E202D606B24400300306D2401001B0F),
    .INIT_0F(256'h7CACCCCF9855F78A4DD70593B8B0192E75DBB26363E27EEA8A18F6E2A00E68CE),
    .INIT_10(256'hB38C44F8A2310203277FCFBFA00AC48980245EE00363980C316908D02718FF01),
    .INIT_11(256'h60299555A5A53271050A366161BEDA38C0A003777F518D8285BA5D4E034BCC24),
    .INIT_12(256'h2268BBE86998A001809C52C88234590F10210A703118FF1CBC212656FC1FC407),
    .INIT_13(256'hFF1FB800EC8A9AE6E3B2137B51ADA568991A08E0FBF4363FD31485304D1538D3),
    .INIT_14(256'h48A43CA8036F780C008109503A18FF68AA95100B98758076175690D8000A2442),
    .INIT_15(256'h2F6F2DCFBF7521C2C1A0E3CB201049AA489BC6801A00ABFF973B140080046400),
    .INIT_16(256'h10E001114618FF6D04287181F42D500F4103240A8D4A05B7CD3732CCD202A400),
    .INIT_17(256'hF12F47F43845A72C442A38001EAB13D4F27068A606885880200037700104590F),
    .INIT_18(256'hFFD3DDDE8EA4D80A3B4E3B0D9BAB913168D627224002B7A3FC677BC2962A0180),
    .INIT_19(256'h3D00C4DE0DF4683ED970E2043A080080208C2E900004880F1AC912F04F18FF50),
    .INIT_1A(256'hB4AD7AD72F4ADC74B60630F5AE54A9E71F22C1E82C1CA578D13E39400D24A152),
    .INIT_1B(256'h00180A38FF882400200827A04A080813105001105918FF1FFFFFF0F843D1C265),
    .INIT_1C(256'h343E2BF8701ADFFEE2095E07497AABE200003DE0828CC0743775B16A1139C29C),
    .INIT_1D(256'h60081B100E04A81612E800106418FF28ED01C7B031BCF56FAF23AAE3CD513800),
    .INIT_1E(256'hB9DC697A9D65894A42705E2000562406B12F47A1C98EA5CE69914B801008F090),
    .INIT_1F(256'h13C122116918FF47A1BB7143726D09B02118D64904D518AD9BE47552203A0072),
    .INIT_20(256'h2C123612027D1C09BE726AA9256E8B84A1F22B92098DB0040020020026304823),
    .INIT_21(256'hF23FE96A8DAB2B4A16724C501706BA54D294374D4060080050DC6DD25FCB65B6),
    .INIT_22(256'h19B18044EF60674D26004F56B809F400208819704B08081A106800105F18FF09),
    .INIT_23(256'hFF26BDFF55349068CA0700E0DB45D38D7128C1B1834640E131006C24060A12FF),
    .INIT_24(256'hB65284E2F6883400E0840B080000181E106000105F18FF9E02A252744A6DFF57),
    .INIT_25(256'h91443300105A362ACAC9A073F36938C245AF2A6E989F43D438F6A496F283D06E),
    .INIT_26(256'h20842B2C1518381B10E800105C18FF3F43D714124AC8310CFE9998EACFBC194B),
    .INIT_27(256'h8A3F9A677F865056A2061E00048015C5A5274CD962CB2103440900858C087080),
    .INIT_28(256'h10C000105A18FFEE9F890C33C95DC3C040098C809D665C7929299240008F6529),
    .INIT_29(256'h8903A7010061D0A2D6D3D633AAE9CD5EC2C0B4ED5F09F4002084121C0F04A819),
    .INIT_2A(256'h9EB94C7104145011808048681D5DB6B66851FB5888861018AE6158E6F9B73474),
    .INIT_2B(256'h2D55E8B33261E318425801268F886C1140040B64120CF81B115018105D18FFC5),
    .INIT_2C(256'h7B0321F2D83FEB5C07E8F4D420D7CA00980A7BAAF6EF06AA2760F80010001CA7),
    .INIT_2D(256'h5CB2A427908A100700840F546018F81A152822905C18FF2BA23F7E331E87A443),
    .INIT_2E(256'hA8D3BFD645528847006D26EA60055EFD762A3A3835BA8D00150DFFA57F5707AB),
    .INIT_2F(256'h808C0A140424E81B10500A905D18FF8BA8A1B884003C4DEC9A4F20153D1E1304),
    .INIT_30(256'h21091A92E5FFEB0E3890004040B644FEFD3E8186E480ACDB0A52EB2B5D95C890),
    .INIT_31(256'h11A821105F18FFEEC04300F23F71B1FFEC50D7BA4973090512E0E4FA1FF5B153),
    .INIT_32(256'h4E170DDA6D06BBD529B9EDAC30004084B53EDBFA3488E880008C0FC001041815),
    .INIT_33(256'h96B5FF3C2EE17B0015FFFFFDBE6598AD007026E9D6D18B96E8B4C0AEFD5E8A4B),
    .INIT_34(256'h20C55863B7A70DAAC50C08246989640F408411A801041814106000106718FFC8),
    .INIT_35(256'hD4604C6FA8FE1711F02100A72B807E69A1882AE21692F063006A95EAF65E2EAB),
    .INIT_36(256'h800F1049FC09E48060841D684A08081512C800107218FFF7A58AD7A3B61B7277),
    .INIT_37(256'h362ED70E72B6EBDBA53425610A0002004DEDDF3D6116068CFFAA9BFDE9FFB0F3),
    .INIT_38(256'h00080B803908081710E000108018FF25BDCF3902AAFF8EDEBBF0F0F79716F577),
    .INIT_39(256'hD5C3FB756091A95108011B0AD4EB7D62447836EA0101C28FA9EFDE06C508A480),
    .INIT_3A(256'h11280B108E18FF000098BFDF1FE4501BC04EB3802E83FFD2372D3668940A1850),
    .INIT_3B(256'h916AA9BB8C0A81D838191183F06FFD6F2B7CCD31AC884091C0840C74010C0816),
    .INIT_3C(256'hBFD4756F734DA000FA2AFFA3B1873EC51DF900287556D28EEF2F4E69128A0800),
    .INIT_3D(256'hA2552AA9E0FD30E9973A750C50089480700825A44B08081312C800309618FFD6),
    .INIT_3E(256'h416B64200078A7E2A75F05D6F444004BEB71EDFDFEA4B878FF035D0000A22BBD),
    .INIT_3F(256'h6FBEF3E73C88608F00840A907708481914802210A718FF910806949B0E4DC862),
    .INIT_40(256'hE8D7D535181051F41C5C64CFF1CBE2E9B9B16CE0A2195129634E7640A837FE6D),
    .INIT_41(256'h008C13B80020C81816282210AF18FFF93F7FB23AF3B74190321B952849E8D410),
    .INIT_42(256'h14C1DF553F5535A3132E79CF34447040EE12A0D4C1DCD712575B7CFF8A892480),
    .INIT_43(256'h10B00010B718FF5555555555555555555555555555555555553031334D4C142B),
    .INIT_44(256'h5555555555555555555555555555555555555555550800002088143801041813),
    .INIT_45(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_46(256'h55555555555555555555555555892492400411E00018881411291E10C818FF55),
    .INIT_47(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_48(256'h55555555558A048E208405C01C61973352292491CF18FF555555555555555555),
    .INIT_49(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_4A(256'h0000000000000000000000000000005555555555555555555555555555555555),
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
module music_lose_blk_mem_gen_prim_wrapper_init__parameterized1
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
module music_lose_blk_mem_gen_prim_wrapper_init__parameterized2
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
    .INIT_00(256'h080848265C68577F716F55330C48512820063001316D300410635E00227D7D4E),
    .INIT_01(256'h33600C0B145E0001171644735A79077A4A0C013A05046D315B2C306369530116),
    .INIT_02(256'h0C6438190330311E204401012106500401635B00327D4927000C24065F7D666B),
    .INIT_03(256'h496B376F6721337E6304000078556F7D744030431D510E610862455F7D3C1F5F),
    .INIT_04(256'h205301012116700431235C40327D23594A2D00341C7417272D4E362800105106),
    .INIT_05(256'h7354412807545B0D46607F71166008301007246E130E37641255772D0E103128),
    .INIT_06(256'h11636F00327D494407707F7F510F41440C4374401530061B00186000757F3D5E),
    .INIT_07(256'h30782F5F0C1A36173200486B372E4D5A61050035013051282051010105355204),
    .INIT_08(256'h4246084169370D304B09146C1678756B4B486D5A4638122C623F265677426814),
    .INIT_09(256'h28503454704462596144000C18785037201601616122223943210E00327D516E),
    .INIT_0A(256'h3076694741587A7E42612E78370E361B7D232E68081D36071870227F397F7624),
    .INIT_0B(256'h005A65191848113130160701612A421811617040327D4A6C2800227E777F6E38),
    .INIT_0C(256'h4F5F24302930244E3D2965450941050018247A05390A6148120B54514A58202A),
    .INIT_0D(256'h245246422126700470255800327D535921383D464844704A77041A22542A2E15),
    .INIT_0E(256'h04620D070E5A6A7F4F5C7F561E6E6B6225362A7E2800203A0E167F271610112E),
    .INIT_0F(256'h23602040327D0A3F7653734A4B2116752161212206033C617B001C7C70725056),
    .INIT_10(256'h050307020D282750550E593A555F185B3642000000463127400A110221767000),
    .INIT_11(256'h1B20172B4A335333535F140F4009406626646617671D724B7C1C2F361C581F2C),
    .INIT_12(256'h2D3B65101D51483E3F2A4C0002427321400E0C010410320030251600327D003B),
    .INIT_13(256'h1578746D030B2A771C0370026B3E6E04000009021A5815042A597C7173572960),
    .INIT_14(256'h5303005000031242400C4A03045C10050C680240327D490760734D3C5A736423),
    .INIT_15(256'h613E53050D4222021A03744D087C3B0A5173667F2C37637F6B1E181348362E40),
    .INIT_16(256'h000C3D03062A510030250000327D00225A54606B1541382B407A27440A4F7F64),
    .INIT_17(256'h672011610551235B00202B0822266C284A3166295F77606822647734000F125B),
    .INIT_18(256'h1E2D7F00327D101A065860010B1F70665425292411150D1B0A0B241A6C145122),
    .INIT_19(256'h2070437E1E06333F18701B014E3E196F60100B60024D141D400E4002543A2102),
    .INIT_1A(256'h7F36724070052C54156B204E06652E3E460F67253426084B663E7E7C372D6808),
    .INIT_1B(256'h29077A5C4978184800147B7B0602541C25433F02016A305734702B40327D5512),
    .INIT_1C(256'h607C5813430A422E7A0A1F4F0C2D66456456664809016D484B5B4423683B7B7C),
    .INIT_1D(256'h5C3874220810741D60401C0212302161566D2200327D23225E4664742776086A),
    .INIT_1E(256'h69021B3B000E0C3A240A2A5C141F5414747C6B343B4B0300716E6060606E147F),
    .INIT_1F(256'h36032D021720101661727400327D0012482B1F4C7C3308511347632401086143),
    .INIT_20(256'h037E71380F35520701007F6B075E3F5505675F5401796E7F197D431336405519),
    .INIT_21(256'h102D7300327D737A211E21003F4A7E6E080408317C5B7F3A370E770C184F5A76),
    .INIT_22(256'h00001C292A6C635008000B41390E6B03007F00730218551D7300480111680008),
    .INIT_23(256'h7F606F147F607D774A0E041520437F705040192008412C6979083A0123684711),
    .INIT_24(256'h3A0900604B5E057D7F443F0A3201351A52003F0120127058146E7C40327D2428),
    .INIT_25(256'h0771146A5C5E59037D1C3C000D531711161C700E0F60134F60677A40034C4067),
    .INIT_26(256'h475F0F76020036195200400161725018376C7942327D212560607E7F20697828),
    .INIT_27(256'h4F3C0A7C417F255F0A111524031B4852493055160202600002631F4671007F7C),
    .INIT_28(256'h5140400111420018142F0000327D7C2E7437005A0B40755871200135667C1007),
    .INIT_29(256'h3D2F28354E134A441A5806223D00585E02042B536F7F741340004B630200151B),
    .INIT_2A(256'h31717F00327D272C2B72184C26657A7F5D0A5557561E6E1810454A71116F106A),
    .INIT_2B(256'h790A6C103F364C687E024B542E3A552C02203B38241A541C5100402101205146),
    .INIT_2C(256'h6A3654540F4D2E0D24565B6100542D31342553342E2920000010006A2B6E7973),
    .INIT_2D(256'h7F315727000044053200000F3408131557023F0111723079362A7847327D3E15),
    .INIT_2E(256'h497111275238161C0C000032494E0A697F7F7C59276A24091D15170C4E6F0A59),
    .INIT_2F(256'h51564C4A2808732530500F01065C112113297E40327D73641C5913411122106C),
    .INIT_30(256'h014701507A583525024526381C0259424004707F00427D414E7C7F7F31314149),
    .INIT_31(256'h406A03011108200151667404327D494175156843221F4905045822047F33723F),
    .INIT_32(256'h35311B48655020005C2552694D5F2007047D1C655E32611E0D41780400495120),
    .INIT_33(256'h1E247240327D72755A4A410A4E6F1917014410127D57342B36542A63280B0040),
    .INIT_34(256'h316D1C0635174B1203047826070E1E1639785045000B741C405C522406264100),
    .INIT_35(256'h402001352223424F7F52067C187342776F2E3328705F1E24766624543054360A),
    .INIT_36(256'h0F6B331319470579350A0F700A01741E67734422404A50011E6C4200327D0E6B),
    .INIT_37(256'h04075E2E190F760A721F7B1D5C1B00004E3B162E086737556C423D06356A7F7E),
    .INIT_38(256'h4F40013C0450742736634803011871681C2A7200327D1A4D5214000620661066),
    .INIT_39(256'h3E267F12160A70522A202F09764110203B7458471640554C19287B735E18647F),
    .INIT_3A(256'h71564504116A3040106A0800327D40382F636E183A5F0D162F0D47105C0C6571),
    .INIT_3B(256'h470F410C3C737D786F64436A3D3F723B3B3F2402087B7D7A4E62366300185516),
    .INIT_3C(256'h076A5C40327D0C476E5F4560344C507B57343672205600103D33247A136A0E40),
    .INIT_3D(256'h6B4C04121157072521270A31597042581E005B2C0009361E2A53470301300110),
    .INIT_3E(256'h6A50346231296F6040315B5B7F0425431419337F710156007E47047E2D2A6F57),
    .INIT_3F(256'h096F2F0D62616F435E3F31724010551B2573440221004020746C3140327D6477),
    .INIT_40(256'h6269701040017956594460300067791F1D53270310365120237977465E200039),
    .INIT_41(256'h4E1400000419741B55433F2203306168762D1540327D6778626448773D070D01),
    .INIT_42(256'h19155603044060184452261E2017477E187F022D0037032E156D00145E700B3D),
    .INIT_43(256'h2533260133347020172D7C40327D0A5269422607480C60400022370D73074C50),
    .INIT_44(256'h623607002D75647E321355470030626C7F5460477F6323305B092A502E48551E),
    .INIT_45(256'h752C7942327D583A6A3C6A1C0678532844321B6F36421F747F733F7F5059704C),
    .INIT_46(256'h3B00187B600E021008144C2E777C1B07422E79106818141F26034001110A3040),
    .INIT_47(256'h2E27175F4A7862793B73410C3247050E2C3B721C62580E5517432E3C31672746),
    .INIT_48(256'h351C410056595B561B216506024F121E401A27215C286050152C7D00327D0000),
    .INIT_49(256'h0A7D7D702F781415666B1063187475371E2E3C02000D2A7F4A5D4E7D4C41357F),
    .INIT_4A(256'h4A35764D02403513000E3C02046A5000332A2000327D686B4A7B0E4146084060),
    .INIT_4B(256'h1E6F461E4C05226726035C0D390C3E44683E7E2046314370281F1203050A6A03),
    .INIT_4C(256'h7000284101743020176C0047327D7507225251027245703C104F7014060F0E1E),
    .INIT_4D(256'h541C290F233B102A620C02024A6D4B03440708395B305F04435F48240000351E),
    .INIT_4E(256'h182C1C41327D441607055D7E7024100450066220110D456C5D3B790D68033975),
    .INIT_4F(256'h0960301E44331000153B5546057D680E59735D440200161A73033C0206501148),
    .INIT_50(256'h1D2710575301193C370858480000327F7D7F22734F2115775622101B725B710E),
    .INIT_51(256'h49302807035E0D2D79216F130709791953463C2211727008732C2500327D6F06),
    .INIT_52(256'h52000006706C3E05762D7A687E42614C352B77376E1D185D2044620226347363),
    .INIT_53(256'h3210730E6A050F1C57033E4210442061762C2241327D686C0F6B006328083F37),
    .INIT_54(256'h081F0272400F501B312E350010405E7F3507777E2D362816042D0A105B4A331F),
    .INIT_55(256'h400C5203001060011E2A2C00327D4C674E317A68643562141A300A602F7B327F),
    .INIT_56(256'h4B40441E770F004D0A000B3C1E315C533B4B1A68076C490642593628000D5448),
    .INIT_57(256'h302C7C00327D7A2B7C72603E5A676C2B6905616200406D015D1E7F291340514D),
    .INIT_58(256'h42730D180328393A14306C530020197E517D781302401619405E35020C7A1000),
    .INIT_59(256'h0A3D0941004D7800006B0C7F004040527D5010150623280A7F03537B2D286670),
    .INIT_5A(256'h7F66447F12420F702D1004612610151A2143414301446120756D4840327D6171),
    .INIT_5B(256'h2E0F161428115A7A5B0E17094C77476B7B363E1F411F0C24462F6F433D2E106E),
    .INIT_5C(256'h7B74127A061E121E220445226E386060076C3700327D17021945695A12616614),
    .INIT_5D(256'h174F0802495B5000095C71296B051978741531327251364B150514655C017D3B),
    .INIT_5E(256'h23133F0253084020076C2840327D4A327F10116404710A29076C097210793E66),
    .INIT_5F(256'h560810221508521C70312F6040204015004C4D76585D40240656576422433215),
    .INIT_60(256'h176B0F00327D35211F0D1B270E1E78654C01231E6159161020016E7E65347155),
    .INIT_61(256'h0A600B5968460100407D564F2A672717711A42630242551F004A200211205068),
    .INIT_62(256'h16407F22426038340150534F043812441B021E3526631443156901243E390036),
    .INIT_63(256'h3C0F7F00567F147F7F4F373C000C7630400C40034E306201302A7F00327D7C3E),
    .INIT_64(256'h2A115C6955210C565D7F336F6B466F1B06282A19394A00265A77123A315A032A),
    .INIT_65(256'h172526700A1E331E6642200240046000122E7D40327D60236C28601936195565),
    .INIT_66(256'h301A2E0E50190243707A642F60744641014B7F5672740900184577004E243D0E),
    .INIT_67(256'h2413430214403044106E0940327D1910582F6C227C022175740B1D6578391A44),
    .INIT_68(256'h46102F05741067617B3D0069184C64380A697C75271452572965256826083516),
    .INIT_69(256'h0C6C0801327D074F4A063F27513D26536D363A30480018016227004306057A23),
    .INIT_6A(256'h23763A670D37136C0A52153A200C7819360000007F0816115141304201352250),
    .INIT_6B(256'h2A43726E56312857676941047309724F1624082F00262E522067000054725945),
    .INIT_6C(256'h02260F037F3E70616D37005C0000152028521D0121204008742E7E40327D0051),
    .INIT_6D(256'h0561603F7F07034400021210653D2E117A38405900383B1449644B0F5C303347),
    .INIT_6E(256'h626E6E240402351A01421901736A2010436D7D41327D6C014B59085752792A60),
    .INIT_6F(256'h445013050D787B0231684C5F1012622C521F185009200D502362320826101C00),
    .INIT_70(256'h2243290123527058022D7E00327D182A0300453A391D196E02230E732A4D2607),
    .INIT_71(256'h017F39443C1D40083258474B201677586F77340058344B4B423D487F12001520),
    .INIT_72(256'h64737D40327D0B14705E307D42541A014062595B4777110061291B2A67324230),
    .INIT_73(256'h2F014F2926111D7660507F6A2E2B2A771A6D28210710781B43031601114A5046),
    .INIT_74(256'h0627633F542D6F3F24016D2B5D282474280110047453050A2D4A286216320243),
    .INIT_75(256'h2C19093F5525364503782E480009342022061A4121723014536D7940327D7332),
    .INIT_76(256'h066E5913516757232F795E4539570E583C6843092A45484F5A36173B3F542913),
    .INIT_77(256'h0B6A165E6468141B1106190174680058176A7947327D044402010F73292D292A),
    .INIT_78(256'h60090250454A4D4D2621513C4E2961235C2E01082803314971302325566B377C),
    .INIT_79(256'h235628026100005037280844327D5D743F69277F7E5A553F237E085650631E63),
    .INIT_7A(256'h140014695C344B4726714801743A6D473F070E453C3E714F267A34692011531C),
    .INIT_7B(256'h3A681307327D215108006240187F7F6253737E477137733D41041F68224A1464),
    .INIT_7C(256'h697A41604C7E0D0275630021007F2263782C3F1A6000531D5107270206304030),
    .INIT_7D(256'h3417414076574F0E14402B30011001620E3F38164918330560010201787F1417),
    .INIT_7E(256'h16204E764A3A13615445483E000D552F405C520344187006126E1900327D6A09),
    .INIT_7F(256'h020D0524176B6179550040514B6E7E0A501E15094C0015481C767D29054F3C10),
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
module music_lose_blk_mem_gen_prim_wrapper_init__parameterized3
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
    .INIT_00(256'h552E68180243751B000E31024E3201021E2D6340327D2700362C0A0F19576204),
    .INIT_01(256'h454C10363244383E32334B43521E496E3C1565665F32301D0E22440E284E5019),
    .INIT_02(256'h17732B020D084078746C2E40327D4465786810640B3A6F2846414925267B5C11),
    .INIT_03(256'h4373250E1F28477A553E0D0F595F0F2C567D217B6D58192C68045A700602551F),
    .INIT_04(256'h052C4740327D554A7E20280A3926784733343D691F2E060C3A51345708141849),
    .INIT_05(256'h0B2102091C282E0D4158161A6C4B06003D3955300609341B2843400371021079),
    .INIT_06(256'h30631A464D282A46001E26700568600C5F71186000274A477F2A496F0443726F),
    .INIT_07(256'h1D165F21365D087C505101012610151F64732922612A3078076A5140327D1F15),
    .INIT_08(256'h0B755C7C4C483D3275217C7B0557403A1B51003634555D04070E2D005D715A20),
    .INIT_09(256'h6E603F300210151761362902011A7054142D5000327D690B3A100D6429194003),
    .INIT_0A(256'h40357D7B000D79435154301D4C6A29101A7F0A417D411F73057A0A5404223461),
    .INIT_0B(256'h0343130271300010742C0C01327D5F04273A4A32625912040B27280378760870),
    .INIT_0C(256'h4B1B1A075A3D20400C345D154911281620214B09780E51014D1D19002A11361D),
    .INIT_0D(256'h136F6E00327D412F761922551B7F0F2C6B00001A04743055100E00241512002C),
    .INIT_0E(256'h00003018017C111C096A0C3B7A055140182E036C0A09501420111E42204E102C),
    .INIT_0F(256'h0B29570D400919140A550D63782E0E1E1815136024737E2620161048453E0535),
    .INIT_10(256'h083F38602E00015F59707E680438741A310421011340101C016E7E00327D4E14),
    .INIT_11(256'h31566B2C023E4452133C312A0713195949384478754756524E460D0D0A28562B),
    .INIT_12(256'h062C191B0109741B23531D2101781160732C7901327D0C4520435D77553E315C),
    .INIT_13(256'h7F2C40063B0B7F492C1A732C5426421605177A5A307626791C3F3A2730174456),
    .INIT_14(256'h105210010340403044697C05327D40791E030558631018000B4C1D002A0D007F),
    .INIT_15(256'h377575752214217D7F20251F702C33475337500B0948737F7071302003083314),
    .INIT_16(256'h60270040327D09780C06557F7B5105721976513547241909743A655572000400),
    .INIT_17(256'h7F540F771707252414436E0C31173C42041A774D0208321E27203901611B0004),
    .INIT_18(256'h7F375576083A181A18095B687D7905680D02702436246B22590B5716056E0004),
    .INIT_19(256'h0074366355556115535043730000311D216212011360406400667744327D0D6E),
    .INIT_1A(256'h306961563D385D0E490B651C0E6B4F6F5C4F4F53211C02376F5D2B5861526963),
    .INIT_1B(256'h13007F6002003228205002012158300420266200327D7C414120606078186728),
    .INIT_1C(256'h1F7166701A475C664202107722465A0C10005F6976607C7C62001A7323421704),
    .INIT_1D(256'h245000011152002C20256300327D0128722D1B5A182363462221156455370031),
    .INIT_1E(256'h46184A5651443D0258102E006C49212A496915107D0F012052550E0C02007032),
    .INIT_1F(256'h12200440227D5476111A35504219710C781B56490254475F2B1717557207001E),
    .INIT_20(256'h1B6214204049241C3637342471602701273025320418703723513B0262024208),
    .INIT_21(256'h4E783A2F3D6175736E50082063054D3F2554567D700C1B00485B000612264C2D),
    .INIT_22(256'h3650470501012051361332551610113420500101116E600411626E00327D665F),
    .INIT_23(256'h5F7D46664E12556636006A375B5415502153336362387128006C4D252A183862),
    .INIT_24(256'h004C4D7202083134581235022146600610656300327D5129122D0A16587E7F47),
    .INIT_25(256'h6D11304052222B4C6B510D47412010616055551435431B3550641253103E256D),
    .INIT_26(256'h20500101124E520421637900327D2345350E11000A42610332370E442E220F56),
    .INIT_27(256'h2809786B5D5D3D185152010003085E273E663E6E4B03441102001E6702305138),
    .INIT_28(256'h10636700327D7D566B260217254D010042297A25056B4775425C3B6E40041003),
    .INIT_29(256'h012036184A5A3F7F334F3327532E24451030687F141010302060020111346006),
    .INIT_2A(256'h365579083872286029101F146239706E2C75094A6104201E584A5F3E700E6043),
    .INIT_2B(256'h62454122757634453035403A1208713222124701213C600030617940227D716A),
    .INIT_2C(256'h63113456715E372F6B5C2D6A174403011C43735339481B0F0D43002001101A64),
    .INIT_2D(256'h7D50780100187033201008015112001020616A00327D78173A4F323F131C5674),
    .INIT_2E(256'h125B125638294A00643102302A7F18277E1647580A6600017113075B7F5B3124),
    .INIT_2F(256'h236225216112112861216E40227D54712A440130016F786F55155C561D000000),
    .INIT_30(256'h28104902513F4C3C26610000550C7E7F52342745002035161E75537A2530302F),
    .INIT_31(256'h30616840227D4E62230054670577026F2F270B2F390C013000536D1B71164B02),
    .INIT_32(256'h503048656D7A3B7A55167D434C001A40552F34430018502B20300101115E6052),
    .INIT_33(256'h5D33020F570800007F281D7203113B00394924597E5A152558005B256B1F335E),
    .INIT_34(256'h3F183F552A2F4256300644002018303230100A012166300411634F40227D1834),
    .INIT_35(256'h2304335D7E3F1F26180C200128587E5A2B065E1E09604E00017D2D3A45726648),
    .INIT_36(256'h013F030B1610102324500001212C002C31225400327D5351015C74681E665661),
    .INIT_37(256'h4C1E1F0F6D18750F36792B0C001E00007F7F127B160700781F42707553173F63),
    .INIT_38(256'h23200001214C000411624A40327D43793620510C7D7F36223441707A0C7A4E0E),
    .INIT_39(256'h5F4D7D495E607000204C7F6F2F3F7E116C6A1747360A58372E4A7F2300083023),
    .INIT_3A(256'h60615D46227D051002205B3F7F37410B7768002A7A7F49757E4B6B701C000075),
    .INIT_3B(256'h7B2E68242B3020410325202E377F7F0729306E08107A30332220170111563000),
    .INIT_3C(256'h4E75487A6B711A0C556B297B4C1C0B1B1B1C200051636C50283D21164D061C00),
    .INIT_3D(256'h5F1E357D317D736A3A4A29110230501C244000012136502C30224940327D0025),
    .INIT_3E(256'h31667C291054037A7702213C0441640E74755F7F0F6D1B00181764100513135C),
    .INIT_3F(256'h376F1F3D1040102C21401221113C524970605E41227D422112346E5B1C633728),
    .INIT_40(256'h1E1017540040196A177E7C1C0A73652738027430093A413401420000707F7934),
    .INIT_41(256'h201001012124210120215840227D0A13260462631106683914610D4F236D312B),
    .INIT_42(256'h46650975582A1924223935465F0A227F4E3547202A022C5212401D1D1618112E),
    .INIT_43(256'h61615340327D2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A181722202E5E4A),
    .INIT_44(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A004830202070010111646000),
    .INIT_45(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_46(256'h2A2A2A2A2A2A2A2A2A2A2A2A3C10102E20110D011122606241216700227D2A2A),
    .INIT_47(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_48(256'h2A2A2A2A40306F4530400001763A4212435E3140327D2A2A2A2A2A2A2A2A2A2A),
    .INIT_49(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_4A(256'h00000000000000000000000000002A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
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
module music_lose_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  music_lose_blk_mem_gen_generic_cstr \valid.cstr 
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
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "music_lose.mem" *) 
(* C_INIT_FILE_NAME = "music_lose.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
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
module music_lose_blk_mem_gen_v8_3_3
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
  music_lose_blk_mem_gen_v8_3_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_3_synth" *) 
module music_lose_blk_mem_gen_v8_3_3_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  music_lose_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
