library verilog;
use verilog.vl_types.all;
entity dualPortMem is
    port(
        WE_A            : in     vl_logic;
        WE_B            : in     vl_logic;
        clock           : in     vl_logic;
        RE_B            : in     vl_logic;
        addr_A          : in     vl_logic_vector(16 downto 0);
        addr_B          : in     vl_logic_vector(16 downto 0);
        dataIn_A        : in     vl_logic_vector(2 downto 0);
        dataIn_B        : in     vl_logic_vector(2 downto 0);
        dataOut_A       : out    vl_logic_vector(2 downto 0);
        dataOut_B       : out    vl_logic_vector(2 downto 0)
    );
end dualPortMem;
