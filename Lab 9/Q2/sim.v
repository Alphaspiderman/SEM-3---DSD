`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 09:53:27
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
    reg T, clock, reset;
    T_FF U1(T, clock, reset, Q);
    initial
    clock = 1'b1;
    always #25 clock = ~clock;
    initial
    begin
        T = 1'b0;
        reset = 1'b1;
        #50
        T = 1'b1;
        reset = 1'b0;
        #50
        T = 1'b0;
        reset = 1'b1;
        #50
        T = 1'b1;
        #50
        T = 1'b0;
        reset = 1'b0;
        #50
        T = 1'b1;     
        #50
        T = 1'b0; 
        #50
        T = 1'b1;     
        #50
        T = 1'b0; 
    end
endmodule
