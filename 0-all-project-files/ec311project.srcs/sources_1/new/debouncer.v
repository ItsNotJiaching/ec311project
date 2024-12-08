`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 03:57:01 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer(
    input clk,
    input noisebutt,
    output reg clean
    );
    reg [20:0] count;
    
    always@(posedge clk) begin
        if (noisebutt == 1) begin
            if (count < 300) begin // change this when testing to 3
                count <= count + 1;
            end 
            else begin
                clean = noisebutt;
            end
         end else begin
            clean = 0;
            count = 0;
         end
    end
    
endmodule
