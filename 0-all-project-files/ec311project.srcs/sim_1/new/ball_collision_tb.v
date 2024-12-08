`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 04:24:56 PM
// Design Name: 
// Module Name: ball_collision_tb
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


module ball_collision_tb(

    );
    reg clk;
    reg reset;
    reg [9:0] paddle1_x;
    reg [9:0] paddle1_y;
    reg [9:0] paddle2_x;
    reg [9:0] paddle2_y;
    reg [9:0] ball_x;
    reg [9:0] ball_y;
    reg [4:0] ball_radius;
    wire [4:0] velocity_x;
    wire [4:0] velocity_y;
    
    ball_collision COL(clk, reset, paddle1_x, paddle1_y, paddle2_x, paddle2_y, ball_x, ball_y, ball_radius, velocity_x, velocity_y);
    
    initial begin
        clk = 0;
        reset = 0;
        paddle1_x = 100;
        paddle1_y = 240;
        paddle2_x = 540;
        paddle2_y = 350;
        ball_x = 350;
        ball_y = 100;
        ball_radius = 25;
        #4 ball_x = 120;
        #4 ball_y = 120;
        #4 ball_y = 230;
        #4 ball_x = 520;
        ball_y = 350;
        #10 $finish;
    end
    
    always #2 clk = ~clk;
    
endmodule
