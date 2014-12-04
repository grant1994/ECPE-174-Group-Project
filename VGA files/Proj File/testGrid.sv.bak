//joseph grant
//12/4/2014 

//testing this led file of mine, miracles ahead

`timescale 1ns/1ns
module testGrid();
	logic [5:0] mem6x6, card1, card2, selectedCard;
	logic [35:0] LEDs;
	logic clock = 1'b0;

	gridLED ledMod(.LEDs(LEDs),.clock(clock),.mem6x6(mem6x6),.card1(card1), 
	.card2(card2), .selectedCard(selectedCard));
	
	always #50 clock <= ~clock;
	
	task testMem();
		mem6x6<=$urandom_range(0,35);
		#300
		if(LEDs[mem6x6]==1'b1)
			$display("LED Grid is happy");
		else
			$display("LED Grid is very angry!!");
	endtask 
	
	
	initial
	begin
		//lets go ahead and just select random cards
		selectedCard=6'b111111;
		repeat(5)
		begin
			#250
			@(negedge clock) testMem();
		end
		
		//now lets see if we can remember cards we have chosen, fun!
		card1<=6'b100001;
		card2<=6'b100000;
		#300
		@(negedge clock) mem6x6=6'b100001;
		#300
		testMem();
		#300
		@(negedge clock) mem6x6=6'b100000;
		#300
		testMem();
		
		if(LEDs[card1] && LEDs[card2])
			$display("WOW, we actually remembered something!");
		else
			$display("Where am I?");
			
		//finally, we see if we will remember that we actually selected some card
		selectedCard<=6'b000000;
		#300
		@(negedge clock) mem6x6=6'b000000;
		#300
		testMem();
		if(LEDs[selectedCard])
			$display("Our user can see what card they selected");
		else
			$display("Our user activated advanced difficulty mode");
	end
endmodule
