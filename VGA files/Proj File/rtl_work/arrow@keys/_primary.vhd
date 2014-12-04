library verilog;
use verilog.vl_types.all;
entity arrowKeys is
    generic(
        MAXCOL          : integer := 6
    );
    port(
        clock           : in     vl_logic;
        A               : in     vl_logic;
        keys            : in     vl_logic_vector(3 downto 0);
        inputState      : in     vl_logic_vector(2 downto 0);
        mem6x6          : out    vl_logic_vector(5 downto 0);
        level           : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MAXCOL : constant is 1;
end arrowKeys;
