`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 09:33:23
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
    reg [4:0] data_a;
    reg [4:0] data_b;
    wire lesser;
    wire greater;
    wire equal;
    comp u1(data_a, data_b, lesser, equal, greater);
    initial
    begin
        data_a = 5'b00010;
        data_b = 5'b00100;
        #100
        data_a = 5'b00100;
        data_b = 5'b00010;
        #100
        data_a = 5'b01000;
        data_b = 5'b01000;
        #100
        data_a = 5'b00000;
        data_b = 5'b00000;
    end
endmodule
