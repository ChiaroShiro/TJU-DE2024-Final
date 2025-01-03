`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/23 10:02:02
// Design Name: 
// Module Name: Top
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
//`include "E:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/imports/new/Game.v"
//`include "E:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/imports/new/Top_module.v"
module Top(
	input iClk,
	// input iColorFrequncy,
	input iPause,
	// output [1:0] oFilterSelect,
	// output [1:0] oFrequncyRate,
	// output oLed,
	
	input to_left,
	input to_right,
	input rxd,
	output [6:0] oDisplay,
	output dataled,

	output oHSync,
	output [2:1] oOutBlue,
	output [2:0] oOutGreen, 
	output [2:0] oOutRed,
	output oVSync
);

	wire [7:0] data_out;
	wire [7:0]data_rxd;
	assign data_rxd = {6'd0, rxd};
	bluetooth_uart_receive bluetooth(
		.clk(iClk),
		.reset(1'b0),
		.rxd(rxd),
		.data_out(data_out),
		.data_flag(dataled)
	);

	display7 display(
		// .clk(iClk),
		.iData(data_out),
		.oData(oDisplay)
	);
	// wire [1:0]rate;
	// wire [9:0]r,g,b;
	// wire to_left,to_right;
	// Top_module_of_color color_sensor(
	// 	.iClk(iClk),
	// 	.iFrequncy(iColorFrequncy),
	// 	.oFilterSelect(oFilterSelect),
	// 	.oFrequncyRate(oFrequncyRate),
	// 	.oLed(oLed),
	// 	.oR(r),
	// 	.oG(g),
	// 	.oB(b)
	// );
		
	// assign to_left= r>200&&g>200&&b>200;   
	// assign to_right=r<20&&g<20&&b<20;   
	// assign oFrequncyRate=2'b11;
	Top_module_of_game game(
		.iClk(iClk),    
		.iPause(iPause),
		.iToLeft(to_left),
		.iToRight(to_right),
		.oHSync(oHSync),
		.oBlue(oOutBlue),
		.oGreen(oOutGreen), 
		.oRed(oOutRed),
		.oVSync(oVSync)
	);
endmodule
