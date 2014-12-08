`timescale 1ns/1ns
/* ECPE 174 - Adv. Digital Design 
	Memory Card Game
	Author : Joseph Grant
*/

/*
  Randomize some inputs, groovify dependent upon some outputs!
*/

module testCompare();
	logic clock = 1'b0;
	logic A=0;
	logic [2:0] inputState=2;
	logic[5:0] mem6x6=0, card1, card2, select;
	logic [4:0] data1,data2;
	logic GO;
	logic card;
	integer pairsFound;
	logic[5:0] cardmem1;
	logic[5:0] cardmem2,selectedCard;
	
	
	compareCards compMod(.clock(clock),.A(A),.inputState(inputState),.mem6x6(mem6x6),.GO(GO),.pairsFound(pairsFound),.data1(data1),.data2(data2),.cardOneTwo(card)
	,.card1Loc(card1),.card2Loc(card2),.selectedCard(select));
	always #50 clock=~clock;
	
	assign cardmem1 = compMod.cardmem1;
	assign cardmem2 = compMod.cardmem2;
	assign selectedCard = compMod.selectedCard;
	
	task pushButton1();
		mem6x6=$urandom_range(0,35);
		#100 A=1;
		#100 A=0;
	endtask 
	
	task pushButton2();
		mem6x6=$urandom_range(0,35);
		#100 A=1;
		#100 A=0;
	endtask 
	
	initial 
	begin
		$monitor("Pair %d found at time: %t",pairsFound,$time);
		//Targeted Test set data in to 01111
		mem6x6=0;
		#100 A=1;
		#100 A=0;
		// set 2nd card to 01111 at mem6x6=19
		mem6x6=18;
		#100 A=1;
		#100 A=0;
		
		//test for choosing same memory spots
		mem6x6=5;
		#100 A=1;
		#100 A=0;
		
		mem6x6=5;
		#100 A=1;
		#100 A=0;
		
		//undirected test
		repeat(800)
		begin
			pushButton1();
			pushButton2();
		end
		
	end
endmodule 
