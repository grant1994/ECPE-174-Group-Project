library verilog;
use verilog.vl_types.all;
entity clockdiv is
    port(
        iclk            : in     vl_logic;
        oclk            : out    vl_logic
    );
end clockdiv;
