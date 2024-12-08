`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 09:27:00 PM
// Design Name: 
// Module Name: paddle_tb
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


module paddle_tb(

    );
    reg user_up;
    reg user_down;
    reg reset;
    wire [9:0] paddle_y;
    
    paddle PAD(user_up, user_down, reset, paddle_y);
    
    initial begin
        user_up = 0;
        user_down = 0;
        reset = 0;
        #5 user_up = 1;
        #5 user_up = 0;
        #5 user_down = 1;
        #5 user_down = 0;
        #5 user_up = 1;
        #5 user_up = 0;
        #5 user_up = 1;
        #5 user_up = 0;
        reset = 1;
        #5 reset = 0;
        #5 $finish;
    end
    
endmodule
