module paddle(
    input user_up,
    input user_down,
    input clk,
    input reset,
    output reg [9:0] paddle_y
);
    // is paddle velocity input, output, or preset definition
    integer paddle_velocity;
    
    initial begin 
        paddle_velocity = 2;
        paddle_y = 240;
    end
    
    always @ (posedge clk) begin
        // if reset, set to 240, otherwise change by velocity
        if (reset) paddle_y = 240;
        else begin
            if (user_up) begin
                paddle_velocity = (paddle_y < (480-55)) ? 2 : 0;
            end else if (user_down) begin
                paddle_velocity = (paddle_y > 55) ? -2 : 0;
            end
            
            //TODO: impl top and bottom bounds
            begin
                paddle_y = paddle_y + paddle_velocity;
            end
            
       end
    end

endmodule