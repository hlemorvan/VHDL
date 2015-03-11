library verilog;
use verilog.vl_types.all;
entity RegisterN_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic_vector(3 downto 0);
        wrEn            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RegisterN_vlg_sample_tst;
