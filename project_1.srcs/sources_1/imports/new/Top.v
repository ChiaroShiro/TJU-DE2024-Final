`timescale 1ns / 1ps

module Top(
	input iClk, // 100MHzʱ��
	// input iColorFrequncy,
	input iPause, // ��ͣ�ź�
	// output [1:0] oFilterSelect,
	// output [1:0] oFrequncyRate,
	// output oLed,
	
	input to_left, // �����ź�
	input to_right, // �����ź�

	input rxd, // ���������ź�
	output [6:0] oDisplay, // �������ʾ
	output dataled, // ����LED

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
	output port_vs1003b_xreset,

	input [1:0] mp3_select
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

	reg mp3_rst;
	always @(posedge iPause) begin
		mp3_rst <= ~mp3_rst;
	end

	vs1003b_top vs1003b_top_u0(
		.CLK            (iClk),
		.RST            (mp3_rst),
		.Vol            (8'd0),
		.MusicSel       (mp3_select),
		.PortDREQ       (port_vs1003b_dreq),
		.PortXDCS       (port_vs1003b_xdcs),
		.PortXCS        (port_vs1003b_xcs),
		.PortSI         (port_vs1003b_si),
		.PortSCLK       (port_vs1003b_sclk),
		.PortXRESET     (port_vs1003b_xreset)
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
