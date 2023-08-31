`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 09:42:17
// Design Name: 
// Module Name: mls_5
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


module mls_5(
    A,B,C,D,F
    );
    input A,B,C,D;
    output F;
    assign G = (A|B|~D);
    assign H = (C|~D);
    assign I = (~A|~D);
    assign J = (~A|B|C);
    assign F = G&H&I&J;
endmodule
