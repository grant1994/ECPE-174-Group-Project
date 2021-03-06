//Joseph Grant
//12/3/2014

//gridLED: a journey to learn how to use memory to display to 36 LEDs, madness.

module gridLED
(
	input clock,
	input [5:0] mem6x6, card1, card2,
	output reg LEDs[35:0]
);

reg foundLocs[35:0];
reg [5:0] cardmem1;
reg [5:0] cardmem2;

	initial
	begin
		for(i=0;i<35;i=i+1)
		begin
			LEDs[i]<=1'b0;
			foundLocs[i]<=1'b0;
		end
	end
	
	always@(posedge clock)
	begin
		cardmem1<=mem6x6;
		cardmem2<=cardmem1;
		LEDs[cardmem2]<=1'b1;
		
		if(cardmem1!=cardmem2 && !foundLocs[cardmem1])
			LEDs[cardmem1]<=1'b0;
			
		foundLocs[card1]=1'b1;
		foundLocs[card2]=1'b1;
	end
	
/*
LEDmem mem(.weA(weA), .weB(weB), .clock(clock),
	.addr_A(adrA),.addr_B(adrB),
	.dataA_in(Ain), .dataB_in(Bin),
	.dataA_out(Aout) ,.dataB_out(Bout));
*/

	/*
	//read from memory our LED grid
	always@(posedge clock)
	begin
		for(i=0;i<35;i=i+1)
		begin
			LEDs[i]<=1'b0;
		end
	end
	*/
endmodule 
