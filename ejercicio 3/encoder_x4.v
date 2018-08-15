//--------------------------------------//
// Encoder con prioridad de 4 inputs    //
// Nombre del archivo: encoder_x4.v     //
// Electronica III - Grupo 4            //
// -------------------------------------//

module encoder_x4(z1, z0, y, x);
    
    // Inputs-Outputs
    input[3:0]  x;
    output      z1, z2, y;
    wire        z1, z2, y;

    // Descripción de nodos internos
    wire        net1, net2;
    not(net1, x[2]);
    and(net2, net1, x[1]);

    or(z1, x[2], x[3]);
    or(z0, x[3], net2);
    or(y, x[0], x[1], x[2], x[3]);
endmodule