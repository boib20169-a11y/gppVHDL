library verilog;
use verilog.vl_types.all;
entity alutest_vlg_sample_tst is
    port(
        B               : in     vl_logic_vector(7 downto 0);
        ClockB          : in     vl_logic;
        OP              : in     vl_logic_vector(15 downto 0);
        second_A        : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end alutest_vlg_sample_tst;
