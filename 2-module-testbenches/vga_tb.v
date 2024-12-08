`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 02:05:45 PM
// Design Name: 
// Module Name: vga_tb
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


module vga_tb(

    );
//module vga_top(clk, reset, vga_r, vga_g, vga_b, h_sync, v_sync);
reg clk, reset;
initial begin
    clk = 0;
    reset = 0;
//    #1000000 $finish;
end

wire vga_r, vga_g, vga_b, h_sync, v_sync;
vga_top vt(clk, reset, vga_r, vga_g, vga_b, h_sync, v_sync);


always begin
    #1 clk = ~clk;
end

endmodule
