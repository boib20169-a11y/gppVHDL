library verilog;
use verilog.vl_types.all;
entity alutest is
    port(
        neg             : out    vl_logic;
        ClockB          : in     vl_logic;
        second_A        : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        OP              : in     vl_logic_vector(15 downto 0);
        R_lower         : out    vl_logic_vector(3 downto 0);
        R_upper         : out    vl_logic_vector(3 downto 0)
    );
end alutest;
