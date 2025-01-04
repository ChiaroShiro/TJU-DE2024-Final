`timescale 1ns / 1ps

`define DL #0.5
module Top_module_of_mp3(
	input           iClk,
	input           iRst,
	input [7:0]     iVol,
	input [1:0]     iMusicSel,
	input           iPortDREQ,
	output reg      oPortXDCS,
	output reg      oPortXCS,
	output reg      oPortSI,
	output reg      oPortSCLK,
	output reg      oPortXRESET
);
//-----------------------------------------------------------------------------
// Definition of Parameters
//-----------------------------------------------------------------------------
parameter MAX_DELAY         = 16600;
//
parameter WAITING           = 4'd0;
parameter H_RESET           = 4'd1;
parameter S_RESET           = 4'd2;
parameter SET_VOL           = 4'd3;
parameter LOAD_DATA         = 4'd4;
parameter PLAY              = 4'd5;
//-----------------------------------------------------------------------------
// Definition of Signals
//-----------------------------------------------------------------------------
wire            IntClkDiv;
reg  [3:0]      IntMp3State;
wire [15:0]     IntMusicRomDout[3:0];
wire [15:0]     IntMusicData;
reg  [12:0]     IntMusicRomAddr;
reg  [15:0]     IntMusicData_buff;
integer         IntDelayCnt;
integer         IntCmdCnt;
integer         IntDataTxCnt;
//
reg  [31:0]     IntCmdSci;
reg  [7:0]      IntCurVol;
reg  [1:0]      IntCurMusic;
//-----------------------------------------------------------------------------
// Process
//-----------------------------------------------------------------------------
assign IntMusicData = (iMusicSel == 2'b00) ? IntMusicRomDout[0] :
                     (iMusicSel == 2'b01) ? IntMusicRomDout[1] :
                     (iMusicSel == 2'b10) ? IntMusicRomDout[2] :
                     IntMusicRomDout[3];
// MP3Ä£¿éµÄ×´Ì¬»ú
always @(posedge IntClkDiv) begin
	if(iRst) begin
		oPortXRESET <= `DL 1'b0;
		oPortXCS <= `DL 1'b1;
		oPortXDCS <= `DL 1'b1;
		oPortSI <= `DL 1'b1;
		IntDelayCnt <= `DL 0;
		IntMusicRomAddr <= `DL 0;
		IntMp3State <= `DL WAITING;
		IntCurVol <= `DL iVol;
		IntCurMusic <= `DL iMusicSel;
	end
	else if(IntCurMusic != iMusicSel) begin
		oPortXRESET <= `DL 1'b0;
		oPortXCS <= `DL 1'b1;
		oPortXDCS <= `DL 1'b1;
		oPortSI <= `DL 1'b1;
		IntDelayCnt <= `DL 0;
		IntMusicRomAddr <= `DL 0;
		IntMp3State <= `DL WAITING;
		IntCurVol <= `DL iVol;
		IntCurMusic <= `DL iMusicSel;
	end
	else begin
		case(IntMp3State)
			WAITING:begin       // Waiting time delay
				oPortSCLK <= `DL 0;
				if(IntDelayCnt==MAX_DELAY) begin
					IntMp3State <= `DL H_RESET;
					IntCmdCnt <= `DL 0;
					oPortXRESET <= `DL 1'b1;
					IntDelayCnt <= `DL 0;
				end
				else
					IntDelayCnt <= `DL IntDelayCnt+1;
			end
			H_RESET:begin       // hardware reset
				IntCmdCnt <= `DL 0;
				oPortXCS <= `DL 1'b1;
				IntMp3State <= `DL S_RESET;
				IntCmdSci <= `DL 32'h02000804;
				oPortSCLK <= `DL 1'b0;
			end
			S_RESET:begin       // software reset
				if(iPortDREQ) begin
					if(oPortSCLK) begin
						if(IntCmdCnt >= 32) begin
							IntCmdCnt <= `DL 0;
							oPortXCS <= `DL 1'b1;
							IntMp3State <= `DL SET_VOL;
							IntCmdSci <= `DL {16'h020b, iVol, iVol};
						end
						else begin
							oPortXCS <= `DL 1'b0;
							oPortSI <= `DL IntCmdSci[31];
							IntCmdSci <= `DL {IntCmdSci[30:0], IntCmdSci[31]};
							IntCmdCnt <= `DL IntCmdCnt + 1'b1;
						end
					end
				end
				oPortSCLK <= `DL ~oPortSCLK;
			end
			SET_VOL:begin       // MP3 volume Settings
				if(iPortDREQ) begin
					if(oPortSCLK) begin
						if(IntCmdCnt >= 32) begin
							IntCmdCnt <= `DL 0;
							oPortXCS <= `DL 1'b1;
							IntMp3State <= `DL LOAD_DATA;
						end
						else begin
							oPortXCS <= `DL 0;
							oPortSI <= `DL IntCmdSci[31] ;
							IntCmdSci <= `DL {IntCmdSci[30:0], IntCmdSci[31]};
							IntCmdCnt <= `DL IntCmdCnt + 1'b1;
						end
					end
				end
				oPortSCLK <= `DL ~oPortSCLK;
			end
			LOAD_DATA:begin     // Loading MP3 data
				if(IntCurVol != iVol) begin
					IntCurVol <= `DL iVol;
					IntCmdCnt <= `DL 0;
					IntMp3State <= `DL SET_VOL;
					IntCmdSci <= `DL {16'h020b, iVol, iVol};
					oPortXCS <= `DL 1'b1;
				end
				else if(iPortDREQ) begin
					oPortSCLK <= `DL 0;
					IntMp3State <= `DL PLAY;
					IntMusicData_buff <= `DL IntMusicData;
					IntDataTxCnt <= `DL 0;
				end
			end
			PLAY:begin          // Transfer and play MP3 data
				if(oPortSCLK) begin
					if(IntDataTxCnt >=16) begin
						oPortXDCS <= `DL 1'b1;
						IntMusicRomAddr <= `DL IntMusicRomAddr + 1'b1;
						IntMp3State <= `DL LOAD_DATA;
					end
					else begin
						oPortXDCS <= `DL 1'b0;
						oPortSI <= `DL IntMusicData_buff[15];
						IntMusicData_buff <= `DL {IntMusicData_buff[14:0], IntMusicData_buff[15]};
						IntDataTxCnt <= `DL IntDataTxCnt + 1;
					end
				end
				oPortSCLK <= `DL ~oPortSCLK;
			end
		endcase
	end
end
//-----------------------------------------------------------------------------
// Instance
//-----------------------------------------------------------------------------
Divider #(.Time(100)) div(iClk, IntClkDiv);
music_lose music_0 (.clka(iClk), .addra(IntMusicRomAddr), .douta(IntMusicRomDout[0]));
music_win music_1 (.clka(iClk), .addra(IntMusicRomAddr), .douta(IntMusicRomDout[1]));
music_get music_2 (.clka(iClk), .addra(IntMusicRomAddr), .douta(IntMusicRomDout[2]));
music_crash music_3 (.clka(iClk), .addra(IntMusicRomAddr), .douta(IntMusicRomDout[3]));
endmodule
//
module Divider #(parameter Time=20) (
	input iClk,
	output reg oClk
);
	integer counter=0;
	initial oClk = 0;
	always @(posedge iClk)
	begin
		if((counter + 1) == Time / 2) begin
			counter <= `DL 0;
			oClk <= `DL ~oClk;
		end
		else counter <= `DL counter+1;
	end
endmodule