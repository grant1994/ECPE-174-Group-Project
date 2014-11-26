/* ECPE 174 - Adv. Digital Design 
	Memory Card Game
	Author : Kelvin Flores , Joseph Grant
*/

/*compare 2 cards - always read the input address from the memory and compare it
  if all cards are paired then return GO(game over) = 1 , otherwise return G) = 0.
  
  //If button A is pressed the data from memory is saved. If two cards are selected then
  //compare the value of the saved data.
  
*/

module compareCards(
	input logic clock,A,inputState,
	input logic[5:0] mem6x6,
	output logic GO
);
	mem64 mr64(.clock(clock),.rAddr(rAddr),.dataOut(dataOut));	
	reg[5:0] cardmem1;
	reg[4:0] data1;
	reg[5:0] cardmem2;
	reg[4:0] data2;
	integer pairsFound=0; // This int is used to keep track of cards we have compared
	
	//We want the game to play, initialize GO=0 to GO play the game!
	initial
	begin
		GO=0;
	end
	
	//mem6x6 is assigned to read address given to memory, we want to read from there
	assign rAddr = mem6x6;
	
	//flip flop assigning card values (data1/data2)/memory locations(cardmem1/cardmem2)
	always_ff@(posedge clock)
	begin
		//if our state is 1, we will know we are choosing the first card
		if(A && inputState==XX)
			cardmem1<=mem6x6;
			data1<=dataOut;	
		//if our state is 2, we will know we are choosing the second card
		if(A && inputState==XX)
			cardmem2<=mem6x6;
			data2=dataOut;
	end
	
	//use combinational logic for data1/data2 for comparisons
	always_comb@(data1,data2)
	begin
		if(data1==data2)
		begin
			pairsFounds<=pairsFound+1;
		end
	end
	
	//comb logic for seeing if game is over
	always_comb@(pairsFound)
	if(pairsFound==18)
		GO=1;
	
endmodule
						  
						  