library verilog;
use verilog.vl_types.all;
entity decoder_BCD_7seg is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        aS7             : out    vl_logic;
        bS7             : out    vl_logic;
        cS7             : out    vl_logic;
        dS7             : out    vl_logic;
        eS7             : out    vl_logic;
        fS7             : out    vl_logic;
        gS7             : out    vl_logic
    );
end decoder_BCD_7seg;
