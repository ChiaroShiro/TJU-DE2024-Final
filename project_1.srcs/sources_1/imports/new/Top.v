`timescale 1ns / 1ps

module Top(
	// 时钟接口
	input iClk, // 100MHz时钟
	
	// 板上按钮接口
	input iPause, // 暂停信号
	input to_left, // 左移信号
	input to_right, // 右移信号
	input speed_up, // 加速信号
	input speed_down, // 减速信号

	// 数码管接口
	output [6:0] oDisplay,

	// VGA 接口
	output [2:1] oOutBlue,
	output [2:0] oOutGreen,
	output [2:0] oOutRed,
	output oHSync, // VGA 水平同步信号
	output oVSync, // VGA 垂直同步信号

	// MP3 接口
	input port_vs1003b_dreq,
	output port_vs1003b_xdcs,
	output port_vs1003b_xcs,
	output port_vs1003b_si,
	output port_vs1003b_sclk,
	output port_vs1003b_xreset
);

	wire [3:0] display_data;
	wire mp3_rst;
	wire [1:0] mp3_select;
	wire oLose;
	wire oWin;
	wire oGet;
	wire oCrash;
	wire game_pause;
	wire [3:0] speed;

	assign display_data = speed;

	speed_control speed_ctrl(
		.iClk			(iClk),
		.iSpeedUp		(speed_up),
		.iSpeedDown		(speed_down),
		.oSpeed			(speed)
	);
	
	display7 display(
		.iData			(display_data),
		.oData			(oDisplay)
	);

	game_control game(
		.iClk			(iClk),    
		.iPause			(iPause || game_pause),
		.iToLeft		(to_left),
		.iToRight		(to_right),
		.iBarMoveSpeed	(speed),
		.oHSync			(oHSync),
		.oBlue			(oOutBlue),
		.oGreen			(oOutGreen), 
		.oRed			(oOutRed),
		.oVSync			(oVSync),
		.oLose			(oLose),
		.oWin			(oWin),
		.oGet			(oGet),
		.oCrash			(oCrash)
	);

	sound_control sound_ctrl(
		.iClk			(iClk),
		.iPause			(iPause),
		.iLose			(oLose),
		.iWin			(oWin),
		.iGet			(oGet),
		.iCrash			(oCrash),
		.oMP3Select		(mp3_select),
		.oMP3Rst		(mp3_rst),
		.oGamePause		(game_pause)
	);
	
	MP3_control mp3(
		.iClk           (iClk),
		.iRst           (!mp3_rst),
		.iVol           (8'd0),
		.iSelect        (mp3_select),
		.iDREQ          (port_vs1003b_dreq),
		.oXDCS          (port_vs1003b_xdcs),
		.oXCS           (port_vs1003b_xcs),
		.oSI            (port_vs1003b_si),
		.oSCLK          (port_vs1003b_sclk),
		.oXRESET        (port_vs1003b_xreset)
	);
endmodule
