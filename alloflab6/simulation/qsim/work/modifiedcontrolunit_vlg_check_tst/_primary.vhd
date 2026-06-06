library verilog;
use verilog.vl_types.all;
entity modifiedcontrolunit_vlg_check_tst is
    port(
        r_first_four    : in     vl_logic_vector(3 downto 0);
        sidtest         : in     vl_logic_vector(3 downto 0);
        student_id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end modifiedcontrolunit_vlg_check_tst;
