module score(input collision_flag1, input collision_flag2, output reg resetflag, output reg [2:0] p_one_score, output reg [2:0] p_two_score);
// resetflag, p_one_score and p_two_score will be included in our top module

initial p_two_score = 3'b000;
initial p_one_score = 3'b000;


always @ (posedge collision_flag1) begin
p_two_score <= (p_two_score + 3'b001);
resetflag <= 1;
end

always @ (posedge collision_flag2) begin
p_one_score <= p_one_score + 3'b001;
resetflag <= 1;
end

endmodule
