`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 10:35:11
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


module mls_3(
    A,B,C,D,E,F
    );
    input A,B,C,D,E;
    output F;
    assign G = (~A|B);
    assign H = (C&D&E)|(~C&~D&E);
    assign F = G&H|(~A&~C&D&~E)|(A&B&C&D);
    
endmodule
