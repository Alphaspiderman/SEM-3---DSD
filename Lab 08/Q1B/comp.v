`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 09:33:12
// Design Name: 
// Module Name: comp
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


module comp(
    data_a, data_b, lesser, equal, greater 
    );
    input [4:0] data_a;
    input [4:0] data_b;
    output reg lesser;
    output reg equal;
    output reg greater;
    always @(data_a, data_b)
    begin
        if(data_a > data_b) 
        begin
            lesser = 0;
            equal = 0;
            greater = 1;
            end
        else if(data_a == data_b) 
        begin
            lesser = 0;
            equal = 1;
            greater = 0;
            end
        else
        begin
            lesser = 1;
            equal = 0;
            greater = 0;
            end
       end
endmodule
