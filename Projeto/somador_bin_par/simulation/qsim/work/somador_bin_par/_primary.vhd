library verilog;
use verilog.vl_types.all;
entity somador_bin_par is
    port(
        Av              : in     vl_logic_vector(3 downto 0);
        Bv              : in     vl_logic_vector(3 downto 0);
        C1in            : in     vl_logic;
        Sv              : out    vl_logic_vector(3 downto 0);
        C1out           : out    vl_logic
    );
end somador_bin_par;
