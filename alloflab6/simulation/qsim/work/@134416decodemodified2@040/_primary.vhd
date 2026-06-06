library verilog;
use verilog.vl_types.all;
entity \416decodemodified2\ is
    port(
        op              : out    vl_logic_vector(0 to 15);
        enable          : in     vl_logic;
        w               : in     vl_logic_vector(3 downto 0)
    );
end \416decodemodified2\;
