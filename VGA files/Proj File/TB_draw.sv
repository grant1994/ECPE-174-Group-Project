/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

`timescale 1ns/1ns
module  TB_draw();
  
	logic clock = 1'b0;
	logic clock2 = 1'b1;
	
	always #3 clock <= ~clock;
	always #1 clock2 <= ~clock2;
	
	logic en;
	logic[2:0] circle_out;
	logic[16:0] dpm_addr_A,dpm_addr_B;
	logic[7:0] mem_col,mem_row;
	logic[8:0]	rAddr,wAddr;
	logic[2:0] rgb,rgb2;
	
	draw dw(.clock(clock),.clock2(clock2),.rgb(rgb));
	
	assign dpm_addr_A = dw.dpm_addr_A;
	assign mem_col = dw.mem_col;
	assign mem_row = dw.mem_row;
	assign circle_out = dw.circle_out;
	assign rAddr = dw.rAddr;
	assign en = dw.en;
	assign dpm_addr_B = dw.dpm_addr_B;
	assign rgb2 = dw.rgb2;
	
	initial
	begin
		
		
		
	end

  
endmodule