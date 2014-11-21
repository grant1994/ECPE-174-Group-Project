//Karla P. Duran
//FSM for game control and synchronizers put together
//Date: 11/20/2014

module topfsm (input logic clk, input logic GO, input logic startButton, output logic [2:0]outputState);
						
//We need two internal signals for the flip flops
logic flipStart;

//Then we create an object of type flipflop
flipflop box1(.clk(clk), .A(startButton), .stableA(flipStart));		

//Then we create an object of type fsm, where the synchronized inputs are fed
fsm box2(.clk(clk),.GO(GO),.startButton(flipStart),.outputState(outputState));
				
endmodule						
