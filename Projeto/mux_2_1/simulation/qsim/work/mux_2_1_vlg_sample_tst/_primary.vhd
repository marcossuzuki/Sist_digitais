library verilog;
use verilog.vl_types.all;
entity mux_2_1_vlg_sample_tst is
    port(
        S               : in     vl_logic;
        W               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_2_1_vlg_sample_tst;
