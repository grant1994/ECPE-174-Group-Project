/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

/*320x240*/

module VGAtest (	input logic clock,
					output logic RED,GREEN,BLUE,VGA_HSync,VGA_VSync);
	
	//parameter WIDTH_SIZE = 320;
	//parameter HEIGHT_SIZE = 240;
	
	logic [10:0] horReg;
	logic [9:0]  verReg;
	logic horSync;
	logic verSync;
	logic [16:0] readPtr;	
	logic[2:0] dataOut;
	logic a,b;
	
	assign a = horReg[0]; 
	assign b = ~horReg[0];
	
	assign horMax = (horReg == 799);
	assign verMax = (verReg == 525);

	
	/*Refreshing the frame*/
	always_ff @(posedge clock) 
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

	always_ff @(posedge clock) 
	begin
    /* Generating the horizontal sync signal */
    if (horReg < 95)
        horSync <= 1;
    else
        horSync <= 0;

    /* Generating the vertical sync signal */
    if (verReg < 1)
        verSync <= 1;
    else
        verSync <= 0;

	end
	
	always_ff @(posedge a)
	begin 	
		if(horReg == 50)
			readPtr <= 0;
		else
			readPtr <= readPtr + 1;
	end
	
	//SDRAM
	/*memory ram(			
							.clock(clock),
							.rAddr(readPtr),
							.dataOut(dataOut));	*/
	
	/*assign RED = dataOut[0];
	assign GREEN = dataOut[1];
	assign BLUE = dataOut [2];*/
	
	always_comb
	begin
		
		if(horReg > 300 && horReg  < 320 && verReg > 200 && verReg < 220)
		begin 
			RED 	<= 1;
			GREEN <= 1;
			BLUE  <= 1;
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
						  
						  