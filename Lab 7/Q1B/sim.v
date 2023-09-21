`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 09:40:38
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
    reg [2:0] W;
    reg En;
    wire [7:0] Y;
    dec U1(W,Y,En);
    initial 
    begin
        En = 1'b0;
        #100
        En = 1'b1;
        W = 3'b000;
        #100
        W = 3'b001;
        #100
        W = 3'b010;
        #100
        W = 3'b011;
        #100
        W = 3'b100;
        #100
        W = 3'b101;
        #100
        W = 3'b110;
        #100
        W = 3'b111;
    end
endmodule
