library verilog;
use verilog.vl_types.all;
entity compareCards is
    port(
        clock           : in     vl_logic;
        A               : in     vl_logic;
        inputState      : in     vl_logic_vector(2 downto 0);
        mem6x6          : in     vl_logic_vector(5 downto 0);
        data1           : out    vl_logic_vector(4 downto 0);
        data2           : out    vl_logic_vector(4 downto 0);
        cardOneTwo      : out    vl_logic;
        pairsFound      : out    integer;
        GO              : out    vl_logic;
        card1Loc        : out    vl_logic_vector(5 downto 0);
        card2Loc        : out    vl_logic_vector(5 downto 0);
        selectedCard    : out    vl_logic_vector(5 downto 0)
    );
end compareCards;
