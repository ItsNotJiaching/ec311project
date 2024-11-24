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
            if (count < 300) begin // change this when testing
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
    
    /*reg divided_clk;
	wire a, b, notb, c; 
    reg[32:0] cnt;

    always@(posedge clk or posedge reset)
    begin
        if (reset==1) begin
            cnt <= 0;
            divided_clk <= 0;
        end
        else begin
            if (cnt==toggle_value) begin
                cnt <= 0;
                divided_clk <= ~divided_clk;
            end
            else begin
                cnt <= cnt +1;
                divided_clk <= divided_clk;		
            end
        end
    
    end
    
    reset_dff d0(divided_clk, noisebutt, c);
    reset_dff d1(divided_clk, c, b);
    reset_dff d2(divided_clk, b, a);
    assign notb = ~b;
    assign clean = notb & a;*/
    
endmodule
