library verilog;
use verilog.vl_types.all;
entity johnscirc_vlg_sample_tst is
    port(
        Clk             : in     vl_logic;
        Clrn            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end johnscirc_vlg_sample_tst;
