library verilog;
use verilog.vl_types.all;
entity bcd_behavioral is
    port(
        Av              : in     vl_logic_vector(3 downto 0);
        Bv              : out    vl_logic_vector(7 downto 0)
    );
end bcd_behavioral;
