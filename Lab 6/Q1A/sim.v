`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 09:14:31
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
    reg B,A,S;
    wire OUT;
    mux U1(A,B,S,OUT);
    initial
    begin
        B = 1'b0;
        A = 1'b0;
        S = 1'b0;
        #100
        B = 1'b0;
        A = 1'b0;
        S = 1'b1;
        #100
        B = 1'b0;
        A = 1'b1;
        S = 1'b0;
        #100
        B = 1'b0;
        A = 1'b1;
        S = 1'b1;
        #100
        B = 1'b1;
        A = 1'b0;
        S = 1'b1;
    end
endmodule
