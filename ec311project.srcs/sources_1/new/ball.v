`timescale 1ns / 1ps
module ball(
  input wire clk,
  input wire resetflag,
  input wire [9:0] velocity_x,
  input wire [9:0] velocity_y,
  output reg [9:0] ball_x,
  output reg [9:0] ball_y,
  output reg edgeflag_left,
  output reg edgeflag_right
);
    
   parameter screen_width = 640;
   parameter screen_height = 480;
  initial begin 
    ball_x = screen_width/2;
    ball_y = screen_height/2;
    edgeflag_left = 0;
    edgeflag_right = 0;

  end
 always @ (posedge clk or posedge resetflag) begin
    if (resetflag) begin 
      ball_x <= screen_width/2;
      ball_y <= screen_height/2;
      edgeflag_left <= 0;
      edgeflag_right <= 0;     // reset velocity at top level module 
    end else begin 
      ball_x <= ball_x + velocity_x;
      ball_y <= ball_y + velocity_y;
      end 
      if ( ball_x <= 0 )begin
        ball_x <= screen_width/2;
        ball_y <= screen_height/2; 
        edgeflag_left <= 1;
        // reminder you need to reset other things??? (reset score, reset position)
      end else begin 
      if (ball_x >= screen_width -1) begin 
        ball_x <= screen_width/2;
        ball_y <= screen_height/2; 
        edgeflag_right <= 1;
      end
    end 
  end 
 
endmodule 
 
