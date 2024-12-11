# ec311project

## Project Name
Pong on VGA/FPGA

## Team Members
Hannah Tandang, Jiaxing Wang, Jianzheng Ruan, Joseph Sorkin

## Demo Video Link
https://www.youtube.com/watch?v=c240JOul-l0

## Overview of Project
We will be recreating Pong using Verilog programming to the VGA as our Fall 2024 EC311 final project. It is a two player pong game where players can control the paddles motion by using the switches on an FPGA board to deflect the ball off. Any missed collision with the paddle is a score for the opposing player. The score is displayed on a 7 segment display on the FPGA. The game also contains two buttons "reset" and "start".

## How to Run Project
1. Download the source code as a .zip file and unzip the compressed folder. 
2. In 0-all-project-files, open ec311project.xpr using Vivado 2024.1 or later.

## Overview of Code Structure 
The following describes the code structure of several relevant main modules:
- vga_top.v:
- vga_controller.v:
- ball.v: The ball module is responsible for updating and declaring the ball's position at a given state with the corresponding velocity. The module sets the initial ball position at the center of the canvas, and once the "start" button is pressed on the FPGA board, it checks the condition with the clock signal to update the ball's position using 2's complement addition. While the ball's position is being captured and updated every second, we have loops nested with if statements to check for collisions. There are three collisions we took into consideration. One is the top and bottom of the screen, which will cause the ball to just bounce off, then we check collision with the paddles if the paddle collision is detected, then we inverse the velocity and add to the ball position at that instance, lastly, we check for ball collision with the right and left edges, if those collisions are detected, an internal reset flag is being triggered, causing only the ball's position to reset to the beginning, and the opposing player score will go up by one. There is also a reset button that clears out the whole game memory and sets it to the very beginning state, with ball and player scores to be zero. Velocity also varies depending on the section of the paddle collision is being detected. Finally, it outputs the ball position to other modules and feeds into the VGA top. 
- ball_collision.v: Whenever the ball collides with a paddle, it will change velocity. Currently, the x-velocity is reversed and then sped up by one unit (to make the game more intense), and the y-velocity changes depending on where the ball hit the paddle. When a reset flag is triggered, the ball speed resets to 2, and its default direction changes whenever the player with the lowest score changes.
- score.v: This module communicates with the top module, registers within ball.v, and keeps track of the score for each left and right player and displays it on the FPGA 7 segment display. Within ball.v, top score is limited to 4. As Lscore and Rscore and integers of the number of times the ball collides with the opposing wall (does not hit the paddle), and is also an input to other modules. It then takes these inputs and turns it ino a number in the thousands. This number is then divided by tens to display each integer as the different anodes are activate and deactivated really fast. The integers are then converted into the corresponding 7 segment 7 bit numbers as defined in the case statement at the bottom. In the end, the score is displayed on the left most 4 numbers as: (Left score)00(Right score).
- rectangle.v:
- paddle.v: This paddle module is instantiated twice to create two different paddle objects. Each paddle will be initialized to have a velocity of 2 and an initial y-position of 240 (middle height). Whenever the switch input is up, the paddle position increases by the given velocity (2). When the switch input is down, the paddle decreases by the given velocity.
- game_clk_divider.v:
- clk_divider.v:
