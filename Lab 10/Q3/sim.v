`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 10:22:21
// Design Name: 
// Module Name: sim
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


module sim(

    );
    reg [7:0] bin;
    wire [7:0] grey;
    wire [7:0] out;
    b2g U1(bin, grey);
    g2b U2(grey, out);
    initial
    begin
        bin = 8'b00000001;
        #100
        bin = 8'b00000010;
        #100
        bin = 8'b00001100;
        #100
        bin = 8'b01000000;
        #100
        bin = 8'b00100001;
        #100
        bin = 8'b10001001;
        #100
        bin = 8'b00000000;
    end
endmodule
