`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 09:54:04
// Design Name: 
// Module Name: mux
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


module mux(
    I1,I2,I3,I4,S1,S2,OUT
    );
    input I1,I2,I3,I4,S1,S2;
    output OUT;
    called U1(I1,I2,S1,T1);
    called U2(I3,I4,S1,T2);
    called U3(T1,T2,S2,OUT);
endmodule

module called(
    I1,I2,S,OUT
    );
    input I1,I2,S;
    output OUT;
    assign OUT = (S)?I2:I1;
endmodule