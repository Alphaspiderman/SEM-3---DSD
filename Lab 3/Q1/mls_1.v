`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 09:52:22
// Design Name: 
// Module Name: mls_1
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


module mls_1(
    A,B,C,D,F
    );
    input A,B,C,D;
    output F;
    assign F = (~C|D)&(~A|B);
endmodule
