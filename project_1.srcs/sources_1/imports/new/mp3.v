`timescale 1ns / 1ps

module MP3_control(
	input           iClk,
	input           iRst,
	input [7:0]     iVol,
	input [1:0]     iSelect,
	input           iDREQ,
	output reg      oXDCS,
	output reg      oXCS,
	output reg      oSI,
	output reg      oSCLK,
	output reg      oXRESET
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
assign data = (iSelect == 2'b00) ? romOut[0] :
              (iSelect == 2'b01) ? romOut[1] :
              (iSelect == 2'b10) ? romOut[2] :
               romOut[3];
// MP3Ä£¿éµÄ×´Ì¬»ú
always @(posedge dclk) begin
	if(iRst) begin
		oXRESET <= 1'b0;
		oXCS <= 1'b1;
		oXDCS <= 1'b1;
		oSI <= 1'b1;
		countDelay <= 0;
		romAddr <= 0;
		status <= STATUS_WAIT;
		volumn <= iVol;
		cur <= iSelect;
	end
	else if(cur != iSelect) begin
		oXRESET <= 1'b0;
		oXCS <= 1'b1;
		oXDCS <= 1'b1;
		oSI <= 1'b1;
		countDelay <= 0;
		romAddr <= 0;
		status <= STATUS_WAIT;
		volumn <= iVol;
		cur <= iSelect;
	end
	else begin
		case(status)
			STATUS_WAIT:begin       // Waiting time delay
				oSCLK <= 0;
				if(countDelay==MAX_DELAY) begin
					status <= STATUS_RESETH;
					countcmd <= 0;
					oXRESET <= 1'b1;
					countDelay <= 0;
				end
				else
					countDelay <= countDelay+1;
			end
			STATUS_RESETH:begin       // hardware reset
				countcmd <= 0;
				oXCS <= 1'b1;
				status <= STATUS_RESETS;
				cmdSci <= 32'h02000804;
				oSCLK <= 1'b0;
			end
			STATUS_RESETS:begin       // software reset
				if(iDREQ) begin
					if(oSCLK) begin
						if(countcmd >= 32) begin
							countcmd <= 0;
							oXCS <= 1'b1;
							status <= STATUS_VOLUMN;
							cmdSci <= {16'h020b, iVol, iVol};
						end
						else begin
							oXCS <= 1'b0;
							oSI <= cmdSci[31];
							cmdSci <= {cmdSci[30:0], cmdSci[31]};
							countcmd <= countcmd + 1'b1;
						end
					end
				end
				oSCLK <= ~oSCLK;
			end
			STATUS_VOLUMN:begin       // MP3 volume Settings
				if(iDREQ) begin
					if(oSCLK) begin
						if(countcmd >= 32) begin
							countcmd <= 0;
							oXCS <= 1'b1;
							status <= STATUS_LOAD;
						end
						else begin
							oXCS <= 0;
							oSI <= cmdSci[31] ;
							cmdSci <= {cmdSci[30:0], cmdSci[31]};
							countcmd <= countcmd + 1'b1;
						end
					end
				end
				oSCLK <= ~oSCLK;
			end
			STATUS_LOAD:begin     // Loading MP3 data
				if(volumn != iVol) begin
					volumn <= iVol;
					countcmd <= 0;
					status <= STATUS_VOLUMN;
					cmdSci <= {16'h020b, iVol, iVol};
					oXCS <= 1'b1;
				end
				else if(iDREQ) begin
					oSCLK <= 0;
					status <= STATUS_PLAY;
					buff <= data;
					countData <= 0;
				end
			end
			STATUS_PLAY:begin          // Transfer and play MP3 data
				if(oSCLK) begin
					if(countData >=16) begin
						oXDCS <= 1'b1;
						romAddr <= romAddr + 1'b1;
						status <= STATUS_LOAD;
					end
					else begin
						oXDCS <= 1'b0;
						oSI <= buff[15];
						buff <= {buff[14:0], buff[15]};
						countData <= countData + 1;
					end
				end
				oSCLK <= ~oSCLK;
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
			counter <= 0;
			oClk <= ~oClk;
		end
		else counter <= counter+1;
	end
endmodule