module ssegment(seg1, seg2, data_in);
  output reg [6:0] seg1;
  output reg [6:0] seg2;
  input [5:0] data_in;
  parameter
	s0=7'b0000001,
	s1=7'b1001111,
	s2=7'b0010010,
	s3=7'b0000110,
	s4=7'b1001100,
	s5=7'b0100100,
	s6=7'b0100000,
	s7=7'b0001111,
	s8=7'b0000000,
	s9=7'b0000100;
  
  always @(data_in)
    case (data_in)
      0: begin
				seg1 = s0;
				seg2 = s0;
				end
      1: begin
				seg1 = s1;
				seg2 = s0;
				end
      2: begin
				seg1 = s2;
				seg2 = s0;
				end
      3: begin
				seg1 = s3;
				seg2 = s0;
				end
      4: begin
				seg1 = s4;
				seg2 = s0;
				end
      5: begin
				seg1 = s5;
				seg2 = s0;
				end
      6: begin
				seg1 = s6;
				seg2 = s0;
				end
      7: begin
				seg1 = s7;
				seg2 = s0;
				end
      8: begin
				seg1 = s8;
				seg2 = s0;
				end
      9: begin
				seg1 = s9;
				seg2 = s0;
			end
		10:begin
				seg1 = s0;
				seg2 = s1;
			end
		11:begin
				seg1 = s1;
				seg2 = s1;
			end
		12:begin
				seg1 = s2;
				seg2 = s1;
			end
		13:begin
				seg1 = s3;
				seg2 = s1;
			end
		14:begin
				seg1 = s4;
				seg2 = s1;
			end
		15:begin
				seg1 = s5;
				seg2 = s1;
			end
		16:begin
				seg1 = s6;
				seg2 = s1;
			end
		17:begin
				seg1 = s7;
				seg2 = s1;
			end
		18:begin
				seg1 = s8;
				seg2 = s1;
			end
		19:begin
				seg1 = s9;
				seg2 = s1;
			end
		20:begin
				seg1 = s0;
				seg2 = s2;
			end
		21:begin
				seg1 = s1;
				seg2 = s2;
			end
		22:begin
				seg1 = s2;
				seg2 = s2;
			end
		23:begin
				seg1 = s3;
				seg2 = s2;
			end
		24:begin
				seg1 = s4;
				seg2 = s2;
			end
		25:begin
				seg1 = s5;
				seg2 = s2;
			end
		26:begin
				seg1 = s6;
				seg2 = s2;
			end
		27:begin
				seg1 = s7;
				seg2 = s2;
			end
		28:begin
				seg1 = s8;
				seg2 = s2;
			end
		29:begin
				seg1 = s9;
				seg2 = s2;
			end
		30:begin
				seg1 = s0;
				seg2 = s3;
			end
		31:begin
				seg1 = s1;
				seg2 = s3;
			end
      default: begin 
				seg1 = s0;
				seg2 = s0;
				end
    endcase
endmodule
