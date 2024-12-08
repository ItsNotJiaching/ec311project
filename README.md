# ec311project
We will be recreating Pong using Verilog programming to the VGA as our Fall 2024 EC311 final project.

## Members
Hannah Tandang, Jiaxing Wang, Jianzheng Ruan, Joseph Sorkin

Project Name: Pong on VGA/FPGA
Team Members: Jianzheng Ruan, Joey Sorkin, Hannah Tandang, Jiaxing Wang
Link to video:

Overview of Project:

How to run:

Overview of code structure of relevant main modules:
- vga_top.v:
- vga_controller.v:
- ball.v:
- ball_collision.v: Whenever the ball collides with a paddle, it will change velocity. Currently, the x-velocity is reversed and then sped up by one unit (to make the game more intense), and the y-velocity changes depending on where the ball hit the paddle. When a reset flag is triggered, the ball speed resets to 2, and its default direction changes whenever the player with the lowest score changes.
- score.v: This module communicates with the top module, registers within ball.v, and keeps track of the score for each left and right player and displays it on the FPGA 7 segment display. Within ball.v, top score is limited to 4. As Lscore and Rscore and integers of the number of times the ball collides with the opposing wall (does not hit the paddle), and is also an input to other modules. It then takes these inputs and turns it ino a number in the thousands. This number is then divided by tens to display each integer as the different anodes are activate and deactivated really fast. The integers are then converted into the corresponding 7 segment 7 bit numbers as defined in the case statement at the bottom. In the end, the score is displayed on the left most 4 numbers as: (Left score)00(Right score).
- rectangle.v:
- paddle.v: This paddle module is instantiated twice to create two different paddle objects. Each paddle will be initialized to have a velocity of 2 and an initial y-position of 240 (middle height). Whenever the switch input is up, the paddle position increases by the given velocity (2). When the switch input is down, the paddle decreases by the given velocity.
- game_clk_divider.v:
- clk_divider.v:
- circle.v:
