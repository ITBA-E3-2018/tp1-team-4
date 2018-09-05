module y1_complemento2(a0, a1, y1);
    input a0, a1;
    output y1;

    xor(y1, a0, a1);

endmodule