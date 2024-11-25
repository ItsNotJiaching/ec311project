`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 12:14:52 PM
// Design Name: 
// Module Name: vga_controller
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


module vga_controller(clk, h_sync, v_sync, ball_pos_x, ball_pos_y, pad_l_y, pad_r_y, led_on);
    
    input clk;
    
    input[9:0] ball_pos_x, ball_pos_y, pad_l_y, pad_r_y;
//    input [15:0] x_buf;
//    input [15:0] y_buf;
    output reg h_sync, v_sync;
    output reg [2:0] led_on;
    initial led_on = 3'b000;
    
    localparam TOTAL_WIDTH = 800;
    localparam TOTAL_HEIGHT = 525;
    localparam ACTIVE_WIDTH = 640;
    localparam ACTIVE_HEIGHT = 480;
    localparam H_SYNC_COLUMN = 704;
    localparam V_SYNC_LINE = 523;
    localparam W_SHIFT = 50;
    localparam H_SHIFT = 33;
    
    reg [9:0] widthPos = 0;
    reg [9:0] heightPos = 0;
    
    
    wire enable = ((widthPos >=50 & widthPos < 690) & (heightPos >=33 & heightPos < 513)) ? 1'b1: 1'b0;
    // w_a + w_shift, h_a+h_shift
    
    // Following always block ensures that 
    // you go through all pixel coordinates
    always@(posedge clk)
    begin
        // check if end of the width 
        if(widthPos < TOTAL_WIDTH -1)
        begin 
            widthPos <= widthPos + 1;
        end
        else
        begin
            // move back to the first column
            widthPos <=0;
            // check if end of the height
            if(heightPos < TOTAL_HEIGHT -1)
            begin
                heightPos <= heightPos + 1;
            end
            else
            begin
                 heightPos <= 0;
            end       
        end
    end
    
    always@(posedge clk)
    begin
        if (widthPos < H_SYNC_COLUMN)
        begin
            h_sync <= 1'b1;
        end
        else
        begin
            h_sync <= 1'b0; // Horizontal Sync Pule
        end
   end


    always@(posedge clk)
    begin
        if (heightPos < V_SYNC_LINE)
        begin
            v_sync <= 1'b1;
        end
        else
        begin
            v_sync <= 1'b0;
        end
   end
    
    // this is you main logic based on 
    // your project
    
    reg [9:0] Cx;
    reg [9:0] Cy;
    reg [1:0] direction;
    initial begin
        Cx = 0;
        Cy = 0;
        direction = 0;
    end
    
    wire drawPuck, drawPaddleA, drawPaddleB;
    rectangle puck(7, 8, ball_pos_x, ball_pos_y, widthPos - W_SHIFT, heightPos - H_SHIFT, drawPuck);
    rectangle padA(55, 13, 40, pad_l_y, widthPos - W_SHIFT, heightPos - H_SHIFT, drawPaddleA);
    rectangle padB(55, 15, ACTIVE_WIDTH - 40, pad_r_y, widthPos - W_SHIFT, heightPos - H_SHIFT, drawPaddleB);
    
    // SCANNING TEST CODE
//    always@(posedge  v_sync)
//    begin
//            if(direction[0] == 0) begin
//              if(Cx < ACTIVE_WIDTH - 1) begin
//                    Cx <= Cx + 1;
//                end else begin
//                    direction[0] <= 1;
//                end
//            end else if(direction[0] == 1) begin
//              if(Cx > 1) begin
//                    Cx <= Cx - 1;
//                end else begin
//                    direction[0] <= 0;
//                end
//            end 

//            if(direction[1] == 0) begin
//              if(Cy < ACTIVE_HEIGHT - 1) begin
//                    Cy <= Cy + 1;
//                end else begin
//                    direction[1] <= 1;
//                end
//            end else if(direction[1] == 1) begin
//              if(Cy > 1) begin
//                    Cy <= Cy - 1;
//                end else begin
//                    direction[1] <= 0;
//                end
//            end 
//    end
    
    always@(posedge clk)
    begin
        if(enable)
        begin
//            if(widthPos < (ACTIVE_WIDTH / 2 + W_SHIFT)) begin
//                led_on <= 1'b1;
//            end else begin
//                 led_on <= 1'b0;
//            end
//        end
//        else
//        begin
//            led_on <= 1'b0;
            led_on <= (drawPuck || drawPaddleA || drawPaddleB) ? 3'b100 : 3'b000;
            

            
            
        end 
        
   end   
        
    


endmodule
