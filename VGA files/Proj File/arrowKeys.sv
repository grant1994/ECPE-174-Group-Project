/* ECPE 174 - Adv. Digital Design 
	Lab #  : 
	Author : Kelvin Flores 
	Date : 
	Due :  
	
*/

module arrowKeys (  input logic clock,A,
						  input logic[3:0] keys,
						  input logic[2:0] inputState,
						  output logic [5:0] mem6x6,
						  output logic [1:0] level);
	
	parameter MAXCOL = 6;
	//parameter MAXROW = 6;
	
	logic[5:0] currentMem,nextMem;
	logic[3:0] keys1,keys2;
	logic[1:0] lvl; // level temporary value
	logic en;	
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
	
	always_ff @(posedge clock)
	begin 
		if(A && en)
		begin 
			level <= lvl;
		end
			
			
	end
	
	always_comb
	begin 
		if(inputState == 2)
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
		else
		begin 
			nextMem <= 0;
		end
		
	end	
	
	always_comb
	begin 
		if(inputState == 1)
		begin
			en <= 1;
			case(keys2)
				4'b0001: //up
				begin 
					lvl <= lvl + 1;			
				end
				4'b0010: //down
				begin 
					lvl <= lvl - 1;	
				end			
				default:
					lvl <= 1;
			endcase		
		end
		else
		begin 
			lvl <= 1;
			en <= 0;
		end
	end
	
		
	
endmodule
						  
						  