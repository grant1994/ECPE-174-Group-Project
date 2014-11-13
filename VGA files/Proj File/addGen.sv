/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

module addGen(		input logic clock,
						input logic[10:0] horReg,
						input logic[9:0] verReg,
						output logic[16:0] vgaAdd);
	parameter hFront = 111;		//start of visible horizontal @front porch
	parameter hBack = 751;		//end of visible horizontal @back porch
	parameter yFront = 11;		//start of visible vertical @front porch
	parameter yBack = 491;		//end of visible vertical @back porch
	
	always_comb
	begin
		if(verReg > yVis )
			if(horReg > hVis)
				vgaAdd <= (verReg-yVis)*640 + (horReg - hVis);
				
	end
	
	
	
	
endmodule
						  
						  