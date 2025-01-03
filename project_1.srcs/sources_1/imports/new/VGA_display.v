`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/08 16:59:56
// Design Name: 
// Module Name: VGA_display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

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
    parameter BLOCK_DOWN_first = 80;   // 第一行砖块底部位置
    parameter BLOCK_DOWN_second = 40;  // 第二行砖块底部位置
    parameter BLOCK_WIDTH = 125;       // 砖块宽度
    
    // 球的半径
    parameter ball_r = 10;
	
	
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
	
	
	//The blocks
	reg [9:0] blocks=10'b1111111111;
	
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
	
	
	// 显示挡板和小球
	always @ (posedge clk_25M)   
	begin  
		// 显示挡板
		if (Vcnt>=up_pos && Vcnt<=down_pos && Hcnt>=left_pos && Hcnt<=right_pos) 
		begin  
			oRed <= Hcnt[3:1];  
			oGreen <= Hcnt[6:4];  
			oBlue <= Hcnt[8:7]; 
		end  
		
		// 显示小球
		else if ( (Hcnt - ball_x_pos)*(Hcnt - ball_x_pos) + (Vcnt - ball_y_pos)*(Vcnt - ball_y_pos) <= (ball_r * ball_r))  
		begin  
			oRed <= Hcnt[3:1];  
			oGreen <= Hcnt[6:4];  
			oBlue <= Hcnt[8:7];  
		end  
		else if(Vcnt<=BLOCK_DOWN_first&&Vcnt>BLOCK_DOWN_second)
		begin
			// 显示砖块
			if(Hcnt<BLOCK_WIDTH&&blocks[0])
			begin
				oRed <= 3'b111;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			else if(Hcnt<BLOCK_WIDTH&&!blocks[0])
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			if(Hcnt<BLOCK_WIDTH*2&&blocks[1]&&Hcnt>BLOCK_WIDTH)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b111;  
				oBlue <= 2'b00; 
			end
			else if(Hcnt<BLOCK_WIDTH*2&&!blocks[1]&&Hcnt>BLOCK_WIDTH)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			if(Hcnt<BLOCK_WIDTH*3&&blocks[2]&&Hcnt>BLOCK_WIDTH*2)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b11; 
			end
			else if(Hcnt<BLOCK_WIDTH*3&&!blocks[2]&&Hcnt>BLOCK_WIDTH*2)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			if(Hcnt<BLOCK_WIDTH*4&&blocks[3]&&Hcnt>BLOCK_WIDTH*3)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b111;  
				oBlue <= 2'b11; 
			end
			else if(Hcnt<BLOCK_WIDTH*4&&!blocks[3]&&Hcnt>BLOCK_WIDTH*3)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			if(blocks[4]&&Hcnt>BLOCK_WIDTH*4)
			begin
				oRed <= 3'b111;  
				oGreen <= 3'b111;  
				oBlue <= 2'b11; 
			end
			else if(!blocks[4]&&Hcnt>BLOCK_WIDTH*4)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
		end
		else if(Vcnt<=BLOCK_DOWN_second)
		begin
			if(Hcnt<BLOCK_WIDTH&&blocks[5])
			begin
				oRed <= 3'b111;  
				oGreen <= 3'b111;  
				oBlue <= 2'b00; 
			end
			else if(Hcnt<BLOCK_WIDTH&&!blocks[5])
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			if(Hcnt<BLOCK_WIDTH*2&&blocks[6]&&Hcnt>BLOCK_WIDTH)
			begin
				oRed <= 3'b010;  
				oGreen <= 3'b101;  
				oBlue <= 2'b01; 
			end
			else if(Hcnt<BLOCK_WIDTH*2&&!blocks[6]&&Hcnt>BLOCK_WIDTH)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			if(Hcnt<BLOCK_WIDTH*3&&blocks[7]&&Hcnt>BLOCK_WIDTH*2)
			begin
				oRed <= 3'b100;  
				oGreen <= 3'b011;  
				oBlue <= 2'b11; 
			end
			else if(Hcnt<BLOCK_WIDTH*3&&!blocks[7]&&Hcnt>BLOCK_WIDTH*2)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			if(Hcnt<BLOCK_WIDTH*4&&blocks[8]&&Hcnt>BLOCK_WIDTH*3)
			begin
				oRed <= 3'b010;  
				oGreen <= 3'b101;  
				oBlue <= 2'b11; 
			end
			else if(Hcnt<BLOCK_WIDTH*4&&!blocks[8]&&Hcnt>BLOCK_WIDTH*3)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
			end
			if(blocks[9]&&Hcnt>BLOCK_WIDTH*4)
			begin
				oRed <= 3'b011;  
				oGreen <= 3'b011;  
				oBlue <= 2'b11; 
			end
			else if(!blocks[9]&&Hcnt>BLOCK_WIDTH*4)
			begin
				oRed <= 3'b000;  
				oGreen <= 3'b000;  
				oBlue <= 2'b00; 
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
	
	// 改变小球方向
	always @ (negedge oVSync)  
	begin
		if(flag)
		begin
			oLose<=0;
			blocks=10'b1111111111; 
		end
		if (ball_y_pos <= UP_BOUND)   // 这里，所有判断都应该使用>=或<=，而不是==
		begin	
			v_speed <= `DOWN;              // 因为当偏移量大于1时，轴可能会跨过线
			oLose <= 0;
		end
		else if(ball_y_pos <= BLOCK_DOWN_first && ball_y_pos > BLOCK_DOWN_second) // 小球在砖块之间
		begin
			if (ball_x_pos < BLOCK_WIDTH && blocks[0])
			begin
				if(ball_y_pos > BLOCK_DOWN_first - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else // 碰到左边
					h_speed <= ~h_speed;
				blocks[0]<=0;
			end
			else if (ball_x_pos < BLOCK_WIDTH * 2 && blocks[1] && ball_x_pos > BLOCK_WIDTH)
			begin
				if(ball_y_pos > BLOCK_DOWN_first - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else
					h_speed <= ~h_speed;
				blocks[1]<=0;
			end
			else if (ball_x_pos < BLOCK_WIDTH * 3 && blocks[2] && ball_x_pos > BLOCK_WIDTH * 2)
			begin
				if(ball_y_pos > BLOCK_DOWN_first - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else
					h_speed <= ~h_speed;
				blocks[2]<=0;
			end
			else if (ball_x_pos < BLOCK_WIDTH * 4 && blocks[3] && ball_x_pos > BLOCK_WIDTH * 3)
			begin
				if(ball_y_pos > BLOCK_DOWN_first - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else
					h_speed <= ~h_speed;
				blocks[3]<=0;
			end
			else if (blocks[4] && ball_x_pos > BLOCK_WIDTH * 4)
			begin
				if(ball_y_pos > BLOCK_DOWN_first - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else // 碰到右边
					h_speed <= ~h_speed;
				blocks[4]<=0;
			end
		end
		else if(ball_y_pos <= BLOCK_DOWN_second) // 小球在第二行砖块
		begin
			if (ball_x_pos < BLOCK_WIDTH && blocks[5])
			begin
				if(ball_y_pos > BLOCK_DOWN_second - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else // 碰到左边
					h_speed <= `RIGHT;
				blocks[5]<=0;
			end
			else if (ball_x_pos < BLOCK_WIDTH * 2 && blocks[6] && ball_x_pos > BLOCK_WIDTH)
			begin
				if(ball_y_pos > BLOCK_DOWN_second - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else
					h_speed <= ~h_speed;
				blocks[6]<=0;
			end
			else if (ball_x_pos < BLOCK_WIDTH * 3 && blocks[7] && ball_x_pos > BLOCK_WIDTH * 2)
			begin
				if(ball_y_pos > BLOCK_DOWN_second - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else
					h_speed <= ~h_speed;
				blocks[7]<=0;
			end
			else if (ball_x_pos < BLOCK_WIDTH * 4 && blocks[8] && ball_x_pos > BLOCK_WIDTH * 3)
			begin
				if(ball_y_pos > BLOCK_DOWN_second - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else
					h_speed <= ~h_speed;
				blocks[8]<=0;
			end
			else if (blocks[9] && ball_x_pos > BLOCK_WIDTH * 4)
			begin
				if(ball_y_pos > BLOCK_DOWN_second - iBarMoveSpeed) // 碰到下面
					v_speed<=`DOWN;
				else // 碰到右边
					h_speed <= ~h_speed;
				blocks[9]<=0;
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
