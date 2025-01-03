`timescale 1ns / 1ps


module conbine_wire(
	input iReady,
	input [1:0]iFilterSelectBalance,
	input [1:0]iFilterSelectIdentify,
	output  reg [1:0] oFilterSelectOut
);
	always@(*)
	begin
		if(!iReady)
		begin
			oFilterSelectOut = iFilterSelectBalance;       
		end
		else
		begin
			oFilterSelectOut = iFilterSelectIdentify;       
		end
	end
	
	
endmodule
