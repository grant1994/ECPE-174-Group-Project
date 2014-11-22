


task buttonA();
	#5;
	@(posedge clock)
	A <= 0;
	@(posedge clock)
	A <= 1;
	#10;
	@(posedge clock)
	A <= 0;
	#5;
	
endtask
