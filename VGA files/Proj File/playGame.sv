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
	output logic [2:0] rgb,
	output wire [6:0] seg1, seg2, seg3, seg4, seg5, seg6
);

wire [2:0] state;
wire syncA;
wire GO;
wire [5:0] mem6x6;
wire [1:0] level;
wire [4:0] cardData1, cardData2;

synch syncMod(.a(A),.clk(clock),.rise_a(syncA));
fsm fsmMod(.clk(clock),.GO(GO),.startButton(syncA),.outputState(state));
arrowKeys arrowMod(.clock(clock),.A(syncA),.keys(keys),.inputState(state),.mem6x6(mem6x6),.level(level));	
compareCards compMod(.clock(clock),.A(syncA),.inputState(state),.mem6x6(mem6x6),.GO(GO));	
draw drawMod(.clock(clock),.A(syncA),.keys(keys),.inputState(state),.rgb(rgb));	
//might use ssegement here

//This information displayed visually through LED grid
//ssegment segMod1(.seg1(seg1),.seg2(seg2),.data_in(mem6x6));

ssegment segMod2(.seg1(seg3),.seg2(seg4),.data_in(cardData1));
ssegment segMod3(.seg1(seg5),.seg2(seg6),.data_in(cardData2));



endmodule 