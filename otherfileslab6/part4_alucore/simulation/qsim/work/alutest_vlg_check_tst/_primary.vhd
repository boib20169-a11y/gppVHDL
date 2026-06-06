library verilog;
use verilog.vl_types.all;
entity alutest_vlg_check_tst is
    port(
        neg             : in     vl_logic;
        R_lower         : in     vl_logic_vector(3 downto 0);
        R_upper         : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end alutest_vlg_check_tst;
