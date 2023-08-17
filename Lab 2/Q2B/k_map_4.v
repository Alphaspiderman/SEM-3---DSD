`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 10:41:55
// Design Name: 
// Module Name: k_map_4
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


module k_map_4(
    D,C,B,A,F
    );
    input A,B,C,D;
    output F;
    assign F = (A|~B|~C)&(~A|~B|C)&(~A|B|~D)&(~A|B|~C);
endmodule
