//----------------------------------------------//
// Sumador completo de dos bits                 //
// Nombre del archivo: complete_adder.v         //
// Electronica III - Grupo 4                    //
// ---------------------------------------------//

module full_adder(sum, c_out, c_in, in1, in2);
    input   in1, in2, c_in;
    output  sum, c_out;

    assign{c_out,sum} = in1 + in2 + c_in;

endmodule