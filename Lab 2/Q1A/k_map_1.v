`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 09:14:08
// Design Name: 
// Module Name: k_map_1
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


module k_map_1(
    D,C,B,A,F
    );
    input A,B,C,D;
    output F;
    assign F = (~B&~C)|(~A&B)|(C&D)|(B&~C&~D);
endmodule
