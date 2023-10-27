`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 09:53:16
// Design Name: 
// Module Name: T_FF
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


module T_FF(
    T, clock, reset, Q
    );
    input T, clock, reset;
    output reg Q;
    always @(negedge clock)
        if (reset)
            Q <= 0;
        else if(T)
            Q <= ~Q;
endmodule