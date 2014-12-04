library verilog;
use verilog.vl_types.all;
entity hvsync_generator is
    port(
        clk             : in     vl_logic;
        vga_h_sync      : out    vl_logic;
        vga_v_sync      : out    vl_logic;
        inDisplayArea   : out    vl_logic;
        CounterX        : out    vl_logic_vector(9 downto 0);
        CounterY        : out    vl_logic_vector(8 downto 0)
    );
end hvsync_generator;
