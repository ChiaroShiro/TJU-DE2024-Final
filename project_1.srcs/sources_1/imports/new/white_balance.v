`timescale 1ns / 1ps



module white_balance(
	input iClk,
	input iFrequncy,
	output reg[63:0] oRTime,
	output reg[63:0] oGTime,
	output reg[63:0] oBTime,
	output oReady,
	output reg [1:0] oFilterSelect
);
	reg [63:0]counter=0;
	reg [63:0]r_counter=0;
	reg [63:0]g_counter=0;
	reg [63:0]b_counter=0;
 
	always@(posedge iClk && !oReady)
	begin
		counter=counter+1;
	end
 
	always@(posedge iFrequncy&&!oReady)
	begin
		if(r_counter<255)
		begin
			r_counter=r_counter+1;
			oFilterSelect=2'b00;
		end
		else if(r_counter==255)
		begin
			r_counter=r_counter+1;
			oRTime=counter;
		end
		
		if(r_counter>255&&g_counter<255)
		begin
			oFilterSelect=2'b11;
			g_counter=g_counter+1;
		end    
		else if(g_counter==255)
		begin
			g_counter=g_counter+1;
			oGTime=counter-oRTime;
		end
		
		
		if(r_counter>255&&g_counter>255&&b_counter<255)
		begin       
			oFilterSelect=2'b10;
			b_counter=b_counter+1;
		end    
		else if(b_counter==255)
		begin
			b_counter=b_counter+10;
			oBTime=counter-oRTime-oGTime-1;
		end
	end
 
	assign oReady=(r_counter>255&&g_counter>255&&b_counter>255);
 
endmodule
