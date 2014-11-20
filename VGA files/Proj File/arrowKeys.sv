/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

module arrowKeys (	input logic clock,
						  input logic[3:0] keys,
						  output logic [5:0] mem6x6 );
	
	parameter MAXCOL = 6;
	//parameter MAXROW = 6;
	
	logic[5:0] currentMem,nextMem;
	logic[3:0] keys1,keys2;
	
	
	/*assign keys0[0] = up;
	assign keys0[1] = down;
	assign keys0[2] = left;
	assign keys0[3] = right;*/
	
	assign mem6x6 = nextMem;
	
	initial
	begin
		currentMem <= 0;
		
	end
	
	always_ff @(posedge clock)
	begin 
		keys1 <= keys;
		keys2 <= keys1;
		currentMem <= nextMem;
	end
	
	always_comb
	begin 
		case(keys2)
		4'b0001: //up
		begin 
			if(currentMem < 6)
				nextMem <= currentMem;
			else
				nextMem <= currentMem - MAXCOL;
		end
		4'b0010: //down
		begin 
			if(currentMem > 29 && currentMem < 36)
				nextMem <= currentMem;
			else
				nextMem <= currentMem + MAXCOL;
		end
		4'b0100:	//left
		begin 
			if(currentMem == 0)
				nextMem <= currentMem;
			else
				nextMem <= currentMem - 1;
		end
		4'b1000:	//right
		begin 
			if(currentMem == 35)
				nextMem <= currentMem;
			else
				nextMem <= currentMem + 1;
		end
		default: nextMem <= currentMem;
		endcase
	end
endmodule
						  
						  