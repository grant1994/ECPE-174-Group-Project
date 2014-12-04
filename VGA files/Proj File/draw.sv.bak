/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

module draw	(	input logic clock,A,
					input logic[3:0] keys,inputState,
					output logic[2:0] rgb);
					
 parameter MAX_COL = 256; // max frame column
 
 logic[2:0] circle_out;
 logic[16:0] dpm_addr_A;
 logic[7:0] mem_col,mem_row;
 logic[8:0]	rAddr,wAddr;
 
 initial
 begin
	dpm_addr_A <= 0;
	rAddr <= 0;
	mem_col <= 0;
	mem_row <= 0;
 end
 
 circle circle_1( .clock(clock),
						.rAddr(rAddr),
						.dataOut(circle_out)) ;	
 
 dualPortMem dpm( 	.WE_A(1),
							.clock(clock),
							.addr_A(dpm_addr_A),
							.dataIn_A(circle_out),
							.dataOut_B(rgb));
					
 //always_ff @(posedge dpm_addr_A[0])rAddr <= rAddr + 1;
 //always_ff @(negedge dpm_addr_A[0])rAddr <= rAddr + 1;	
	always_ff @(posedge clock)
	begin 
		dpm_addr_A <= dpm_addr_A + 1;
		mem_col <= mem_col + 1;
		
		if(dpm_addr_A == 61439)
		begin 
			dpm_addr_A <= 0;
			mem_row <= 0;
		end
		
	end
	
	always_ff @(posedge clock)
	begin 
		
		/*if(dpm_addr_A != 0 && !(dpm_addr_A%256))
			mem_col <= 0;*/
	
	end
	
	always_ff @(posedge clock)
	begin 
		if(mem_col == 255)
		begin 
			mem_col <= 0;
			mem_row <= mem_row + 1;
		end
	end
	
	
	
	/*always_comb
	begin 
		if(dpm_addr_A >= 79 && dpm_addr_A- 9)
	
	end
 always_comb
	begin
	if(dpm_addr_A >= 0 && dpm_addr_A <= )	
	end*/
 
	
	
endmodule
						  
						  