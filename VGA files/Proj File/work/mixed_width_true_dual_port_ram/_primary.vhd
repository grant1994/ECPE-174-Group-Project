library verilog;
use verilog.vl_types.all;
entity mixed_width_true_dual_port_ram is
    generic(
        DATA_WIDTH1     : integer := 4;
        ADDRESS_WIDTH1  : integer := 16;
        ADDRESS_WIDTH2  : integer := 16
    );
    port(
        addr1           : in     vl_logic_vector;
        addr2           : in     vl_logic_vector;
        data_in1        : in     vl_logic_vector;
        data_in2        : in     vl_logic_vector;
        we1             : in     vl_logic;
        we2             : in     vl_logic;
        clk             : in     vl_logic;
        data_out1       : out    vl_logic_vector;
        data_out2       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH1 : constant is 2;
    attribute mti_svvh_generic_type of ADDRESS_WIDTH1 : constant is 2;
    attribute mti_svvh_generic_type of ADDRESS_WIDTH2 : constant is 2;
end mixed_width_true_dual_port_ram;
