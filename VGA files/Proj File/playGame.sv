/*******************************************************
					Joseph Grant and Kelvin Flores
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
	output wire [6:0] seg1, seg2, seg3, seg4, seg5, seg6,
	output logic [35:0] LEDs,
	output logic VGA_R,VGA_G,VGA_B,VGA_HSync,VGA_VSync
);

wire [2:0] state;
wire syncA;
wire GO;
wire [5:0] mem6x6;
wire [1:0] level;
wire [4:0] cardData1, cardData2;
wire [5:0] card1Loc, card2Loc, selectedCard;

synch syncMod(.a(A),.clk(clock),.rise_a(syncA));
fsm fsmMod(.clk(clock),.GO(GO),.startButton(syncA),.outputState(state));
arrowKeys arrowMod(.clock(clock),.A(syncA),.keys(keys),.inputState(state),.mem6x6(mem6x6),.level(level));
	
compareCards compMod(.clock(clock),.A(syncA),.inputState(state),.mem6x6(mem6x6),.GO(GO),.card1Loc(card1Loc)
,.card2Loc(card2Loc),.selectedCard(selectedCard));	

draw drawMod(.clock(clock),.A(syncA),.keys(keys),.inputState(state),.rgb(rgb));	

gridLED ledMod(.clock(clock),.mem6x6(mem6x6),.card1(card1Loc), 
.card2(card2Loc), .selectedCard(selectedCard),.LEDs(LEDs));

//might use ssegement here

//This information displayed visually through LED grid
//ssegment segMod1(.seg1(seg1),.seg2(seg2),.data_in(mem6x6));

ssegment segMod2(.seg1(seg3),.seg2(seg4),.data_in(cardData1));
ssegment segMod3(.seg1(seg5),.seg2(seg6),.data_in(cardData2));

	
	logic R,G,B;
	logic [10:0] horReg;
	logic [9:0]  verReg;
	logic horSync;
	logic verSync;
	logic [16:0] readPtr;	
	logic[16:0] dpm_addr_A,dpm_addr_B;
	logic[2:0] dataOut;
	logic updateFrame;
	logic a,b,en;
	logic [2:0] circle_out,drawRGB;
	logic[8:0]	rAddr,wAddr;
	logic inDisplayArea;
	logic [9:0] CounterX,border;
	logic [8:0] CounterY;
	

	assign horMax = (horReg == 799);
	assign verMax = (verReg == 524);
	
	clockdiv cd(.iclk(clock),.oclk(clockOut));
	draw dw(.clock(clock),.horReg(CounterX),.verReg(CounterY),.rgb(drawRGB));
	
	hvsync_generator syncgen(.clk(clockOut), .vga_h_sync(VGA_HSync), .vga_v_sync(VGA_VSync), 
  .inDisplayArea(inDisplayArea), .CounterX(CounterX), .CounterY(CounterY));
	
	
	//horizontal axis-> 192-448
	//vertical axis - 120-360

	always_ff @(posedge clockOut)
	begin 
		VGA_R <= R & inDisplayArea;
		VGA_G <= G & inDisplayArea;
		VGA_B <= B & inDisplayArea;
	end

	assign border = (CounterX[9:3]==0) || (CounterX[9:3]==79) || (CounterY[8:3]==0) || (CounterY[8:3]==59);
	
	assign R = (CounterX >= 192 && CounterX  < 448 && CounterY >= 135 && CounterY < 375) && drawRGB[0] ;
	assign G = (CounterX >= 192 && CounterX  < 448 && CounterY >= 135 && CounterY < 375) && drawRGB[1] ;
	assign B = (CounterX >= 192 && CounterX  < 448 && CounterY >= 135 && CounterY < 375) && drawRGB[2] ;
	
endmodule 