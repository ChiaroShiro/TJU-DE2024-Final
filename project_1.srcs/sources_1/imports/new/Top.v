`timescale 1ns / 1ps

module Top(
	input iClk, // 100MHz时钟
	input iPause, // 暂停信号
	
	input to_left, // 左移信号
	input to_right, // 右移信号
	input speed_up, // 加速信号
	input speed_down, // 减速信号

	output [6:0] oDisplay, // 数码管显示

	output oHSync, // VGA 水平同步信号
	output [2:1] oOutBlue, // VGA 蓝色输出
	output [2:0] oOutGreen, // VGA 绿色输出
	output [2:0] oOutRed, // VGA 红色输出
	output oVSync, // VGA 垂直同步信号

	input port_vs1003b_dreq,
	output port_vs1003b_xdcs,
	output port_vs1003b_xcs,
	output port_vs1003b_si,
	output port_vs1003b_sclk,
	output port_vs1003b_xreset
);

	wire [3:0] display_data;
	display7 display(
		.iData(display_data),
		.oData(oDisplay)
	);

	wire mp3_rst;
	reg [1:0] mp3_select;
	wire oLose;
	wire oWin;
	wire oGet;
	wire oCrash;
	reg game_pause;
	reg [3:0] speed = 4'd4;
	reg speed_up_reg, speed_down_reg;
	
	always @(posedge iClk) begin
		speed_up_reg <= speed_up;
		speed_down_reg <= speed_down;
		
		if(speed_up_reg != speed_up && speed_up && speed < 4'd9) begin
			speed <= speed + 1;
		end
		else if(speed_down_reg != speed_down && speed_down && speed > 4'd1) begin
			speed <= speed - 1;
		end
	end

	assign display_data = speed;

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

	reg [31:0] rst_counter;
	reg oLose_prev, oWin_prev, oGet_prev, oCrash_prev;
	reg mp3_rst_reg;
	
	always @(posedge iClk) begin
		oLose_prev <= oLose;
		oWin_prev <= oWin; 
		oGet_prev <= oGet;
		oCrash_prev <= oCrash;
		
		if(game_pause && iPause) begin
			game_pause <= 1'b0;
		end
		else if(rst_counter > 0) begin
			rst_counter <= rst_counter - 1;
		end
		else if(oLose && !oLose_prev) begin // oLose上升沿
			mp3_select <= 2'b00;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd200000000; // 4秒 = 100MHz * 4
		end
		else if(oWin && !oWin_prev) begin // oWin上升沿
			mp3_select <= 2'b01;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd200000000; // 4秒
			game_pause <= 1'b1; // 游戏胜利时暂停
		end
		else if(oGet && !oGet_prev) begin // oGet上升沿
			mp3_select <= 2'b10;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd70000000; // 1.4秒
		end
		else if(oCrash && !oCrash_prev) begin // oCrash上升沿
			mp3_select <= 2'b11;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd50000000; // 1秒
		end
		else begin
			mp3_rst_reg <= 1'b0;
		end
	end
	
	assign mp3_rst = mp3_rst_reg;
	
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
