`timescale 1ns / 1ps

// checks if ball is colliding with the two paddles and processes these collisions
module ball_collision { 
  input wire clk,
  input wire reset,
  input wire [9:0] screen_width,
  input wire [9:0] screen_height,
  input wire [9:0] paddle1_x,
  input wire [9:0] paddle1_y,
  input wire [9:0] ball_x,
  input wire [9:0] ball_y,
  input wire [4:0] ball_radius,
  output reg [9:0] velocity_x,
  output reg [9:0] velocity_y
};

reg is_colliding;
  
initial begin
  is_colliding = 0;
end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      is_colliding = 0;
    end
    if (paddle1_x - ball_x < ball_radius) begin
      velocity_x
    end
  end
