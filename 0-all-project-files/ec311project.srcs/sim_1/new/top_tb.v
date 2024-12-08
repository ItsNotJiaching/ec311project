`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 07:05:59 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb(
    );
    
reg clk, rst, L_swt, R_swt;
wire r, g, b, h, v;
initial begin
    clk = 0;
    rst = 0;
    L_swt = 0;
    R_swt = 0;
end

vga_top game(clk, rst, r, g, b, h, v, L_swt, R_swt); 

always #2 clk = ~clk;

endmodule
