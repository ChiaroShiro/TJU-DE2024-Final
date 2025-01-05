`timescale 1ns / 1ps

module Top_tb();
    // 输入信号定义
    reg iClk;
    reg speed_up;
    reg speed_down;
    
    // 输出信号定义
    wire [6:0] oDisplay;

    // 实例化顶层模块
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

    // 时钟生成
    always begin
        iClk = 0;
        forever begin
            #5;  // 100MHz时钟
            iClk = ~iClk;
        end
    end

    // 测试速度控制和七段数码管显示
    initial begin
        // 初始化输入信号
        speed_up = 0;
        speed_down = 0;

        // 等待系统稳定
        #20;

        // 测试加速到最大值
        repeat(12) begin  // 测试超过9次加速
            speed_up = 1;
            #10;
            speed_up = 0;
            #10;
        end

        // 等待一段时间观察
        #20;

        // 测试减速到最小值
        repeat(12) begin  // 测试超过9次减速
            speed_down = 1;
            #10;
            speed_down = 0;
            #10;
        end

        // 等待一段时间观察
        #20;

        // 在最小值时继续减速测试
        repeat(3) begin
            speed_down = 1;
            #10;
            speed_down = 0;
            #10;
        end

        // 等待一段时间观察
        #20;

        // 加速到中间值
        repeat(5) begin
            speed_up = 1;
            #10;
            speed_up = 0;
            #10;
        end

        // 交替测试加速和减速
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

        // 等待测试完成
        #20;
        $finish;
    end

endmodule
