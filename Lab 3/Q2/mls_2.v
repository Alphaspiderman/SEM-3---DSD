`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 09:52:36
// Design Name: 
// Module Name: mls_2
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


module mls_2(
    A,B,C,D,F
    );
    input A,B,C,D;
    output F;
    assign G = (~D|~C);
    assign F = ~B&G | (~A&~C&D);
endmodule
