/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

`timescale 1ns/1ns
module TB_arrowKeys();
  
	logic clock = 1'b0;
	
	logic[3:0] inputState,keys;
	logic A;
	logic[1:0] level;
	logic[5:0] mem,nextMem;
   int randKeys;
	
	arrowKeys ak(.clock(clock),.keys(keys),.mem6x6(mem),.A(A),.level(level),.inputState(inputState));
	
	assign nextMem = ak.nextMem;
	
	always #1 clock <= ~clock;
	
	
	initial
	begin
		$monitor("@ %0dns, %0d key has been pressed memory is %0d . ",$time,ak.keys2,mem);
		$srandom(13);
		
		$display("Selecting difficulty...");
		changeState(1);
		for(int i = 0; i < 25; i++)
			arrow();
		buttonA();	
		
		$display("Game running...");
		changeState(2);
		for(int i = 0; i < 25; i++)
			begin 
				arrow(); 
				#10;;
			end
		
		#100;	
		
		
		$stop;	
	end
	
  `include "task_arrowKeys.sv";
  `include "task_buttonA.sv";
endmodule