/*******************************************************
							Joseph Grant
						Testbench or playGame
							  12/2/2014
how to testbench?
********************************************************/

`timescale 1ns/1ns
module playGameTets();
  
	logic clock = 1'b0;

	always #50 clock <= ~clock;
	
	
	
  initial
  begin

     
  end

  
endmodule
