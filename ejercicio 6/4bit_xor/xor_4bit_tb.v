`include "xor_4bit.v"

module xor_4bit_tb;
    reg[3:0]    x, y;
    wire[3:0]   z;

    xor_4bit xor_x4(z, x, y);

    initial begin

        #1 x = 0;
        #1 y = 0;
        #1 $display("\n\n");
        #1 $display("x:\t%b", x);
        #1 $display("\tXOR");
        #1 $display("y:\t%b", y);
        #1 $display("\t____");
        #1 $display("z:\t%b", z);

        #1 x = 5;
        #1 y = 2;
        #1 $display("\n\n");
        #1 $display("x:\t%b", x);
        #1 $display("\tXOR");
        #1 $display("y:\t%b", y);
        #1 $display("\t____");
        #1 $display("z:\t%b", z);

        #1 x = 7;
        #1 y = 12;
        #1 $display("\n\n");
        #1 $display("x:\t%b", x);
        #1 $display("\tXOR");
        #1 $display("y:\t%b", y);
        #1 $display("\t____");
        #1 $display("z:\t%b", z);

        #1 x = 15;
        #1 y = 15;
        #1 $display("\n\n");
        #1 $display("x:\t%b", x);
        #1 $display("\tXOR");
        #1 $display("y:\t%b", y);
        #1 $display("\t____");
        #1 $display("z:\t%b", z);

        #1 x = 10;
        #1 y = 9;
        #1 $display("\n\n");
        #1 $display("x:\t%b", x);
        #1 $display("\tXOR");
        #1 $display("y:\t%b", y);
        #1 $display("\t____");
        #1 $display("z:\t%b", z);

    end
endmodule