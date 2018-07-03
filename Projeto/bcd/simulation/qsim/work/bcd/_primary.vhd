library verilog;
use verilog.vl_types.all;
entity bcd is
    port(
        BIN             : in     vl_logic_vector(3 downto 0);
        BCD0            : out    vl_logic_vector(3 downto 0);
        BCD1            : out    vl_logic_vector(3 downto 0)
    );
end bcd;
