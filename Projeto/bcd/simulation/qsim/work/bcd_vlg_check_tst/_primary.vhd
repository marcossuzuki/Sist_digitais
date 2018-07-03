library verilog;
use verilog.vl_types.all;
entity bcd_vlg_check_tst is
    port(
        BCD0            : in     vl_logic_vector(3 downto 0);
        BCD1            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end bcd_vlg_check_tst;
