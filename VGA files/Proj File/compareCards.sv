/* ECPE 174 - Adv. Digital Design 
	Memory Card Game
	Author : Kelvin Flores , Joseph Grant
*/

/*compare 2 cards - always read the input address from the memory and compare it
  if all cards are paired then return GO(game over) = 1 , otherwise return G0 = 0.
  
  //If button A is pressed the data from memory is saved. If two cards are selected then
  //compare the value of the saved data.
  
*/

module compareCards(
	input logic clock,A,
	input logic[2:0] inputState,
	input logic[5:0] mem6x6,
	output reg[4:0] data1,data2,
	output logic cardOneTwo=1'b0,
	output integer pairsFound,
	output logic GO
);
	reg[4:0] dataOut;
	mem64 mr64(.clock(clock),.rAddr(mem6x6),.dataOut(dataOut));	
	reg[5:0] cardmem1;
	reg[5:0] cardmem2;
	logic foundPair=1'b1; //1=Find a pair! 0=Found a pair!
	// need this variable so it does not keep adding up 'found' pairs from an initial pair
	
	//logic cardOneTwo = 1'b0; // this keeps track of which card(1st or 2nd) we are choosing
	//integer pairsFound=0; // This int is used to keep track of cards we have compared
	
	//We want the game to play, initialize GO=0 to GO play the game!
	initial
	begin
		pairsFound=0;
		GO=0;
	end
	
	//flip flop assigning card values (data1/data2)/memory locations(cardmem1/cardmem2)
	//This flip flop should be able to get the 2nd card's value and test to card 1 value 
	always_ff@(posedge clock)
	begin
		if(inputState==2)
		begin
			if(A && cardOneTwo==0)
			begin
				data1<=dataOut;
				cardOneTwo<=1;
			end	
			//issue!: this card is not read until the button is pressed twice, issue with cardOneTwo value latency?
			//resolved, cause by memory variables weirdness
			if(A && cardOneTwo==1)
			begin
				if(cardmem1!=cardmem2)
				begin
					cardOneTwo<=0;
					data2<=dataOut;
				end else 
					cardOneTwo<=1;
			end
		end else
			cardOneTwo<=0;
	end
	
	//flip flop logic for seeing if game is over
	always_ff@(posedge clock)
	begin
		if(data1==data2 && foundPair && !cardOneTwo)
		begin
			pairsFound<=pairsFound+1;
			foundPair<=0;
		end
		if(data1!=data2)
			foundPair<=1;
			
		if(pairsFound==18)
			GO<=1;
	end

	//keep track of memory location
	always_ff@(negedge clock)
	begin
		if(A)
			if(cardOneTwo)
				cardmem2<=mem6x6;
			else
				cardmem1<=mem6x6;
	end
endmodule
