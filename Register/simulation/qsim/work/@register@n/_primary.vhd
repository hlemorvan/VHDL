library verilog;
use verilog.vl_types.all;
entity RegisterN is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(3 downto 0);
        wrEn            : in     vl_logic
    );
end RegisterN;
