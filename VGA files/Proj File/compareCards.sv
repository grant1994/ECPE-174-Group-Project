/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

/*compare 2 cards - always read the input address from the memory and compare it
  if all cards are paired then return GO(game over) = 1 , otherwise return G) = 0.
  
  //If button A is pressed the data from memory is saved. If two cards are selected then
  //compare the value of the saved data.
  
*/

module compareCards (	input logic clock,A,inputState,
								input logic[5:0] mem6x6,
								output logic GO);
	//
	//some flip flops to save values when button A is pressed
	
	mem64 mr64(.clock(clock),.rAddr(rAddr),.dataOut(dataOut));
	
endmodule
						  
						  