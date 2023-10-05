`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 09:19:53
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
    reg [3:0] data_a;
    reg [3:0] data_b;
    wire lesser;
    wire greater;
    wire equal;
    comp u1(data_a, data_b, lesser, equal, greater);
    initial
    begin
        data_a = 4'b0001;
        data_b = 4'b0010;
        #100
        data_a = 4'b0010;
        data_b = 4'b0001;
        #100
        data_a = 4'b0100;
        data_b = 4'b0100;
        #100
        data_a = 4'b0000;
        data_b = 4'b0000;
    end
endmodule
