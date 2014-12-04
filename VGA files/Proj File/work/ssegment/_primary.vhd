library verilog;
use verilog.vl_types.all;
entity ssegment is
    generic(
        s0              : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        s1              : vl_logic_vector(0 to 6) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1);
        s2              : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        s3              : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        s4              : vl_logic_vector(0 to 6) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        s5              : vl_logic_vector(0 to 6) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        s6              : vl_logic_vector(0 to 6) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        s7              : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1);
        s8              : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        s9              : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0)
    );
    port(
        seg1            : out    vl_logic_vector(6 downto 0);
        seg2            : out    vl_logic_vector(6 downto 0);
        data_in         : in     vl_logic_vector(5 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of s0 : constant is 1;
    attribute mti_svvh_generic_type of s1 : constant is 1;
    attribute mti_svvh_generic_type of s2 : constant is 1;
    attribute mti_svvh_generic_type of s3 : constant is 1;
    attribute mti_svvh_generic_type of s4 : constant is 1;
    attribute mti_svvh_generic_type of s5 : constant is 1;
    attribute mti_svvh_generic_type of s6 : constant is 1;
    attribute mti_svvh_generic_type of s7 : constant is 1;
    attribute mti_svvh_generic_type of s8 : constant is 1;
    attribute mti_svvh_generic_type of s9 : constant is 1;
end ssegment;
