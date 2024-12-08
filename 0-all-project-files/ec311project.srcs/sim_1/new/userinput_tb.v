`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 03:01:47 PM
// Design Name: 
// Module Name: userinput_tb
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


module userinput_tb(

    ); 
    reg clk, button1d, button1u, button2d, button2u; 
    wire cleanup1, cleanup2, cleandown1, cleandown2;

    user_input u1( clk, button1d, button2d, button1u, button2u, cleanup1, cleanup2, cleandown1, cleandown2);
        initial begin
        clk = 0;
        button1d = 0;
        button2d = 0;
        button1u = 0;
        button2u = 1;
        #1 button1d = 1;
        #2 button2u = 0;
        #10 button2u = 1;
        #30 button2u = 0;
        #40 button1d = 0;
        #42 button1d = 1;
        #44 button1d = 0;
        #50 button2d = 1;
        #60 button2d = 0;
        #70 button2u = 1;
        #120 button2u = 0;
        #200 $finish;
        end
    
    always #5 clk = ~clk;
endmodule
