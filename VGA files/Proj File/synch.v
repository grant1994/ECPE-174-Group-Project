// Joseph Grant
// sept 2014
//Synchronization module
module synch(input a, input clk, output rise_a);
reg int_a,
	 sync_a,
	 delay_a;
	 
initial 
begin
	int_a=1;
end
always @ (posedge clk)
begin
	int_a<=a;
	sync_a<=int_a;
	delay_a<=sync_a;
end

assign rise_a=sync_a && ~delay_a;

endmodule
