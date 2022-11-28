`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 12:58:49
// Design Name: 
// Module Name: tb_BarrelMultiplication
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

module tb_BarrelMultiplication();
//    reg clk;
    reg [3:0] x;
    reg [1:0] shift_n;
    wire[3:0] y;
    
    BarrelMultiplication uut(x, shift_n, y);


    initial begin
        x = 4'b1111;
    end
    
    initial begin
        shift_n = 2'b00; 
        #50
        shift_n = 2'b01; 
        #50
        shift_n = 2'b10; 
        #50
        shift_n = 2'b11;
    end

endmodule