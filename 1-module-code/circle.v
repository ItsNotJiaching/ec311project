`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 01:00:13 PM
// Design Name: 
// Module Name: circle
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

// so its actually a square
module circle(radius, x_pos, y_pos, x_draw, y_draw, level);

input[11:0] radius, x_pos, y_pos, x_draw, y_draw;
output level;

reg [11:0] x_dist, y_dist;
reg [11:0] sx_dist, sy_dist; //signed

initial x_dist = 0;
initial y_dist = 0;

initial sx_dist = 0;
initial sy_dist = 0;
assign level = (x_dist < radius) && (y_dist < radius);

always @ (x_pos, x_draw) begin
    sx_dist = x_pos - x_draw;
    if(sx_dist[11] == 1'b1) begin
        x_dist = -sx_dist;
    end else begin
        x_dist = sx_dist;
    end
end

always @ (y_pos, y_draw) begin
    sy_dist = y_pos - y_draw;
    if(sy_dist[11] == 1'b1) begin
        y_dist = -sy_dist;
    end else begin
        y_dist = sy_dist;
    end
end

endmodule
