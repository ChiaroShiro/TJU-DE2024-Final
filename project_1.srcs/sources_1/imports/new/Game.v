`timescale 1ns / 1ps


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
	output oVSync,
	output oLose,
	output oWin,
	output oGet,
	output oCrash
);
	reg pe;

	always@(*)
	begin
		if(!oLose)
			pe=iPause;
		else
			pe=1;
	end

	VGA_display VGA_Disp(
		.iClk(iClk),
		.iPause(pe),
		.iToLeft(iToLeft),
		.iToRight(iToRight),
		.iBarMoveSpeed(4),
		.oHSync(oHSync),
		.oBlue(oBlue),
		.oGreen(oGreen),
		.oRed(oRed),
		.oVSync(oVSync),
		.oLose(oLose),
		.oWin(oWin),
		.oGet(oGet),
		.oCrash(oCrash)
	);
endmodule
