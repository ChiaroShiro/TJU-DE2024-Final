`timescale 1ns / 1ps

module Top(
	// ʱ�ӽӿ�
	input iClk, // 100MHzʱ��
	
	// ���ϰ�ť�ӿ�
	input iPause, // ��ͣ�ź�
	input to_left, // �����ź�
	input to_right, // �����ź�
	input speed_up, // �����ź�
	input speed_down, // �����ź�

	// ����ܽӿ�
	output [6:0] oDisplay,

	// VGA �ӿ�
	output [2:1] oOutBlue,
	output [2:0] oOutGreen,
	output [2:0] oOutRed,
	output oHSync, // VGA ˮƽͬ���ź�
	output oVSync, // VGA ��ֱͬ���ź�

	// MP3 �ӿ�
	input iMP3_dreq,
	output oMP3_xdcs,
	output oMP3_xcs,
	output oMP3_si,
	output oMP3_sclk,
	output oMP3_xreset
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
		.iDREQ          (iMP3_dreq),
		.oXDCS          (oMP3_xdcs),
		.oXCS           (oMP3_xcs),
		.oSI            (oMP3_si),
		.oSCLK          (oMP3_sclk),
		.oXRESET        (oMP3_xreset)
	);
endmodule
