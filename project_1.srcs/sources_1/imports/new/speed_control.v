`timescale 1ns / 1ps

module speed_control(
	input iClk,
	input iSpeedUp,
	input iSpeedDown,
	output [3:0] oSpeed
);
	reg [3:0] speed_reg = 4'd4;
	reg speed_up_reg, speed_down_reg;

	// 速度调节
	always @(posedge iClk) begin
		speed_up_reg <= iSpeedUp;
		speed_down_reg <= iSpeedDown;
		
		if(speed_up_reg != iSpeedUp && iSpeedUp && speed_reg < 4'd9) begin
			speed_reg <= speed_reg + 1;
		end
		else if(speed_down_reg != iSpeedDown && iSpeedDown && speed_reg > 4'd1) begin
			speed_reg <= speed_reg - 1;
		end
	end

	assign oSpeed = speed_reg;
endmodule