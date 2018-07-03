library verilog;
use verilog.vl_types.all;
entity somador_paralelo_4bits_vlg_sample_tst is
    port(
        A1              : in     vl_logic_vector(3 downto 0);
        B1              : in     vl_logic_vector(3 downto 0);
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end somador_paralelo_4bits_vlg_sample_tst;
