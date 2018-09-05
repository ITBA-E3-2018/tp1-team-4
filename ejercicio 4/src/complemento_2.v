`include "src/y1.v"
`include "src/y2.v"
`include "src/y3.v"

module complemento_2(in, out);
    input[3:0]  in;
    output wire[3:0] out;

    y1_complemento2 y1_module(in[0], in[1], out[1]);
    y2_complemento2 y2_module(in[0], in[1], in[2], out[2]);
    y3_complemento2 y3_moudle(in[0], in[1], in[2], in[3], out[3]);

endmodule