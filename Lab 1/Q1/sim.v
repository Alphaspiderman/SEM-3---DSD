`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2023 09:34:35
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
    reg a,b,cin;
    wire sum,cout;

    full_adder U1(
        a, b, c, sum, cout
    );

    initial begin
        a = 0;
        b = 0;
        cin = 0;
        #10 a = 1;
        #10 b = 1;
        #10 cin = 1;
    end
endmodule