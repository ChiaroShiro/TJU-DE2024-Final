`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/11 16:32:51
// Design Name: 
// Module Name: identify_color
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module identify_color(
	input iReady,
	input iClk,
	input iFrequncy,
	input [63:0] iRTime,
	input [63:0] iGTime,
	input [63:0] iBTime,
	output reg [9:0] oRed,
	output reg [9:0] oGreen,
	output reg [9:0] oBlue,
	output reg [1:0] oFilterSelect
);
	reg [63:0]counter=0;  
	reg [9:0] r_counter=0,g_counter=0,b_counter=0;
	reg reset=0;
	assign cout=counter;
	always@(posedge iClk && iReady )
	begin
		if(!reset)
			counter = counter+1;
		else
			counter=0; 
	end   
		
	always@(posedge iFrequncy && iReady)
	begin
		if(counter==0)
		begin
			r_counter=0;
			g_counter=0;
			b_counter=0;
			reset=0;
		end
		if(counter<iRTime)
		begin
			oFilterSelect = 2'b00;
			r_counter = r_counter+1;
		end
		else if(counter>=iRTime&&counter<iRTime+iGTime)
		begin
			oFilterSelect = 2'b11;
			g_counter = g_counter+1;    
		end
		else if(counter>=iRTime+iGTime&&counter<iRTime+iGTime+iBTime)
		begin
			oFilterSelect = 2'b10;
			b_counter = b_counter+1;    
		end
		else if(counter>=iRTime+iGTime+iBTime)
		begin
			oRed=r_counter-1;
			oGreen=g_counter-1;
			oBlue=b_counter-1;
			reset=1;
		end
	end
 
	
endmodule
