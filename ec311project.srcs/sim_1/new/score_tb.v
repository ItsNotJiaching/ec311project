module score_tb();
  
reg collision_flag1, collision_flag2;
wire [2:0] p_one_score, p_two_score;
wire reset;
  
score s1(collision_flag1, collision_flag2, reset, p_one_score, p_two_score);  
  
initial begin
  collision_flag1 = 1;
  collision_flag2 = 0;
  #10 collision_flag1 = 0;
  #20 collision_flag2 = 1;
  #40 collision_flag1 = 1;
  #50 collision_flag1 = 0;
  #60 collision_flag1 = 1;
  #100 $finish;
end
endmodule
