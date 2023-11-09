`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09.11.2023 09:19:34
// Design Name:
// Module Name: bus
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

module regn(R,L, clk, Q);
    parameter n = 8;
    input [n-1:0] R;
    input L, clk;
    output reg [n-1:0] Q;
    always @(posedge clk)
        if(L)
            Q <= R;
endmodule

module bus(reset, clk, w, data, extern, R1, R2, R3, busw, done);
    parameter n = 8;
    input reset, clk, w, extern;
    input [n-1:0] data;
    output [n-1:0] busw, R1, R2, R3;
    reg [n-1:0] busw;
    wire [n-1:0] R1, R2, R3;
    output done;
    wire R1in, R1out, R2in, R2out, R3in, RinExt1, RinExt2;
    reg [2:0] y, Y;
    parameter [2:0] A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;
    always @(w or y)
        begin
        case(y)
            A: if(w) Y = B;
            else Y = A;
            B : Y = C;
            C : Y = D;
            D : Y = E;
            E : Y = A;
        endcase
        end
    always @(negedge reset or posedge  clk)
        begin
        if (reset == 0) Y <=A;
        else y <= Y;
        end
    assign RinExt1 = (y == A);
    assign RinExt2 = (y == B);
    assign R3in = (y == C);
    assign R1out = (y == C);
    assign R2out = (y == D);
    assign R1in = (y == D);
    assign R3out = (y == E);
    assign R2in = (y == E);
    assign done = (y == E);
    
    always @(extern or R1out or R2out or R3out)
        if (extern) busw = data;
        else if (R1out) busw = R1;
        else if (R2out) busw = R2;
        else if (R3out) busw = R3;
    
    regn reg3(busw, R3in, clk, R3);
    regn reg4(busw, RinExt1 | R1in, clk, R1);
    regn reg5(busw, RinExt2 | R2in, clk, R2);
    
endmodule