   /* ECPE 174 - Adv. Digital Design 
	Lab # 7 : ALU
	Author : Kelvin Flores 
	Date : 10/17/2014
	Due : 10/17/2014
	
*/

/*
		fifo memory - memory with fifo control
*/

module fifoMemory ( input logic clock,reset,
						  input logic button,RW, 
						  input logic [2:0] opIn,
						  input logic [5:0] A,B,
						  output logic F,E,
						  output logic syncB, // signal for test bench
						  output logic [5:0] Ao,Bo,
						  output logic [2:0] opOut);
	logic WE,RE;
	logic [5:0] wAddr,rAddr;
	logic[14:0] dataIn;					  
	logic [14:0] dataOut;			
	
	assign dataIn [14:12] = opIn;
	assign dataIn [11:6] = A;
	assign dataIn [5:0] = B;
	
	assign opOut = dataOut[14:12];
	assign Ao = dataOut[11:6];
	assign Bo = dataOut[5:0];
	
	
				
	fifoControl fc(	.clock(clock),
							.reset(reset),
							.button(button),
							.RW(RW),
							.WE(WE),
							.RE(RE),
							.fl(F),
							.em(E),
							.syncB(syncB),
							.writePtrOut(wAddr),
							.readPtrOut(rAddr));
							
	memory ram(			.WE(WE),
							.RE(RE),
							.clock(clock),
							.wAddr(wAddr),
							.rAddr(rAddr),
							.dataIn(dataIn),
							.dataOut(dataOut));						
							
endmodule