`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 08:01:49 PM
// Design Name: 
// Module Name: ball_tb
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


module ball_tb(

    );
    reg clk;
    reg reset;
    reg [9:0] screen_width;
    reg [9:0] screen_height;
    wire [9:0] ball_x;
    wire [9:0] ball_y;
    ball testball (clk,reset,screen_width,screen_height,ball_x,ball_y);
    always #5 clk = ~clk;
    initial begin 
        clk = 0;
        reset = 1;
        screen_width = 640;
        screen_height = 480;
        #20 reset = 0;
        #50 $finish;
      end
endmodule
