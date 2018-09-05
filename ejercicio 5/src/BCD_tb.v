`include "src/BCD_adder.v"

module BCD_tb;
    reg[3:0]    in1, in2;
    reg         Cin;
    wire[3:0]   LSout, MSout;
    wire        Cout;

    BCD_adder dut(in1, in2, Cin, MSout, LSout);

    initial
    begin
        in1 = 0; in2 = 5; Cin = 0; #10;
        in1 = 1; in2 = 6; Cin = 0; #10;
        in1 = 2; in2 = 7; Cin = 0; #10;
        in1 = 3; in2 = 8; Cin = 0; #10;
        in1 = 4; in2 = 9; Cin = 0; #10;
        in1 = 5; in2 = 0; Cin = 0; #10;
        in1 = 6; in2 = 1; Cin = 0; #10;
        in1 = 7; in2 = 2; Cin = 0; #10;
        in1 = 8; in2 = 3; Cin = 0; #10;
        in1 = 9; in2 = 4; Cin = 0; #10;
        in1 = 0; in2 = 7; Cin = 0; #10;
        in1 = 1; in2 = 8; Cin = 0; #10;
        in1 = 2; in2 = 9; Cin = 0; #10;
    end

    initial
        $monitor("Cin = %b --- in1 = %b(%d) --- in2 = %b(%d) --- out = %b %b(%d%d)",
                 Cin, in1, in1, in2, in2, MSout, LSout, MSout, LSout);

endmodule