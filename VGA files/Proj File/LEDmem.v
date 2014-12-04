//Joseph Grant
//12/3/2014

//LEDmem: dual channel memory, yay.

module LEDmem
(
	input weA, weB, clock,
	input [5:0] addr_A,addr_B,
	input dataA_in, dataB_in,
	output reg dataA_out ,dataB_out);
	
	reg [1:0] mem[35:0];
	integer i;

	initial 
	begin
		for(i=0;i<35;i=i+1)
		begin
			mem[i]<=1'b0;
		end
	end
	
	// PORT A
	always@(posedge clock)
	begin
		if(weA)
		begin 
			mem[addr_A] <= dataA_in;
		end	
		dataA_out <= mem[addr_A];
	end
	
	// PORT B
	always@(posedge clock)
	begin
		if(weB)
		begin 
			mem[addr_B] <= dataB_in;
		end
			dataB_out <= mem[addr_B];
	end

endmodule

