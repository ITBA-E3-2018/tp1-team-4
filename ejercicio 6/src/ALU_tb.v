`include "src/ALUx4"

module ALU_tb;

reg[3:0]    ALU_in1, ALU_in2, ALU_out;
reg[2:0]    ALU_option;
reg         ALU_Cout;

ALUx4 dut(ALU_option, ALU_in1, ALU_in2, ALU_out, ALU_Cout);
integer     k,r;

initial
begin
    //Suma:
    ALU_option = 3'b000; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
    for(k = 0; k < 16; k = k + 1)
    begin
        for(r = 0; r < 16; r = r + 1)
        begin
            ALU_in1 = ALU_in1 + k;
            ALU_in2 = ALU_in2 + r;
            #10;
        end 
    end
end
endmodule