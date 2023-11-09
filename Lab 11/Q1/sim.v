`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2023 10:15:42
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
    parameter n = 8;
    reg reset, clk, w, extern;
    reg [n-1:0] data;
    wire [n-1:0] R1, R2, R3, busw;
    wire done;
    bus U1(reset, clk, w, data, extern, R1, R2, R3, busw, done);
    initial
    clk = 1'b1;
    always #50 clk = ~clk;
    initial 
    begin
    reset = 1'b1;
    w = 1'b1;   
    extern  = 1'b1;
    data = 7'b0011001;
    # 50
    data = 7'b1100110;
    # 50
    data = 7'b0001110;
    w = 1'b0;
    #100
    extern = 1'b0;
    end
        
endmodule
