`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/11 17:53:21
// Design Name: 
// Module Name: conbine_wire
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// conbine the wires
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
