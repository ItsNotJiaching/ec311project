module paddle(
    input user_up,
    input user_down,
    input reset,
    output reg [9:0] paddle_y
);
    // is paddle velocity input, output, or preset definition
    integer paddle_velocity;
    
    initial begin 
        paddle_velocity = 2;
        paddle_y = 240;
    end
    
    always @ (posedge user_up or posedge user_down or posedge reset) begin
        // if reset, set to 240, otherwise change by velocity
        if (reset) paddle_y = 240;
        else begin
            if (user_up) paddle_velocity = 2;
            if (user_down) paddle_velocity = -2;
            paddle_y = paddle_y + paddle_velocity;
       end
    end

endmodule