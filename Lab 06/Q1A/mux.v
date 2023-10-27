`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 09:17:00
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
    I1,I2,S,OUT
    );
    input I1,I2,S;
    output OUT;
    wire T1,T2, Sbar;
    and (T1,I1,S),(T2,I2,Sbar);
    not(Sbar, S);
    or(OUT, T1,T2);
endmodule
