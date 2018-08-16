//----------------------------------------------//
// Sumador completo de dos bits                 //
// Nombre del archivo: complete_adder.v         //
// Electronica III - Grupo 4                    //
// ---------------------------------------------//

module complete_adder(s, c_out, c_in, x, y);
    input   x, y, c_in;
    output  s, c_out;
    
    wire    net1, net2, net3;

    xor(net1, x, y);
    and(net2, x, y);
    and(net3, c_in, net1);

    xor(s, c_in, net1);
    or(c_out, net2, net3);
endmodule