`timescale 1ns / 1ps

module MP3_control(
	input iClk,
	input iRst,
	input [7:0] iVol,
	input [1:0] iSelect,
	input iDREQ,
	output reg oXDCS,
	output reg oXCS,
	output reg oSI,
	output reg oSCLK,
	output reg oXRESET
);
	parameter MAX_DELAY = 16600;

	integer countDelay;
	integer countcmd;
	integer countData;
	wire dclk;
	wire [15:0] romOut[3:0];
	wire [15:0] data;
	reg [3:0] status;
	reg [12:0] romAddr;
	reg [15:0] buff;
	reg [31:0] cmdSci;
	reg [7:0] volumn;
	reg [1:0] cur;

	assign data = (iSelect == 2'b00) ? romOut[0] :
				  (iSelect == 2'b01) ? romOut[1] :
				  (iSelect == 2'b10) ? romOut[2] :
				   romOut[3];

	always @(posedge dclk) begin
		if(iRst || cur != iSelect) begin
			oXRESET    <= 1'b0;
			oXCS       <= 1'b1;
			oXDCS      <= 1'b1;
			oSI        <= 1'b1;
			countDelay <= 0;
			romAddr    <= 0;
			status     <= 0;
			volumn     <= iVol;
			cur        <= iSelect;
		end
		else begin
			if(status == 0) begin
				oSCLK <= 0;
				if(countDelay == MAX_DELAY) begin
					status     <= 1;
					countcmd   <= 0;
					oXRESET    <= 1'b1;
					countDelay <= 0;
				end
				else
					countDelay <= countDelay + 1;
			end
			else if(status == 1) begin
				countcmd <= 0;
				oXCS     <= 1'b1;
				status   <= 2;
				cmdSci   <= 32'h02000804;
				oSCLK    <= 1'b0;
			end
			else if(status == 2) begin
				if(iDREQ && oSCLK) begin
					if(countcmd >= 32) begin
						countcmd <= 0;
						oXCS     <= 1'b1;
						status   <= 3;
						cmdSci   <= {16'h020b, iVol, iVol};
					end
					else begin
						oXCS     <= 1'b0;
						oSI      <= cmdSci[31];
						cmdSci   <= {cmdSci[30:0], cmdSci[31]};
						countcmd <= countcmd + 1'b1;
					end
				end
				oSCLK <= ~oSCLK;
			end
			else if(status == 3) begin
				if(iDREQ && oSCLK) begin
					if(countcmd >= 32) begin
						countcmd <= 0;
						oXCS     <= 1'b1;
						status   <= 4;
					end
					else begin
						oXCS     <= 0;
						oSI      <= cmdSci[31];
						cmdSci   <= {cmdSci[30:0], cmdSci[31]};
						countcmd <= countcmd + 1'b1;
					end
				end
				oSCLK <= ~oSCLK;
			end
			else if(status == 4) begin
				if(volumn != iVol) begin
					volumn   <= iVol;
					countcmd <= 0;
					status   <= 3;
					cmdSci   <= {16'h020b, iVol, iVol};
					oXCS     <= 1'b1;
				end
				else if(iDREQ) begin
					oSCLK     <= 0;
					status    <= 5;
					buff      <= data;
					countData <= 0;
				end
			end
			else if(status == 5) begin
				if(oSCLK) begin
					if(countData >=16) begin
						oXDCS   <= 1'b1;
						romAddr <= romAddr + 1'b1;
						status  <= 4;
					end
					else begin
						oXDCS     <= 1'b0;
						oSI       <= buff[15];
						buff      <= {buff[14:0], buff[15]};
						countData <= countData + 1;
					end
				end
				oSCLK <= ~oSCLK;
			end
		end
	end

	Divider 		#(.Time(100)) div(iClk, dclk);
	music_lose  	music_0 (.clka(iClk), .addra(romAddr), .douta(romOut[0]));
	music_win   	music_1 (.clka(iClk), .addra(romAddr), .douta(romOut[1]));
	music_get   	music_2 (.clka(iClk), .addra(romAddr), .douta(romOut[2]));
	music_crash 	music_3 (.clka(iClk), .addra(romAddr), .douta(romOut[3]));
endmodule