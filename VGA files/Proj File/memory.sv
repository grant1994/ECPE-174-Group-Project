  /* ECPE 174 - Adv. Digital Design 
	Lab # 7 : ALU
	Author : Kelvin Flores 
	Date : 10/17/2014
	Due : 10/17/2014
	
*/

/*
		Memory module 
*/


module memory( input logic WE,RE,clock,
					input logic [16:0] wAddr,
					input logic [16:0] rAddr,
					input logic [2:0] dataIn, 
					output logic [2:0] dataOut) ;
					
	//int foo = 100;
	
	logic [2:0] ram[131071:0];
	
	/*initial
	begin 
		for(int i = 0; i < 50; i++)
		begin 
			if(i%2)
				ram[i] = 3'b010;	
			else	
				ram[i] = 3'b100;
		end
			
	end*/
	

	always_ff@(posedge clock)
	begin
		if(WE)
		begin 
			ram[wAddr] <= dataIn;
		end
		if(RE)
		begin
			dataOut <= ram[rAddr];
		end
	end

endmodule

