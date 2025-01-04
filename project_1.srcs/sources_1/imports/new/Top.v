`timescale 1ns / 1ps

module Top(
	input iClk, // 100MHz时钟
	// input iColorFrequncy,
	input iPause, // 暂停信号
	// output [1:0] oFilterSelect,
	// output [1:0] oFrequncyRate,
	// output oLed,
	
	input to_left, // 左移信号
	input to_right, // 右移信号

	input rxd, // 蓝牙接收信号
	output [6:0] oDisplay, // 数码管显示
	output dataled, // 数据LED

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

	// reg [7:0] IntMP3Vol;
	// reg       IntMP3Sel;
	// always @(posedge IntClk10M_u0)
	// begin
	// 	if (IntSysRst) begin
	// 		IntMP3Vol <= `DL ;
	// 		IntMP3Sel <= `DL ;
	// 	end else begin
	// 		if (IntBtnU_posedge) begin
	// 			if(IntMP3Vol > 8'd0) IntMP3Vol <= `DL IntMP3Vol - 8'd5;
	// 		end
	// 		else if (IntBtnD_posedge) begin
	// 			if(IntMP3Vol < 8'd255) IntMP3Vol <= `DL IntMP3Vol + 8'd5;
	// 		end
	// 		if (IntBtnR_posedge) IntMP3Sel <= `DL ~IntMP3Sel;
	// 	end
	// end

	wire mp3_rst;
	reg [1:0] mp3_select;
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
	wire oLose;
	wire oWin;
	wire oGet;
	wire oCrash;

	Top_module_of_game game(
		.iClk(iClk),    
		.iPause(iPause),
		.iToLeft(to_left),
		.iToRight(to_right),
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
		
		if(rst_counter > 0) begin
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
		end
		else if(oGet && !oGet_prev) begin // oGet上升沿
			mp3_select <= 2'b10;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd80000000; // 1.6秒
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
