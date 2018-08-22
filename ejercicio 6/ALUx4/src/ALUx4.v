module ALUx4(ALU_option, ALU_in1, ALU_in2, ALU_out);

input[2:0]      ALU_option;
input[3:0]      ALU_in1, ALU_in2;
output reg[3:0] ALU_out;

always @(ALU_option, ALU_in1, ALU_in2)
begin
    case(ALU_option)
        3'b000:
            ALU_out = ALU_in1 + ALU_in2;
        3'b001:
            ALU_out = ALU_in1 - ALU_in2;
        3'b010:
            ALU_out = ALU_in1 & ALU_in2;
        3'b011:
            ALU_out = ALU_in1 | ALU_in2;
        3'b100:
            ALU_out = ~ALU_in1;
        3'b101:
            ALU_out = ALU_in1 ^ ALU_in2;
        3'b110:
            ALU_out = _ALU_in1;
        3'b111:
            ALU_out = <<ALU_in1;
    endcase
end

endmodule