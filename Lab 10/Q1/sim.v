`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 10:02:33
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
    reg A,B,C; 
    wire H,I,J,Cout;
    twos_comp U1(A,B,C,H,I,J,Cout);
    initial
    begin
        A = 1'b0;
		B = 1'b0;
        C = 1'b0;
        #100
		A = 1'b0;
        B = 1'b0;
        C = 1'b1;
        #100
		A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        #100
		A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        #100
        A = 1'b1;
		B = 1'b0;
        C = 1'b0;
        #100
		A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        #100
		A = 1'b1;
        B = 1'b1;
        C = 1'b0;
        #100
		A = 1'b1;
        B = 1'b1;
        C = 1'b1;
    end
endmodule
