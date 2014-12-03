  /* ECPE 174 - Adv. Digital Design 
	Lab # 7 : ALU
	Author : Kelvin Flores 
	Date : 10/17/2014
	Due : 10/17/2014
	
*/
/*Resolution 256x240*/

/*
		Memory module 
*/


module card17( input logic WE,RE,clock,
					input logic [8:0] wAddr,rAddr,
					input logic [2:0] dataIn,
					output logic [2:0] dataOut) ;	
	
	logic [2:0] ram[511:0];
	
	initial $readmemb("card17.txt",ram);
	

	always_ff@(posedge clock)
	begin
		if(WE)
		begin 
			ram[wAddr] <= dataIn;
		end
		
		dataOut <= ram[rAddr];
		
	end

endmodule

