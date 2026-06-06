library verilog;
use verilog.vl_types.all;
entity gpu_vlg_check_tst is
    port(
        neg             : in     vl_logic_vector(0 to 6);
        op              : in     vl_logic_vector(0 to 15);
        r_first_four    : in     vl_logic_vector(0 to 6);
        r_last_four     : in     vl_logic_vector(0 to 6);
        student_id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end gpu_vlg_check_tst;
