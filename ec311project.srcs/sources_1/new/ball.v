`timescale 1ns / 1ps
`include "params.vh"
module ball(
  input wire clk,
  input wire resetflag,
  input wire [5:0] velocity_x,
  input wire [5:0] velocity_y,
  output reg [9:0] ball_x,
  output reg [9:0] ball_y,
  output reg edgeflag_left,
  output reg edgeflag_right
);
// locally declearing the width and height of the screen.    
   parameter screen_width = 640;
   parameter screen_height = 480;
  initial begin 
    ball_x = 575;
    ball_y = screen_height/2;
    edgeflag_left = 0; // at the beginning assuming that edgeflag left or right is at logic 0 because ball at center.
    edgeflag_right = 0;
    
  end
 always @ (posedge clk) begin
   // when the resetflag is at logic one from the score module, we set reset the ball position to the center.
    if (resetflag) begin 
      ball_x <= screen_width/2;
      ball_y <= screen_height/2;
      edgeflag_left <= 0;
      edgeflag_right <= 0; 
      resetflag <= 0;// reset velocity at top level module 
    end else begin 
      // if reset is not true, we capture and update the ball location.
      ball_x = (velocity_x[5] == 1) ? ball_x - (~{4'b1111, velocity_x} + 10'd1) : ball_x + velocity_x;
      ball_y = (velocity_y[5] == 1) ? ball_y - (~{4'b1111, velocity_y} + 10'd1) : ball_y + velocity_y;
      end 
   // checking if the collision happened on the left or the right.
      if ( ball_x <= (LPAD_XPOS) )begin
        ball_x <= screen_width/2;
        ball_y <= screen_height/2; 
        edgeflag_left <= 1;
      end else begin 
      if (ball_x >= (RPAD_XPOS)) begin 
        ball_x <= screen_width/2;
        ball_y <= screen_height/2; 
        edgeflag_right <= 1;
      end //else begin
      //  if (ball_y <= 0 || ball_y >= 480)begin
       //   ball_y <= ball_y + velocity_y;
      //  end 
    end 
  end 
 
endmodule 
 
