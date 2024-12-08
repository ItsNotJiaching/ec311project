`timescale 1ns / 1ps
`include "params.vh"
// checks if ball is colliding with the two paddles and processes these collisions
module ball_collision ( 
  input wire clk,
  input wire reset,
  // paddle coords are the center of the paddle
  input wire [9:0] paddle1_y,
  input wire [9:0] paddle2_y,
  input wire [9:0] ball_x,
  input wire [9:0] ball_y,
  input wire [4:0] ball_radius,
  input wire loser,
  output reg [5:0] velocity_x,
  output reg [5:0] velocity_y
);

parameter screen_width = 640, screen_height = 480;
reg is_collidingL, is_collidingR, is_collidingT, is_collidingB;
reg [9:0] distBallPaddle1_x;
reg [9:0] distBallPaddle2_x;
reg [9:0] distBallPaddle1_y;
reg [9:0] distBallPaddle2_y;
reg distSignBit1, distSignBit2;

initial begin 
    is_collidingL = 0;
    is_collidingR = 0;
    is_collidingT = 0;
    is_collidingB = 0;
    velocity_x = 2;
    velocity_y = 0;
    distBallPaddle1_x = 0;
    distBallPaddle2_x = 0;
    distBallPaddle1_y = 0;
    distBallPaddle2_y = 0;
    distSignBit1 = 0;
    distSignBit2 = 0;
end

  always @ (posedge clk) begin
    if (reset) begin
    //TODO: add stuff to this
      velocity_x = (loser ? -2 : 2); 
      velocity_y = 0;
    end
    
    distBallPaddle1_y = paddle1_y - ball_y;
    distSignBit1 = distBallPaddle1_y[9];
    if (distSignBit1 == 1'b1) begin
        distBallPaddle1_y = ~distBallPaddle1_y + 1'b1;
    end
    
    distBallPaddle2_y = paddle2_y - ball_y;
    distSignBit2 = distBallPaddle2_y[9];
    if (distSignBit2 == 1'b1) begin
        distBallPaddle2_y = ~distBallPaddle2_y + 1'b1;
    end
    //calculates absolute value of distance between paddle1 and ball.
    if (distBallPaddle1_y < ball_radius+ PADDLE_HEIGHT_2 ) begin
        distBallPaddle1_x = LPAD_XPOS - ball_x;
        if (distBallPaddle1_x[9] == 1'b1) distBallPaddle1_x = ~distBallPaddle1_x + 1'b1;
        //if distance between paddle and ball is less than radius, then it is colliding
        if (distBallPaddle1_x < ball_radius+ PADDLE_WIDTH_2 ) is_collidingL = 1;
    end
    if (distBallPaddle2_y < ball_radius+ PADDLE_HEIGHT_2 ) begin
        distBallPaddle2_x = RPAD_XPOS - ball_x;
        if (distBallPaddle2_x[9] == 1'b1) distBallPaddle2_x = ~distBallPaddle2_x + 1'b1;
        //if distance between paddle and ball is less than radius, then it is colliding
        if (distBallPaddle2_x < ball_radius+ PADDLE_WIDTH_2 ) is_collidingR = 1;
    end
    
    if(ball_y > (480 - ball_radius - velocity_y)) begin // why is this so small?
    // ball is abt to hit the floor
    is_collidingT = 1;
    end else if (ball_y < (2)) begin
    //ball is abt to hit ciel
    is_collidingB = 1;
    end
    
    
    //$display (distBallPaddle1_x);

    if (is_collidingL || is_collidingR) begin
    // 2's complement: invert then +1
    // need to implement smth random
    if(velocity_x[5]) begin
    // going to the left
        if(is_collidingL) begin
            velocity_x = (~velocity_x + 5'b0000_1) + 1; // invert x and add 1 to add speed
            velocity_y = ~velocity_y + 5'b0000_1;
            
            // make faster if contact edge of paddle
            if(distBallPaddle1_y > 10) begin
                velocity_y = velocity_y + (distSignBit1 ? -1 : 1);
            end else if (distBallPaddle1_y > 45) begin
                velocity_y = velocity_y + (distSignBit1 ? -2 : 2);
            end
        end
    end else begin
    // going to the right
        if(is_collidingR) begin
            velocity_x = (~velocity_x + 5'b0000_1) - 1; // invert x and add 1 to add speed
            velocity_y = ~velocity_y + 5'b0000_1;
           
                        // make faster if contact edge of paddle
            if(distBallPaddle2_y > 10) begin
                velocity_y = velocity_y + (distSignBit2 ? -1 : 1);
            end else if (distBallPaddle2_y > 45) begin
                velocity_y = velocity_y + (distSignBit2 ? -2 : 2);
            end
        end
    end
 
    is_collidingL = 0;
    is_collidingR = 0;
    
    end
    
    if (is_collidingT || is_collidingB) begin
    // 2's complement: invert then +1
    // need to implement smth random
    if(velocity_y[5]) begin
    // going down
        if(is_collidingB) begin
            velocity_y = ~velocity_y + 5'b0000_1;
        end
    end else begin
    // going up
        if(is_collidingT) begin
            velocity_y = ~velocity_y + 5'b0000_1;
        end
    end
 
    is_collidingT = 0;
    is_collidingB = 0;
    
    end
  
    end
    


  

endmodule