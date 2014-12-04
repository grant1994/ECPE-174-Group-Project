   /* ECPE 174 - Adv. Digital Design 
	Lab # 7 : ALU
	Author : Kelvin Flores 
	Date : 10/17/2014
	Due : 10/17/2014
	
*/

/*
		fifo memory - memory with fifo control
*/

module fifoMemory ( input logic clock,
						  input logic [2:0] dataIn_RGB,
						  output logic F,E,
						  output logic [2:0] dataOut_RGB);
	logic WE,RE;
	logic [5:0] wAddr,rAddr;
	

	
				
	fifoControl fc(	.clock(clock),
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