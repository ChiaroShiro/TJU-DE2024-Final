`timescale 1ns / 1ps

module display7(
    input [3:0] iData, // 4位输入数据
    output reg [6:0] oData // 七位译码输出 g~a
);

    always @(*) begin
        case (iData)
            4'd0: oData = 7'b1000000; // 0
            4'd1: oData = 7'b1111001; // 1
            4'd2: oData = 7'b0100100; // 2
            4'd3: oData = 7'b0110000; // 3
            4'd4: oData = 7'b0011001; // 4
            4'd5: oData = 7'b0010010; // 5
            4'd6: oData = 7'b0000010; // 6
            4'd7: oData = 7'b1111000; // 7
            4'd8: oData = 7'b0000000; // 8
            4'd9: oData = 7'b0010000; // 9
            default: oData = 7'b0000110; // E
        endcase
    end

endmodule