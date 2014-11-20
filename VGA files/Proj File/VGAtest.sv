/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

/*640x480*/

module VGAtest (	input logic clock,
					output logic RED,GREEN,BLUE,VGA_HSync,VGA_VSync);
	
	
	
	logic [10:0] horReg;
	logic [9:0]  verReg;
	logic horSync;
	logic verSync;
	logic [16:0] readPtr;	
	logic[2:0] dataOut;
	logic updateFrame;
	logic a,b;
	
	assign a = horReg[0]; 
	assign b = ~horReg[0];
	
	assign horMax = (horReg == 799);
	assign verMax = (verReg == 524);

	clockdiv cd(.iclk(clock),.oclk(clockOut));
	
	/*Refreshing the frame*/
	always_ff @(posedge clockOut) 
	begin
		if (horMax) 
		begin
			horReg <= 0;

			if (verMax)
				verReg <= 0;
			else
				verReg <= verReg + 1;
		end 
		else
        horReg <= horReg + 1;

	end

	always_ff @(posedge clockOut) 
	begin
		/* Generating the horizontal sync signal */
		if (horReg == 656)
			horSync <= 1;
		else if(horReg == 752)	
			horSync <= 0;

		/* Generating the vertical sync signal */
		if (verReg == 489)
			verSync <= 1;
		else if (verReg == 491)	
			verSync <= 0;

	end
	
	always_ff @(posedge clockOut)
	begin 	
		if(horReg == 192 && verReg == 120)
			readPtr <= readPtr + 1;
		else if(horReg == 449 && verReg == 361)
			readPtr <= 0;
	end
	
	always_ff@(posedge clockOut) updateFrame <= (horMax && verMax)
	//SDRAM
	memory ram(			
							.clock(clock),
							.rAddr(readPtr),
							.dataOut(dataOut));	
	
	/*assign RED = dataOut[0];
	assign GREEN = dataOut[1];
	assign BLUE = dataOut [2];*/
	
	//horizontal axis-> 192-448
	//vertical axis - 120-360
	
	always_comb
	begin
		
		if(horReg >= 192 && horReg  <= 448 && verReg >= 120 && verReg <= 360)
		begin 
			RED 	<= dataOut[0];
			GREEN <= dataOut[1];
			BLUE  <= dataOut[2];
		end	
		else
		begin 
			RED 	<= 0;
			GREEN <= 0;
			BLUE  <= 0;
		end	
		
	end
	
	

	assign VGA_HSync = ~horSync;
	assign VGA_VSync = ~verSync;
	
endmodule
						  
						  