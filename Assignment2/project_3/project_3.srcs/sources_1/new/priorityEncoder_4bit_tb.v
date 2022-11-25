`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 20:18:33
// Design Name: 
// Module Name: priorityEncoder_4bit_tb
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


module priorityEncoder_4bit_tb();
reg [3:0]d;
reg en;
wire [1:0]out;

priorityEncoder_4bit PE1(d, en, out);

initial 
begin
en = 1'b0; d = 4'b1000;
#10 en = 1'b1; 
#10 d = 4'b0100;
#10 d = 4'b0010;
#10 d = 4'b0001;
#10 d = 4'b0000;
end
endmodule
