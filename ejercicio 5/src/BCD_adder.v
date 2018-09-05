module BCD_adder(in1, in2, MSout, LSout);
    input[3:0]      in1, in2;
    output [3:0]    LSout;
    output [3:0]    MSout;
    reg[7:0]        sum;

    assign LSout = sum[3:0];
    assign MSout = sum[7:4];

    always @(in1, in2)
    begin
        sum = in1 + in2;
        if((sum[3:0] > 9))
        begin
            sum[3:0] = sum[3:0] + 6;
            sum[7:4] = 1;
        end
    end
endmodule