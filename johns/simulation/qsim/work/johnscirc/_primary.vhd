library verilog;
use verilog.vl_types.all;
entity johnscirc is
    port(
        leds            : out    vl_logic_vector(0 to 6);
        Clrn            : in     vl_logic;
        Clk             : in     vl_logic;
        Mag             : out    vl_logic_vector(3 downto 0);
        Q               : out    vl_logic_vector(0 to 2)
    );
end johnscirc;
