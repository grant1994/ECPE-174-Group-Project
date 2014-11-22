 /* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

`timescale 1ns/1ns
module TB_mem64();
  
	logic clock = 1'b0;

	logic [5:0] rAddr;
	logic [4:0] dataOut;
	
	always #5 clock <= ~clock;
	
	mem64 mr(.clock(clock),.rAddr(rAddr),.dataOut(dataOut));
	
	initial
	begin
		$monitor("%b",dataOut);
		@(posedge clock)
		rAddr <= 0;
	
		 for(int i = 0; i < 64 ; i++) 
		 begin 
			readAddress();
		 end
		 
		 $stop;
	end

	task readAddress();
		#10;
		@(posedge clock)
		rAddr <= rAddr + 1;	
	endtask
  
endmodule