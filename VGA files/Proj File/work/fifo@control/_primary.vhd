library verilog;
use verilog.vl_types.all;
entity fifoControl is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        button          : in     vl_logic;
        RW              : in     vl_logic;
        WE              : out    vl_logic;
        RE              : out    vl_logic;
        fl              : out    vl_logic;
        em              : out    vl_logic;
        syncB           : out    vl_logic;
        writePtrOut     : out    vl_logic_vector(5 downto 0);
        readPtrOut      : out    vl_logic_vector(5 downto 0)
    );
end fifoControl;
