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
parameter MAX_DELAY = 16600;
//
parameter STATUS_WAIT = 4'd0;
parameter STATUS_RESETH = 4'd1;
parameter STATUS_RESETS = 4'd2;
parameter STATUS_VOLUMN = 4'd3;
parameter STATUS_LOAD = 4'd4;
parameter STATUS_PLAY = 4'd5;
//-----------------------------------------------------------------------------
// Definition of Signals
//-----------------------------------------------------------------------------
wire            dclk;
reg  [3:0]      status;
wire [15:0]     romOut[3:0];
wire [15:0]     data;
reg  [12:0]     romAddr;
reg  [15:0]     buff;
integer         countDelay;
integer         countcmd;
integer         countData;
//
reg  [31:0]     cmdSci;
reg  [7:0]      volumn;
reg  [1:0]      cur;
//-----------------------------------------------------------------------------
// Process
//-----------------------------------------------------------------------------
assign data = (iMusicSel == 2'b00) ? romOut[0] :
                     (iMusicSel == 2'b01) ? romOut[1] :
                     (iMusicSel == 2'b10) ? romOut[2] :
                     romOut[3];
// MP3Ä£¿éµÄ×´Ì¬»ú
always @(posedge dclk) begin
	if(iRst) begin
		oPortXRESET <= `DL 1'b0;
		oPortXCS <= `DL 1'b1;
		oPortXDCS <= `DL 1'b1;
		oPortSI <= `DL 1'b1;
		countDelay <= `DL 0;
		romAddr <= `DL 0;
		status <= `DL STATUS_WAIT;
		volumn <= `DL iVol;
		cur <= `DL iMusicSel;
	end
	else if(cur != iMusicSel) begin
		oPortXRESET <= `DL 1'b0;
		oPortXCS <= `DL 1'b1;
		oPortXDCS <= `DL 1'b1;
		oPortSI <= `DL 1'b1;
		countDelay <= `DL 0;
		romAddr <= `DL 0;
		status <= `DL STATUS_WAIT;
		volumn <= `DL iVol;
		cur <= `DL iMusicSel;
	end
	else begin
		case(status)
			STATUS_WAIT:begin       // Waiting time delay
				oPortSCLK <= `DL 0;
				if(countDelay==MAX_DELAY) begin
					status <= `DL STATUS_RESETH;
					countcmd <= `DL 0;
					oPortXRESET <= `DL 1'b1;
					countDelay <= `DL 0;
				end
				else
					countDelay <= `DL countDelay+1;
			end
			STATUS_RESETH:begin       // hardware reset
				countcmd <= `DL 0;
				oPortXCS <= `DL 1'b1;
				status <= `DL STATUS_RESETS;
				cmdSci <= `DL 32'h02000804;
				oPortSCLK <= `DL 1'b0;
			end
			STATUS_RESETS:begin       // software reset
				if(iPortDREQ) begin
					if(oPortSCLK) begin
						if(countcmd >= 32) begin
							countcmd <= `DL 0;
							oPortXCS <= `DL 1'b1;
							status <= `DL STATUS_VOLUMN;
							cmdSci <= `DL {16'h020b, iVol, iVol};
						end
						else begin
							oPortXCS <= `DL 1'b0;
							oPortSI <= `DL cmdSci[31];
							cmdSci <= `DL {cmdSci[30:0], cmdSci[31]};
							countcmd <= `DL countcmd + 1'b1;
						end
					end
				end
				oPortSCLK <= `DL ~oPortSCLK;
			end
			STATUS_VOLUMN:begin       // MP3 volume Settings
				if(iPortDREQ) begin
					if(oPortSCLK) begin
						if(countcmd >= 32) begin
							countcmd <= `DL 0;
							oPortXCS <= `DL 1'b1;
							status <= `DL STATUS_LOAD;
						end
						else begin
							oPortXCS <= `DL 0;
							oPortSI <= `DL cmdSci[31] ;
							cmdSci <= `DL {cmdSci[30:0], cmdSci[31]};
							countcmd <= `DL countcmd + 1'b1;
						end
					end
				end
				oPortSCLK <= `DL ~oPortSCLK;
			end
			STATUS_LOAD:begin     // Loading MP3 data
				if(volumn != iVol) begin
					volumn <= `DL iVol;
					countcmd <= `DL 0;
					status <= `DL STATUS_VOLUMN;
					cmdSci <= `DL {16'h020b, iVol, iVol};
					oPortXCS <= `DL 1'b1;
				end
				else if(iPortDREQ) begin
					oPortSCLK <= `DL 0;
					status <= `DL STATUS_PLAY;
					buff <= `DL data;
					countData <= `DL 0;
				end
			end
			STATUS_PLAY:begin          // Transfer and play MP3 data
				if(oPortSCLK) begin
					if(countData >=16) begin
						oPortXDCS <= `DL 1'b1;
						romAddr <= `DL romAddr + 1'b1;
						status <= `DL STATUS_LOAD;
					end
					else begin
						oPortXDCS <= `DL 1'b0;
						oPortSI <= `DL buff[15];
						buff <= `DL {buff[14:0], buff[15]};
						countData <= `DL countData + 1;
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
Divider #(.Time(100)) div(iClk, dclk);
music_lose music_0 (.clka(iClk), .addra(romAddr), .douta(romOut[0]));
music_win music_1 (.clka(iClk), .addra(romAddr), .douta(romOut[1]));
music_get music_2 (.clka(iClk), .addra(romAddr), .douta(romOut[2]));
music_crash music_3 (.clka(iClk), .addra(romAddr), .douta(romOut[3]));
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