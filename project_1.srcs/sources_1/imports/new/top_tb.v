`timescale 1ns / 1ps

module Top_tb;

// 定义输入信号
reg iClk;
// reg iColorFrequncy; 
reg iPause;

// 定义输出信号
// wire [1:0] oFilterSelect;
// wire [1:0] oFrequncyRate;
// wire oLed;
wire oHSync;
wire [2:1] oOutBlue;
wire [2:0] oOutGreen;
wire [2:0] oOutRed;
wire oVSync;

// 实例化顶层模块
Top top_inst(
	.iClk(iClk),
	// .iColorFrequncy(iColorFrequncy),
	.iPause(iPause),
	// .oFilterSelect(oFilterSelect),
	// .oFrequncyRate(oFrequncyRate), 
	// .oLed(oLed),
	.oHSync(oHSync),
	.oOutBlue(oOutBlue),
	.oOutGreen(oOutGreen),
	.oOutRed(oOutRed),
	.oVSync(oVSync)
);

// 生成时钟信号
initial begin
	iClk = 0;
	forever #5 iClk = ~iClk;
end

// 测试激励
initial begin
	// 初始化输入
	// iColorFrequncy = 0;
	iPause = 0;
	
	// 等待100ns让系统稳定
	#100;
	
	// 测试暂停功能
	iPause = 1;
	#50;
	iPause = 0;
	
	// 测试颜色传感器频率
	// repeat(10) begin
	//     #20 iColorFrequncy = ~iColorFrequncy;
	// end
	
	// 运行一段时间后结束仿真
	#1000;
end

// 监控输出
initial begin
	$monitor("Time=%0t pause=%b", 
			 $time, iPause);
end

endmodule
