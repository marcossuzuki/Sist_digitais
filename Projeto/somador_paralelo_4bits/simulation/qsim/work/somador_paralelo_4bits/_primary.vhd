library verilog;
use verilog.vl_types.all;
entity somador_paralelo_4bits is
    port(
        A1              : in     vl_logic_vector(3 downto 0);
        B1              : in     vl_logic_vector(3 downto 0);
        Cin             : in     vl_logic;
        aS71            : out    vl_logic;
        bS71            : out    vl_logic;
        cS71            : out    vl_logic;
        dS71            : out    vl_logic;
        eS71            : out    vl_logic;
        fS71            : out    vl_logic;
        gS71            : out    vl_logic;
        aS72            : out    vl_logic;
        bS72            : out    vl_logic;
        cS72            : out    vl_logic;
        dS72            : out    vl_logic;
        eS72            : out    vl_logic;
        fS72            : out    vl_logic;
        gS72            : out    vl_logic;
        Cout            : out    vl_logic
    );
end somador_paralelo_4bits;
