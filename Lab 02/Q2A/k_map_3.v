`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 10:30:20
// Design Name: 
// Module Name: k_map_3
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


module k_map_3(
    D,C,B,A,F
    );
    input A,B,C,D;
    output F;
    assign F = (C|D)&(A|B|C)&(~B|~C|D);
endmodule
