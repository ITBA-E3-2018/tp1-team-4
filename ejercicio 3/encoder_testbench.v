//------------------------------------------//
// Test Bench para encoder con              //
// prioridad de 4 inputs                    //
// Nombre del archivo: encoder_testbench.v  //
// Electronica III - Grupo 4                //
// -----------------------------------------//

`include "encoder_x4.v"

module ecoder_tb;
    reg[3:0]    x;
    wire        z1, z0, y;
    encoder_x4  encoder(.x(x), .y(y), .z1(z1), .z0(z0));

    initial begin
        #10 x = 4'b0001;
        $display("Input: %b -- Output: %b", x, )
        #10 x = 4'b0010;
        #10 x = 4'b0100;
        #10 x = 4'b1000;

        #10 $stop;
    end
endmodule;