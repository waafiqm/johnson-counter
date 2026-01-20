library verilog;
use verilog.vl_types.all;
entity johnscirc_vlg_check_tst is
    port(
        leds            : in     vl_logic_vector(0 to 6);
        Mag             : in     vl_logic_vector(3 downto 0);
        Q               : in     vl_logic_vector(0 to 2);
        sampler_rx      : in     vl_logic
    );
end johnscirc_vlg_check_tst;
