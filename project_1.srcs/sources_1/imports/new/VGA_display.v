`timescale 1ns / 1ps

`define RIGHT 1'b1
`define LEFT  1'b0
`define UP    1'b0
`define DOWN  1'b1

module VGA_display(
    // 系统时钟输入
    input iClk,
    // 暂停游戏输入信号
    input iPause,
    // 控制挡板左移输入
    input iToLeft,
    // 控制挡板右移输入
    input iToRight,
    // 挡板移动速度控制(4位)
    input [3:0] iBarMoveSpeed,
    // VGA水平同步信号输出
    output reg oHSync,
    // VGA垂直同步信号输出
    output reg oVSync,
    // VGA红色分量输出(3位)
    output reg [2:0] oRed,
    // VGA绿色分量输出(3位)
    output reg [2:0] oGreen,
    // VGA蓝色分量输出(2位)
    output reg [1:0] oBlue,
    // 游戏失败信号输出
    output reg oLose
);
    
    // VGA显示参数定义
    parameter PAL = 640;     // 水平有效显示像素数
    parameter LAF = 480;     // 垂直有效显示行数
    parameter PLD = 800;     // 水平总像素数(包含同步和消隐)
    parameter LFD = 521;     // 垂直总行数(包含同步和消隐)
    parameter HPW = 96;      // 水平同步脉冲宽度
    parameter HFP = 16;      // 水平前肩
    parameter VPW = 2;       // 垂直同步脉冲宽度
    parameter VFP = 10;      // 垂直前肩
    
    // 游戏区域边界定义
    parameter UP_BOUND = 10;         // 上边界
    parameter DOWN_BOUND = 480;      // 下边界
    parameter LEFT_BOUND = 20;       // 左边界
    parameter RIGHT_BOUND = 630;     // 右边界
    
    // 砖块位置参数
    parameter BLOCK_DOWN_first = 70;   // 第一行砖块底部位置
    parameter BLOCK_DOWN_second = 35;  // 第二行砖块底部位置
    parameter BLOCK_WIDTH = 63;       // 砖块宽度
    
    // 球的半径
    parameter ball_r = 10;
    parameter ball_num = 10;      // 一层的球个数
	parameter block_init = 20'b1111_1111_1111_1111_1111;
	//The blocks
	reg [19:0] blocks = block_init;
	
	
	// 暂停状态寄存器,1表示暂停,0表示不暂停
	reg pau=1;
	
	/*寄存器定义*/
	// 水平计数器,用于生成水平同步信号
	// 当计数到PLD-1时重置为0
	reg [9:0] Hcnt;      
	// 垂直计数器,用于生成垂直同步信号
	// 当计数到LFD-1时重置为0
	reg [9:0] Vcnt;      
	// 25MHz时钟信号,用于VGA显示时序控制
	reg clk_25M = 0;     
	// 50MHz时钟信号,用于生成25MHz时钟
	reg clk_50M = 0;     
	
	// 小球水平运动方向,RIGHT表示向右,LEFT表示向左
	reg h_speed = `RIGHT;
	// 小球垂直运动方向,UP表示向上,DOWN表示向下
	reg v_speed = `UP; 
	
	// 挡板位置参数定义
	reg [9:0] up_pos = 400;    // 挡板上边缘Y坐标
	reg [9:0] down_pos = 430;  // 挡板下边缘Y坐标
	reg [9:0] left_pos = 230;  // 挡板左边缘X坐标
	reg [9:0] right_pos = 430; // 挡板右边缘X坐标
		
	// 小球位置参数定义
	reg [9:0] ball_x_pos = 330; // 小球中心X坐标,初始值330
	reg [9:0] ball_y_pos = 390; // 小球中心Y坐标,初始值390
	
	
	
	always@(posedge iPause)
	begin
	   pau=~pau;
	end
	
	// 生成50MHz时钟信号
	always@(posedge(iClk))
	begin
		clk_50M <= ~clk_50M;
	end
	
	// 生成25MHz时钟信号
	always@(posedge(clk_50M))
	 begin
		 clk_25M <= ~clk_25M;
	 end
	
	// 生成水平和垂直同步信号
	always@(posedge(clk_25M)) 
	begin
		// 重置水平和垂直计数器
		if( Hcnt == PLD-1 ) 
		begin
			Hcnt <= 0; 
			if( Vcnt == LFD-1 ) 
				Vcnt <=0;
			else
				Vcnt <= Vcnt + 1;
		end
		else
			Hcnt <= Hcnt + 1;
		
		// 生成水平同步信号
		if( Hcnt == PAL - 1 + HFP)
			oHSync <= 1'b0;
		else if( Hcnt == PAL - 1 + HFP + HPW )
			oHSync <= 1'b1;
		
		// 生成垂直同步信号
		if( Vcnt == LAF - 1 + VFP ) 
			oVSync <= 1'b0;
		else if( Vcnt == LAF - 1 + VFP + VPW )
			oVSync <= 1'b1;					
	end
	
	// 砖块颜色定义
	function [7:0] get_block_color;
		input [5:0] block_idx; // 增加到6位输入,支持更多颜色
		begin
			case(block_idx % 16) // 对16取模
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
		if (Vcnt >= up_pos && Vcnt <= down_pos && Hcnt >= left_pos && Hcnt <= right_pos) 
		begin  
			oRed   <= 3'b111;  
			oGreen <= 3'b111;  
			oBlue  <= 2'b11; 
		end  
		
		// 显示小球
		else if ( (Hcnt - ball_x_pos) * (Hcnt - ball_x_pos) + (Vcnt - ball_y_pos) * (Vcnt - ball_y_pos) <= (ball_r * ball_r))  
		begin  
			oRed   <= 3'b101;  
			oGreen <= 3'b101;  
			oBlue  <= 2'b10; 
		end  
		else if(Vcnt <= BLOCK_DOWN_first && Vcnt >= BLOCK_DOWN_second)
		begin
			// 显示第一行砖块
			if(Hcnt < BLOCK_WIDTH * ball_num) begin
				block_idx1 = Hcnt / BLOCK_WIDTH;
				if(blocks[block_idx1]) begin
					{oRed, oGreen, oBlue} = get_block_color(block_idx1);
				end else begin
					{oRed, oGreen, oBlue} = 8'b0;
				end
			end
		end
		else if(Vcnt <= BLOCK_DOWN_second)
		begin
			// 显示第二行砖块
			if(Hcnt < BLOCK_WIDTH * ball_num) begin
				block_idx2 = Hcnt / BLOCK_WIDTH + ball_num;
				if(blocks[block_idx2]) begin
					{oRed, oGreen, oBlue} = get_block_color(block_idx2);
				end else begin
					{oRed, oGreen, oBlue} = 8'b0;
				end
			end
		end
		else 
		begin  
			oRed <= 3'b000;  
			oGreen <= 3'b000;  
			oBlue <= 2'b00;  
		end		 
		
		
	end
	
	reg flag;
	// 刷新图像
	always @ (posedge oVSync)  
   	begin  		
		// 挡板移动
		if(oLose)
		begin 
			ball_x_pos <= 330;
			ball_y_pos <= 390;
			up_pos <= 400;
			down_pos <= 430;
			left_pos <= 230;
			right_pos <= 430; 
			flag<=1;
		end
		else if(!pau)
		begin
			flag<=0;
			if (iToLeft && left_pos >= LEFT_BOUND) 
			begin  
				left_pos <= left_pos - iBarMoveSpeed;  
				right_pos <= right_pos - iBarMoveSpeed;  
			end  
			else if(iToRight && right_pos <= RIGHT_BOUND)
			begin
				left_pos <= left_pos + iBarMoveSpeed;
				right_pos <= right_pos + iBarMoveSpeed;
			end  
		
			// 小球移动
			if (v_speed == `UP) // go up 
				ball_y_pos <= ball_y_pos - iBarMoveSpeed;  
			else //go down
				ball_y_pos <= ball_y_pos + iBarMoveSpeed;  
			if (h_speed == `RIGHT) // go right 
				ball_x_pos <= ball_x_pos + iBarMoveSpeed;  
			else //go down
				ball_x_pos <= ball_x_pos - iBarMoveSpeed; 

		end 	
   	end 
	
	reg [5:0] block_idx;
	// 改变小球方向
	always @ (negedge oVSync)  
	begin
		if(flag)
		begin
			oLose<=0;
			blocks<=block_init; 
		end
		if (ball_y_pos <= UP_BOUND)   // 这里，所有判断都应该使用>=或<=，而不是==
		begin	
			v_speed <= `DOWN;              // 因为当偏移量大于1时，轴可能会跨过线
			oLose <= 0;
		end
		else if(ball_y_pos <= BLOCK_DOWN_first && ball_y_pos > BLOCK_DOWN_second) // 小球在砖块之间
		begin
			// 计算小球碰到的砖块索引
			block_idx = ball_x_pos / BLOCK_WIDTH;
			
			// 检查是否碰到砖块
			if(block_idx < ball_num && blocks[block_idx]) begin
			// 	// 判断碰撞方向
			// 	if(ball_y_pos > BLOCK_DOWN_first - iBarMoveSpeed)
			// 		v_speed <= `DOWN;  // 碰到下面
			// 	else begin
			// 		// 碰到左右边
			// 		if(block_idx == 0)
			// 			h_speed <= `RIGHT;  // 最左边砖块
			// 		else if(block_idx == 4) 
			// 			h_speed <= `LEFT;   // 最右边砖块
			// 		else
			// 			h_speed <= ~h_speed; // 中间砖块
			// 	end
				v_speed <= `DOWN;
				// 消除被碰撞的砖块
				blocks[block_idx] <= 0;
			end
		end
		else if(ball_y_pos <= BLOCK_DOWN_second) // 小球在第二行砖块
		begin
						// 计算小球碰到的砖块索引
			block_idx = ball_x_pos / BLOCK_WIDTH + ball_num;
			
			// 检查是否碰到砖块
			if(block_idx < 2 * ball_num && blocks[block_idx]) begin
				// 判断碰撞方向
				// if(ball_y_pos > BLOCK_DOWN_second - iBarMoveSpeed)
				// 	v_speed <= `DOWN;  // 碰到下面
				// else begin
				// 	// 碰到左右边
				// 	if(block_idx == ball_num)
				// 		h_speed <= `RIGHT;  // 最左边砖块
				// 	else if(block_idx == 2 * ball_num - 1)
				// 		h_speed <= `LEFT;   // 最右边砖块 
				// 	else
				// 		h_speed <= ~h_speed; // 中间砖块
				// end
				v_speed <= `DOWN;
				// 消除被碰撞的砖块
				blocks[block_idx] <= 0;  
				
			end
		end


		else if (ball_y_pos >= (up_pos - ball_r) && ball_x_pos <= right_pos && ball_x_pos >= left_pos)  // 小球碰到挡板
			v_speed <= `UP;  
		else if (ball_y_pos >= down_pos && ball_y_pos < (DOWN_BOUND - ball_r)) // 小球碰到下边界
		begin
			//Do what you want when lose
			oLose <= 1;
		end
		else if(blocks==0) // 所有砖块都被击碎
			oLose<=0;
		else if (ball_y_pos >= (DOWN_BOUND - ball_r + 1)) // 小球碰到下边界
			v_speed <= 0; 
		else  
			v_speed <= v_speed;  
				
		if (ball_x_pos <= LEFT_BOUND)  
			h_speed <= `RIGHT;  
		else if (ball_x_pos >= RIGHT_BOUND)  
			h_speed <= `LEFT;  
		else  
			h_speed <= h_speed;  
  end 
  

endmodule
