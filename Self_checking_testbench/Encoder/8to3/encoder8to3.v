module encoder8to3(
    input [7:0] in,
    output [2:0] out,
    output valid
);
    assign out[0] = in[1] | in[3] | in[5] | in[7];
    assign out[1] = in[2] | in[3] | in[6] | in[7];
    assign out[2] = in[4] | in[5] | in[6] | in[7];
    assign valid = |in;
endmodule
