`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ��˾: 
// ����ʦ: 
// 
// ��������: 2018/12/08 16:59:56
// �������: 
// ģ������: VGA_display
// ��Ŀ����: 
// Ŀ���豸: 
// ���߰汾: 
// ����: ����һ����ש����Ϸ��VGA��ʾģ��
// 
// ������ϵ: 
// 
// �޶�:
// �޶� 0.01 - �ļ�����
// ����˵��:
// 
//////////////////////////////////////////////////////////////////////////////////

// ���巽����
`define RIGHT 1'b1  // �����ƶ�
`define LEFT  1'b0  // �����ƶ�
`define UP    1'b0  // �����ƶ�
`define DOWN  1'b1  // �����ƶ�

module VGA_display(
    input iClk,          // ϵͳʱ������
    input iPause,        // ��ͣ�ź�����
    input iToLeft,       // �����ƶ�����
    input iToRight,      // �����ƶ�����
    input [3:0] iBarMoveSpeed,  // �����ƶ��ٶ�
    output reg oHSync,   // ˮƽͬ���ź����
    output reg oVSync,   // ��ֱͬ���ź����
    output reg [2:0] oRed,    // ��ɫ�������
    output reg [2:0] oGreen,  // ��ɫ�������
    output reg [1:0] oBlue,   // ��ɫ�������
    output reg oLose     // ��Ϸʧ���ź����
);
    
    // VGAʱ���������
    parameter PAL = 640;     // ÿ����Ч������
    parameter LAF = 480;     // ÿ֡��Ч����
    parameter PLD = 800;     // ÿ����������
    parameter LFD = 521;     // ÿ֡������
    parameter HPW = 96;      // ˮƽͬ��������
    parameter HFP = 16;      // ˮƽǰ��
    parameter VPW = 2;       // ��ֱͬ��������
    parameter VFP = 10;      // ��ֱǰ��
    
    // ��Ϸ����߽綨��
    parameter UP_BOUND = 10;      // �ϱ߽�
    parameter DOWN_BOUND = 480;   // �±߽�
    parameter LEFT_BOUND = 20;    // ��߽�
    parameter RIGHT_BOUND = 630;  // �ұ߽�
    
    // ש�������������
    parameter BLOCK_DOWN_first = 70;   // ��һ��ש��ײ�λ��
    parameter BLOCK_DOWN_second = 35;  // �ڶ���ש��ײ�λ��
    parameter BLOCK_WIDTH = 125;       // ש����
    
    // С���������
    parameter ball_r = 10;  // С��뾶
    
    // ��ͣ״̬�Ĵ���,��ʼΪ��ͣ״̬
    reg pau=1;
    
    // ��������ʱ���źŶ���
    reg [9:0] Hcnt;      // ˮƽ������
    reg [9:0] Vcnt;      // ��ֱ������
    reg clk_25M = 0;     // 25MHzʱ��
    reg clk_50M = 0;     // 50MHzʱ��
    
    // С���˶��������
    reg h_speed = `RIGHT;  // ˮƽ�����ٶ�
    reg v_speed = `UP;     // ��ֱ�����ٶ�
    
    // ����λ�ò�������
    reg [9:0] up_pos = 400;     // �����ϱ�Եλ��
    reg [9:0] down_pos = 430;   // �����±�Եλ��
    reg [9:0] left_pos = 230;   // �������Եλ��
    reg [9:0] right_pos = 430;  // �����ұ�Եλ��
        
    // С��λ�ò�������
    reg [9:0] ball_x_pos = 330;  // С��x����
    reg [9:0] ball_y_pos = 390;  // С��y����
    
    // ש��״̬�Ĵ���,10��ש��,1��ʾ����,0��ʾ������
    reg [9:0] blocks=10'b1111111111;
    
    // ��ͣ�����߼�
    always@(posedge iPause)
    begin
        pau=~pau;  // ��ͣ�źŷ�ת
    end
    
    // 50MHzʱ�ӷ�Ƶ
    always@(posedge(iClk))
    begin
        clk_50M <= ~clk_50M;
    end
    
    // 25MHzʱ�ӷ�Ƶ
    always@(posedge(clk_50M))
    begin
        clk_25M <= ~clk_25M;
    end
    
    // VGAͬ���źŲ����߼�
    always@(posedge(clk_25M)) 
    begin
        // ˮƽ�ʹ�ֱ����������
        if( Hcnt == PLD-1 ) // ������ĩ
        begin
            Hcnt <= 0;  // ˮƽ��������λ
            if( Vcnt == LFD-1 ) // ����֡ĩ
                Vcnt <=0;  // ��ֱ��������λ
            else
                Vcnt <= Vcnt + 1;  // ��ֱ��������1
        end
        else
            Hcnt <= Hcnt + 1;  // ˮƽ��������1
        
        // ����ˮƽͬ���ź�
        if( Hcnt == PAL - 1 + HFP)
            oHSync <= 1'b0;  // ˮƽͬ�����忪ʼ
        else if( Hcnt == PAL - 1 + HFP + HPW )
            oHSync <= 1'b1;  // ˮƽͬ���������
        
        // ������ֱͬ���ź�
        if( Vcnt == LAF - 1 + VFP ) 
            oVSync <= 1'b0;  // ��ֱͬ�����忪ʼ
        else if( Vcnt == LAF - 1 + VFP + VPW )
            oVSync <= 1'b1;  // ��ֱͬ���������
    end
    
    // ��ʾ�����߼�
    always @ (posedge clk_25M)   
    begin  
        // ��ʾ����
        if (Vcnt>=up_pos && Vcnt<=down_pos && Hcnt>=left_pos && Hcnt<=right_pos) 
        begin  
            oRed <= Hcnt[3:1];    // ����ˮƽλ��������ɫ
            oGreen <= Hcnt[6:4];  
            oBlue <= Hcnt[8:7]; 
        end  
        
        // ��ʾС��
        else if ( (Hcnt - ball_x_pos)*(Hcnt - ball_x_pos) + (Vcnt - ball_y_pos)*(Vcnt - ball_y_pos) <= (ball_r * ball_r))  
        begin  
            oRed <= Hcnt[3:1];    // ����ˮƽλ��������ɫ
            oGreen <= Hcnt[6:4];  
            oBlue <= Hcnt[8:7];  
        end  
        
        // ��ʾ��һ��ש��
        else if(Vcnt<=BLOCK_DOWN_first&&Vcnt>BLOCK_DOWN_second)
        begin
            // ��ʾÿ��ש��,����blocks�Ĵ���״̬�����Ƿ���ʾ
            // ÿ��ש��ʹ�ò�ͬ����ɫ
            if(Hcnt<BLOCK_WIDTH&&blocks[0])
            begin
                oRed <= 111;   // ��ɫש��
                oGreen <= 000;  
                oBlue <= 000; 
            end
            else if(Hcnt<BLOCK_WIDTH&&!blocks[0])
            begin
                oRed <= 0;     // ש�鱻������ʾ��ɫ
                oGreen <= 0;  
                oBlue <= 0; 
            end
            
            // ��������,��ʾ����ש��
            // ... (���������߼�����)
        end
        
        // ��ʾ�ڶ���ש��
        else if(Vcnt<=BLOCK_DOWN_second)
        begin
            // ��ʾ�߼����һ������
            // ... (���������߼�����)
        end
        
        // ��ʾ����
        else 
        begin  
            oRed <= 3'b000;    // ����Ϊ��ɫ
            oGreen <= 3'b000;  
            oBlue <= 2'b00;  
        end         
    end
    
    reg flag;  // ���ñ�־
    // ��Ϸ״̬�����߼�
    always @ (posedge oVSync)  
    begin          
        // ��Ϸʧ��ʱ����λ��
        if(oLose)
        begin 
            ball_x_pos = 330;    // ����С��λ��
            ball_y_pos = 390;
            up_pos = 400;        // ���õ���λ��
            down_pos = 430;
            left_pos = 230;
            right_pos = 430; 
            flag=1;              // �������ñ�־
        end
        else if(!pau)  // ����ͣ״̬
        begin
            flag=0;
            // ���Ƶ��������ƶ�
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
        
            // ����С���ƶ�
            if (v_speed == `UP)     // �����ƶ�
                ball_y_pos <= ball_y_pos - iBarMoveSpeed;  
            else                    // �����ƶ�
                ball_y_pos <= ball_y_pos + iBarMoveSpeed;  
            if (h_speed == `RIGHT)  // �����ƶ�
                ball_x_pos <= ball_x_pos + iBarMoveSpeed;  
            else                    // �����ƶ�
                ball_x_pos <= ball_x_pos - iBarMoveSpeed; 
        end     
    end 
    
    // ��ײ���ͷ���ı��߼�
    always @ (negedge oVSync)  
    begin
        // ��Ϸ����
        if(flag)
        begin
            oLose<=0;
            blocks=10'b1111111111;  // ��������ש��
        end
        
        // �����ϱ߽練��
        if (ball_y_pos <= UP_BOUND)   
        begin    
            v_speed <= `DOWN;              
            oLose <= 0;
        end
        
        // ������һ��ש�����ײ
        else if(ball_y_pos <= BLOCK_DOWN_first&&ball_y_pos > BLOCK_DOWN_second)
        begin
            // ���ÿ��ש�����ײ
            if(ball_x_pos<BLOCK_WIDTH&&blocks[0])
            begin
                v_speed<=`DOWN;  // �ı�С����
                blocks[0]<=0;    // ����ש��
            end
            // ... (����ש����ײ����߼�����)
        end
        
        // �����ڶ���ש�����ײ
        else if(ball_y_pos <= BLOCK_DOWN_second)
        begin
            // ����߼����һ������
            // ... (���������߼�����)
        end
        
        // ����뵲�����ײ
        else if (ball_y_pos >= (up_pos - ball_r) && ball_x_pos <= right_pos && ball_x_pos >= left_pos)  
            v_speed <= `UP;  // �������巴��
            
        // �����Ϸʧ������
        else if (ball_y_pos >= down_pos && ball_y_pos < (DOWN_BOUND - ball_r))
        begin
            oLose <= 1;  // ����ʧ�ܱ�־
        end
        
        // ����ש�鶼������
        else if(blocks==0)
            oLose<=0;
            
        // �����ײ��߽�
        else if (ball_y_pos >= (DOWN_BOUND - ball_r + 1))
            v_speed <= 0; 
        else  
            v_speed <= v_speed;  
                  
        // ������ұ߽���ײ
        if (ball_x_pos <= LEFT_BOUND)  
            h_speed <= `RIGHT;  
        else if (ball_x_pos >= RIGHT_BOUND)  
            h_speed <= `LEFT;  
        else  
            h_speed <= h_speed;  
    end 
  
endmodule
