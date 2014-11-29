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
	output reg[4:0] data1,data2,
	output integer pairsFound,
	output logic GO
);
	reg[4:0] dataOut;
	mem64 mr64(.clock(clock),.rAddr(mem6x6),.dataOut(dataOut));	
	reg[5:0] cardmem1;
	//integer pairsFound=0; // This int is used to keep track of cards we have compared
	
	//We want the game to play, initialize GO=0 to GO play the game!
	initial
	begin
		pairsFound=0;
		GO=0;
	end
	
	//flip flop assigning card values (data1/data2)/memory locations(cardmem1/cardmem2)
	always_ff@(posedge clock)
	begin
		//if our state is 0, we will know we are choosing the first card
		if(A && inputState==0)
		begin
			cardmem1<=mem6x6;
			data1<=dataOut;
		end	
		//if our state is 1, we will know we are choosing the second card
		if(A && inputState==1)
		begin
			if(cardmem1!=mem6x6)
			begin
				data2<=dataOut;
				if(dataOut==data1)
				begin
					pairsFound<=pairsFound+1;
					data1<=5'b0;
				end
			end
		end
	end
	
	
	//flip flop logic for seeing if game is over
	always_ff@(posedge clock)
	if(pairsFound==18)
		GO<=1;
	
endmodule
