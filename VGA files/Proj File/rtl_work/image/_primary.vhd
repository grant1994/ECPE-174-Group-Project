library verilog;
use verilog.vl_types.all;
entity image is
    port(
        clock           : in     vl_logic;
        EN              : in     vl_logic;
        A               : in     vl_logic;
        keys            : in     vl_logic_vector(3 downto 0);
        col             : in     vl_logic_vector(7 downto 0);
        row             : in     vl_logic_vector(7 downto 0);
        mem6x6          : in     vl_logic_vector(5 downto 0);
        image           : out    vl_logic_vector(2 downto 0);
        RE              : out    vl_logic
    );
end image;
