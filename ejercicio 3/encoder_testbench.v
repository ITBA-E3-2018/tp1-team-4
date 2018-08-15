//------------------------------------------//
// Test Bench para encoder con              //
// prioridad de 4 inputs                    //
// Nombre del archivo: encoder_testbench.v  //
// Electronica III - Grupo 4                //
// -----------------------------------------//

`include "encoder_x4.v"

module ecoder_tb;
    reg[3:0]    x;
    wire[1:0]   z;
    wire        y;

    encoder_x4  encoder(z,y,x);

    initial begin
        #1 $display("Test Bench Encoder con prioridad 4x2");

        // Casos "sin prioridad"
        #1 $display("Casos 'sin prioridad'");
        #10 x = 4'b0001;
        #1 $display("Input: %b -- Output: %b", x, z);
        #10 x = 4'b0010;
        #1 $display("Input: %b -- Output: %b", x, z);
        #10 x = 4'b0100;
        #1 $display("Input: %b -- Output: %b", x, z);
        #10 x = 4'b1000;
        #1 $display("Input: %b -- Output: %b", x, z);

        // Casos con prioridad
        #1 $display("Casos 'con prioridad");
        #10 x = 4'b0101;
        #1 $display("Input: %b -- Output: %b", x, z);
        #10 x = 4'b1010;
        #1 $display("Input: %b -- Output: %b", x, z);
        #10 x = 4'b1100;
        #1 $display("Input: %b -- Output: %b", x, z);
        #10 x = 4'b1010;
        #1 $display("Input: %b -- Output: %b", x, z);



        #10 $stop;
    end
endmodule