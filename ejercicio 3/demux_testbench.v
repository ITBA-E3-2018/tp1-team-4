//------------------------------------------//
// Test Bench para demultiplexor            //
// de 2 inputs y 4 outputs                  //
// Nombre del archivo: encoder_testbench.v  //
// Electronica III - Grupo 4                //
// -----------------------------------------//

`include "demux_2x4.v"

module demux_tb;
    reg[1:0]    x;
    reg[3:0]    z;
    reg         d;

    demux_2x4 demux(z, d, x);

    initial begin

        // Casos d = 0
        #1 $display("Casos d = 0");
        #1 d = 1'b0;
        #1 x = 2'b00;
        #1 $display("d = %b --  x = %b  --  z = %b",d, x, z);
        #1 x = 2'b01;
        #1 $display("d = %b --  x = %b  --  z = %b",d, x, z);
        #1 x = 2'b10;
        #1 $display("d = %b --  x = %b  --  z = %b",d, x, z);
        #1 x = 2'b11;
        #1 $display("d = %b --  x = %b  --  z = %b",d, x, z);

        // Casos d = 1
        #1 $display("Casos d = 1");
        #1 d = 1'b1;
        #1 x = 2'b00;
        #1 $display("d = %b --  x = %b  --  z = %b",d, x, z);
        #1 x = 2'b01;
        #1 $display("d = %b --  x = %b  --  z = %b",d, x, z);
        #1 x = 2'b10;
        #1 $display("d = %b --  x = %b  --  z = %b",d, x, z);
        #1 x = 2'b11;
        #1 $display("d = %b --  x = %b  --  z = %b",d, x, z);
    end 
endmodule


