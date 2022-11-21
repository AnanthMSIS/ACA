`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 16:31:52
// Design Name: 
// Module Name: FA_1bit
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


module FA_1bit(
input a, 
input b, 
input cin, 
output sum,
output cout);

assign {cout, sum} = a+b+cin;

endmodule

module FA_4bit(
input [3:0]a, 
input [3:0]b,
input cin,
output [3:0]sum,
output cout);
wire c1, c2, c3;
FA_1bit FA1(a[0], b[0], cin, sum[0], c1);
FA_1bit FA2(a[1], b[1], c1, sum[1], c2);
FA_1bit FA3(a[2], b[2], c2, sum[2], c3);
FA_1bit FA4(a[3], b[3], c3, sum[3], cout);
endmodule
