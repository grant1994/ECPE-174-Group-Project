/*******************************************************
							Joseph Grant
						Testbench or playGame
							  12/2/2014
how to playgame?
module connecting compareCards-FSM-arrowKeys-draw-synchronizer
********************************************************/
module playGame
(
	input logic clock,A,
	input logic [3:0] keys,
	output logic [2:0] rgb
);

wire [2:0] state;
wire syncA;
wire GO=0;
wire [5:0] mem6x6;
wire [1:0] level;

synch syncMod(.a(A),.clk(clock),.rise_a(syncA));
fsm fsmMod(.clk(clock),.GO(GO),.startButton(syncA),.outputState(state));
arrowKeys arrowMod(.clk(clock),.A(syncA),.keys(keys),.inputState(state),.mem6x6(mem6x6),.level(level));	
compareCards compMod(.clk(clock),.A(syncA),.inputState(state),.mem6x6(mem6x6),.GO(GO));	
draw drawMod(.clk(clock),.A(syncA),.keys(keys),.inputState(state),.rgb(rgb));	
//might use ssegement here

endmodule 