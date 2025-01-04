`timescale 1ns / 1ps

`define WAIT #0.5
module Top_module_of_mp3(
	input       iClk,
	input       iRst,
	input       iVol,
	input       iMusicSel,
	input       iPortDREQ,
	output reg  oPortXDCS,
	output reg  oPortXCS,
	output reg  oPortSI,
	output reg  oPortSCLK,
	output reg  oPortXRESET
);

	parameter MAX_DELAY = 16600;

	wire clk;
	wire [15:0] romOutData[3:0];
	wire [15:0] data;
	reg [3:0] status;
	reg [12:0] romAddr;
	reg [15:0] buff;
	reg [31:0] sci;
	reg [7:0] vol;
	reg [1:0] cur;
	integer countDelay;
	integer countCmd;
	integer countData;

	assign data = (iMusicSel == 2'b00) ? romOutData[0] :
				  (iMusicSel == 2'b01) ? romOutData[1] :
				  (iMusicSel == 2'b10) ? romOutData[2] :
				   romOutData[3];

	always @(posedge clk) begin
		if(iRst) begin
			oPortXRESET <= `WAIT 1'b0;
			oPortXCS    <= `WAIT 1'b1;
			oPortXDCS   <= `WAIT 1'b1;
			oPortSI     <= `WAIT 1'b1;
			countDelay  <= `WAIT 0;
			romAddr     <= `WAIT 0;
			status      <= `WAIT 4'd0;
			vol         <= `WAIT iVol;
			cur         <= `WAIT iMusicSel;
		end
		else if(cur != iMusicSel) begin
			oPortXRESET <= `WAIT 1'b0;
			oPortXCS    <= `WAIT 1'b1;
			oPortXDCS   <= `WAIT 1'b1;
			oPortSI     <= `WAIT 1'b1;
			countDelay  <= `WAIT 0;
			romAddr     <= `WAIT 0;
			status      <= `WAIT 4'd0;
			vol         <= `WAIT iVol;
			cur         <= `WAIT iMusicSel;
		end
		else begin
			case(status)
				4'd0:begin       // Waiting time delay
					oPortSCLK <= `WAIT 0;
					if(countDelay==MAX_DELAY) begin
						status <= `WAIT 4'd1;
						countCmd <= `WAIT 0;
						oPortXRESET <= `WAIT 1'b1;
						countDelay <= `WAIT 0;
					end
					else
						countDelay <= `WAIT countDelay+1;
				end
				4'd1:begin       // hardware reset
					countCmd <= `WAIT 0;
					oPortXCS <= `WAIT 1'b1;
					status <= `WAIT 4'd2;
					sci <= `WAIT 32'h02000804;
					oPortSCLK <= `WAIT 1'b0;
				end
				4'd2:begin       // software reset
					if(iPortDREQ) begin
						if(oPortSCLK) begin
							if(countCmd >= 32) begin
								countCmd <= `WAIT 0;
								oPortXCS <= `WAIT 1'b1;
								status <= `WAIT 4'd3;
								sci <= `WAIT {16'h020b, iVol, iVol};
							end
							else begin
								oPortXCS <= `WAIT 1'b0;
								oPortSI <= `WAIT sci[31];
								sci <= `WAIT {sci[30:0], sci[31]};
								countCmd <= `WAIT countCmd + 1'b1;
							end
						end
					end
					oPortSCLK <= `WAIT ~oPortSCLK;
				end
				4'd3:begin       // MP3 volume Settings
					if(iPortDREQ) begin
						if(oPortSCLK) begin
							if(countCmd >= 32) begin
								countCmd <= `WAIT 0;
								oPortXCS <= `WAIT 1'b1;
								status <= `WAIT 4'd4;
							end
							else begin
								oPortXCS <= `WAIT 0;
								oPortSI <= `WAIT sci[31] ;
								sci <= `WAIT {sci[30:0], sci[31]};
								countCmd <= `WAIT countCmd + 1'b1;
							end
						end
					end
					oPortSCLK <= `WAIT ~oPortSCLK;
				end
				4'd4:begin     // Loading MP3 data
					if(vol != iVol) begin
						vol <= `WAIT iVol;
						countCmd <= `WAIT 0;
						status <= `WAIT 4'd3;
						sci <= `WAIT {16'h020b, iVol, iVol};
						oPortXCS <= `WAIT 1'b1;
					end
					else if(iPortDREQ) begin
						oPortSCLK <= `WAIT 0;
						status <= `WAIT 4'd5;
						buff <= `WAIT data;
						countData <= `WAIT 0;
					end
				end
				4'd5:begin          // Transfer and play MP3 data
					if(oPortSCLK) begin
						if(countData >=16) begin
							oPortXDCS <= `WAIT 1'b1;
							romAddr <= `WAIT romAddr + 1'b1;
							status <= `WAIT 4'd4;
						end
						else begin
							oPortXDCS <= `WAIT 1'b0;
							oPortSI <= `WAIT buff[15];
							buff <= `WAIT {buff[14:0], buff[15]};
							countData <= `WAIT countData + 1;
						end
					end
					oPortSCLK <= `WAIT ~oPortSCLK;
				end
			endcase
		end
	end

	Divider #(.Time(100)) div(iClk, clk);
	music_lose music_0 (.clka(iClk), .addra(romAddr), .douta(romOutData[0]));
	music_win music_1 (.clka(iClk), .addra(romAddr), .douta(romOutData[1]));
	music_get music_2 (.clka(iClk), .addra(romAddr), .douta(romOutData[2]));
	music_crash music_3 (.clka(iClk), .addra(romAddr), .douta(romOutData[3]));
endmodule

module Divider #(parameter Time=20) (
	input iClk,
	output reg oClk
);
	integer counter=0;
	initial oClk = 0;
	always @(posedge iClk)
	begin
		if((counter + 1) == Time / 2) begin
			counter <= `WAIT 0;
			oClk <= `WAIT ~oClk;
		end
		else counter <= `WAIT counter+1;
	end
endmodule