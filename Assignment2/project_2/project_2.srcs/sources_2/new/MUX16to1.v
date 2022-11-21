`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 19:13:24
// Design Name: 
// Module Name: MUX16to1
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


module MUX4to1(
    input [3:0]i,
    input [1:0]s,
    output reg f
    );
    always @ (i or s)
    begin
    case (s)
    2'b00: f <= i[0];
    2'b01: f <= i[1];
    2'b10: f <= i[2];
    2'b11: f <= i[3];        
    endcase
    end
endmodule

module MUX16to1(
    input [15:0]i,
    input [3:0]s,
    output f
    );
    wire [3:0]fw;
    MUX4to1  M1(i[3:0], s[1:0], fw[0]);
    MUX4to1  M2(i[7:4], s[1:0], fw[1]);
    MUX4to1  M3(i[11:8], s[1:0], fw[2]);
    MUX4to1  M4(i[15:12], s[1:0], fw[3]);
    MUX4to1  M5(fw[3:0], s[3:2], f);       
endmodule
