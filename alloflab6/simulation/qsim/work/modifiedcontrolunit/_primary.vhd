library verilog;
use verilog.vl_types.all;
entity modifiedcontrolunit is
    port(
        r_first_four    : out    vl_logic_vector(3 downto 0);
        Clock           : in     vl_logic;
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        Enable_decoder  : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        sidtest         : out    vl_logic_vector(3 downto 0);
        student_id      : out    vl_logic_vector(0 to 6)
    );
end modifiedcontrolunit;
