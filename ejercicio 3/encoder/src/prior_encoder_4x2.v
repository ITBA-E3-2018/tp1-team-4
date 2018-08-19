//----------------------------------------------//
// Encoder con prioridad de 4 inputs/2 outputs  //
// Nombre del archivo: prior_encoder_4x2.v      //
// Electronica III - Grupo 4                    //
// ---------------------------------------------//

module encoder_x4(z, y, x);
    
    // Inputs-Outputs
    input[3:0]  x;
    output[1:0] z;
    output      y;     

    // Descripción de nodos internos
    wire    net1, net2;
    not(net1, x[2]);
    and(net2, net1, x[1]);

    or(z[1], x[3], x[2]);
    or(z[0], x[1], net2);
    or(y, x[0], x[1], x[2], x[3]);
endmodule