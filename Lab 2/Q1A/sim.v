`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 09:34:35
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
    reg D,C,B,A; 
    wire F;
    k_map_1 U1(D,C,B,A,F);
    initial
    begin
        D = 1'b0;
        C = 1'b0;
        B = 1'b0;
        A = 1'b0;
        #100
        D = 1'b0;
        C = 1'b0;
        B = 1'b0;
        A = 1'b1;
        #100
        D = 1'b0;
        C = 1'b0;
        B = 1'b1;
        A = 1'b0;
        #100
        D = 1'b0;
        C = 1'b0;
        B = 1'b1;
        A = 1'b1;
        #100
        D = 1'b0;
        C = 1'b1;
        B = 1'b0;
        A = 1'b0;
        #100
        D = 1'b0;
        C = 1'b1;
        B = 1'b0;
        A = 1'b1;
        #100
        D = 1'b0;
        C = 1'b1;
        B = 1'b1;
        A = 1'b0;
        #100
        D = 1'b0;
        C = 1'b1;
        B = 1'b1;
        A = 1'b1;
        #100
		D = 1'b1;
        C = 1'b0;
        B = 1'b0;
        A = 1'b0;
        #100
		D = 1'b1;
        C = 1'b0;
        B = 1'b0;
        A = 1'b1;
        #100
		D = 1'b1;
        C = 1'b0;
        B = 1'b1;
        A = 1'b0;
        #100
		D = 1'b1;
        C = 1'b0;
        B = 1'b1;
        A = 1'b1;
        #100
		D = 1'b1;
        C = 1'b1;
        B = 1'b0;
        A = 1'b0;
        #100
		D = 1'b1;
        C = 1'b1;
        B = 1'b0;
        A = 1'b1;
        #100
		D = 1'b1;
        C = 1'b1;
        B = 1'b1;
        A = 1'b0;
        #100
		D = 1'b1;
        C = 1'b1;
        B = 1'b1;
        A = 1'b1;
    end
endmodule
