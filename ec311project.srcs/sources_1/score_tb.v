module score_tb();
  
reg collision_flag1, collision_flag2;
wire p_one_score, p_two_score;
  
  score s1(collision_flag1, collision_flag2, p_one_score, p_two_score);  
  
initial begin
  collision_flag1 = 1;
  collision_flag2 = 0;
  #10 collision_flag1 = 1;
  #20 collision_flag2 = 1;
  #40 collision_flag1 = 1;
  #50 $finish;
end
endmodule
