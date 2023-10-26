`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 09:41:15
// Design Name: 
// Module Name: greytobin
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


module greytobin(
    grey, bin
    );
    input [3:0] grey;
    output [3:0] bin;
    assign bin[3] = grey[3];
    genvar i;
    for(i = 2; i>=0; i=i-1)
        xor(bin[i], bin[i+1], grey[i]);
endmodule
