library verilog;
use verilog.vl_types.all;
entity \416decodemodified\ is
    port(
        op              : out    vl_logic_vector(0 to 15);
        w               : in     vl_logic_vector(3 downto 0);
        enable          : in     vl_logic
    );
end \416decodemodified\;
