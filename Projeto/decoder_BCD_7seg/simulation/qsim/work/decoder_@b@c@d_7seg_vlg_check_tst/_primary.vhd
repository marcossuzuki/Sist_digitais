library verilog;
use verilog.vl_types.all;
entity decoder_BCD_7seg_vlg_check_tst is
    port(
        aS7             : in     vl_logic;
        bS7             : in     vl_logic;
        cS7             : in     vl_logic;
        dS7             : in     vl_logic;
        eS7             : in     vl_logic;
        fS7             : in     vl_logic;
        gS7             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end decoder_BCD_7seg_vlg_check_tst;
