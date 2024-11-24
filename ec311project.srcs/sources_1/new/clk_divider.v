`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 12:17:33 PM
// Design Name: 
// Module Name: clk_divider
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

module clk_divider(clk, reset, newClk);
    
    input clk, reset;
    output newClk;
    
    reg [1:0] cnt = 0;
    reg toggleVal = 1;
    reg tempClk = 0;
    
    assign newClk = tempClk;
    
    always@(posedge clk)
    begin        
        if(reset)
        begin
            cnt <=0;
            tempClk <= 0;
        end
        else
        begin
            if(cnt < toggleVal)
                cnt = cnt + 1;
            else
            begin
                cnt <= 0;
                tempClk = ~tempClk;
            end
            
       end
             
    
    end
    

endmodule
