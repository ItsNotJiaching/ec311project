`timescale 1ns / 1ps

// checks if ball is colliding with the two paddles and processes these collisions
module ball_collision ( 
  input wire clk,
  input wire reset,
  // paddle coords are the center of the paddle
  input wire [9:0] paddle1_x,
  input wire [9:0] paddle1_y,
  input wire [9:0] paddle2_x,
  input wire [9:0] paddle2_y,
  input wire [9:0] ball_x,
  input wire [9:0] ball_y,
  input wire [4:0] ball_radius,
  output reg [4:0] velocity_x,
  output reg [4:0] velocity_y
);

parameter screen_width = 640, screen_height = 480, paddle_rad_h = 55, paddle_rad_w = 15;
reg is_colliding; 
reg [9:0] distBallPaddle1_x;
reg [9:0] distBallPaddle2_x;
reg [9:0] distBallPaddle1_y;
reg [9:0] distBallPaddle2_y;

initial begin 
    is_colliding = 0;
    velocity_x = 2;
    velocity_y = 2;
end

  always @ (posedge clk) begin
    if (reset) begin
      is_colliding = 0;
      velocity_x = 2;
      velocity_y = 2;
    end
    
    distBallPaddle1_y = paddle1_y - ball_y;
    if (distBallPaddle1_y[9] == 1'b1) distBallPaddle1_y = ~distBallPaddle1_y + 1'b1;
    distBallPaddle2_y = paddle2_y - ball_y;
    if (distBallPaddle2_y[9] == 1'b1) distBallPaddle2_y = ~distBallPaddle2_y + 1'b1;
    
    //calculates absolute value of distance between paddle1 and ball.
    if (distBallPaddle1_y < ball_radius+paddle_rad_h) begin
        distBallPaddle1_x = paddle1_x - ball_x;
        if (distBallPaddle1_x[9] == 1'b1) distBallPaddle1_x = ~distBallPaddle1_x + 1'b1;
        //if distance between paddle and ball is less than radius, then it is colliding
        if (distBallPaddle1_x < ball_radius+paddle_rad_w) is_colliding = 1;
    end
    if (distBallPaddle2_y < ball_radius+paddle_rad_h) begin
        distBallPaddle2_x = paddle2_x - ball_x;
        if (distBallPaddle2_x[9] == 1'b1) distBallPaddle2_x = ~distBallPaddle2_x + 1'b1;
        //if distance between paddle and ball is less than radius, then it is colliding
        if (distBallPaddle2_x < ball_radius+paddle_rad_w) is_colliding = 1;
    end
    
    //$display (distBallPaddle1_x);
    
    if (is_colliding) begin
    // 2's complement: invert then +1
    // need to implement smth random
      velocity_x = ~velocity_x + 5'b0000_1;
      velocity_y = ~velocity_y + 5'b0000_1;
    end
  end

endmodule