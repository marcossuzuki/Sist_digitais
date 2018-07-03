library verilog;
use verilog.vl_types.all;
entity mux_4_1 is
    port(
        S0              : in     vl_logic_vector(1 downto 0);
        W0              : in     vl_logic_vector(3 downto 0);
        F0              : out    vl_logic
    );
end mux_4_1;
