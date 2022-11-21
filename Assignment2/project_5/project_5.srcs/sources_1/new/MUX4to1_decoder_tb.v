`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 21:56:00
// Design Name: 
// Module Name: MUX4to1_decoder_tb
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


module MUX4to1_decoder_tb();
    reg [1:0]d;
    reg [3:0]in;
    wire f;
    MUX4to1_decoder M1(d, in, f);
    initial 
    begin
    in = 4'b0001; d = 2'b00; 
    #10 in = 4'b0010; d = 2'b01; 
    #10 in = 4'b0100; d = 2'b10; 
    #10 in = 4'b1000; d = 2'b11; 
    end
endmodule
