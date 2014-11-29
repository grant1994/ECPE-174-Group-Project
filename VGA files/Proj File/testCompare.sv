/* ECPE 174 - Adv. Digital Design 
	Memory Card Game
	Author : Joseph Grant
*/

/*
  Randomize some inputs, groovify dependent upon some outputs!
*/

module testCompare();
	logic clock = 1'b0;
	logic A=0;
	logic inputState=0;
	logic[5:0] mem6x6=0;
	logic [4:0] data1,data2;
	logic GO;
	integer pairsFound;
	
	compareCards compMod(.clock(clock),.A(A),.inputState(inputState),.mem6x6(mem6x6),.GO(GO),.pairsFound(pairsFound),.data1(data1),.data2(data2));
	always #50 clock=~clock;
	
	task pushButton1();
		#50 A=1;
		inputState=0;
		mem6x6=$urandom_range(1,36);
		#50 A=0;
	endtask 
	
	task pushButton2();
		#50 A=1;
		inputState=1;
		mem6x6=$urandom_range(1,36);
		#50 A=0;
	endtask 
	
	initial 
	begin
		$monitor("Pair %d found at time: %t",pairsFound,$time);
		repeat(100)
		begin
			pushButton1();
			pushButton2();
		end
	end
endmodule 
