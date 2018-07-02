library verilog;
use verilog.vl_types.all;
entity bcd_behavioral_vlg_sample_tst is
    port(
        Av              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end bcd_behavioral_vlg_sample_tst;
