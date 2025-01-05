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
    
    // VGA��ʾ��������
    parameter HORIZONTAL_ACTIVE_PIXELS = 640;     	// ˮƽ��Ч��ʾ������
    parameter VERTICAL_ACTIVE_LINES = 480;        	// ��ֱ��Ч��ʾ����
    parameter TOTAL_HORIZONTAL_PIXELS = 800;      	// ˮƽ��������(����ͬ��������)
    parameter TOTAL_VERTICAL_LINES = 521;         	// ��ֱ������(����ͬ��������)
    parameter HORIZONTAL_SYNC_PULSE_WIDTH = 96;   	// ˮƽͬ��������
    parameter HORIZONTAL_FRONT_PORCH = 16;        	// ˮƽǰ��
    parameter VERTICAL_SYNC_PULSE_WIDTH = 2;      	// ��ֱͬ��������
    parameter VERTICAL_FRONT_PORCH = 10;          	// ��ֱǰ��
    parameter UP_BOUND = 10;         				// �ϱ߽�
    parameter DOWN_BOUND = 480;      				// �±߽�
    parameter LEFT_BOUND = 20;       				// ��߽�
    parameter RIGHT_BOUND = 630;     				// �ұ߽�

	// ש�����
    parameter BLOCK_DOWN_LINE = 70;   				// ��һ��ש��ײ�λ��
    parameter BLOCK_UP_LINE = 35;  					// �ڶ���ש��ײ�λ��
    parameter BLOCK_WIDTH = 63;       				// ש����
    
    // ��Ĳ���
    parameter BALL_RAD = 10;
    parameter BALL_NUM = 10;      // һ��������
	parameter BLOCK_INIT = 20'b1111_1111_1111_1111_1111;

    // ��ʼλ�ò�������
    parameter INIT_BALL_X = 330;  // С���ʼX����
    parameter INIT_BALL_Y = 390;  // С���ʼY����
    parameter INIT_UP_POS = 400;  // �����ʼ�ϱ�ԵY����
    parameter INIT_DOWN_POS = 430;// �����ʼ�±�ԵY����
    parameter INIT_LEFT_POS = 230;// �����ʼ���ԵX����
    parameter INIT_RIGHT_POS = 430;// �����ʼ�ұ�ԵX����

	//The blocks
	reg [19:0] blocks = BLOCK_INIT;
	
	// ��ͣ״̬�Ĵ���
	reg pau = 1;
	
	// ˮƽ/��ֱ������
	reg [9:0] HCount;
	reg [9:0] VCount;
	
	// ��Ƶʱ���ź�
	wire clk_25M;
	
	// С��ˮƽ�˶�����,1��ʾ����,0��ʾ����
	reg h_speed = 1'b1;
	// С��ֱ�˶�����,1��ʾ����,0��ʾ����
	reg v_speed = 1'b0; 
	
	// ����λ�ò�������
	reg [9:0] up_pos = INIT_UP_POS;    // �����ϱ�ԵY����
	reg [9:0] down_pos = INIT_DOWN_POS;  // �����±�ԵY����
	reg [9:0] left_pos = INIT_LEFT_POS;  // �������ԵX����
	reg [9:0] right_pos = INIT_RIGHT_POS; // �����ұ�ԵX����
		
	// С��λ�ò�������
	reg [9:0] ball_x_pos = INIT_BALL_X; // С������X����
	reg [9:0] ball_y_pos = INIT_BALL_Y; // С������Y����
	
	reg pause;
	always@(*) begin
		if(!oLose) 
			pause = iPause;
		else 
			pause = 1;
	end
	
	always @(posedge pause)
		pau <= ~pau;
	
	// ʵ������Ƶ��
	divider4Times divider(
	    .iClk		(iClk),
	    .clk_25M	(clk_25M)
	);
	
	// ����ˮƽ�ʹ�ֱͬ���ź�
	always @(posedge clk_25M) begin
		// ����ˮƽ�ʹ�ֱ������
		if(HCount == TOTAL_HORIZONTAL_PIXELS- 1) begin
			HCount <= 0; 
			if(VCount == TOTAL_VERTICAL_LINES- 1) 
				VCount <= 0;
			else 
				VCount <= VCount + 1;
		end
		else
			HCount <= HCount + 1;
		
		// ����ˮƽͬ���ź�
		if(HCount == HORIZONTAL_ACTIVE_PIXELS - 1 + HORIZONTAL_FRONT_PORCH)
			oHSync <= 1'b0;
		else if(HCount == HORIZONTAL_ACTIVE_PIXELS - 1 + HORIZONTAL_FRONT_PORCH + HORIZONTAL_SYNC_PULSE_WIDTH)
			oHSync <= 1'b1;
		
		// ���ɴ�ֱͬ���ź�
		if(VCount == VERTICAL_ACTIVE_LINES - 1 + VERTICAL_FRONT_PORCH)
			oVSync <= 1'b0;
		else if(VCount == VERTICAL_ACTIVE_LINES - 1 + VERTICAL_FRONT_PORCH + VERTICAL_SYNC_PULSE_WIDTH)
			oVSync <= 1'b1;					
	end
	
	// ש����ɫ����
	function [7:0] get_block_color;
		input [5:0] block_idx;
		begin
			case(block_idx % 16)
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
		if (VCount >= up_pos && VCount <= down_pos && HCount >= left_pos && HCount <= right_pos) begin
			oRed   <= 3'b111;
			oGreen <= 3'b111;
			oBlue  <= 2'b11;
		end  
		
		// ��ʾС��
		else if ((HCount - ball_x_pos) * (HCount - ball_x_pos) + (VCount - ball_y_pos) * (VCount - ball_y_pos) <= (BALL_RAD * BALL_RAD)) begin  
			oRed   <= 3'b101;
			oGreen <= 3'b101;
			oBlue  <= 2'b10;
		end  
		else if(VCount <= BLOCK_DOWN_LINE && VCount >= BLOCK_UP_LINE) begin
			// ��ʾ��һ��ש��
			if(HCount < BLOCK_WIDTH * BALL_NUM) begin
				block_idx1 = HCount / BLOCK_WIDTH;
				if(blocks[block_idx1])
					{oRed, oGreen, oBlue} = get_block_color(block_idx1);
				else
					{oRed, oGreen, oBlue} = 8'b0;
			end
		end
		else if(VCount <= BLOCK_UP_LINE) begin
			// ��ʾ�ڶ���ש��
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
	// ˢ��ͼ��
	always @ (posedge oVSync) begin  		
		// �����ƶ�
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
		
			// С���ƶ�
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
	// �ı�С����
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
		else if(ball_y_pos <= BLOCK_DOWN_LINE && ball_y_pos > BLOCK_UP_LINE) begin // С����ש��֮��
			block_idx = ball_x_pos / BLOCK_WIDTH;
			if(block_idx < BALL_NUM && blocks[block_idx]) begin
				v_speed <= 1'b1;
				blocks[block_idx] <= 0;
				oGet <= 1;
			end
		end
		else if(ball_y_pos <= BLOCK_UP_LINE) begin // С���ڵڶ���ש��
			block_idx = ball_x_pos / BLOCK_WIDTH + BALL_NUM;
			if(block_idx < 2 * BALL_NUM && blocks[block_idx]) begin
				v_speed <= 1'b1;
				blocks[block_idx] <= 0;  
				oGet <= 1;
			end
		end
		else if (ball_y_pos >= (up_pos - BALL_RAD) && ball_x_pos <= right_pos && ball_x_pos >= left_pos) begin // С����������
			v_speed <= 1'b0;
			oCrash <= 1;
		end
		else if (ball_y_pos >= down_pos && ball_y_pos < (DOWN_BOUND - BALL_RAD)) // С�������±߽�
			oLose <= 1;
		else if(blocks==0) // ����ש�鶼������
			oLose<=0;
		else if (ball_y_pos >= (DOWN_BOUND - BALL_RAD + 1)) // С�������±߽�
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
