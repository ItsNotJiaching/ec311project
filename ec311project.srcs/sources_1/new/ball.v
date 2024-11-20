module ball(
  input wire clk,
  input wire reset,
  input wire [9:0] screen_width,
  input wire [9:0] screen_height,
  output reg [9:0] ball_x,
  output reg [9:0] ball_y
);
  reg [9:0] velocity_x;
  reg [9:0] velocity_y;
  initial begin 
    ball_x = screen_width/2;
    ball_y = screen_height/2;
    velocity_x = 1;
    velocity_y =1;
  end
  always @ (posedge clk or posedge reset) begin
    if (reset) begin 
      ball_x <= screen_width/2;
      ball_y <= screen_height/2;
      velocity_x = 1;
      velocity_y = 1;
    end else begin 
      ball_x <= ball_x + velocity_x;
      ball_y <= ball_y + velocity_y;
      if ( ball_x <= 0 || ball_x >= screen_width -1 || ball_y <= 0|| ball_y >= screen_height-1)begin
        ball_x <= screen_width/2;
        ball_y <= screen_height/2;
      end 
    end 
  end 
endmodule 
