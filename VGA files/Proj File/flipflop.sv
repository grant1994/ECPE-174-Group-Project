//Karla P. Duran
//Synchronizer code to get correct inputs through FSM 
//Date: 11/20/2014

module flipflop (input logic clk, A, output logic stableA);
	
//Defining internal values
//Output internal signal for first flip flop
logic Output1=1'b0;
//Output internal signal for second flip flop
logic Output4=1'b0;
//Output internal signal for third flip flop
logic Output7=1'b0;

//We will have 2 flip flops
always @(posedge clk)
begin
//First internal signal(first flip flop)
Output1<=A;

//Second internal signal(second flip flop)
Output4<=Output1;

//Third internal signal(third flip flop)
Output7<=Output4;
end				


always_comb
begin
//Calculating stable outputs
stableA<=~Output4 && Output7;
end

endmodule