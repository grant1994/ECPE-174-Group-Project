//Karla P. Duran
//FSM for game control
//Date: 11/20/2014

module fsm (input logic clk, input logic GO, input logic startButton, output logic [2:0]outputState);
				//gameOver(GO) gets passed by Kelvin's module. We have gameover when GO=1
				//I will need to pass outputState to Kelvin's module
				
//Declaration of states, since we have three states, we need 3 bits
typedef enum logic[2:0]{idle,menu,rungame,gameover} statetype;

//We then declare the two states needed for transitions in the FSM
statetype presentState, nextState;

//Initialize value for present state
initial
begin
	presentState<=idle;
end

//Defining state transitions
always_ff @ (posedge clk)
begin
	presentState<=nextState;
end		

//Deefining FSM
always_comb
begin
case(presentState)
	
	idle:
		begin
		if (startButton==1'b1 && GO==1'b0)
			nextState<=idle;
		else if (startButton==1'b1 && GO==1'b1)
			nextState<=idle;
		else if (startButton==1'b0 && GO==1'b0)
			nextState<=menu;
		else if (startButton==1'b0 && GO==1'b1)
			nextState<=menu;	
		else	
			nextState<=idle;	
		end	
				
	menu:
		begin
		if (startButton==1'b0 && GO==1'b0)
			nextState<=rungame;
		else if (startButton==1'b0 && GO==1'b1)
			nextState<=rungame;	
		else	
			nextState<=menu;	
		end	
		
	rungame:
		begin
		if (startButton==1'b0 && GO==1'b0)
			nextState<=rungame;
		else if (startButton==1'b1 && GO==1'b0)
			nextState<=rungame;	
		else if (startButton==1'b0 && GO==1'b1)
			nextState<=gameover;	
		else if (startButton==1'b1 && GO==1'b1)
			nextState<=gameover;	
		else	
			nextState<=rungame;	
		end		
		
	gameover:
		begin
		if (startButton==1'b0 && GO==1'b0)
			nextState<=idle;
		else if (startButton==1'b0 && GO==1'b1)
			nextState<=idle;	
		else if (startButton==1'b1 && GO==1'b0)
			nextState<=gameover;	
		else if (startButton==1'b1 && GO==1'b1)
			nextState<=gameover;		
		else	
			nextState<=gameover;	
		end		
	
			
	default:
		begin
			nextState<=idle;
		end
			
endcase
end			

assign outputState=presentState;

endmodule
