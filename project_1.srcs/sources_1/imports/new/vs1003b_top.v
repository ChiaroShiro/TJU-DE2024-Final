`timescale 1ns / 1ps

`define DL #0.5
module vs1003b_top(
	input           CLK,
	input           RST,
	input [7:0]     Vol,
	input [1:0]     MusicSel,
	input           PortDREQ,
	output reg      PortXDCS,
	output reg      PortXCS,
	output reg      PortSI,
	output reg      PortSCLK,
	output reg      PortXRESET
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
assign IntMusicData = (MusicSel == 2'b00) ? IntMusicRomDout[0] :
                     (MusicSel == 2'b01) ? IntMusicRomDout[1] :
                     (MusicSel == 2'b10) ? IntMusicRomDout[2] :
                     IntMusicRomDout[3];
// MP3Ä£¿éµÄ×´Ì¬»ú
always @(posedge IntClkDiv) begin
	if(RST) begin
		PortXRESET <= `DL 1'b0;
		PortXCS <= `DL 1'b1;
		PortXDCS <= `DL 1'b1;
		PortSI <= `DL 1'b1;
		IntDelayCnt <= `DL 0;
		IntMusicRomAddr <= `DL 0;
		IntMp3State <= `DL WAITING;
		IntCurVol <= `DL Vol;
		IntCurMusic <= `DL MusicSel;
	end
	else if(IntCurMusic != MusicSel) begin
		PortXRESET <= `DL 1'b0;
		PortXCS <= `DL 1'b1;
		PortXDCS <= `DL 1'b1;
		PortSI <= `DL 1'b1;
		IntDelayCnt <= `DL 0;
		IntMusicRomAddr <= `DL 0;
		IntMp3State <= `DL WAITING;
		IntCurVol <= `DL Vol;
		IntCurMusic <= `DL MusicSel;
	end
	else begin
		case(IntMp3State)
			WAITING:begin       // Waiting time delay
				PortSCLK <= `DL 0;
				if(IntDelayCnt==MAX_DELAY) begin
					IntMp3State <= `DL H_RESET;
					IntCmdCnt <= `DL 0;
					PortXRESET <= `DL 1'b1;
					IntDelayCnt <= `DL 0;
				end
				else
					IntDelayCnt <= `DL IntDelayCnt+1;
			end
			H_RESET:begin       // hardware reset
				IntCmdCnt <= `DL 0;
				PortXCS <= `DL 1'b1;
				IntMp3State <= `DL S_RESET;
				IntCmdSci <= `DL 32'h02000804;
				PortSCLK <= `DL 1'b0;
			end
			S_RESET:begin       // software reset
				if(PortDREQ) begin
					if(PortSCLK) begin
						if(IntCmdCnt >= 32) begin
							IntCmdCnt <= `DL 0;
							PortXCS <= `DL 1'b1;
							IntMp3State <= `DL SET_VOL;
							IntCmdSci <= `DL {16'h020b, Vol, Vol};
						end
						else begin
							PortXCS <= `DL 1'b0;
							PortSI <= `DL IntCmdSci[31];
							IntCmdSci <= `DL {IntCmdSci[30:0], IntCmdSci[31]};
							IntCmdCnt <= `DL IntCmdCnt + 1'b1;
						end
					end
				end
				PortSCLK <= `DL ~PortSCLK;
			end
			SET_VOL:begin       // MP3 volume Settings
				if(PortDREQ) begin
					if(PortSCLK) begin
						if(IntCmdCnt >= 32) begin
							IntCmdCnt <= `DL 0;
							PortXCS <= `DL 1'b1;
							IntMp3State <= `DL LOAD_DATA;
						end
						else begin
							PortXCS <= `DL 0;
							PortSI <= `DL IntCmdSci[31] ;
							IntCmdSci <= `DL {IntCmdSci[30:0], IntCmdSci[31]};
							IntCmdCnt <= `DL IntCmdCnt + 1'b1;
						end
					end
				end
				PortSCLK <= `DL ~PortSCLK;
			end
			LOAD_DATA:begin     // Loading MP3 data
				if(IntCurVol != Vol) begin
					IntCurVol <= `DL Vol;
					IntCmdCnt <= `DL 0;
					IntMp3State <= `DL SET_VOL;
					IntCmdSci <= `DL {16'h020b, Vol, Vol};
					PortXCS <= `DL 1'b1;
				end
				else if(PortDREQ) begin
					PortSCLK <= `DL 0;
					IntMp3State <= `DL PLAY;
					IntMusicData_buff <= `DL IntMusicData;
					IntDataTxCnt <= `DL 0;
				end
			end
			PLAY:begin          // Transfer and play MP3 data
				if(PortSCLK) begin
					if(IntDataTxCnt >=16) begin
						PortXDCS <= `DL 1'b1;
						IntMusicRomAddr <= `DL IntMusicRomAddr + 1'b1;
						IntMp3State <= `DL LOAD_DATA;
					end
					else begin
						PortXDCS <= `DL 1'b0;
						PortSI <= `DL IntMusicData_buff[15];
						IntMusicData_buff <= `DL {IntMusicData_buff[14:0], IntMusicData_buff[15]};
						IntDataTxCnt <= `DL IntDataTxCnt + 1;
					end
				end
				PortSCLK <= `DL ~PortSCLK;
			end
		endcase
	end
end
//-----------------------------------------------------------------------------
// Instance
//-----------------------------------------------------------------------------
Divider #(.Time(100)) div(CLK, IntClkDiv);
music_lose music_0 (.clka(CLK), .addra(IntMusicRomAddr), .douta(IntMusicRomDout[0]));
music_win music_1 (.clka(CLK), .addra(IntMusicRomAddr), .douta(IntMusicRomDout[1]));
music_get music_2 (.clka(CLK), .addra(IntMusicRomAddr), .douta(IntMusicRomDout[2]));
music_crash music_3 (.clka(CLK), .addra(IntMusicRomAddr), .douta(IntMusicRomDout[3]));
endmodule
//
module Divider #(parameter Time=20) (
	input I_CLK,
	output reg O_CLK
);
	integer counter=0;
	initial O_CLK = 0;
	always @(posedge I_CLK)
	begin
		if((counter + 1) == Time / 2) begin
			counter <= `DL 0;
			O_CLK <= `DL ~O_CLK;
		end
		else counter <= `DL counter+1;
	end
endmodule