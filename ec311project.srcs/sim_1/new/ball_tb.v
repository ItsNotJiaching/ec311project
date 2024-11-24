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
   reg resetflag;
   reg [9:0] velocity_x;
   reg [9:0] velocity_y;
   wire [9:0] ball_x;
   wire [9:0] ball_y;
   wire edgeflag_left;
   wire edgeflag_right;
    ball testball(clk,resetflag,velocity_x,velocity_y,ball_x,ball_y,edgeflag_left,edgeflag_right);
    always #5 clk = ~clk;
    initial begin 
        clk = 0;
        resetflag = 1;
        velocity_x = 2;
        velocity_y = 2;
        #20 resetflag = 0;
        #20 velocity_x = 0;
        #20 velocity_y = 0;
        #15 resetflag = 1;
        #20 velocity_x = 2;
        #20 velocity_y = 2;         
        #50 $finish;
      end
endmodule
