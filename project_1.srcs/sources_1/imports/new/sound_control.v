`timescale 1ns / 1ps

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
	
	// “Ù–ßøÿ÷∆
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
		else if(iLose && !oLose_prev) begin // iLose…œ…˝—ÿ
			mp3_select <= 2'b00;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd200000000; // 4√Î = 100MHz * 4
		end
		else if(iWin && !oWin_prev) begin // iWin…œ…˝—ÿ
			mp3_select <= 2'b01;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd200000000; // 4√Î
			game_pause <= 1'b1; // ”Œœ∑ §¿˚ ±‘›Õ£
		end
		else if(iGet && !oGet_prev) begin // iGet…œ…˝—ÿ
			mp3_select <= 2'b10;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd70000000; // 1.4√Î
		end
		else if(iCrash && !oCrash_prev) begin // iCrash…œ…˝—ÿ
			mp3_select <= 2'b11;
			mp3_rst_reg <= 1'b1;
			rst_counter <= 32'd50000000; // 1√Î
		end
		else begin
			mp3_rst_reg <= 1'b0;
		end
	end
	
	assign oMP3Rst = mp3_rst_reg;
	assign oMP3Select = mp3_select;
	assign oGamePause = game_pause;
endmodule