`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 12:48:49 PM
// Design Name: 
// Module Name: vga_top
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


module vga_top(clk, rst, vga_r, vga_g, vga_b, h_sync, v_sync, L_swt, R_swt, LED_out, Anode_Activate);
    
    // Score Controller Outputs
    wire resetflag;
    output wire [6:0] LED_out;
    output wire [3:0] Anode_Activate;
    
    input clk, rst;
    input L_swt, R_swt;
    output reg [3:0] vga_r, vga_g, vga_b;
    output h_sync, v_sync;
    wire newClk, newClk2;
    wire [2:0] ledOn;
    wire [9:0] ball_pos_x, ball_pos_y;
    wire edgeleft, edgeright;
    wire [9:0] padLY, padRY;
    wire [5:0] ball_vx, ball_vy;
  
  
    
    clk_divider clkDiv (clk, rst, newClk);
    game_clock_divider clkDiv2 (clk, rst, newClk2);
    
    ball_collision physics(newClk2, rst, 10'd40, padLY, 10'd600, padRY, ball_pos_x, ball_pos_y, 9, ball_vx, ball_vy);
    ball puck(newClk2, rst, ball_vx, ball_vy, ball_pos_x, ball_pos_y, edgeleft, edgeright);
    score s1(clk, rst, edgeleft, edgeright, resetflag,  LED_out, Anode_Activate);  
    paddle padL(!L_swt, L_swt, newClk2, rst, padLY);
    paddle padR(!R_swt, R_swt, newClk2, rst, padRY);
    
    
    vga_controller vga_con (newClk, h_sync, v_sync, ball_pos_x, ball_pos_y, padLY, padRY, ledOn);
    
    
//    vga_controller vga_con (newClk, h_sync, v_sync, ball_pos_x, ball_pos_y, padLY, padRY, ledOn);
    
    
    initial begin
        vga_r = 4'b0000;
        vga_g = 4'b0000;
        vga_b = 4'b0000;
    end
    always@(posedge newClk)
    begin

      if(ledOn == 3'b000) begin
            vga_r <= 4'b0000;
            vga_g <= 4'b0000;
            vga_b <= 4'b0000;
      end else begin
            vga_r <= ((ledOn[2]  == 1) ? 4'b0000 : 4'b1111);
            vga_g <= ((ledOn[1]  == 1) ? 4'b0000 : 4'b1111);
            vga_b <= ((ledOn[0]  == 1) ? 4'b0000 : 4'b1111);
      end
    end
    
endmodule
