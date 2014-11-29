library verilog;
use verilog.vl_types.all;
entity draw is
    generic(
        MAX_COL         : integer := 256
    );
    port(
        clock           : in     vl_logic;
        A               : in     vl_logic;
        keys            : in     vl_logic_vector(3 downto 0);
        inputState      : in     vl_logic_vector(3 downto 0);
        rgb             : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MAX_COL : constant is 1;
end draw;
