`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 09:19:36
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
    reg A,B,C,D; 
    wire F;
    mls_4 U1(A,B,C,D,F);
    initial
    begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        #100
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b1;
        #100
        A = 1'b0;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        #100
        A = 1'b0;
        B = 1'b0;
        C = 1'b1;
        D = 1'b1;
        #100
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        D = 1'b0;
        #100
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        D = 1'b1;
        #100
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        D = 1'b0;
        #100
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
		D = 1'b1;
        #100
		A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        #100
		A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        D = 1'b1;
        #100
		A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        #100
		A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        D = 1'b1;
        #100
		A = 1'b1;
        B = 1'b1;
        C = 1'b0;
        D = 1'b0;
        #100
		A = 1'b1;
        B = 1'b1;
        C = 1'b0;
        D = 1'b1;
        #100
		A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        D = 1'b0;
        #100
		A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;
    end
endmodule
