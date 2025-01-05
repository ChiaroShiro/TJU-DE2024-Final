`timescale 1ns / 1ps

module game_control(
    input iClk,
    input iPause,
    input iToLeft,
    input iToRight,
    input [3:0] iBarMoveSpeed,
    output reg oHSync,
    output reg oVSync,
    output reg [2:0] oRed,
    output reg [2:0] oGreen,
    output reg [1:0] oBlue,
    output reg oLose,
	output wire oWin,
	output reg oGet,
	output reg oCrash
);
    
    // VGA显示参数定义
    parameter HORIZONTAL_ACTIVE_PIXELS = 640;     	// 水平有效显示像素数
    parameter VERTICAL_ACTIVE_LINES = 480;        	// 垂直有效显示行数
    parameter TOTAL_HORIZONTAL_PIXELS = 800;      	// 水平总像素数(包含同步和消隐)
    parameter TOTAL_VERTICAL_LINES = 521;         	// 垂直总行数(包含同步和消隐)
    parameter HORIZONTAL_SYNC_PULSE_WIDTH = 96;   	// 水平同步脉冲宽度
    parameter HORIZONTAL_FRONT_PORCH = 16;        	// 水平前肩
    parameter VERTICAL_SYNC_PULSE_WIDTH = 2;      	// 垂直同步脉冲宽度
    parameter VERTICAL_FRONT_PORCH = 10;          	// 垂直前肩
    parameter UP_BOUND = 10;         				// 上边界
    parameter DOWN_BOUND = 480;      				// 下边界
    parameter LEFT_BOUND = 20;       				// 左边界
    parameter RIGHT_BOUND = 630;     				// 右边界

	// 砖块参数
    parameter BLOCK_DOWN_LINE = 70;   				// 第一行砖块底部位置
    parameter BLOCK_UP_LINE = 35;  					// 第二行砖块底部位置
    parameter BLOCK_WIDTH = 63;       				// 砖块宽度
    
    // 球的参数
    parameter BALL_RAD = 10;
    parameter BALL_NUM = 10;      // 一层的球个数
	parameter BLOCK_INIT = 20'b1111_1111_1111_1111_1111;

    // 初始位置参数定义
    parameter INIT_BALL_X = 330;  // 小球初始X坐标
    parameter INIT_BALL_Y = 390;  // 小球初始Y坐标
    parameter INIT_UP_POS = 400;  // 挡板初始上边缘Y坐标
    parameter INIT_DOWN_POS = 430;// 挡板初始下边缘Y坐标
    parameter INIT_LEFT_POS = 230;// 挡板初始左边缘X坐标
    parameter INIT_RIGHT_POS = 430;// 挡板初始右边缘X坐标

	//The blocks
	reg [19:0] blocks = BLOCK_INIT;
	
	// 暂停状态寄存器
	reg pau = 1;
	
	// 水平/垂直计数器
	reg [9:0] HCount;
	reg [9:0] VCount;
	
	// 分频时钟信号
	wire clk_25M;
	
	// 小球水平运动方向,1表示向右,0表示向左
	reg h_speed = 1'b1;
	// 小球垂直运动方向,1表示向上,0表示向下
	reg v_speed = 1'b0; 
	
	// 挡板位置参数定义
	reg [9:0] up_pos = INIT_UP_POS;    // 挡板上边缘Y坐标
	reg [9:0] down_pos = INIT_DOWN_POS;  // 挡板下边缘Y坐标
	reg [9:0] left_pos = INIT_LEFT_POS;  // 挡板左边缘X坐标
	reg [9:0] right_pos = INIT_RIGHT_POS; // 挡板右边缘X坐标
		
	// 小球位置参数定义
	reg [9:0] ball_x_pos = INIT_BALL_X; // 小球中心X坐标
	reg [9:0] ball_y_pos = INIT_BALL_Y; // 小球中心Y坐标
	
	reg pause;
	always@(*) begin
		if(!oLose) 
			pause = iPause;
		else 
			pause = 1;
	end
	
	always @(posedge pause)
		pau <= ~pau;
	
	// 实例化分频器
	divider4Times divider(
	    .iClk		(iClk),
	    .clk_25M	(clk_25M)
	);
	
	// 生成水平和垂直同步信号
	always @(posedge clk_25M) begin
		// 重置水平和垂直计数器
		if(HCount == TOTAL_HORIZONTAL_PIXELS- 1) begin
			HCount <= 0; 
			if(VCount == TOTAL_VERTICAL_LINES- 1) 
				VCount <= 0;
			else 
				VCount <= VCount + 1;
		end
		else
			HCount <= HCount + 1;
		
		// 生成水平同步信号
		if(HCount == HORIZONTAL_ACTIVE_PIXELS - 1 + HORIZONTAL_FRONT_PORCH)
			oHSync <= 1'b0;
		else if(HCount == HORIZONTAL_ACTIVE_PIXELS - 1 + HORIZONTAL_FRONT_PORCH + HORIZONTAL_SYNC_PULSE_WIDTH)
			oHSync <= 1'b1;
		
		// 生成垂直同步信号
		if(VCount == VERTICAL_ACTIVE_LINES - 1 + VERTICAL_FRONT_PORCH)
			oVSync <= 1'b0;
		else if(VCount == VERTICAL_ACTIVE_LINES - 1 + VERTICAL_FRONT_PORCH + VERTICAL_SYNC_PULSE_WIDTH)
			oVSync <= 1'b1;					
	end
	
	// 砖块颜色定义
	function [7:0] get_block_color;
		input [5:0] block_idx;
		begin
			case(block_idx % 16)
				0: 	get_block_color = {3'b111, 3'b000, 2'b00}; // 红色
				1: 	get_block_color = {3'b000, 3'b111, 2'b00}; // 绿色 
				2: 	get_block_color = {3'b000, 3'b000, 2'b11}; // 蓝色
				3: 	get_block_color = {3'b000, 3'b111, 2'b11}; // 青色
				4: 	get_block_color = {3'b111, 3'b111, 2'b11}; // 白色
				5: 	get_block_color = {3'b111, 3'b111, 2'b00}; // 黄色
				6: 	get_block_color = {3'b111, 3'b000, 2'b11}; // 紫色
				7: 	get_block_color = {3'b000, 3'b111, 2'b01}; // 浅绿色
				8: 	get_block_color = {3'b011, 3'b011, 2'b11}; // 灰色
				9: 	get_block_color = {3'b111, 3'b011, 2'b00}; // 橙色
				10: get_block_color = {3'b011, 3'b000, 2'b11}; // 深紫色
				11: get_block_color = {3'b000, 3'b011, 2'b11}; // 深青色
				12: get_block_color = {3'b011, 3'b111, 2'b00}; // 黄绿色
				13: get_block_color = {3'b111, 3'b001, 2'b01}; // 粉色
				14: get_block_color = {3'b001, 3'b001, 2'b11}; // 深灰色
				15: get_block_color = {3'b101, 3'b101, 2'b01}; // 浅灰色
				default: get_block_color = {3'b000, 3'b000, 2'b00}; // 黑色
			endcase
		end
	endfunction
	
	reg [5:0] block_idx1;
	reg [5:0] block_idx2;

	// 显示挡板和小球
	always @ (posedge clk_25M)   
	begin  
		// 显示挡板
		if (VCount >= up_pos && VCount <= down_pos && HCount >= left_pos && HCount <= right_pos) begin
			oRed   <= 3'b111;
			oGreen <= 3'b111;
			oBlue  <= 2'b11;
		end  
		
		// 显示小球
		else if ((HCount - ball_x_pos) * (HCount - ball_x_pos) + (VCount - ball_y_pos) * (VCount - ball_y_pos) <= (BALL_RAD * BALL_RAD)) begin  
			oRed   <= 3'b101;
			oGreen <= 3'b101;
			oBlue  <= 2'b10;
		end  
		else if(VCount <= BLOCK_DOWN_LINE && VCount >= BLOCK_UP_LINE) begin
			// 显示第一行砖块
			if(HCount < BLOCK_WIDTH * BALL_NUM) begin
				block_idx1 = HCount / BLOCK_WIDTH;
				if(blocks[block_idx1])
					{oRed, oGreen, oBlue} = get_block_color(block_idx1);
				else
					{oRed, oGreen, oBlue} = 8'b0;
			end
		end
		else if(VCount <= BLOCK_UP_LINE) begin
			// 显示第二行砖块
			if(HCount < BLOCK_WIDTH * BALL_NUM) begin
				block_idx2 = HCount / BLOCK_WIDTH + BALL_NUM;
				if(blocks[block_idx2])
					{oRed, oGreen, oBlue} = get_block_color(block_idx2);
				else
					{oRed, oGreen, oBlue} = 8'b0;
			end
		end
		else begin  
			oRed <=   3'b000;  
			oGreen <= 3'b000;  
			oBlue <=  2'b00;  
		end		 
	end

	reg flag;
	// 刷新图像
	always @ (posedge oVSync) begin  		
		// 挡板移动
		if(oLose || oWin) begin 
			ball_x_pos <= INIT_BALL_X;
			ball_y_pos <= INIT_BALL_Y;
			up_pos <= INIT_UP_POS;
			down_pos <= INIT_DOWN_POS;
			left_pos <= INIT_LEFT_POS;
			right_pos <= INIT_RIGHT_POS; 
			flag <= 1;
		end
		else if(!pau) begin
			flag<=0;
			if (iToLeft && left_pos >= LEFT_BOUND) begin  
				left_pos <= left_pos - iBarMoveSpeed;  
				right_pos <= right_pos - iBarMoveSpeed;  
			end  
			else if(iToRight && right_pos <= RIGHT_BOUND) begin
				left_pos <= left_pos + iBarMoveSpeed;
				right_pos <= right_pos + iBarMoveSpeed;
			end  
		
			// 小球移动
			if (v_speed == 1'b0) // go up 
				ball_y_pos <= ball_y_pos - iBarMoveSpeed;  
			else //go down
				ball_y_pos <= ball_y_pos + iBarMoveSpeed;  
			if (h_speed == 1'b1) // go right 
				ball_x_pos <= ball_x_pos + iBarMoveSpeed;  
			else //go down
				ball_x_pos <= ball_x_pos - iBarMoveSpeed; 
		end 	
   	end 
	
	reg [5:0] block_idx;
	// 改变小球方向
	always @ (negedge oVSync)  
	begin
		if(flag) begin
			oLose<=0;
			blocks<=BLOCK_INIT; 
		end
		if (ball_y_pos <= UP_BOUND) begin 
			v_speed <= 1'b1;
			oLose <= 0;
		end
		else if(ball_y_pos <= BLOCK_DOWN_LINE && ball_y_pos > BLOCK_UP_LINE) begin // 小球在砖块之间
			block_idx = ball_x_pos / BLOCK_WIDTH;
			if(block_idx < BALL_NUM && blocks[block_idx]) begin
				v_speed <= 1'b1;
				blocks[block_idx] <= 0;
				oGet <= 1;
			end
		end
		else if(ball_y_pos <= BLOCK_UP_LINE) begin // 小球在第二行砖块
			block_idx = ball_x_pos / BLOCK_WIDTH + BALL_NUM;
			if(block_idx < 2 * BALL_NUM && blocks[block_idx]) begin
				v_speed <= 1'b1;
				blocks[block_idx] <= 0;  
				oGet <= 1;
			end
		end
		else if (ball_y_pos >= (up_pos - BALL_RAD) && ball_x_pos <= right_pos && ball_x_pos >= left_pos) begin // 小球碰到挡板
			v_speed <= 1'b0;
			oCrash <= 1;
		end
		else if (ball_y_pos >= down_pos && ball_y_pos < (DOWN_BOUND - BALL_RAD)) // 小球碰到下边界
			oLose <= 1;
		else if(blocks==0) // 所有砖块都被击碎
			oLose<=0;
		else if (ball_y_pos >= (DOWN_BOUND - BALL_RAD + 1)) // 小球碰到下边界
			v_speed <= 0; 
		else begin
			oGet <= 0;
			oCrash <= 0;
			v_speed <= v_speed;  
		end
				
		if (ball_x_pos <= LEFT_BOUND)  
			h_speed <= 1'b1;  
		else if (ball_x_pos >= RIGHT_BOUND)  
			h_speed <= 1'b0;  
		else  
			h_speed <= h_speed;  
  	end 

	assign oWin = (blocks==0);

endmodule
