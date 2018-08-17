//----------------------------------------------//
// XOR de 4 bits. Realiza XOR de x[i] con y[i]  //
// Nombre del archivo: xor_4bit.v               //
// Electronica III - Grupo 4                    //
// ---------------------------------------------//

module xor_4bit(z, x, y);
    input[3:0]  x, y;
    output[3:0] z;

    xor(z[0], x[0], y[0]);
    xor(z[1], x[1], y[1]);
    xor(z[2], x[2], y[2]);
    xor(z[3], x[3], y[3]);
endmodule