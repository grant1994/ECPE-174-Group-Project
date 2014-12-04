  /* ECPE 174 - Adv. Digital Design 
	Lab # 7 : ALU
	Author : Kelvin Flores 
	Date : 10/17/2014
	Due : 10/17/2014
	
*/

/*
		Memory module 
*/


module dualPortMem( input logic WE_A,WE_B,clock,
					input logic [16:0] addr_B,addr_A,
					input logic [2:0] dataIn_A,dataIn_B, 
					output logic [2:0] dataOut_A,dataOut_A) ;
					
	//int foo = 100;
	
	logic [2:0] ram[131071:0];
	
	
	// PORT A
	always_ff@(posedge clock)
	begin
		if(WE_A)
		begin 
			ram[addr_A] <= dataIn_A;
		end
		if(RE)
		begin
			dataOut <= ram[addr_A];
		end
	end

endmodule

