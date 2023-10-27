`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 09:15:14
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
    reg  m0,m1,m2,q0,q1,q2;
    wire p0,p1,p2,p3,p4,p5;
    multi u1(m0,m1,m2,q0,q1,q2,p0,p1,p2,p3,p4,p5);
    initial
    begin
        m0 = 1'b0;
        m1 = 1'b0;
        m2 = 1'b1;
        q0 = 1'b0;
        q1 = 1'b0;
        q2 = 1'b1;
        #100
        m0 = 1'b0;
        m1 = 1'b1;
        m2 = 1'b0;
        q0 = 1'b1;
        q1 = 1'b0;
        q2 = 1'b0;
        #100
        m0 = 1'b1;
        m1 = 1'b1;
        m2 = 1'b0;
        q0 = 1'b0;
        q1 = 1'b1;
        q2 = 1'b0;
        #100
        m0 = 1'b0;
        m1 = 1'b1;
        m2 = 1'b1;
        q0 = 1'b0;
        q1 = 1'b1;
        q2 = 1'b1;
    end
endmodule
