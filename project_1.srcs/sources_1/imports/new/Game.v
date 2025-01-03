`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/08 17:33:44
// Design Name: 
// Module Name: Game
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
//`include "E:/work/tju/DE/Final/ball/project_1/project_1.srcs/sources_1/imports/new/VGA_display.v"

module Top_module_of_game(
	input iClk,    
	input iPause,
	input iToLeft,
	input iToRight,
	//input [3:0] iBarMoveSpeed,
	output oHSync,         
	output [2:1] oBlue,
	output [2:0] oGreen, 
	output [2:0] oRed,         
	output oVSync
);
	reg pe;

	always@(*)
	begin
		if(!lose)
			pe=iPause;
		else
			pe=1;
	end

	VGA_display VGA_Disp(
		.iClk(iClk),
		.iPause(pe),
		.iToLeft(iToLeft),
		.iToRight(iToRight),
		.iBarMoveSpeed(2),
		.oHSync(oHSync),
		.oBlue(oBlue),
		.oGreen(oGreen),
		.oRed(oRed),
		.oVSync(oVSync),
		.oLose(lose)
	);
endmodule
