/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

/*640x480*/

module VGAtest (	input logic clock,
					output logic VGA_R,VGA_G,VGA_B,VGA_HSync,VGA_VSync);
	
	
	logic R,G,B;
	logic [10:0] horReg;
	logic [9:0]  verReg;
	logic horSync;
	logic verSync;
	logic [16:0] readPtr;	
	logic[16:0] dpm_addr_A,dpm_addr_B;
	logic[2:0] dataOut;
	logic updateFrame;
	logic a,b,en;
	logic [2:0] circle_out,drawRGB;
	logic[8:0]	rAddr,wAddr;
	logic inDisplayArea;
	logic [9:0] CounterX,border;
	logic [8:0] CounterY;
	

	assign horMax = (horReg == 799);
	assign verMax = (verReg == 524);
	
	
	
  
  
	clockdiv cd(.iclk(clock),.oclk(clockOut));
	draw dw(.clock(clock),.horReg(CounterX),.verReg(CounterY),.rgb(drawRGB));
	
	hvsync_generator syncgen(.clk(clockOut), .vga_h_sync(VGA_HSync), .vga_v_sync(VGA_VSync), 
  .inDisplayArea(inDisplayArea), .CounterX(CounterX), .CounterY(CounterY));
	
	
	//horizontal axis-> 192-448
	//vertical axis - 120-360
	
	
	always_ff @(posedge clockOut)
	begin 
		VGA_R <= R & inDisplayArea;
		VGA_G <= G & inDisplayArea;
		VGA_B <= B & inDisplayArea;
	end

	assign border = (CounterX[9:3]==0) || (CounterX[9:3]==79) || (CounterY[8:3]==0) || (CounterY[8:3]==59);
	
	
	assign R = (CounterX >= 192 && CounterX  < 448 && CounterY >= 135 && CounterY < 375) && drawRGB[0] ;
	assign G = (CounterX >= 192 && CounterX  < 448 && CounterY >= 135 && CounterY < 375) && drawRGB[1] ;
	assign B = (CounterX >= 192 && CounterX  < 448 && CounterY >= 135 && CounterY < 375) && drawRGB[2] ;
	
	
endmodule
						  
						  