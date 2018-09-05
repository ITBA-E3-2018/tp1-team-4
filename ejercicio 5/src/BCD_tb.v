`include "src/BCD_adder.v"

module BCD_tb;
    reg[3:0]    in1, in2;
    wire[3:0]   LSout, MSout;
    wire        Cout;

    BCD_adder dut(in1, in2, MSout, LSout);

    initial
    begin
        in1 = 9; in2 = 9;  #10;
        in1 = 9; in2 = 1;  #10;
        in1 = 2; in2 = 7;  #10;
        in1 = 3; in2 = 8;  #10;
        in1 = 4; in2 = 9;  #10;
        in1 = 5; in2 = 0;  #10;
        in1 = 6; in2 = 1;  #10;
        in1 = 7; in2 = 2;  #10;
        in1 = 8; in2 = 3;  #10;
        in1 = 9; in2 = 4;  #10;
        in1 = 0; in2 = 7;  #10;
        in1 = 1; in2 = 8;  #10;
        in1 = 2; in2 = 9;  #10;
    end

    initial
        $monitor("in1 = %d --- in2 = %d --- out = %b %b(%d%d)",
                 in1, in2, MSout, LSout, MSout, LSout);

endmodule