//Karla P. Duran
//Timer for game control
//Date: 11/20/2014

module timeCalc (input logic clk, input logic [1:0] level);
//The final time calculation will be in seconds

//If beginner=00 or 01, if medium=10, if advanced 11, it is default to beginner
//Defining a variable to keep control of the time
logic [1:0]counter,counterTemp;
logic [5:0] second;

//Doing calculations necessary to figure out the time
always_ff @(posedge clk)
begin
	counter<=counter+1;
	if(counter==2)
	begin
	second<=second+1;
	counter<=0;
	end
end

//Make necessary calculations to get value of counter(needed to set 1 minute of time)
endmodule