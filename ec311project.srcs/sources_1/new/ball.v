`timescale 1ns / 1ps
module ball(
  input wire clk,
  input wire reset,
  input wire [9:0] screen_width,
  input wire [9:0] screen_height,
  input wire [9:0] velocity_x,
  input wire [9:0] velocity_y,
  output reg [9:0] ball_x,
  output reg [9:0] ball_y,
  output reg edgeflag_left,
  output reg edgeflag_right
);

  initial begin 
    ball_x = screen_width/2;
    ball_y = screen_height/2;

  end
  always @ (posedge clk or posedge reset) begin
    if (reset) begin 
      ball_x <= screen_width/2;
      ball_y <= screen_height/2;
     // reset velocity at top level module 
    end else begin 
      ball_x <= ball_x + velocity_x;
      ball_y <= ball_y + velocity_y;
      if ( ball_x <= 0 || ball_x >= screen_width -1 )begin
        ball_x <= screen_width/2;
        ball_y <= screen_height/2;
        edgeflag_left <= 1; 
        edgeflag_right <= 1;
        // reminder you need to reset other things??? (reset score, reset position)
      end 
    end 
  end 
endmodule 
