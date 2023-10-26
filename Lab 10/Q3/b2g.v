`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 10:22:07
// Design Name: 
// Module Name: b2g
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


module b2g(
    bin, grey
    );
    input [7:0] bin;
    output reg [7:0] grey;
    integer i;
    always @(bin)
    begin
        for( i = 0; i < 7; i = i+1) 
        if (i == 6) begin
            grey[i+1] = bin[i+1];
            grey[i] = bin[i] ^ bin[i+1]; end
        else
            grey[i] = bin[i] ^ bin[i+1];
        end
       
endmodule

module g2b(grey, bin);
input [7:0] grey;
    output reg [7:0] bin;
    integer i;
    always @(grey)
    begin
        for( i = 7; i >= 0; i = i-1) 
        if (i == 6) begin
            bin[i+1] = grey[i+1];
            if (grey[i] == 1'b0)
                bin[i] = bin[i+1];
            else
                bin[i] = ~bin[i+1];
        end
        else
            begin if (grey[i] == 1'b0)
                bin[i] = bin[i+1];
            else
                bin[i] = ~bin[i+1];
                end
        end
endmodule