`timescale 1ns / 1ps

module game_control(
	input iClk,
	input iPause,
	input iToLeft,
	input iToRight,
	input [3:0] iBarMoveSpeed,
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
	reg pause;

	always@(*) begin
		if(!oLose) 
			pause = iPause;
		else 
			pause = 1;
	end

	VGA_display VGA_Disp(
		.iClk			(iClk),
		.iPause			(pause),
		.iToLeft		(iToLeft),
		.iToRight		(iToRight),
		.iBarMoveSpeed	(iBarMoveSpeed),
		.oHSync			(oHSync),
		.oBlue			(oBlue),
		.oGreen			(oGreen),
		.oRed			(oRed),
		.oVSync			(oVSync),
		.oLose			(oLose),
		.oWin			(oWin),
		.oGet			(oGet),
		.oCrash			(oCrash)
	);
endmodule
