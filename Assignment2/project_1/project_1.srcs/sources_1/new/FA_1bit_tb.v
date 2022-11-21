`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 16:45:45
// Design Name: 
// Module Name: FA_1bit_tb
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


module FA_1bit_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;

FA_4bit fa4b(a, b, cin, sum, cout);
initial
begin
a = 4'b0010; b = 4'b0101; cin = 1'b0;
#10 a = 4'b0000; b = 4'b0000; cin = 1'b0;
#10 a = 4'b0000; b = 4'b0000; cin = 1'b1;
#10 a = 4'b1001; b = 4'b0100; cin = 1'b0;
#10 a = 4'b1111; b = 4'b1111; cin = 1'b1;
end
endmodule
