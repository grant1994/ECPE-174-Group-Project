/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

`timescale 1ns/1ns
module TB_arrowKeys();
  
	logic clock = 1'b0;

	logic[3:0] keys;
	logic[5:0] mem;
   int randKeys;
	
	arrowKeys ak(.clock(clock),.keys(keys),.mem6x6(mem));
	
	always #5 clock <= ~clock;
	/*always @(posedge clock)
	begin 
		assert(keys[0] == 1)$display("@ %0dns, pressed up arrow key memory is now %0d",$time,mem);
	
		assert(keys[1] == 1)$display("@ %0dns, pressed down arrow key memory is now %0d",$time,mem);
		
		assert(keys[2] == 1)$display("@ %0dns, pressed left arrow key memory is now %0d",$time,mem);
		
		assert(keys[3] == 1)$display("@ %0dns, pressed right arrow key memory is now %0d",$time,mem);
		
	end*/
	
	initial
	begin
		$monitor("@ %0dns, %0d key has been pressed memory is %0d . ",$time,ak.keys2,mem);
		$srandom(13);
		for(int i = 0; i < 25; i++)
			arrow();
		
		#100;	
		$stop;	
	end
	
  `include "task_arrowKeys.sv";
endmodule