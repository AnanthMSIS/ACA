`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 20:11:20
// Design Name: 
// Module Name: priorityEncoder_4bit
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


module priorityEncoder_4bit(
    input [3:0]d,
    input en,
    output reg [1:0]out
    );
    always @ (en or d)
    begin
        if (en == 0)
            out = 2'bzz;
        else if (d[3] == 1)
            out = 2'b11;
        else if (d[2] == 1)
            out = 2'b10;
        else if (d[1] == 1)
            out = 2'b01;
        else if (d[0] == 1)
            out = 2'b00;
        else 
            out = 2'bxx;
    end
endmodule
