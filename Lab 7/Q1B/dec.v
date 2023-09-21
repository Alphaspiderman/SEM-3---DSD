`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 09:40:26
// Design Name: 
// Module Name: dec
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

module dec(
    W,Y,En
    );
    input [2:0] W;
    input En;
    output [0:7] Y;
    reg [0:7] Y;
    integer k;
    always @(W or En) 
    begin
        for(k=0;k<=7;k=k+1)
            if((W==k)&&(En==1))
                Y[k] = 1;
            else
                Y[k] = 0;
    end
endmodule
