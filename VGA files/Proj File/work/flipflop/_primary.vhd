library verilog;
use verilog.vl_types.all;
entity flipflop is
    port(
        clk             : in     vl_logic;
        A               : in     vl_logic;
        stableA         : out    vl_logic
    );
end flipflop;
