`timescale 1ns / 1ps

module Top_tb();
    // �����źŶ���
    reg iClk;
    reg speed_up;
    reg speed_down;
    
    // ����źŶ���
    wire [6:0] oDisplay;

    // ʵ��������ģ��
    Top top_inst(
        .iClk(iClk),
        .iPause(1'b0),
        .to_left(1'b0),
        .to_right(1'b0),
        .speed_up(speed_up),
        .speed_down(speed_down),
        .oDisplay(oDisplay),
        .oOutBlue(),
        .oOutGreen(),
        .oOutRed(),
        .oHSync(),
        .oVSync(),
        .iMP3_dreq(1'b1),
        .oMP3_xdcs(),
        .oMP3_xcs(),
        .oMP3_si(),
        .oMP3_sclk(),
        .oMP3_xreset()
    );

    // ʱ������
    always begin
        iClk = 0;
        forever begin
            #5;  // 100MHzʱ��
            iClk = ~iClk;
        end
    end

    // �����ٶȿ��ƺ��߶��������ʾ
    initial begin
        // ��ʼ�������ź�
        speed_up = 0;
        speed_down = 0;

        // �ȴ�ϵͳ�ȶ�
        #20;

        // ���Լ��ٵ����ֵ
        repeat(12) begin  // ���Գ���9�μ���
            speed_up = 1;
            #10;
            speed_up = 0;
            #10;
        end

        // �ȴ�һ��ʱ��۲�
        #20;

        // ���Լ��ٵ���Сֵ
        repeat(12) begin  // ���Գ���9�μ���
            speed_down = 1;
            #10;
            speed_down = 0;
            #10;
        end

        // �ȴ�һ��ʱ��۲�
        #20;

        // ����Сֵʱ�������ٲ���
        repeat(3) begin
            speed_down = 1;
            #10;
            speed_down = 0;
            #10;
        end

        // �ȴ�һ��ʱ��۲�
        #20;

        // ���ٵ��м�ֵ
        repeat(5) begin
            speed_up = 1;
            #10;
            speed_up = 0;
            #10;
        end

        // ������Լ��ٺͼ���
        repeat(3) begin
            speed_up = 1;
            #10;
            speed_up = 0;
            #10;
            speed_down = 1;
            #10;
            speed_down = 0;
            #10;
        end

        // �ȴ��������
        #20;
        $finish;
    end

endmodule
