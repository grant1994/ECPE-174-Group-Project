library verilog;
use verilog.vl_types.all;
entity timeCalc is
    port(
        clk             : in     vl_logic;
        level           : in     vl_logic_vector(1 downto 0)
    );
end timeCalc;
