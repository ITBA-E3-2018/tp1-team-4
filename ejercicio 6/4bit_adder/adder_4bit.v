//----------------------------------------------//
// Sumador de dos numeros de 4 bits             //
// Nombre del archivo: x4bit_adder               //
// Electronica III - Grupo 4                    //
// ---------------------------------------------//

`include "../complete_adder/complete_adder.v"

module adder_4bit(s, c_out, c_in, x, y);
    input       c_in;
    input[3:0]  x, y;
    output[3:0] s;
    output      c_out;

    wire        net0, net1, net2;

    complete_adder c_adder_0(s[0], net0, c_in, x[0], y[0]);
    complete_adder c_adder_1(s[1], net1, net0, x[1], y[1]);
    complete_adder c_adder_2(s[2], net2, net1, x[2], y[2]);
    complete_adder c_adder_3(s[3], c_out, net2, x[3], y[3]);
endmodule