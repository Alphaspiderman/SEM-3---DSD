`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 09:16:04
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
    reg D, clock, reset;
    wire Q;
    D_FF U1(D, clock, reset, Q);
    initial
    clock = 1'b1;
    always #25 clock = ~clock;
    initial
    begin
        D = 1'b0;
        reset = 1'b0;
        #50
        D = 1'b1;
        #50
        D = 1'b0;
        reset = 1'b1;
        #50
        D = 1'b1;
        #50
        D = 1'b0;
        reset = 1'b0;
        #50
        D = 1'b1;
        #50
        D = 1'b0;
        
        
    end
endmodule
