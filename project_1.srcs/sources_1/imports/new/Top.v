`timescale 1ns / 1ps

module Top(
	input iClk, // 100MHzʱ��
	input iPause, // ��ͣ�ź�
	
	input to_left, // �����ź�
	input to_right, // �����ź�
	input speed_up, // �����ź�
	input speed_down, // �����ź�

	output [6:0] oDisplay, // �������ʾ

	output oHSync, // VGA ˮƽͬ���ź�
	output [2:1] oOutBlue, // VGA ��ɫ���
	output [2:0] oOutGreen, // VGA ��ɫ���
	output [2:0] oOutRed, // VGA ��ɫ���
	output oVSync, // VGA ��ֱͬ���ź�

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
		.iBarMoveSpeed(speed), // ���뵱ǰ�ٶ�
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
		else if(oLose && !oLose_prev) begin // oLose������
			mp3_select <= 2'b00;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd200000000; // 4�� = 100MHz * 4
		end
		else if(oWin && !oWin_prev) begin // oWin������
			mp3_select <= 2'b01;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd200000000; // 4��
			game_pause <= 1'b1; // ��Ϸʤ��ʱ��ͣ
		end
		else if(oGet && !oGet_prev) begin // oGet������
			mp3_select <= 2'b10;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd70000000; // 1.4��
		end
		else if(oCrash && !oCrash_prev) begin // oCrash������
			mp3_select <= 2'b11;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd50000000; // 1��
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
