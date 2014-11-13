// Quartus II SystemVerilog Template
//
// True Dual-Port RAM with single clock and different data width on the two ports
//
// The first datawidth and the widths of the addresses are specified
// The second data width is equal to DATA_WIDTH1 * RATIO, where RATIO = (1 << (ADDRESS_WIDTH1 - ADDRESS_WIDTH2)
// RATIO must have value that is supported by the memory blocks in your target
// device.  Otherwise, no RAM will be inferred.  
//
// Read-during-write behavior returns old data for all combinations of read and
// write on both ports
//
// This style of RAM cannot be used on certain devices, e.g. Stratix V; in that case use the template for Dual-Port RAM with new data on read-during write on the same port

module mixed_width_true_dual_port_ram
	#(parameter int
		DATA_WIDTH1 = 4,
		ADDRESS_WIDTH1 = 16,
		ADDRESS_WIDTH2 = 16)
(
		input [ADDRESS_WIDTH1-1:0] addr1,
		input [ADDRESS_WIDTH2-1:0] addr2,
		input [DATA_WIDTH1 -1:0] data_in1, 
		input [DATA_WIDTH1*(1<<(ADDRESS_WIDTH1 - ADDRESS_WIDTH2))-1:0] data_in2, 
		input we1, we2, clk,
		output reg [DATA_WIDTH1-1      :0] data_out1,
		output reg [DATA_WIDTH1*(1<<(ADDRESS_WIDTH1 - ADDRESS_WIDTH2))-1:0] data_out2);
    
	localparam RATIO = 1 << (ADDRESS_WIDTH1 - ADDRESS_WIDTH2); // valid values are 2,4,8... family dependent
	localparam DATA_WIDTH2 = DATA_WIDTH1 * RATIO;
	localparam RAM_DEPTH = 1 << ADDRESS_WIDTH2;

	// Use a multi-dimensional packed array to model the different read/ram width
	reg [RATIO-1:0] [DATA_WIDTH1-1:0] ram[0:RAM_DEPTH-1];
    
	reg [DATA_WIDTH1-1:0] data_reg1;
	reg [DATA_WIDTH2-1:0] data_reg2;

	// Port A
	always@(posedge clk)
	begin
		if(we1)
			ram[addr1 / RATIO][addr1 % RATIO] <= data_in1;
		data_reg1 <= ram[addr1 / RATIO][addr1 % RATIO];
	end
	assign data_out1 = data_reg1;

	// port B
	always@(posedge clk)
	begin
		if(we2)
			ram[addr2] <= data_in2;
		data_reg2 <= ram[addr2];
	end
    
	assign data_out2 = data_reg2;
endmodule : mixed_width_true_dual_port_ram
