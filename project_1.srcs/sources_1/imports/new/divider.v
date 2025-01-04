`timescale 1ns / 1ps

// ��Ƶ��ģ��
module divider4Times(
    input iClk,
    output reg clk_25M
);
    reg clk_50M = 0;
    
    // ����50MHzʱ���ź�
    always @(posedge iClk)
        clk_50M <= ~clk_50M;
    
    // ����25MHzʱ���ź� 
    always @(posedge clk_50M)
        clk_25M <= ~clk_25M;
endmodule


module Divider #(parameter Time=20) (
	input iClk,
	output reg oClk = 0
);
	integer counter = 0;
	always @(posedge iClk)
	begin
		if((counter + 1) == Time / 2) begin
			counter <= 0;
			oClk <= ~oClk;
		end
		else counter <= counter+1;
	end
endmodule