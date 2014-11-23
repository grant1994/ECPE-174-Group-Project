/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

`timescale 1ns/1ns
module  TB_draw();
  
	logic clock = 1'b0;

	always #5 clock <= ~clock;
	
	logic[2:0] circle_out;
	logic[16:0] dpm_addr_A;
	logic[7:0] mem_col,mem_row;
	logic[8:0]	rAddr,wAddr;
	
	draw dw(.clock(clock));
	
	assign dpm_addr_A = dw.dpm_addr_A;
	assign mem_col = dw.mem_col;
	assign mem_row = dw.mem_row;
	
	initial
	begin
		
		
		
	end

  
endmodule