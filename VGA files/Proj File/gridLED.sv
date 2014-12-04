//Joseph Grant
//12/3/2014

//gridLED: a journey to learn how to use memory to display to 36 LEDs, madness.

module gridLED
(
	input logic clock,A,FP,
	input logic [5:0] mem6x6, card1, card2, selectedCard,
	input logic [4:0] data1,data2,
	output logic [35:0] LEDs
);

logic saveCards,clockOut,enableCounter;
logic [4:0] counter;
logic [35:0] memPosition,foundLocs,card1LED,card2LED;
logic [5:0] cardmem1;
logic [5:0] cardmem2;

integer i;

	initial
	begin 
		card1LED <= 0;
		card2LED <= 0;
		saveCards <= 0;
		memPosition <=1;
		foundLocs <= 0;
		
	end
	
	clockdiv cd1(.iclk(clock),.oclk(clockOut));
	
	always_ff @(posedge clockOut)
	begin 
		
		if(|card2LED)
		begin 
			counter <= counter + 1;
		end
		if(counter == 3)
			counter <= 0;
	end
	
	
	always_ff @(posedge clock)
	begin
		case(mem6x6)
			
		0:
		begin 
			memPosition[0] <= 1;
			memPosition[35:1] <= 0;
		end
		1:
		begin 
			memPosition[0] <= 0;
			memPosition[1] <= 1;
			memPosition[35:2] <= 0;
		end
		2:
		begin
			memPosition[1:0] <= 0;
			memPosition[2] <= 1;
			memPosition[35:3] <= 0;
		end
		3:
		begin
			memPosition[2:0] <= 0;
			memPosition[3] <= 1;
			memPosition[35:4] <= 0;
		end
		4:
		begin
			memPosition[3:0] <= 0;
			memPosition[4] <= 1;
			memPosition[35:5] <= 0;
		end
		5:
		begin
			memPosition[4:0] <= 0;
			memPosition[5] <= 1;
			memPosition[35:6] <= 0;
		end
		6:
		begin
			memPosition[5:0] <= 0;
			memPosition[6] <= 1;
			memPosition[35:7] <= 0;
		end
		7:
		begin
			memPosition[6:0] <= 0;
			memPosition[7] <= 1;
			memPosition[35:8] <= 0;
		end
		8:
		begin
			memPosition[7:0] <= 0;
			memPosition[8] <= 1;
			memPosition[35:9] <= 0;
		end
		9:
		begin
			memPosition[8:0] <= 0;
			memPosition[9] <= 1;
			memPosition[35:10] <= 0;
		end
		10:
		begin
			memPosition[9:0] <= 0;
			memPosition[10] <= 1;
			memPosition[35:11] <= 0;
		end
		11:
		begin
			memPosition[10:0] <= 0;
			memPosition[11] <= 1;
			memPosition[35:12] <= 0;
		end
		12:
		begin
			memPosition[11:0] <= 0;
			memPosition[12] <= 1;
			memPosition[35:13] <= 0;
		end
		13:
		begin
			memPosition[12:0] <= 0;
			memPosition[13] <= 1;
			memPosition[35:14] <= 0;
		end
		14:
		begin
			memPosition[13:0] <= 0;
			memPosition[14] <= 1;
			memPosition[35:15] <= 0;
		end
		15:
		begin
			memPosition[14:0] <= 0;
			memPosition[15] <= 1;
			memPosition[35:16] <= 0;
		end
		16:
		begin
			memPosition[15:0] <= 0;
			memPosition[16] <= 1;
			memPosition[35:17] <= 0;
		end
		17:
		begin
			memPosition[16:0] <= 0;
			memPosition[17] <= 1;
			memPosition[35:18] <= 0;
		end
		18:
		begin
			memPosition[17:0] <= 0;
			memPosition[18] <= 1;
			memPosition[35:19] <= 0;
		end
		19:
		begin
			memPosition[18:0] <= 0;
			memPosition[19] <= 1;
			memPosition[35:20] <= 0;
		end
		20:
		begin
			memPosition[19:0] <= 0;
			memPosition[20] <= 1;
			memPosition[35:21] <= 0;
		end
		21:
		begin
			memPosition[20:0] <= 0;
			memPosition[21] <= 1;
			memPosition[35:22] <= 0;
		end
		22:
		begin
			memPosition[21:0] <= 0;
			memPosition[22] <= 1;
			memPosition[35:23] <= 0;
		end
		23:
		begin
			memPosition[22:0] <= 0;
			memPosition[23] <= 1;
			memPosition[35:24] <= 0;
		end
		24:
		begin
			memPosition[23:0] <= 0;
			memPosition[24] <= 1;
			memPosition[35:25] <= 0;
		end
		25:
		begin
			memPosition[24:0] <= 0;
			memPosition[25] <= 1;
			memPosition[35:26] <= 0;
		end
		26:
		begin
			memPosition[25:0] <= 0;
			memPosition[26] <= 1;
			memPosition[35:27] <= 0;
		end
		27:
		begin
			memPosition[26:0] <= 0;
			memPosition[27] <= 1;
			memPosition[35:28] <= 0;
		end
		28:
		begin
			memPosition[27:0] <= 0;
			memPosition[28] <= 1;
			memPosition[35:29] <= 0;
		end
		29:
		begin
			memPosition[28:0] <= 0;
			memPosition[29] <= 1;
			memPosition[35:30] <= 0;
		end
		30:
		begin
			memPosition[29:0] <= 0;
			memPosition[30] <= 1;
			memPosition[35:31] <= 0;
		end
		31:
		begin
			memPosition[30:0] <= 0;
			memPosition[31] <= 1;
			memPosition[35:32] <= 0;
		end
		32:
		begin
			memPosition[31:0] <= 0;
			memPosition[32] <= 1;
			memPosition[35:33] <= 0;
		end
		33:
		begin
			memPosition[32:0] <= 0;
			memPosition[33] <= 1;
			memPosition[35:34] <= 0;
		end
		34:
		begin
			memPosition[33:0] <= 0;
			memPosition[34] <= 1;
			memPosition[35] <= 0;
		end
		35:
		begin
			memPosition[34:0] <= 0;
			memPosition[35] <= 1;
		end
		default: memPosition <= 0;	
	endcase
	
	
		
		
		
		if(A && ~|card2LED)
		begin
			card1LED <= memPosition;
			saveCards <= 1;
		end
			
			
		if(A && |card1LED)	
		begin 
			card2LED <= memPosition;
			
		end
			
		if(counter == 2)
		begin 
			card1LED <= 0;
			card2LED <= 0;
		end
		
		
	
		if(!FP)	
			begin
				
				//if(!saveCards)
				//begin 
					foundLocs[0] <= foundLocs[0] || card1LED[0] || card2LED[0];
					foundLocs[1] <= foundLocs[1] || card1LED[1] || card2LED[1];
					foundLocs[2] <= foundLocs[2] || card1LED[2] || card2LED[2];
					foundLocs[3] <= foundLocs[3] || card1LED[3] || card2LED[3];
					foundLocs[4] <= foundLocs[4] || card1LED[4] || card2LED[4];
					foundLocs[5] <= foundLocs[5] || card1LED[5] || card2LED[5];
					foundLocs[6] <= foundLocs[6] || card1LED[6] || card2LED[6];
					foundLocs[7] <= foundLocs[7] || card1LED[7] || card2LED[7];
					foundLocs[8] <= foundLocs[8] || card1LED[8] || card2LED[8];
					foundLocs[9] <= foundLocs[9] || card1LED[9] || card2LED[9];
					foundLocs[10] <= foundLocs[10] || card1LED[10] || card2LED[10];
					foundLocs[11] <= foundLocs[11] || card1LED[11] || card2LED[11];
					foundLocs[12] <= foundLocs[12] || card1LED[12] || card2LED[12];
					foundLocs[13] <= foundLocs[13] || card1LED[13] || card2LED[13];
					foundLocs[14] <= foundLocs[14] || card1LED[14] || card2LED[14];
					foundLocs[15] <= foundLocs[15] || card1LED[15] || card2LED[15];
					foundLocs[16] <= foundLocs[16] || card1LED[16] || card2LED[16];
					foundLocs[17] <= foundLocs[17] || card1LED[17] || card2LED[17];
					foundLocs[18] <= foundLocs[18] || card1LED[18] || card2LED[18];
					foundLocs[19] <= foundLocs[19] || card1LED[19] || card2LED[19];
					foundLocs[20] <= foundLocs[20] || card1LED[20] || card2LED[20];
					foundLocs[21] <= foundLocs[21] || card1LED[21] || card2LED[21];
					foundLocs[22] <= foundLocs[22] || card1LED[22] || card2LED[22];
					foundLocs[23] <= foundLocs[23] || card1LED[23] || card2LED[23];
					foundLocs[24] <= foundLocs[24] || card1LED[24] || card2LED[24];
					foundLocs[25] <= foundLocs[25] || card1LED[25] || card2LED[25];
					foundLocs[26] <= foundLocs[26] || card1LED[26] || card2LED[26];
					foundLocs[27] <= foundLocs[27] || card1LED[27] || card2LED[27];
					foundLocs[28] <= foundLocs[28] || card1LED[28] || card2LED[28];
					foundLocs[29] <= foundLocs[29] || card1LED[29] || card2LED[29];
					foundLocs[30] <= foundLocs[30] || card1LED[30] || card2LED[30];
					foundLocs[31] <= foundLocs[31] || card1LED[31] || card2LED[31];
					foundLocs[32] <= foundLocs[32] || card1LED[32] || card2LED[32];
					foundLocs[33] <= foundLocs[33] || card1LED[33] || card2LED[33];
					foundLocs[34] <= foundLocs[34] || card1LED[34] || card2LED[34];
					foundLocs[35] <= foundLocs[35] || card1LED[35] || card2LED[35];
					//saveCards <= 1;
				//end
				
				
			end
	
		/*if(FP && saveCards)
		begin 
			card1LED <= 0;
			card2LED <= 0;
			saveCards <= 0;
		end	*/
		
		
		LEDs[0] <= memPosition[0] || foundLocs[0];
		LEDs[1] <= memPosition[1] || foundLocs[1];
		LEDs[2] <= memPosition[2] || foundLocs[2];
		LEDs[3] <= memPosition[3] || foundLocs[3];
		LEDs[4] <= memPosition[4] || foundLocs[4];
		LEDs[5] <= memPosition[5] || foundLocs[5];
		LEDs[6] <= memPosition[6] || foundLocs[6];
		LEDs[7] <= memPosition[7] || foundLocs[7];
		LEDs[8] <= memPosition[8] || foundLocs[8];
		LEDs[9] <= memPosition[9] || foundLocs[9];
		LEDs[10] <= memPosition[10] || foundLocs[10];
		LEDs[11] <= memPosition[11] || foundLocs[11];
		LEDs[12] <= memPosition[12] || foundLocs[12];
		LEDs[13] <= memPosition[13] || foundLocs[13];
		LEDs[14] <= memPosition[14] || foundLocs[14];
		LEDs[15] <= memPosition[15] || foundLocs[15];
		LEDs[16] <= memPosition[16] || foundLocs[16];
		LEDs[17] <= memPosition[17] || foundLocs[17];
		LEDs[18] <= memPosition[18] || foundLocs[18];
		LEDs[19] <= memPosition[19] || foundLocs[19];
		LEDs[20] <= memPosition[20] || foundLocs[20];
		LEDs[21] <= memPosition[21] || foundLocs[21];
		LEDs[22] <= memPosition[22] || foundLocs[22];
		LEDs[23] <= memPosition[23] || foundLocs[23];
		LEDs[24] <= memPosition[24] || foundLocs[24];
		LEDs[25] <= memPosition[25] || foundLocs[25];
		LEDs[26] <= memPosition[26] || foundLocs[26];
		LEDs[27] <= memPosition[27] || foundLocs[27];
		LEDs[28] <= memPosition[28] || foundLocs[28];
		LEDs[29] <= memPosition[29] || foundLocs[29];
		LEDs[30] <= memPosition[30] || foundLocs[30];
		LEDs[31] <= memPosition[31] || foundLocs[31];
		LEDs[32] <= memPosition[32] || foundLocs[32];
		LEDs[33] <= memPosition[33] || foundLocs[33];
		LEDs[34] <= memPosition[34] || foundLocs[34];
		LEDs[35] <= memPosition[35] || foundLocs[35];
		
	end
	
	
	

	/*initial
	begin
		for(i=0;i<36;i=i+1)
		begin
			LEDs[i]<=1'b0;
			foundLocs[i]<=1'b0;
		end
	end*/
	
	/*always_ff@(posedge clock)
	begin
		cardmem1<=mem6x6;
		cardmem2<=cardmem1;
		
		LEDs<=foundLocs;
		LEDs[cardmem2]<=1'b1;
		LEDs[selectedCard]<=1'b1;
		
		if(cardmem1!=cardmem2 && !foundLocs[cardmem2])
			LEDs[cardmem2]<=1'b0;
			
		foundLocs[card1]=1'b1;
		foundLocs[card2]=1'b1;
	end
	*/
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

	