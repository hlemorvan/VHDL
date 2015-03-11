library verilog;
use verilog.vl_types.all;
entity CounterDown4 is
    port(
        clk             : in     vl_logic;
        count           : out    vl_logic_vector(3 downto 0)
    );
end CounterDown4;
