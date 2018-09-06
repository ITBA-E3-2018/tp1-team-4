//------------------------------------------//
// Test Bench para encoder con              //
// prioridad de 4 inputs                    //
// Nombre del archivo: encoder_testbench.v  //
// Electronica III - Grupo 4                //
// -----------------------------------------//

`include "src/prior_encoder_4x2.v"

module ecoder_tb;
    reg[3:0]    in;
    wire[1:0]   out;
    wire        flag;
    reg         enable;

    encoder_x4  encoder(out,flag,in,enable);

    initial begin
    
        enable = 0; in = 0; #10;
        enable = 0; in = 1; #10;
        enable = 0; in = 2; #10;
        enable = 0; in = 3; #10;
        enable = 0; in = 4; #10;
        enable = 0; in = 5; #10;
        enable = 0; in = 6; #10;
        enable = 0; in = 7; #10;
        enable = 0; in = 8; #10;
        enable = 0; in = 9; #10;
        enable = 0; in = 10; #10;
        enable = 0; in = 11; #10;
        enable = 0; in = 12; #10;
        enable = 0; in = 13; #10;
        enable = 0; in = 14; #10;
        enable = 0; in = 15; #10;

        enable = 1; in = 0; #10;
        enable = 1; in = 1; #10;
        enable = 1; in = 2; #10;
        enable = 1; in = 3; #10;
        enable = 1; in = 4; #10;
        enable = 1; in = 5; #10;
        enable = 1; in = 6; #10;
        enable = 1; in = 7; #10;
        enable = 1; in = 8; #10;
        enable = 1; in = 9; #10;
        enable = 1; in = 10; #10;
        enable = 1; in = 11; #10;
        enable = 1; in = 12; #10;
        enable = 1; in = 13; #10;
        enable = 1; in = 14; #10;
        enable = 1; in = 15; #10;

        $finish;
    end

    initial
        $monitor("enable = %b - in = %b - out = %b - flag = %b", enable, in, out, flag);

endmodule