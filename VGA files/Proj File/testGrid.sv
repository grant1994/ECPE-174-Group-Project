//joseph grant
//12/4/2014 

//testing this led file of mine, miracles ahead

`timescale 1ns/1ns
module testGrid();
	logic [5:0] mem6x6, card1, card2, selectedCard;
	logic LEDs[35:0];
	logic clock = 1'b0;

	gridLED ledMod(.LEDs(LEDs),.clock(clock),.mem6x6(mem6x6),.card1(card1), 
	.card2(card2), .selectedCard(selectedCard));
	
	assign LEDs = ledMod.LEDs;
	
	always #50 clock <= ~clock;
	
	task testMem();
		mem6x6=$urandom_range(0,35);
		#55
		if(LEDs[mem6x6]==1'b1)
			$display("LED Grid is happy");
		else
			$display("LED Grid is very angry!!");
	endtask 
	
	
	initial
	begin
		repeat(5)
		begin
			@(negedge clock) testMem();
		end
	end

endmodule
