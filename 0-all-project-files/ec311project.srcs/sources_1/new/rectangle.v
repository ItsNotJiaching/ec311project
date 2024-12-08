`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 03:51:17 PM
// Design Name: 
// Module Name: rectangle
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


module rectangle(height, width, x_pos, y_pos, x_draw, y_draw, level);
 
input[9:0] height, width, x_pos, y_pos, x_draw, y_draw;
output level;

reg [9:0] x_dist, y_dist;
reg [9:0] sx_dist, sy_dist; //signed

initial x_dist = 0;
initial y_dist = 0;

initial sx_dist = 0;
initial sy_dist = 0;

assign level = (x_dist < width) && (y_dist < height);

always @ (x_pos, x_draw) begin
    sx_dist = x_pos - x_draw;
    if(sx_dist[9] == 1'b1) begin
        x_dist = -sx_dist;
    end else begin
        x_dist = sx_dist;
    end
end

always @ (y_pos, y_draw) begin
    sy_dist = y_pos - y_draw;
    if(sy_dist[9] == 1'b1) begin
        y_dist = -sy_dist;
    end else begin
        y_dist = sy_dist;
    end
end
    
endmodule
