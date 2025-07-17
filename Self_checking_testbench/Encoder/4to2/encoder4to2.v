module encoder4to2(
    input [3:0] in,
    output [1:0] out,
    output valid
);
    assign out[0] = in[1] | in[3];
    assign out[1] = in[2] | in[3];
    assign valid = |in;
endmodule
