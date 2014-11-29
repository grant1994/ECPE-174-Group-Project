library verilog;
use verilog.vl_types.all;
entity fifoMemory is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        button          : in     vl_logic;
        RW              : in     vl_logic;
        opIn            : in     vl_logic_vector(2 downto 0);
        A               : in     vl_logic_vector(5 downto 0);
        B               : in     vl_logic_vector(5 downto 0);
        F               : out    vl_logic;
        E               : out    vl_logic;
        syncB           : out    vl_logic;
        Ao              : out    vl_logic_vector(5 downto 0);
        Bo              : out    vl_logic_vector(5 downto 0);
        opOut           : out    vl_logic_vector(2 downto 0)
    );
end fifoMemory;
