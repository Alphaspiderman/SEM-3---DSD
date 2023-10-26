`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 09:41:28
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


module sim(

    );
    reg [3:0] grey;
    wire [3:0] bin;
    greytobin u1(grey, bin);
    initial 
    begin
        grey = 4'b0000;
        #100
        grey = 4'b0001;
        #100
        grey = 4'b0011;
        #100
        grey = 4'b0010;
        #100
        grey = 4'b0110;
        #100
        grey = 4'b0111;
        #100
        grey = 4'b0101;
        #100
        grey = 4'b0100;
        #100
        grey = 4'b1100;
        #100
        grey = 4'b0000;
    end
endmodule
