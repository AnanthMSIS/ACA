`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 21:43:04
// Design Name: 
// Module Name: MUX4to1_decoder
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

module decoder2to4(
    input [1:0]d,
    output reg [3:0]out
    );
    always @ (d)
    begin
    case (d)
    2'b00: out[0] <= 1'b1;
    2'b01: out[1] <= 1'b1;
    2'b10: out[2] <= 1'b1;
    2'b11: out[3] <= 1'b1;
    endcase
    end
endmodule

module MUX4to1_decoder(
    input [1:0]d,
    input [3:0]in,
    output f
    );
    wire [3:0]dw;
    wire [3:0]aw;
    decoder2to4 D1(d, dw);
    and(aw[0], dw[0], in[0]);
    and(aw[1], dw[1], in[1]);
    and(aw[2], dw[2], in[2]);
    and(aw[3], dw[3], in[3]);
    assign f = aw[3]|aw[2]|aw[1]|aw[0];
endmodule
