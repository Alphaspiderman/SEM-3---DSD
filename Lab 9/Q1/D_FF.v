`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 09:15:51
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    D, clock, reset, Q
    );
    input D, clock, reset;
    output Q;
    reg Q;
    always @(posedge clock)
        if(reset)
            Q <= 0;
        else
            Q <= D;
endmodule
