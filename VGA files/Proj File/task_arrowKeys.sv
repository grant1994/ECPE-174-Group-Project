 /* ECPE 174 - Adv. Digital Design 
	Project
	Author : Kelvin Flores 
	Date : 
	Due : 
	
*/

	
	
	task arrow();
		randKeys <= $urandom_range(0,3);
		#5;
		@(posedge clock)
			keys <= 0;
		#5;
		case(randKeys)
			0:
				@(posedge clock)
				keys <= 1;
			1:
				@(posedge clock)
				keys <= 2;
			2:
				@(posedge clock)
				keys <= 4;
			3:
				@(posedge clock)
				keys <= 8;
			default: 
				begin 
					@(posedge clock)
					keys <= 0;
				end
				
		endcase;	
		#10;
		@(posedge clock)
			keys <= 0;
		#5;
	endtask

	
	// direct arrow keys	
	task arrow2(int a);
	
		#5;
		@(posedge clock)
			keys <= 0;
		#5;
		
		#5;
		@(posedge clock)
			keys <= a;
		#5;
		
		#10;
		@(posedge clock)
			keys <= 0;
		#5;
	
	endtask
	
	task changeState(int x);
		#5;
		@(posedge clock)
		inputState <= x;
		#5;
	endtask
	
	