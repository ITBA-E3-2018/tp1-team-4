module y2_complemento2(a0, a1, a2, y2);
    input a0, a1, a2;
    output y2;
    wire net1, net2, net3, net4, net5, net6;

    not(net1, a2);
    not(net2, a1);
    not(net3, a0);

    and(net4, net1, a0);
    and(net5, net1, a1);
    and(net6, net2, net3, a2);

    or(y2, net4, net5, net6);

endmodule