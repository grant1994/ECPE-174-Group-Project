library verilog;
use verilog.vl_types.all;
entity playGame is
    port(
        clock           : in     vl_logic;
        A               : in     vl_logic;
        keys            : in     vl_logic_vector(3 downto 0);
        gameState       : out    vl_logic_vector(2 downto 0);
        keysVoltage     : out    vl_logic_vector(3 downto 0);
        seg1            : out    vl_logic_vector(6 downto 0);
        seg2            : out    vl_logic_vector(6 downto 0);
        seg3            : out    vl_logic_vector(6 downto 0);
        seg4            : out    vl_logic_vector(6 downto 0);
        seg5            : out    vl_logic_vector(6 downto 0);
        seg6            : out    vl_logic_vector(6 downto 0);
        LEDs            : out    vl_logic_vector(35 downto 0);
        VGA_R           : out    vl_logic;
        VGA_G           : out    vl_logic;
        VGA_B           : out    vl_logic;
        VGA_HSync       : out    vl_logic;
        VGA_VSync       : out    vl_logic
    );
end playGame;
