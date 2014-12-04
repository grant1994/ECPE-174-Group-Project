library verilog;
use verilog.vl_types.all;
entity fsm is
    port(
        clk             : in     vl_logic;
        GO              : in     vl_logic;
        startButton     : in     vl_logic;
        outputState     : out    vl_logic_vector(2 downto 0)
    );
end fsm;
