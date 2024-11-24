module user_input(input clk, input button1_down, input button2_down, input button1_up, input button2_up, 
    output cleanup1, output cleanup2, output cleandown1, output cleandown2);
  // cleanup1, cleanup2, etc is global var for other modules, need to instantiate other modules as input that control vel of paddle within this module
  
  // cleaned out output
  debouncer up1(clk, button1_up, cleanup1);
  debouncer down1(clk, button1_down, cleandown1);
  debouncer up2(clk, button2_up, cleanup2);
  debouncer down2(clk, button2_down, cleandown2);
  
endmodule
