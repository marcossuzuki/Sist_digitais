library verilog;
use verilog.vl_types.all;
entity somador_bin_par_vlg_sample_tst is
    port(
        Av              : in     vl_logic_vector(3 downto 0);
        Bv              : in     vl_logic_vector(3 downto 0);
        C1in            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end somador_bin_par_vlg_sample_tst;
