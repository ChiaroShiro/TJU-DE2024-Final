`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 公司: 
// 工程师: 
// 
// 创建日期: 2018/12/08 16:59:56
// 设计名称: 
// 模块名称: VGA_display
// 项目名称: 
// 目标设备: 
// 工具版本: 
// 描述: 这是一个打砖块游戏的VGA显示模块
// 
// 依赖关系: 
// 
// 修订:
// 修订 0.01 - 文件创建
// 附加说明:
// 
//////////////////////////////////////////////////////////////////////////////////

// 定义方向常量
`define RIGHT 1'b1  // 向右移动
`define LEFT  1'b0  // 向左移动
`define UP    1'b0  // 向上移动
`define DOWN  1'b1  // 向下移动

module VGA_display(
    input iClk,          // 系统时钟输入
    input iPause,        // 暂停信号输入
    input iToLeft,       // 向左移动输入
    input iToRight,      // 向右移动输入
    input [3:0] iBarMoveSpeed,  // 挡板移动速度
    output reg oHSync,   // 水平同步信号输出
    output reg oVSync,   // 垂直同步信号输出
    output reg [2:0] oRed,    // 红色分量输出
    output reg [2:0] oGreen,  // 绿色分量输出
    output reg [1:0] oBlue,   // 蓝色分量输出
    output reg oLose     // 游戏失败信号输出
);
    
    // VGA时序参数定义
    parameter PAL = 640;     // 每行有效像素数
    parameter LAF = 480;     // 每帧有效行数
    parameter PLD = 800;     // 每行总像素数
    parameter LFD = 521;     // 每帧总行数
    parameter HPW = 96;      // 水平同步脉冲宽度
    parameter HFP = 16;      // 水平前肩
    parameter VPW = 2;       // 垂直同步脉冲宽度
    parameter VFP = 10;      // 垂直前肩
    
    // 游戏区域边界定义
    parameter UP_BOUND = 10;      // 上边界
    parameter DOWN_BOUND = 480;   // 下边界
    parameter LEFT_BOUND = 20;    // 左边界
    parameter RIGHT_BOUND = 630;  // 右边界
    
    // 砖块区域参数定义
    parameter BLOCK_DOWN_first = 70;   // 第一行砖块底部位置
    parameter BLOCK_DOWN_second = 35;  // 第二行砖块底部位置
    parameter BLOCK_WIDTH = 125;       // 砖块宽度
    
    // 小球参数定义
    parameter ball_r = 10;  // 小球半径
    
    // 暂停状态寄存器,初始为暂停状态
    reg pau=1;
    
    // 计数器和时钟信号定义
    reg [9:0] Hcnt;      // 水平计数器
    reg [9:0] Vcnt;      // 垂直计数器
    reg clk_25M = 0;     // 25MHz时钟
    reg clk_50M = 0;     // 50MHz时钟
    
    // 小球运动方向控制
    reg h_speed = `RIGHT;  // 水平方向速度
    reg v_speed = `UP;     // 垂直方向速度
    
    // 挡板位置参数定义
    reg [9:0] up_pos = 400;     // 挡板上边缘位置
    reg [9:0] down_pos = 430;   // 挡板下边缘位置
    reg [9:0] left_pos = 230;   // 挡板左边缘位置
    reg [9:0] right_pos = 430;  // 挡板右边缘位置
        
    // 小球位置参数定义
    reg [9:0] ball_x_pos = 330;  // 小球x坐标
    reg [9:0] ball_y_pos = 390;  // 小球y坐标
    
    // 砖块状态寄存器,10个砖块,1表示存在,0表示被击碎
    reg [9:0] blocks=10'b1111111111;
    
    // 暂停控制逻辑
    always@(posedge iPause)
    begin
        pau=~pau;  // 暂停信号翻转
    end
    
    // 50MHz时钟分频
    always@(posedge(iClk))
    begin
        clk_50M <= ~clk_50M;
    end
    
    // 25MHz时钟分频
    always@(posedge(clk_50M))
    begin
        clk_25M <= ~clk_25M;
    end
    
    // VGA同步信号产生逻辑
    always@(posedge(clk_25M)) 
    begin
        // 水平和垂直计数器控制
        if( Hcnt == PLD-1 ) // 到达行末
        begin
            Hcnt <= 0;  // 水平计数器复位
            if( Vcnt == LFD-1 ) // 到达帧末
                Vcnt <=0;  // 垂直计数器复位
            else
                Vcnt <= Vcnt + 1;  // 垂直计数器加1
        end
        else
            Hcnt <= Hcnt + 1;  // 水平计数器加1
        
        // 产生水平同步信号
        if( Hcnt == PAL - 1 + HFP)
            oHSync <= 1'b0;  // 水平同步脉冲开始
        else if( Hcnt == PAL - 1 + HFP + HPW )
            oHSync <= 1'b1;  // 水平同步脉冲结束
        
        // 产生垂直同步信号
        if( Vcnt == LAF - 1 + VFP ) 
            oVSync <= 1'b0;  // 垂直同步脉冲开始
        else if( Vcnt == LAF - 1 + VFP + VPW )
            oVSync <= 1'b1;  // 垂直同步脉冲结束
    end
    
    // 显示控制逻辑
    always @ (posedge clk_25M)   
    begin  
        // 显示挡板
        if (Vcnt>=up_pos && Vcnt<=down_pos && Hcnt>=left_pos && Hcnt<=right_pos) 
        begin  
            oRed <= Hcnt[3:1];    // 根据水平位置生成颜色
            oGreen <= Hcnt[6:4];  
            oBlue <= Hcnt[8:7]; 
        end  
        
        // 显示小球
        else if ( (Hcnt - ball_x_pos)*(Hcnt - ball_x_pos) + (Vcnt - ball_y_pos)*(Vcnt - ball_y_pos) <= (ball_r * ball_r))  
        begin  
            oRed <= Hcnt[3:1];    // 根据水平位置生成颜色
            oGreen <= Hcnt[6:4];  
            oBlue <= Hcnt[8:7];  
        end  
        
        // 显示第一行砖块
        else if(Vcnt<=BLOCK_DOWN_first&&Vcnt>BLOCK_DOWN_second)
        begin
            // 显示每个砖块,根据blocks寄存器状态决定是否显示
            // 每个砖块使用不同的颜色
            if(Hcnt<BLOCK_WIDTH&&blocks[0])
            begin
                oRed <= 111;   // 红色砖块
                oGreen <= 000;  
                oBlue <= 000; 
            end
            else if(Hcnt<BLOCK_WIDTH&&!blocks[0])
            begin
                oRed <= 0;     // 砖块被击碎显示黑色
                oGreen <= 0;  
                oBlue <= 0; 
            end
            
            // 以下类似,显示其他砖块
            // ... (后续代码逻辑相似)
        end
        
        // 显示第二行砖块
        else if(Vcnt<=BLOCK_DOWN_second)
        begin
            // 显示逻辑与第一行类似
            // ... (后续代码逻辑相似)
        end
        
        // 显示背景
        else 
        begin  
            oRed <= 3'b000;    // 背景为黑色
            oGreen <= 3'b000;  
            oBlue <= 2'b00;  
        end         
    end
    
    reg flag;  // 重置标志
    // 游戏状态更新逻辑
    always @ (posedge oVSync)  
    begin          
        // 游戏失败时重置位置
        if(oLose)
        begin 
            ball_x_pos = 330;    // 重置小球位置
            ball_y_pos = 390;
            up_pos = 400;        // 重置挡板位置
            down_pos = 430;
            left_pos = 230;
            right_pos = 430; 
            flag=1;              // 设置重置标志
        end
        else if(!pau)  // 非暂停状态
        begin
            flag=0;
            // 控制挡板左右移动
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
        
            // 控制小球移动
            if (v_speed == `UP)     // 向上移动
                ball_y_pos <= ball_y_pos - iBarMoveSpeed;  
            else                    // 向下移动
                ball_y_pos <= ball_y_pos + iBarMoveSpeed;  
            if (h_speed == `RIGHT)  // 向右移动
                ball_x_pos <= ball_x_pos + iBarMoveSpeed;  
            else                    // 向左移动
                ball_x_pos <= ball_x_pos - iBarMoveSpeed; 
        end     
    end 
    
    // 碰撞检测和方向改变逻辑
    always @ (negedge oVSync)  
    begin
        // 游戏重置
        if(flag)
        begin
            oLose<=0;
            blocks=10'b1111111111;  // 重置所有砖块
        end
        
        // 碰到上边界反弹
        if (ball_y_pos <= UP_BOUND)   
        begin    
            v_speed <= `DOWN;              
            oLose <= 0;
        end
        
        // 检测与第一行砖块的碰撞
        else if(ball_y_pos <= BLOCK_DOWN_first&&ball_y_pos > BLOCK_DOWN_second)
        begin
            // 检测每个砖块的碰撞
            if(ball_x_pos<BLOCK_WIDTH&&blocks[0])
            begin
                v_speed<=`DOWN;  // 改变小球方向
                blocks[0]<=0;    // 消除砖块
            end
            // ... (后续砖块碰撞检测逻辑相似)
        end
        
        // 检测与第二行砖块的碰撞
        else if(ball_y_pos <= BLOCK_DOWN_second)
        begin
            // 检测逻辑与第一行类似
            // ... (后续代码逻辑相似)
        end
        
        // 检测与挡板的碰撞
        else if (ball_y_pos >= (up_pos - ball_r) && ball_x_pos <= right_pos && ball_x_pos >= left_pos)  
            v_speed <= `UP;  // 碰到挡板反弹
            
        // 检测游戏失败条件
        else if (ball_y_pos >= down_pos && ball_y_pos < (DOWN_BOUND - ball_r))
        begin
            oLose <= 1;  // 设置失败标志
        end
        
        // 所有砖块都被击碎
        else if(blocks==0)
            oLose<=0;
            
        // 碰到底部边界
        else if (ball_y_pos >= (DOWN_BOUND - ball_r + 1))
            v_speed <= 0; 
        else  
            v_speed <= v_speed;  
                  
        // 检测左右边界碰撞
        if (ball_x_pos <= LEFT_BOUND)  
            h_speed <= `RIGHT;  
        else if (ball_x_pos >= RIGHT_BOUND)  
            h_speed <= `LEFT;  
        else  
            h_speed <= h_speed;  
    end 
  
endmodule
