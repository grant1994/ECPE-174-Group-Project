library verilog;
use verilog.vl_types.all;
entity synch is
    port(
        a               : in     vl_logic;
        clk             : in     vl_logic;
        rise_a          : out    vl_logic
    );
end synch;
