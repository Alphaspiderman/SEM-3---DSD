`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 10:16:25
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
    input [1:0] W;
    input En;
    output [0:3] Y;
    reg [0:3] Y;
    always @(W or En) 
    begin
        if (En) begin
            if(W==2'b00) Y=4'b0001;
            else if(W==2'b01) Y=4'b0010;
            else if(W==2'b10) Y=4'b0100;
            else if(W==2'b11) Y=4'b1000;
            else Y=4'bxxxx;
        end
        else Y=4'b0000;
    end
endmodule
