module user_input(input clk, input butt1_down, input butt2_down, input butt1_up, input butt1_down); 
  // paddle1down, paddle1up, etc is global var for other modules, need to instantiate other modules that control vel of paddle within this module
  
  always @ (posedge clk) begin // does it retain value even if clk goes down?
    if (butt1_down) begin
      paddle1down <= butt1_down
    end
    if (butt1_up) begin
      paddle1up <= butt1_up
    if (butt2_down) begin
      paddle2down <= butt2_down
    end
    if (butt2_up) begin
      paddle2up <= butt2up
    end
  end

endmodule
