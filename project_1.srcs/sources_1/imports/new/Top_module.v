`timescale 1ns / 1ps

module Top_module_of_color(
	input iClk,
	input iFrequncy,
	output [1:0] oFilterSelect,
	output [1:0] oFrequncyRate,
	output oLed,
	output [9:0] oR,oG,oB
);
	assign oFrequncyRate=2'b10;
	assign oLed=1'b1;
	
	wire [63:0] r_time,g_time,b_time;
	wire [1:0]filter_balance,filter_identify;
	wire ready;
   
	white_balance white_balance_init (
		.iClk(iClk),
		.iFrequncy(iFrequncy),
		.oRTime(r_time),
		.oGTime(g_time),
		.oBTime(b_time),
		.oReady(ready),
		.oFilterSelect(filter_balance)
	);
 
	identify_color identify_color_init(
		.iClk(iClk),
		.iFrequncy(iFrequncy),
		.iReady(ready),
		.iRTime(r_time),
		.iGTime(g_time),
		.iBTime(b_time),
		.oFilterSelect(filter_identify),
		.oRed(oR),
		.oGreen(oG),
		.oBlue(oB)
	);
	
	conbine_wire conbine_wire_init (
		.iReady(ready),
		.iFilterSelectBalance(filter_balance),
		.iFilterSelectIdentify(filter_identify),
		.oFilterSelectOut(oFilterSelect)
	);
	
	
endmodule
