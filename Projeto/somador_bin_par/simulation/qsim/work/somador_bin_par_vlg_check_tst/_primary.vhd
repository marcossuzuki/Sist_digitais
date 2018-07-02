library verilog;
use verilog.vl_types.all;
entity somador_bin_par_vlg_check_tst is
    port(
        C1out           : in     vl_logic;
        Sv              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end somador_bin_par_vlg_check_tst;
