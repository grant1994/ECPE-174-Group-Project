 /* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

`timescale 1ns/1ns
module TB_dpm();
  
	logic clock = 1'b0;
	logic clock2 = 1'b1;
	

	logic [16:0] dpm_addr_A,rAddr;
	logic [2:0] rgb;
	
	always #3 clock <= ~clock;
	always #1 clock2 <= ~clock2;
	 
 dualPortMem dpm( 	
							.clock(clock2),
							.addr_A(dpm_addr_A),
							.addr_B(rAddr),
							.dataOut_B(rgb));
	
	
	
	initial
	begin
		$monitor("%b",rgb);
		@(posedge clock)
		rAddr <= 0;
	
		 for(int i = 0; i < 64 ; i++) 
		 begin 
			readAddress();
		 end
		 
		 $stop;
	end

	task readAddress();
		
		@(posedge clock)
		rAddr <= rAddr + 1;	
	endtask
  
endmodule