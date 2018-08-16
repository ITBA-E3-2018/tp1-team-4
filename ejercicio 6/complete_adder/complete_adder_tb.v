`include "complete_adder.v"

module complete_adder_tb;
    reg     x,y,c_in;
    wire    s, c_out;

    complete_adder ca(s, c_out, c_in, x, y);

    initial begin
        #1 $display("c_in\tx\ty\ts\tc_o");
        #1 c_in = 1'b0;
        #1 x = 1'b0;
        #1 y = 1'b0;
        #1 $display("%b\t%b\t%b\t%b\t%b",c_in, x, y, s, c_out);
        #1 c_in = 1'b0;
        #1 x = 1'b0;
        #1 y = 1'b1;
        #1 $display("%b\t%b\t%b\t%b\t%b",c_in, x, y, s, c_out);
        #1 c_in = 1'b0;
        #1 x = 1'b1;
        #1 y = 1'b0;
        #1 $display("%b\t%b\t%b\t%b\t%b",c_in, x, y, s, c_out);
        #1 c_in = 1'b0;
        #1 x = 1'b1;
        #1 y = 1'b1;
        #1 $display("%b\t%b\t%b\t%b\t%b",c_in, x, y, s, c_out);
        #1 c_in = 1'b1;
        #1 x = 1'b0;
        #1 y = 1'b0;
        #1 $display("%b\t%b\t%b\t%b\t%b",c_in, x, y, s, c_out);
        #1 c_in = 1'b1;
        #1 x = 1'b0;
        #1 y = 1'b1;
        #1 $display("%b\t%b\t%b\t%b\t%b",c_in, x, y, s, c_out);
        #1 c_in = 1'b1;
        #1 x = 1'b1;
        #1 y = 1'b0;
        #1 $display("%b\t%b\t%b\t%b\t%b",c_in, x, y, s, c_out);
        #1 c_in = 1'b1;
        #1 x = 1'b1;
        #1 y = 1'b1;
        #1 $display("%b\t%b\t%b\t%b\t%b",c_in, x, y, s, c_out);
    end
endmodule