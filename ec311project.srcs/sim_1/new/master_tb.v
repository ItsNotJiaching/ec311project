`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 12:15:06 PM
// Design Name: 
// Module Name: master_tb
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


module master_tb(

    );
    wire [6:0] LED_out;
    wire [3:0] Anode_Activate;
    
    reg clk, clk_rst, game_rst;
    reg L_swt, R_swt;
    wire [3:0] vga_r, vga_g, vga_b;
    wire h_sync, v_sync;
    
 vga_top(clk, clk_rst, game_rst, vga_r, vga_g, vga_b, h_sync, v_sync, L_swt, R_swt, LED_out, Anode_Activate);
 
initial begin
    clk = 0;
    clk_rst = 0;
    game_rst = 0;
    L_swt = 0;
    R_swt = 0;
end

always #2 clk = ~clk;

endmodule
