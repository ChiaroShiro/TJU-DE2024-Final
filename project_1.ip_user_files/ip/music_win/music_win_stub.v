// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Sun Jan 05 15:20:20 2025
// Host        : Chiaro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/ip/music_win/music_win_stub.v
// Design      : music_win
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *)
module music_win(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[12:0],douta[15:0]" */;
  input clka;
  input [12:0]addra;
  output [15:0]douta;
endmodule
