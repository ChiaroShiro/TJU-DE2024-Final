`timescale 1ns / 1ps

module Top_tb;

// ���������ź�
reg iClk;
// reg iColorFrequncy; 
reg iPause;

// ��������ź�
// wire [1:0] oFilterSelect;
// wire [1:0] oFrequncyRate;
// wire oLed;
wire oHSync;
wire [2:1] oOutBlue;
wire [2:0] oOutGreen;
wire [2:0] oOutRed;
wire oVSync;

// ʵ��������ģ��
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

// ����ʱ���ź�
initial begin
	iClk = 0;
	forever #5 iClk = ~iClk;
end

// ���Լ���
initial begin
	// ��ʼ������
	// iColorFrequncy = 0;
	iPause = 0;
	
	// �ȴ�100ns��ϵͳ�ȶ�
	#100;
	
	// ������ͣ����
	iPause = 1;
	#50;
	iPause = 0;
	
	// ������ɫ������Ƶ��
	// repeat(10) begin
	//     #20 iColorFrequncy = ~iColorFrequncy;
	// end
	
	// ����һ��ʱ����������
	#1000;
end

// ������
initial begin
	$monitor("Time=%0t pause=%b", 
			 $time, iPause);
end

endmodule
