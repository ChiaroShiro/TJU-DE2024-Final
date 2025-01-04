`timescale 1ns / 1ps

module speed_control(
	input iClk,
	input speed_up,
	input speed_down,
	output [3:0] speed
);
	reg [3:0] speed_reg = 4'd4;
	reg speed_up_reg, speed_down_reg;

	// 速度调节
	always @(posedge iClk) begin
		speed_up_reg <= speed_up;
		speed_down_reg <= speed_down;
		
		if(speed_up_reg != speed_up && speed_up && speed_reg < 4'd9) begin
			speed_reg <= speed_reg + 1;
		end
		else if(speed_down_reg != speed_down && speed_down && speed_reg > 4'd1) begin
			speed_reg <= speed_reg - 1;
		end
	end

	assign speed = speed_reg;
endmodule

module sound_control(
	input iClk,
	input iPause,
	input iLose,
	input iWin,
	input iGet,
	input iCrash,
	output [1:0] oMP3Select,
	output oMP3Rst,
	output oGamePause
);
	reg [31:0] rst_counter;
	reg oLose_prev, oWin_prev, oGet_prev, oCrash_prev;
	reg mp3_rst_reg;
	reg [1:0] mp3_select;
	reg game_pause;
	
	// 音效控制
	always @(posedge iClk) begin
		oLose_prev <= iLose;
		oWin_prev <= iWin; 
		oGet_prev <= iGet;
		oCrash_prev <= iCrash;
		
		if(game_pause && iPause) begin
			game_pause <= 1'b0;
		end
		else if(rst_counter > 0) begin
			rst_counter <= rst_counter - 1;
		end
		else if(iLose && !oLose_prev) begin // iLose上升沿
			mp3_select <= 2'b00;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd200000000; // 4秒 = 100MHz * 4
		end
		else if(iWin && !oWin_prev) begin // iWin上升沿
			mp3_select <= 2'b01;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd200000000; // 4秒
			game_pause <= 1'b1; // 游戏胜利时暂停
		end
		else if(iGet && !oGet_prev) begin // iGet上升沿
			mp3_select <= 2'b10;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd70000000; // 1.4秒
		end
		else if(iCrash && !oCrash_prev) begin // iCrash上升沿
			mp3_select <= 2'b11;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd50000000; // 1秒
		end
		else begin
			mp3_rst_reg <= 1'b0;
		end
	end
	
	assign oMP3Rst = mp3_rst_reg;
	assign oMP3Select = mp3_select;
	assign oGamePause = game_pause;
endmodule

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

	speed_control speed_ctrl(
		.iClk(iClk),
		.speed_up(speed_up),
		.speed_down(speed_down),
		.speed(speed)
	);

	assign display_data = speed;
	
	display7 display(
		.iData(display_data),
		.oData(oDisplay)
	);

	Top_module_of_game game(
		.iClk(iClk),    
		.iPause(iPause || game_pause),
		.iToLeft(to_left),
		.iToRight(to_right),
		.iBarMoveSpeed(speed), // 传入当前速度
		.oHSync(oHSync),
		.oBlue(oOutBlue),
		.oGreen(oOutGreen), 
		.oRed(oOutRed),
		.oVSync(oVSync),
		.oLose(oLose),
		.oWin(oWin),
		.oGet(oGet),
		.oCrash(oCrash)
	);

	sound_control sound_ctrl(
		.iClk(iClk),
		.iPause(iPause),
		.iLose(oLose),
		.iWin(oWin),
		.iGet(oGet),
		.iCrash(oCrash),
		.oMP3Select(mp3_select),
		.oMP3Rst(mp3_rst),
		.oGamePause(game_pause)
	);
	
	Top_module_of_mp3 mp3(
		.CLK            (iClk),
		.RST            (!mp3_rst),
		.Vol            (8'd0),
		.MusicSel       (mp3_select),
		.PortDREQ       (port_vs1003b_dreq),
		.PortXDCS       (port_vs1003b_xdcs),
		.PortXCS        (port_vs1003b_xcs),
		.PortSI         (port_vs1003b_si),
		.PortSCLK       (port_vs1003b_sclk),
		.PortXRESET     (port_vs1003b_xreset)
	);
endmodule
