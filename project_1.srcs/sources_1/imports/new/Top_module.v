`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/11 16:28:50
// Design Name: 
// Module Name: Top_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//`include "E:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/imports/new/white_balance.v"
//`include "E:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/imports/new/identify_color.v"
//`include "E:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/imports/new/conbine_wire.v"
module Top_module_of_color(
	input iClk,
	input iFrequncy,
	output [1:0] oFilterSelect,
	output [1:0] oFrequncyRate,
	output oLed,
	output [9:0] oR,oG,oB
);
	assign oFrequncyRate=2'b10;
	assign oLed=1'b1;
	
	wire [63:0] r_time,g_time,b_time;
	wire [1:0]filter_balance,filter_identify;
	wire ready;
   // wire [9:0]r,g,b;
	
/*    always@(posedge frequncy)
	begin
	if(blue<255)
		blue=blue+1;
	else
		blue=0;
	end
	*/
	white_balance white_balance_init (
		.iClk(iClk),
		.iFrequncy(iFrequncy),
		.oRTime(r_time),
		.oGTime(g_time),
		.oBTime(b_time),
		.oReady(ready),
		.oFilterSelect(filter_balance)
	);
 
	identify_color identify_color_init(
		.iClk(iClk),
		.iFrequncy(iFrequncy),
		.iReady(ready),
		.iRTime(r_time),
		.iGTime(g_time),
		.iBTime(b_time),
		.oFilterSelect(filter_identify),
		.oRed(oR),
		.oGreen(oG),
		.oBlue(oB)
	);
	
	conbine_wire conbine_wire_init (
		.iReady(ready),
		.iFilterSelectBalance(filter_balance),
		.iFilterSelectIdentify(filter_identify),
		.oFilterSelectOut(oFilterSelect)
	);
	
	
endmodule
