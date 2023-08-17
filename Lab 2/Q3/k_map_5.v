`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 09:09:28
// Design Name: 
// Module Name: k_map_5
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


module k_map_5(
    x4,x3,x2,x1,F
    );
    input x1,x2,x3,x4;
    output F;
    assign F = (x2&x3&x4)|(x1&x3&x4)|(x1&x2&x4)|(x1&x2&x3);
endmodule
