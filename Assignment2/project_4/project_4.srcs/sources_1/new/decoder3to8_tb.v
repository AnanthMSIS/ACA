`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 20:46:01
// Design Name: 
// Module Name: decoder3to8_tb
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


module decoder3to8_tb();
reg en;
reg [2:0]in;
wire [7:0]out;

decoder3to8 D1(in, en, out);

initial
begin
in = 3'b000; en = 1'b0;
#10 en = 1'b1;
#10 in = 3'b001; 
#10 in = 3'b010; 
#10 in = 3'b011; 
#10 in = 3'b100; 
#10 in = 3'b101; 
#10 in = 3'b110; 
#10 in = 3'b111; 
end
endmodule
