`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 09:35:53
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
    assign t1 = (S1) ? I2:I1;
    assign t2 = (S1) ? I4:I3;
    assign OUT = (S2) ? t2:t1;
endmodule
