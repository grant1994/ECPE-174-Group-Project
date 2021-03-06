  /* ECPE 174 - Adv. Digital Design 
	Lab # 7 : ALU
	Author : Kelvin Flores 
	Date : 10/17/2014
	Due : 10/17/2014
	
*/

/*
		Memory module 
*/
//111x135

module cards6x6( 	input logic WE_A,WE_B,clock,RE_B,
							input logic [13:0] addr_A,addr_B,
							input logic [2:0] dataIn_A,dataIn_B, 
							output logic [2:0] dataOut_A,dataOut_B);
	
	logic [2:0] ram[16383:0];
	initial $readmemb("cards6x6.txt",ram);
	
	// PORT A
	always_ff@(posedge clock)
	begin
		if(WE_A)
		begin 
			ram[addr_A] <= dataIn_A;
		end	
		
		dataOut_A <= ram[addr_A];
	end
	
	// PORT B
	always_ff@(posedge clock)
	begin
		if(WE_B)
		begin 
			ram[addr_B] <= dataIn_B;
		end
		
		if(RE_B)
			dataOut_B <= ram[addr_B];
	end

endmodule

