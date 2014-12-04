/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

module draw	(	input logic clock,clock2,A,
					input logic[3:0] keys,inputState,
					input logic [5:0] mem6x6,
					input logic[10:0] horReg,
					input logic[9:0] verReg,
					output logic[2:0] rgb);
					
 parameter MAX_COL = 256; // max frame column
 parameter GAP = 5; //5 pixel
 parameter C_LENGTH = 16; // card length
 parameter C_HEIGHT = 20; // card height
 parameter  START_POS_X = 68; // first card horizontal start position
 parameter START_POS_Y = 45; // first card vertical start position 
 
 
 //Variables
 logic cd6x6_update,selected_update,last,enable;
 //update memory variable
 
 logic dpm_en,cd6x6_en,foo,dpm_re,cd6x6_re,bar,WE;
 logic [20:0] update;
 //output variables
 logic[2:0] circle_out,usc_out,cd6x6_image,sc_out,image;
 
 
 logic[16:0] dpm_addr_A,dpm_addr_B;
 logic[13:0] cd6x6_addr_A,cd6x6_addr_B;
 logic[7:0] mem_col,mem_row;//,start_pos_X,start_pos_Y;
 logic[8:0]	rAddr,wAddr,sc_addr;
 logic[2:0] counter;
 
 initial
 begin
	dpm_addr_A <= 0;
	dpm_addr_B <= 0;
	rAddr <= -1;
	mem_col <= 0;
	mem_row <= 0;
	dpm_en <= 1;
	foo <= 1;
	cd6x6_update <= 1;
	selected_update <= 1;
	counter  <= 1;
	cd6x6_en <= 1;
	cd6x6_re <= 1;
	//start_pos_X <= 65;
	//start_pos_Y <= 45;
	update <= 21'b11;
	sc_addr <= 0;
	enable <= 1;
 end
 
 
 

 
 dualPortMem dpm( 	.WE_A(WE),
							.RE_B(dpm_re),
							.clock(clock),
							.addr_A(dpm_addr_A),
							.dataIn_A(image),
							.addr_B(dpm_addr_B),
							.dataOut_B(rgb));
							
 image im(.clock(clock),.mem6x6(mem6x6),.A(A),.keys(keys),.EN(enable),.RE(WE),.col(mem_col),.row(mem_row),.image(image));
 
	//##################			update			##################
	//always_ff @(negedge update[0])update <= update << 1;
	
 
 
 
	always_ff @(posedge clock)
	begin 
		
		dpm_addr_A <= dpm_addr_A + 1;
		
		mem_col <= mem_col + 1;
		
		
		if(dpm_addr_A == 61439)
		begin 
			dpm_addr_A <= 0;
			mem_row <= 0;
			mem_col <= 0;
			rAddr <= 0;
			enable <= 0;
		end
		

		/*###calculation: (col >= (target_column_range_initial - 1) && col < (target_column_range_final - 1) 
									&& row >= (target_row_range_initial - 1) && row < (target_row_range_final - 1))*/
		
		if(mem_col == 255)
		begin 
			mem_col <= 0;
			mem_row <= mem_row + 1;
		end
		
		
		//////////////////////////////////////////////////////////////////////////////////////
	
		
	end
	
	
	
	
 
	always_ff @(posedge clock)
	begin 
		if(horReg >= 192 && horReg  < 448 && verReg >= 135 && verReg < 375)
			dpm_re <= 1;
		else dpm_re <= 0;	
		dpm_addr_B = (verReg - 135)*256 + (horReg - 192);	
	end

	
endmodule
						  
						  