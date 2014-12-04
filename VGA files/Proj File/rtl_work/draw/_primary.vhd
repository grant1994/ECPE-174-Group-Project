library verilog;
use verilog.vl_types.all;
entity draw is
    generic(
        MAX_COL         : integer := 256;
        GAP             : integer := 5;
        C_LENGTH        : integer := 16;
        C_HEIGHT        : integer := 20;
        START_POS_X     : integer := 68;
        START_POS_Y     : integer := 45
    );
    port(
        clock           : in     vl_logic;
        clock2          : in     vl_logic;
        A               : in     vl_logic;
        keys            : in     vl_logic_vector(3 downto 0);
        inputState      : in     vl_logic_vector(3 downto 0);
        mem6x6          : in     vl_logic_vector(5 downto 0);
        horReg          : in     vl_logic_vector(10 downto 0);
        verReg          : in     vl_logic_vector(9 downto 0);
        rgb             : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MAX_COL : constant is 1;
    attribute mti_svvh_generic_type of GAP : constant is 1;
    attribute mti_svvh_generic_type of C_LENGTH : constant is 1;
    attribute mti_svvh_generic_type of C_HEIGHT : constant is 1;
    attribute mti_svvh_generic_type of START_POS_X : constant is 1;
    attribute mti_svvh_generic_type of START_POS_Y : constant is 1;
end draw;
