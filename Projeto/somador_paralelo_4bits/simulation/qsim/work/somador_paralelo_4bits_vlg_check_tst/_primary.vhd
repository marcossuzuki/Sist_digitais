library verilog;
use verilog.vl_types.all;
entity somador_paralelo_4bits_vlg_check_tst is
    port(
        aS71            : in     vl_logic;
        aS72            : in     vl_logic;
        bS71            : in     vl_logic;
        bS72            : in     vl_logic;
        Cout            : in     vl_logic;
        cS71            : in     vl_logic;
        cS72            : in     vl_logic;
        dS71            : in     vl_logic;
        dS72            : in     vl_logic;
        eS71            : in     vl_logic;
        eS72            : in     vl_logic;
        fS71            : in     vl_logic;
        fS72            : in     vl_logic;
        gS71            : in     vl_logic;
        gS72            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end somador_paralelo_4bits_vlg_check_tst;
