library verilog;
use verilog.vl_types.all;
entity muxModified is
    port(
        leds            : out    vl_logic_vector(0 to 6);
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        S0              : in     vl_logic;
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        S1              : in     vl_logic
    );
end muxModified;
