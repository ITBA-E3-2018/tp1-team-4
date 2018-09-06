module demux1to4(out,sel,data,enable);

    input           enable, data;
    input[1:0]      sel;
    output reg[3:0] out;
    integer         k;

    always @(sel, data, enable)
        for(k = 0; k < 4; k = k + 1)
            if((sel == k)&&(enable == 1))
                out[k] = data;
            else
                out[k] = 0;
endmodule