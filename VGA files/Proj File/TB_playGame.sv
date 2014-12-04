/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

`timescale 1ns/1ns
module TB_playGame();
  
	logic clock = 1'b0;
	
	logic[3:0] inputState,keys;
	logic A,GO,FP;
	logic[1:0] level;
	logic[5:0] mem6x6;
	logic [5:0] card1Loc, card2Loc, selectedCard;
	logic [35:0] LEDs;
   int randKeys;
	logic [35:0] memPosition,foundLocs,card1LED,card2LED;
	
	playGame pg(.clock(clock),.keys(keys),.A(A),.LEDs(LEDs));

	always #1 clock <= ~clock;
	
	assign mem6x6 = pg.mem6x6;
	assign card1Loc = pg.card1Loc;
	assign card2Loc = pg.card2Loc;
	assign selectedCard = pg.selectedCard;
	assign GO = pg.GO;
	
	assign memPosition = pg.ledMod.memPosition;
	assign foundLocs = pg.ledMod.foundLocs;
	assign card1LED = pg.ledMod.card1LED;
	assign card2LED = pg.ledMod.card2LED;
	assign FP = pg.ledMod.FP;
	/*assign keys0[0] = up;
	assign keys0[1] = down;
	assign keys0[2] = left;
	assign keys0[3] = right;*/
	
	
	initial
	begin
		$monitor("@ %0dns, %0d key has been pressed memory is %0d . ",$time,keys,mem6x6);
		$srandom(13);
		

		
		
		//Directly pressing arrow keys
		$display("Game is running...");
		$display("Directly pressing arrow keys...");
		
		arrow2(8);
		buttonA();
		arrow2(8);
		arrow2(8);
		arrow2(8);
		arrow2(8);
		buttonA();
		
		arrow2(2);
		arrow2(4);
		arrow2(4);
		arrow2(4);
		arrow2(4);
		arrow2(4);
		buttonA();
		
		arrow2(2);
		arrow2(2);
		arrow2(2);
		arrow2(8);
		arrow2(8);
		buttonA();
		
		//Randomly pressing arrow keys
		/*	$display("Randomly pressing arrow keys...");
		for(int i = 0; i < 800; i++)
		begin 
			arrow();
			arrow();
			arrow();
			arrow();
			arrow();
			buttonA();

		end*/
		
		#100;	
		
		
		$stop;	
	end
	
  `include "task_arrowKeys.sv";
  `include "task_buttonA.sv";
endmodule