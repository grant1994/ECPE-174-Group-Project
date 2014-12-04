library verilog;
use verilog.vl_types.all;
entity testMem is
    port(
        WE              : in     vl_logic;
        RE              : in     vl_logic;
        clock           : in     vl_logic;
        wAddr           : in     vl_logic_vector(16 downto 0);
        rAddr           : in     vl_logic_vector(16 downto 0);
        dataIn          : in     vl_logic_vector(2 downto 0);
        dataOut         : out    vl_logic_vector(2 downto 0)
    );
end testMem;
