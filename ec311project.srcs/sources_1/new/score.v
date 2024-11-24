module score(input collision_flag1, input collision_flag2, output reg resetflag, output reg [6:0] p_one_score, output reg [6:0] p_two_score);

// collisionflag for each player if ball does not hit paddle (a point for the opposing player) 
// all global var

// initial score when game starts
initial p_two_score = 7'b0000001;
initial p_one_score = 7'b0000001;
reg twoscore = 3'b000;
reg onescore = 3'b000;


always @ (posedge collision_flag1) begin
twoscore <= (twoscore + 3'b001);
resetflag <= 1; // if reset flag 1 need to reset collision flag in another var and set reset flag here to 0
        case (twoscore)
        3'b000: p_two_score = 7'b0000001; // "0"     
        3'b001: p_two_score = 7'b1001111; // "1" 
        3'b010: p_two_score = 7'b0010010; // "2" 
        3'b011: p_two_score = 7'b0000110; // "3" 
        3'b100: p_two_score = 7'b1001100; // "4" 
        3'b101: p_two_score = 7'b0100100; // "5" 
        endcase
end

always @ (posedge collision_flag2) begin
onescore <= onescore + 3'b001;
resetflag <= 1;
case (onescore)
        3'b000: p_one_score = 7'b0000001; // "0"     
        3'b001: p_one_score = 7'b1001111; // "1" 
        3'b010: p_one_score = 7'b0010010; // "2" 
        3'b011: p_one_score = 7'b0000110; // "3" 
        3'b100: p_one_score = 7'b1001100; // "4" 
        3'b101: p_one_score = 7'b0100100; // "5" 
        endcase
end

endmodule
