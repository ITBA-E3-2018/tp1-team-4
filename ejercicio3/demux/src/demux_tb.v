`include "src/demux1to4.v"

module demux_tb;

    reg[1:0]    sel;
    reg         data, enable;
    wire[3:0]   out;

    demux1to4 dut(out, sel, data, enable);

    initial begin

        enable = 0; data = 0; sel = 0; #10;
        enable = 0; data = 0; sel = 1; #10;
        enable = 0; data = 0; sel = 2; #10;
        enable = 0; data = 0; sel = 3; #10;

        enable = 0; data = 1; sel = 0; #10;
        enable = 0; data = 1; sel = 1; #10;
        enable = 0; data = 1; sel = 2; #10;
        enable = 0; data = 1; sel = 3; #10;

        enable = 1; data = 0; sel = 0; #10;
        enable = 1; data = 0; sel = 1; #10;
        enable = 1; data = 0; sel = 2; #10;
        enable = 1; data = 0; sel = 3; #10;

        enable = 1; data = 1; sel = 0; #10;
        enable = 1; data = 1; sel = 1; #10;
        enable = 1; data = 1; sel = 2; #10;
        enable = 1; data = 1; sel = 3; #10;

        $finish;
    end

    initial
        $monitor("At time %2t:\n\tenable = %b - data = %b - sel = %b - out = %b",
                 $time, enable, data, sel, out);

endmodule