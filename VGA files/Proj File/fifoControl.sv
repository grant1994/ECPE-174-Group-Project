  /* ECPE 174 - Adv. Digital Design 
	Lab # 7 : ALU
	Author : Kelvin Flores 
	Date : 10/17/2014
	Due : 10/17/2014
	
*/

/*
		fifo control module - controls the fifo
*/
module fifoControl (input logic clock, 
						  output logic WE,RE,fl,em,
						  output logic syncB, // signal for test bench
						  output logic[5:0] writePtrOut,readPtrOut);
	
	logic E,F;
	logic b1,button2;
	logic[5:0] writePtr,readPtr,tempW,tempR;
	typedef enum logic[2:0]{idle,write,read}stateType;
	stateType currentState,nextState;
	
	
	assign syncB = button2;
	assign fl = F;
	assign em = E;
	
		
	
	initial
	begin
		writePtr <= 0;
		readPtr <= 6'b111111;
		tempW <= 0;
		tempR <=  6'b111111;
		currentState <= idle;
	end
	
	always_ff @(posedge clock)
	begin
		b1 <= button;
		button2 <= b1;	
			
		writePtrOut <= tempW;
		if(tempW == tempR)
			readPtrOut <= 0;
		else 	readPtrOut <= tempR;
	end
	
	
	
	
	always_ff @(posedge clock,negedge reset)
	begin 
		if(!reset)
			currentState <= idle;	
		else
			currentState <= nextState;
			
		
	end
	
	always_ff @(posedge WE) tempW  <= writePtr + 1;
	always_ff @(negedge WE) writePtr <= tempW;
	always_ff @(posedge RE) 
	begin
		if(tempW != tempR)
			tempR  <= readPtr + 1;
		else tempR <= 0;	
	end
	always_ff @(negedge RE) readPtr <= tempR;
	
	always_comb
	begin
		if(writePtr == 63) F <= 1;
		else F <= 0;
		
		if(writePtr == 0) E <= 1;
		else E <= 0;	
	end

	always_comb
	begin
		case(currentState)
			idle:
				if(RW)
					if(button2)
					begin
						nextState <= write;
						if(!F)
							WE <= 1;
						else 
							WE <= 0;	
						RE <= 0;
					end
					else
					begin 
						nextState <= idle;
						WE <= 0;
						RE <= 0;
					end
				else
					if(button2)
					begin
						nextState <= read;
						WE <= 0;
						if(!E)
							RE <= 1;
						else
							RE <= 0;
					end
					else
					begin 
						nextState <= idle;
						WE <= 0;
						RE <= 0;
					end
							
			write:
				if(RW)
					if(button2)
					begin
						nextState <= write;
						if(!F)
							WE <= 1;
						else 
							WE <= 0;	
						RE <= 0;
					end
					else
					begin 
						nextState <= idle;
						WE <= 0;
						RE <= 0;
					end
				else
					if(button2)
					begin
						nextState <= read;
						WE <= 0;
						if(!E)
							RE <= 1;
						else
							RE <= 0;			
					end
					else
					begin 
						nextState <= idle;
						WE <= 0;
						RE <= 0;
					end
			
			read:
				if(RW)
					if(button2)
					begin
						nextState <= write;
						if(!F)
							WE <= 1;
						else 
							WE <= 0;	
						RE <= 0;
					end
					else
					begin 
						nextState <= idle;
						WE <= 0;
						RE <= 0;
					end
				else
					if(button2)
					begin
						nextState <= read;
						WE <= 0;
						if(!E)
							RE <= 1;
						else
							RE <= 0;			
					end
					else
					begin 
						nextState <= idle;
						WE <= 0;
						RE <= 0;
					end
			
			default:
				begin 
					nextState <= idle;
					WE <= 0;
					RE <= 0;
				end
			
		endcase	
	end		
	
endmodule
						    
						  