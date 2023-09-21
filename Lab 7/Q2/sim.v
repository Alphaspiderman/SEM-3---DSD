`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 10:16:37
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


module sim();
    reg [1:0] W;
    reg En;
    wire [3:0] Y;
    dec U1(W,Y,En);
    initial 
    begin
        En = 1'b0;
        #100
        En = 1'b1;
        W = 2'b00;
        #100
        W = 2'b01;
        #100
        W = 2'b10;
        #100
        W = 2'b11;
    end
endmodule
