module BCD_adder(in1, in2, Cin, out, Cout);
    input[3:0]      in1, in2;
    input           Cin;
    output [3:0]    out;
    output          Cout;
    reg[4:0]        sum;

    assign out = sum[3:0];
    assign Cout = sum[4];

    always @(in1, in2, Cin)
    begin
        sum = in1 + in2 + Cin;
        if((sum > 9))
        begin
            sum = sum + 6;
        end
    end
endmodule