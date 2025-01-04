`timescale 1ns / 1ps

`define RIGHT 1'b1
`define LEFT  1'b0
`define UP    1'b0
`define DOWN  1'b1

module VGA_display(
    // ϵͳʱ������
    input iClk,
    // ��ͣ��Ϸ�����ź�
    input iPause,
    // ���Ƶ�����������
    input iToLeft,
    // ���Ƶ�����������
    input iToRight,
    // �����ƶ��ٶȿ���(4λ)
    input [3:0] iBarMoveSpeed,
    // VGAˮƽͬ���ź����
    output reg oHSync,
    // VGA��ֱͬ���ź����
    output reg oVSync,
    // VGA��ɫ�������(3λ)
    output reg [2:0] oRed,
    // VGA��ɫ�������(3λ)
    output reg [2:0] oGreen,
    // VGA��ɫ�������(2λ)
    output reg [1:0] oBlue,
    // ��Ϸʧ���ź����
    output reg oLose
);
    
    // VGA��ʾ��������
    parameter PAL = 640;     // ˮƽ��Ч��ʾ������
    parameter LAF = 480;     // ��ֱ��Ч��ʾ����
    parameter PLD = 800;     // ˮƽ��������(����ͬ��������)
    parameter LFD = 521;     // ��ֱ������(����ͬ��������)
    parameter HPW = 96;      // ˮƽͬ��������
    parameter HFP = 16;      // ˮƽǰ��
    parameter VPW = 2;       // ��ֱͬ��������
    parameter VFP = 10;      // ��ֱǰ��
    
    // ��Ϸ����߽綨��
    parameter UP_BOUND = 10;         // �ϱ߽�
    parameter DOWN_BOUND = 480;      // �±߽�
    parameter LEFT_BOUND = 20;       // ��߽�
    parameter RIGHT_BOUND = 630;     // �ұ߽�
    
    // ש��λ�ò���
    parameter BLOCK_DOWN_first = 70;   // ��һ��ש��ײ�λ��
    parameter BLOCK_DOWN_second = 35;  // �ڶ���ש��ײ�λ��
    parameter BLOCK_WIDTH = 63;       // ש����
    
    // ��İ뾶
    parameter ball_r = 10;
    parameter ball_num = 10;      // һ��������
	parameter block_init = 20'b1111_1111_1111_1111_1111;
	//The blocks
	reg [19:0] blocks = block_init;
	
	
	// ��ͣ״̬�Ĵ���,1��ʾ��ͣ,0��ʾ����ͣ
	reg pau=1;
	
	/*�Ĵ�������*/
	// ˮƽ������,��������ˮƽͬ���ź�
	// ��������PLD-1ʱ����Ϊ0
	reg [9:0] Hcnt;      
	// ��ֱ������,�������ɴ�ֱͬ���ź�
	// ��������LFD-1ʱ����Ϊ0
	reg [9:0] Vcnt;      
	// 25MHzʱ���ź�,����VGA��ʾʱ�����
	reg clk_25M = 0;     
	// 50MHzʱ���ź�,��������25MHzʱ��
	reg clk_50M = 0;     
	
	// С��ˮƽ�˶�����,RIGHT��ʾ����,LEFT��ʾ����
	reg h_speed = `RIGHT;
	// С��ֱ�˶�����,UP��ʾ����,DOWN��ʾ����
	reg v_speed = `UP; 
	
	// ����λ�ò�������
	reg [9:0] up_pos = 400;    // �����ϱ�ԵY����
	reg [9:0] down_pos = 430;  // �����±�ԵY����
	reg [9:0] left_pos = 230;  // �������ԵX����
	reg [9:0] right_pos = 430; // �����ұ�ԵX����
		
	// С��λ�ò�������
	reg [9:0] ball_x_pos = 330; // С������X����,��ʼֵ330
	reg [9:0] ball_y_pos = 390; // С������Y����,��ʼֵ390
	
	
	
	always@(posedge iPause)
	begin
	   pau=~pau;
	end
	
	// ����50MHzʱ���ź�
	always@(posedge(iClk))
	begin
		clk_50M <= ~clk_50M;
	end
	
	// ����25MHzʱ���ź�
	always@(posedge(clk_50M))
	 begin
		 clk_25M <= ~clk_25M;
	 end
	
	// ����ˮƽ�ʹ�ֱͬ���ź�
	always@(posedge(clk_25M)) 
	begin
		// ����ˮƽ�ʹ�ֱ������
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
		
		// ����ˮƽͬ���ź�
		if( Hcnt == PAL - 1 + HFP)
			oHSync <= 1'b0;
		else if( Hcnt == PAL - 1 + HFP + HPW )
			oHSync <= 1'b1;
		
		// ���ɴ�ֱͬ���ź�
		if( Vcnt == LAF - 1 + VFP ) 
			oVSync <= 1'b0;
		else if( Vcnt == LAF - 1 + VFP + VPW )
			oVSync <= 1'b1;					
	end
	
	// ש����ɫ����
	function [7:0] get_block_color;
		input [5:0] block_idx; // ���ӵ�6λ����,֧�ָ�����ɫ
		begin
			case(block_idx % 16) // ��16ȡģ
				0: 	get_block_color = {3'b111, 3'b000, 2'b00}; // ��ɫ
				1: 	get_block_color = {3'b000, 3'b111, 2'b00}; // ��ɫ 
				2: 	get_block_color = {3'b000, 3'b000, 2'b11}; // ��ɫ
				3: 	get_block_color = {3'b000, 3'b111, 2'b11}; // ��ɫ
				4: 	get_block_color = {3'b111, 3'b111, 2'b11}; // ��ɫ
				5: 	get_block_color = {3'b111, 3'b111, 2'b00}; // ��ɫ
				6: 	get_block_color = {3'b111, 3'b000, 2'b11}; // ��ɫ
				7: 	get_block_color = {3'b000, 3'b111, 2'b01}; // ǳ��ɫ
				8: 	get_block_color = {3'b011, 3'b011, 2'b11}; // ��ɫ
				9: 	get_block_color = {3'b111, 3'b011, 2'b00}; // ��ɫ
				10: get_block_color = {3'b011, 3'b000, 2'b11}; // ����ɫ
				11: get_block_color = {3'b000, 3'b011, 2'b11}; // ����ɫ
				12: get_block_color = {3'b011, 3'b111, 2'b00}; // ����ɫ
				13: get_block_color = {3'b111, 3'b001, 2'b01}; // ��ɫ
				14: get_block_color = {3'b001, 3'b001, 2'b11}; // ���ɫ
				15: get_block_color = {3'b101, 3'b101, 2'b01}; // ǳ��ɫ
				default: get_block_color = {3'b000, 3'b000, 2'b00}; // ��ɫ
			endcase
		end
	endfunction
	
	reg [5:0] block_idx1;
	reg [5:0] block_idx2;

	// ��ʾ�����С��
	always @ (posedge clk_25M)   
	begin  
		// ��ʾ����
		if (Vcnt >= up_pos && Vcnt <= down_pos && Hcnt >= left_pos && Hcnt <= right_pos) 
		begin  
			oRed   <= 3'b111;  
			oGreen <= 3'b111;  
			oBlue  <= 2'b11; 
		end  
		
		// ��ʾС��
		else if ( (Hcnt - ball_x_pos) * (Hcnt - ball_x_pos) + (Vcnt - ball_y_pos) * (Vcnt - ball_y_pos) <= (ball_r * ball_r))  
		begin  
			oRed   <= 3'b101;  
			oGreen <= 3'b101;  
			oBlue  <= 2'b10; 
		end  
		else if(Vcnt <= BLOCK_DOWN_first && Vcnt >= BLOCK_DOWN_second)
		begin
			// ��ʾ��һ��ש��
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
			// ��ʾ�ڶ���ש��
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
	// ˢ��ͼ��
	always @ (posedge oVSync)  
   	begin  		
		// �����ƶ�
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
		
			// С���ƶ�
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
	// �ı�С����
	always @ (negedge oVSync)  
	begin
		if(flag)
		begin
			oLose<=0;
			blocks<=block_init; 
		end
		if (ball_y_pos <= UP_BOUND)   // ��������ж϶�Ӧ��ʹ��>=��<=��������==
		begin	
			v_speed <= `DOWN;              // ��Ϊ��ƫ��������1ʱ������ܻ�����
			oLose <= 0;
		end
		else if(ball_y_pos <= BLOCK_DOWN_first && ball_y_pos > BLOCK_DOWN_second) // С����ש��֮��
		begin
			// ����С��������ש������
			block_idx = ball_x_pos / BLOCK_WIDTH;
			
			// ����Ƿ�����ש��
			if(block_idx < ball_num && blocks[block_idx]) begin
			// 	// �ж���ײ����
			// 	if(ball_y_pos > BLOCK_DOWN_first - iBarMoveSpeed)
			// 		v_speed <= `DOWN;  // ��������
			// 	else begin
			// 		// �������ұ�
			// 		if(block_idx == 0)
			// 			h_speed <= `RIGHT;  // �����ש��
			// 		else if(block_idx == 4) 
			// 			h_speed <= `LEFT;   // ���ұ�ש��
			// 		else
			// 			h_speed <= ~h_speed; // �м�ש��
			// 	end
				v_speed <= `DOWN;
				// ��������ײ��ש��
				blocks[block_idx] <= 0;
			end
		end
		else if(ball_y_pos <= BLOCK_DOWN_second) // С���ڵڶ���ש��
		begin
						// ����С��������ש������
			block_idx = ball_x_pos / BLOCK_WIDTH + ball_num;
			
			// ����Ƿ�����ש��
			if(block_idx < 2 * ball_num && blocks[block_idx]) begin
				// �ж���ײ����
				// if(ball_y_pos > BLOCK_DOWN_second - iBarMoveSpeed)
				// 	v_speed <= `DOWN;  // ��������
				// else begin
				// 	// �������ұ�
				// 	if(block_idx == ball_num)
				// 		h_speed <= `RIGHT;  // �����ש��
				// 	else if(block_idx == 2 * ball_num - 1)
				// 		h_speed <= `LEFT;   // ���ұ�ש�� 
				// 	else
				// 		h_speed <= ~h_speed; // �м�ש��
				// end
				v_speed <= `DOWN;
				// ��������ײ��ש��
				blocks[block_idx] <= 0;  
				
			end
		end


		else if (ball_y_pos >= (up_pos - ball_r) && ball_x_pos <= right_pos && ball_x_pos >= left_pos)  // С����������
			v_speed <= `UP;  
		else if (ball_y_pos >= down_pos && ball_y_pos < (DOWN_BOUND - ball_r)) // С�������±߽�
		begin
			//Do what you want when lose
			oLose <= 1;
		end
		else if(blocks==0) // ����ש�鶼������
			oLose<=0;
		else if (ball_y_pos >= (DOWN_BOUND - ball_r + 1)) // С�������±߽�
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
