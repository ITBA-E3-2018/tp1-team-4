//----------------------------------------------//
// Demultiplexor de 4 salidas/2 entradas        //
// Nombre del archivo: demux_2x4                //
// Electronica III - Grupo 4                    //
// ---------------------------------------------//

module demux_2x4(z, d, x);
    input[1:0]  x;
    input       d;
    output[3:0] z;

    wire net0,net1;
    not(net0, x[0]);
    not(net1, x[1]);

    and(z[3], d, x[1], x[0]);
    and(z[2], d, x[1], net0);
    and(z[1], d, net1, x[0]);
    and(z[0], d, net1, net0);
endmodule