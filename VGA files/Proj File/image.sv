/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

module image 		 (input logic clock,EN,A,
						  input logic[3:0] keys,	
						  input logic[7:0] col,row,
						  input logic [5:0] mem6x6,
						 // input logic[13:0] addr,
						  output logic[2:0] image,
						  output logic RE);
	//Variables
	logic [20:0] readenable,update;
	logic[3:0] keys1,keys2;
	logic[7:0] X,Y;
	
	//Addresses
	logic[8:0] cr1_addr,cr2_addr,sc_addr;
	logic[13:0] cd6x6_addr_A,cd6x6_addr_B;
	
	//data outputs
	logic[2:0] cd6x6_image,sc_out,cr1_out,cr2_out;	
	
	
	

	initial
	begin
		sc_addr <= -1;
		cr1_addr <= 0;
		cr2_addr <= 0;
		update <= 21'b0011;
		X <= 60;
		Y <= 53;

	end			
	
	cards6x6 cd6x6	  (.WE_A(),
							.RE_B(readenable[0]),
							.clock(clock),
							.addr_A(cd6x6_addr_A),
							//.dataIn_A(),
							.addr_B(cd6x6_addr_B),
							.dataOut_B(cd6x6_image));
							
	selectedcard sc(     .clock(clock),
								.RE(readenable[1]),
								.rAddr(sc_addr),
								.dataOut(sc_out));						
	
	card1 cr1	 (    .clock(clock),
							.RE(readenable[2]),
							.rAddr(cr1_addr),
							.dataOut(cr1_out));	
							
	card2 cr2	 (    .clock(clock),
							.RE(readenable[3]),
							.rAddr(cr2_addr),
							.dataOut(cr2_out));	
	
	always_ff @(posedge clock)
	begin 
		keys1 <= keys;
		keys2 <= keys1;
	end
	
	always_ff @(posedge clock)
	begin 
		
		case(mem6x6)
			0: 
			begin 
				X <= 60;
				Y <= 53;
			end
			1:
			begin 
				X <= 79;
				Y <= 53;
			end
			2:
			begin 
				X <= 98;
				Y <= 53;
			end
			default:
			begin 
				X <= 60;
				Y <= 53;
			end
		endcase	
		
	end
	
 	always_ff @(posedge clock)
	begin 
		
		if(EN)
		begin 	
			
			//##################			cd6x6			##################
			if(col >= 60 && col < 171 && row >= 53 && row < 188 && update[0])
			begin 
				cd6x6_addr_B <= cd6x6_addr_B + 1;
				readenable[0] <= 1;
				if(~|readenable[20:1])
					image <= cd6x6_image;
			end		
			else
				readenable[0] <= 0;
				
			if(cd6x6_addr_B == 14984)
			begin 
				cd6x6_addr_B <= 0;
				update[0] <= 0; 
				//update <= update << 1;
			end
			
			
			//##################			selectedcard			##################
			if(col >= X && col < X + 16 && row >= Y && row < Y + 20 && update[1])
			begin 
				sc_addr <= sc_addr + 1;
				readenable[1] <= 1;
				image <= sc_out;
			end		
			else
				readenable[1] <= 0;
				
			if(sc_addr == 319)
			begin 
				sc_addr <= 0;
				update[1] <= 0;
			end
				
			
			
		
			//##################			card1			##################
			if(col >= 60 && col < 76 && row >= 53 && row < 73 && update[2])
			begin 
				cr1_addr <= cr1_addr + 1;
				readenable[2] <= 1;
				image <= cr1_out;
			end		
			else
				readenable[2] <= 0;
				
			if(cr1_addr == 319)
			begin 
				cr1_addr <= 0;
				update[2] <= 0;
			end
				
				
			
			//##################			card2			##################
			if(col >= 79 && col < 95 && row >= 53 && row < 73 && update[3])
			begin 
				cr2_addr <= cr2_addr + 1;
				readenable[3] <= 1;
				image <= cr2_out;
			end		
			else
				readenable[3] <= 0;
	
		
			if(cr2_addr == 319)
			begin 
				cr2_addr <= 0;
				update[3] <= 0;
			end
		
	
			if(col == 255 && row == 239)
				update <= 0;
	
			//!(~|update) ||
	
			if( |keys2 || A)
				update <= 21'b0011;
				//update <= 21'h1FFFFF;
		end
		
		
		
		
	end	
	
	always_comb
	begin 
		
		/*if(col >= 60 && col < 76 && row >= 53 && row < 73)
			image <= cr1_out;
		else if(col >= 79 && col < 95 && row >= 53 && row < 73)
			image <= cr2_out;
		else 
			image <= 0;*/
	end
	
	assign RE = | readenable;
	
	
endmodule
						  
						  