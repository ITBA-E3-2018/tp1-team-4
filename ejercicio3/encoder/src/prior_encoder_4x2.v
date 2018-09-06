//----------------------------------------------//
// Encoder con prioridad de 4 inputs/2 outputs  //
// Nombre del archivo: prior_encoder_4x2.v      //
// Electronica III - Grupo 4                    //
// ---------------------------------------------//

module encoder_x4(out, flag, in, enable);
    input enable;
    input[3:0] in;
    output reg[1:0] out;
    output reg flag;

    always @(in, enable)begin

    if(in == 0)
        flag <= 0;
    else if(in != 0)
        flag <= 1;
    if(enable == 1)begin
            if(in == 0)
                out = 0;
            else if((in == 2)||(in == 3))
                out = 1;
            else if((in > 3) && (in < 8))
                out = 2;
            else if((in > 7) && (in <=15))
                out = 3;
    end
    else if(enable == 0)
        out <= 0;
    end
endmodule