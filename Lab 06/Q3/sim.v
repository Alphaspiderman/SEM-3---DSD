`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 09:54:29
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


module sim();
    reg A,B,C,D,S1,S2;
    wire OUT;
    mux U1(A,B,C,D,S1,S2,OUT);
    initial
    begin
        D = 1'b0;
        C = 1'b0;
        B = 1'b0;
        A = 1'b1;
        S1 = 1'b0;
        S2 = 1'b0;
        #100
        D = 1'b0;
        C = 1'b0;
        B = 1'b1;
        A = 1'b0;
        S1 = 1'b1;
        S2 = 1'b0;
        #100
        D = 1'b0;
        C = 1'b1;
        B = 1'b0;
        A = 1'b0;
        S1 = 1'b0;
        S2 = 1'b1;
        #100
        D = 1'b1;
        C = 1'b0;
        B = 1'b0;
        A = 1'b0;
        S1 = 1'b1;
        S2 = 1'b1;
    end
endmodule
