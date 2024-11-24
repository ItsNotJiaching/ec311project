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


module vga_top(clk, reset, vga_r, vga_g, vga_b, h_sync, v_sync);

    input clk, reset;

    output reg [3:0] vga_r, vga_g, vga_b;
    output h_sync, v_sync;
    wire newClk;
    wire [2:0] ledOn;
    
    
  
    
    clk_divider clkDiv (clk, reset, newClk);
    
    vga_controller vga_con (newClk, h_sync, v_sync, ledOn);
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
