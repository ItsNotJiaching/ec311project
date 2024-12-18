module score(input clk, 
            input reset, 
            input[2:0] Lscore, 
            input[2:0] Rscore, 
            output reg resetflag, 
            output reg [6:0] LED_out, 
            output reg [3:0] Anode_Activate);

// collisionflag for each player if ball does not hit paddle (a point for the opposing player) 
// all global var

// initial score when game starts
initial begin
resetflag = 0;
LED_out = 7'b0000000;
Anode_Activate = 4'b0111; 
end

reg twoscore = 3'b000;
reg onescore = 3'b000;
reg [26:0] one_second_counter; // counter for generating 1 second clock enable
wire one_second_enable;// one second enable for counting numbers
reg [15:0] displayed_number; // counting number to be displayed
reg [3:0] LED_BCD;
reg [19:0] refresh_counter; // 20-bit for creating 10.5ms refresh period or 380Hz refresh rate
             // the first 2 MSB bits for creating 4 LED-activating signals with 2.6ms digit period
wire [1:0] LED_activating_counter; 
    



//prep scores for displaying
always @(Lscore, Rscore) begin
    displayed_number = Lscore * 1000 + Rscore;
end



always @(posedge clk)
begin


//reset the resetflag after collision is handled!
//check refresh counter 

        if(reset==1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;

//check collision flags

////reset scores if too high
//        if (twoscore >= 9 || onescore >= 9) begin
//            twoscore <= 3'b000;
//            onescore <= 3'b000;
//        end
//// check reset
//        if(reset == 1) begin
//            twoscore <= 3'b000;
//            onescore <= 3'b000;
//        end
        
        
end

    assign LED_activating_counter = refresh_counter[19:18];
    // anode activating signals for 4 LEDs, digit period of 2.6ms
    // decoder to generate anode signals 
    always @(*)
    begin
        case(LED_activating_counter)
        2'b00: begin
            Anode_Activate = 4'b0111; 
            // activate LED1 and Deactivate LED2, LED3, LED4

            LED_BCD = displayed_number/1000;
            // the first digit of the 16-bit number
              end
        2'b01: begin
            Anode_Activate = 4'b1011; 
            // activate LED2 and Deactivate LED1, LED3, LED4
            LED_BCD = (displayed_number % 1000)/100;
            // the second digit of the 16-bit number
              end
        2'b10: begin
            Anode_Activate = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
            LED_BCD = ((displayed_number % 1000)%100)/10;
            // the third digit of the 16-bit number
                end
        2'b11: begin
            Anode_Activate = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
            LED_BCD = ((displayed_number % 1000)%100)%10;
            // the fourth digit of the 16-bit number    
               end
        endcase
    end
    // Cathode patterns of the 7-segment LED display 
    always @(*)
    begin
        case(LED_BCD)
        4'b0000: LED_out = 7'b0000001; // "0"     
        4'b0001: LED_out = 7'b1001111; // "1" 
        4'b0010: LED_out = 7'b0010010; // "2" 
        4'b0011: LED_out = 7'b0000110; // "3" 
        4'b0100: LED_out = 7'b1001100; // "4" 
        4'b0101: LED_out = 7'b0100100; // "5" 
        4'b0110: LED_out = 7'b0100000; // "6" 
        4'b0111: LED_out = 7'b0001111; // "7" 
        4'b1000: LED_out = 7'b0000000; // "8"     
        4'b1001: LED_out = 7'b0000100; // "9" 
        default: LED_out = 7'b0000001; // "0"
        endcase
    end



endmodule
