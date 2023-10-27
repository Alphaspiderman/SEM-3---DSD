`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 09:19:24
// Design Name: 
// Module Name: mls_3
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


module mls_4(
    A,B,C,D,F
    );
    input A,B,C,D;
    output F;
    assign G = (A&C);
    assign F = ~G&D;
endmodule
