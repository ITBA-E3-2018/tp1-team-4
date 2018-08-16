`include "adder_4bit.v"

module  adder_tb;
    reg[3:0]    x,y;
    reg         c_in;
    wire[3:0]   s;
    wire        c_out;
    
    adder_4bit adder(s, c_out, c_in, x, y);

    initial begin
    #1 c_in = 0;
    #1 x = 0;
    #1 y = 0;
    #1 $display("\n\n");
    #1 $display("ci:\t%b", c_in);
    #1 $display("\t+");
    #1 $display("x:\t%b", x);
    #1 $display("\t+");
    #1 $display("y:\t%b", y);
    #1 $display("\t____");
    #1 $display("s:\t%b%b", c_out, s);

    #1 c_in = 0;
    #1 x = 0;
    #1 y = 1;
    #1 $display("\n\n");
    #1 $display("ci:\t%b", c_in);
    #1 $display("\t+");
    #1 $display("x:\t%b", x);
    #1 $display("\t+");
    #1 $display("y:\t%b", y);
    #1 $display("\t____");
    #1 $display("s:\t%b%b", c_out, s);

    #1 c_in = 0;
    #1 x = 2;
    #1 y = 3;
    #1 $display("\n\n");
    #1 $display("ci:\t%b", c_in);
    #1 $display("\t+");
    #1 $display("x:\t%b", x);
    #1 $display("\t+");
    #1 $display("y:\t%b", y);
    #1 $display("\t____");
    #1 $display("s:\t%b%b", c_out, s);

    #1 c_in = 1;
    #1 x = 10;
    #1 y = 15;
    #1 $display("\n\n");
    #1 $display("ci:\t%b", c_in);
    #1 $display("\t+");
    #1 $display("x:\t%b", x);
    #1 $display("\t+");
    #1 $display("y:\t%b", y);
    #1 $display("\t____");
    #1 $display("s:\t%b%b", c_out, s);

    #1 c_in = 0;
    #1 x = 15;
    #1 y = 15;
    #1 $display("\n\n");
    #1 $display("ci:\t%b", c_in);
    #1 $display("\t+");
    #1 $display("x:\t%b", x);
    #1 $display("\t+");
    #1 $display("y:\t%b", y);
    #1 $display("\t____");
    #1 $display("s:\t%b%b", c_out, s);

    #1 c_in = 1;
    #1 x = 15;
    #1 y = 15;
    #1 $display("\n\n");
    #1 $display("ci:\t%b", c_in);
    #1 $display("\t+");
    #1 $display("x:\t%b", x);
    #1 $display("\t+");
    #1 $display("y:\t%b", y);
    #1 $display("\t____");
    #1 $display("s:\t%b%b", c_out, s);

    #1 c_in = 1;
    #1 x = 0;
    #1 y = 0;
    #1 $display("\n\n");
    #1 $display("ci:\t%b", c_in);
    #1 $display("\t+");
    #1 $display("x:\t%b", x);
    #1 $display("\t+");
    #1 $display("y:\t%b", y);
    #1 $display("\t____");
    #1 $display("s:\t%b%b", c_out, s);


    
    end
endmodule