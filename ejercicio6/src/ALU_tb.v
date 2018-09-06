`include "src/ALUx4.v"

module ALU_tb;
    reg[3:0]    ALU_in1, ALU_in2;
    reg[2:0]    ALU_option;
    wire        ALU_Cout;
    wire[3:0]   ALU_out;


    ALUx4 dut(ALU_option, ALU_in1, ALU_in2, ALU_out, ALU_Cout);
    integer     k,r;

    initial
    begin
        //Suma:
        $display("Suma");
        ALU_option = 3'b000; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
        ALU_option = 3'b000; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b000; ALU_in1 = 4'b1100; ALU_in2 = 4'b1001; #10;
        ALU_option = 3'b000; ALU_in1 = 4'b1111; ALU_in2 = 4'b1111; #10;
        ALU_option = 3'b000; ALU_in1 = 4'b1010; ALU_in2 = 4'b1010; #10;

        //Resta:
        $display("Resta");
        ALU_option = 3'b001; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
        ALU_option = 3'b001; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b001; ALU_in1 = 4'b1100; ALU_in2 = 4'b1001; #10;
        ALU_option = 3'b001; ALU_in1 = 4'b1111; ALU_in2 = 4'b1111; #10;
        ALU_option = 3'b001; ALU_in1 = 4'b1010; ALU_in2 = 4'b1010; #10;
        ALU_option = 3'b001; ALU_in1 = 4'b1000; ALU_in2 = 4'b0100; #10;
        ALU_option = 3'b001; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b001; ALU_in1 = 4'b0010; ALU_in2 = 4'b1010; #10;
        
        //AND:
        $display("AND");
        ALU_option = 3'b010; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
        ALU_option = 3'b010; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b010; ALU_in1 = 4'b1100; ALU_in2 = 4'b1001; #10;
        ALU_option = 3'b010; ALU_in1 = 4'b1111; ALU_in2 = 4'b1111; #10;
        ALU_option = 3'b010; ALU_in1 = 4'b1010; ALU_in2 = 4'b1010; #10;
        ALU_option = 3'b010; ALU_in1 = 4'b1000; ALU_in2 = 4'b0100; #10;
        ALU_option = 3'b010; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b010; ALU_in1 = 4'b0010; ALU_in2 = 4'b1010; #10;

        //OR:
        $display("OR");
        ALU_option = 3'b011; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
        ALU_option = 3'b011; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b011; ALU_in1 = 4'b1100; ALU_in2 = 4'b1001; #10;
        ALU_option = 3'b011; ALU_in1 = 4'b1111; ALU_in2 = 4'b1111; #10;
        ALU_option = 3'b011; ALU_in1 = 4'b1010; ALU_in2 = 4'b1010; #10;
        ALU_option = 3'b011; ALU_in1 = 4'b1000; ALU_in2 = 4'b0100; #10;
        ALU_option = 3'b011; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b011; ALU_in1 = 4'b0010; ALU_in2 = 4'b1010; #10;

        //NOT:
        $display("NOT");
        ALU_option = 3'b100; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
        ALU_option = 3'b100; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b100; ALU_in1 = 4'b1100; ALU_in2 = 4'b1001; #10;
        ALU_option = 3'b100; ALU_in1 = 4'b1111; ALU_in2 = 4'b1111; #10;
        ALU_option = 3'b100; ALU_in1 = 4'b1010; ALU_in2 = 4'b1010; #10;
        ALU_option = 3'b100; ALU_in1 = 4'b1000; ALU_in2 = 4'b0100; #10;
        ALU_option = 3'b100; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b100; ALU_in1 = 4'b0010; ALU_in2 = 4'b1010; #10;

        //XOR:
        $display("XOR");
        ALU_option = 3'b101; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
        ALU_option = 3'b101; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b101; ALU_in1 = 4'b1100; ALU_in2 = 4'b1001; #10;
        ALU_option = 3'b101; ALU_in1 = 4'b1111; ALU_in2 = 4'b1111; #10;
        ALU_option = 3'b101; ALU_in1 = 4'b1010; ALU_in2 = 4'b1010; #10;
        ALU_option = 3'b101; ALU_in1 = 4'b1000; ALU_in2 = 4'b0100; #10;
        ALU_option = 3'b101; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b101; ALU_in1 = 4'b0010; ALU_in2 = 4'b1010; #10;

        //TWO'S COMPLEMENT:
        $display("TWO'S COMPLEMENT");
        ALU_option = 3'b110; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
        ALU_option = 3'b110; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b110; ALU_in1 = 4'b1100; ALU_in2 = 4'b1001; #10;
        ALU_option = 3'b110; ALU_in1 = 4'b1111; ALU_in2 = 4'b1111; #10;
        ALU_option = 3'b110; ALU_in1 = 4'b1010; ALU_in2 = 4'b1010; #10;
        ALU_option = 3'b110; ALU_in1 = 4'b1000; ALU_in2 = 4'b0100; #10;
        ALU_option = 3'b110; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b110; ALU_in1 = 4'b0010; ALU_in2 = 4'b1010; #10;

        //SHIFT LEFT:
        $display("SHIFT LEFT");
        ALU_option = 3'b111; ALU_in1 = 4'b0000; ALU_in2 = 4'b0000; #10;
        ALU_option = 3'b111; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b111; ALU_in1 = 4'b1100; ALU_in2 = 4'b1001; #10;
        ALU_option = 3'b111; ALU_in1 = 4'b1111; ALU_in2 = 4'b1111; #10;
        ALU_option = 3'b111; ALU_in1 = 4'b1010; ALU_in2 = 4'b1010; #10;
        ALU_option = 3'b111; ALU_in1 = 4'b1000; ALU_in2 = 4'b0100; #10;
        ALU_option = 3'b111; ALU_in1 = 4'b0100; ALU_in2 = 4'b1000; #10;
        ALU_option = 3'b111; ALU_in1 = 4'b0010; ALU_in2 = 4'b1010; #10;

        $finish;
    end

    initial
        $monitor("option = %b - input1 = %b(%d) - input2 = %b(%d) - out = %b(%d) - carry = %b",
                 ALU_option, ALU_in1, ALU_in1, ALU_in2, ALU_in2, ALU_out, ALU_out, ALU_Cout);

endmodule