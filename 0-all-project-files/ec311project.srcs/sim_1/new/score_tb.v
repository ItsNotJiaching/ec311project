module score_tb();
  
reg collision_flag1, collision_flag2, reset, resetflagprime, clk;
wire [6:0] LED_out;
wire [3:0] Anode_Activate;
wire resetflag;
  
score s1(clk, 
reset, 
resetflagprime, collision_flag1, 
collision_flag2, 
resetflag, 
LED_out, 
Anode_Activate);
  
initial begin
  collision_flag1 = 1;
  collision_flag2 = 0;
  clk = 0;
  reset = 0;
  resetflagprime = 0;
  #10 collision_flag1 = 0;
  #20 collision_flag2 = 1;
  #40 collision_flag1 = 1;
  #50 collision_flag1 = 0;
  #60 collision_flag1 = 1;
  #65 reset = 1;
  #70 reset = 0;
  #75 collision_flag1 = 0;
  #80 collision_flag2 = 1;
  #85 collision_flag1 = 1;
  #90 collision_flag1 = 0;
  #95 collision_flag1 = 1;
  #100 $finish;
end

always #5 clk = ~clk;

endmodule
