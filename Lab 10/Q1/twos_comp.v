`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 10:02:23
// Design Name: 
// Module Name: 2s_comp
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


module twos_comp(
    A,B,C,H,I,J,Cout
    );
    input A,B,C; 
    output H,I,J,Cout;
    fulladd stage0(1,~C,0,H,C0);
    fulladd stage1(C0,~B,0,I,C1);
    fulladd stage2(C1,~A,0,J,Cout);
endmodule

module fulladd(
    Cin,A,B,S,Cout
    );
    input Cin,A,B;
    output S,Cout;
    assign S = A^B^Cin;
    assign Cout = (A&B)|(B&Cin)|(A&Cin);
endmodule