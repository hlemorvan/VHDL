library verilog;
use verilog.vl_types.all;
entity FlipFlopD is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic;
        q               : out    vl_logic;
        reset           : in     vl_logic;
        set             : in     vl_logic
    );
end FlipFlopD;
