`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 09:15:03
// Design Name: 
// Module Name: multi
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


module multi(
    m2,m1,m0,q2,q1,q0,p5,p4,p3,p2,p1,p0
    );
    input m0,m1,m2,q0,q1,q2;
    output p0,p1,p2,p3,p4,p5;
    and(p0,m0,q0);
    and(a01,m1,q0);
    and(a02,m0,q1);
    FA u0(0, a01, a02, p1, c00);
    and(a03,m2,q0);
    and(a04,m1,q1);
    FA u1(c00, a03, a04 , t1, c01);
    and(a05,m2,q1);
    FA u2(c01, 0, a05, t2, c02);
    and(a06,m0,q2);
    FA u3(0, t1, a06, p2, c10);
    and(a07,m1,q2);
    FA u4(c10, t2, a07, p3, c11);
    and(a08,m2,c02);
    FA u5(c11, c02, a08, p4, p5);
endmodule

module FA(
    Cin,A,B,S,Cout
    );
    input Cin,A,B;
    output S,Cout;
    assign S = A^B^Cin;
    assign Cout = (A&B)|(B&Cin)|(A&Cin);
endmodule