module y3_complemento2(a3, a2, a1, a0, y3);
    input   a0, a1, a2, a3;
    output  y3;
    wire    net1;

    or(net1,a0, a1, a2);
    xor(y3, net1, a3);

endmodule