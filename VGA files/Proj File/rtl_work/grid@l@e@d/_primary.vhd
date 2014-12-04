library verilog;
use verilog.vl_types.all;
entity gridLED is
    port(
        clock           : in     vl_logic;
        mem6x6          : in     vl_logic_vector(5 downto 0);
        card1           : in     vl_logic_vector(5 downto 0);
        card2           : in     vl_logic_vector(5 downto 0);
        selectedCard    : in     vl_logic_vector(5 downto 0);
        LEDs            : out    vl_logic_vector(35 downto 0)
    );
end gridLED;
