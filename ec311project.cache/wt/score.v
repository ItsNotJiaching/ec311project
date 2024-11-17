module score(input collision_flag1, input collision_flag2, output reg p_one_score, output reg p_two_score); 
  
initial p_two_score = 0;
initial p_one_score = 0;
  
always (collision_flag1) begin 
p_two_score <= p_two_score + 1;
collision_flag1 <= 0;
end

// check if changing input in always loop will work with <=
  
always (collision_flag2) begin 
p_one_score <= p_one_score + 1;
collision_flag2 <= 0;
end
  
endmodule
