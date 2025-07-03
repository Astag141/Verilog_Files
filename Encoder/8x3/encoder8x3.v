module encoder8x3 (input [7:0] d, output a, b, c);
    or (c, d[4], d[5], d[6], d[7]);
    or (b, d[2], d[3], d[6], d[7]);
    or (a, d[1], d[3], d[5], d[7]);
endmodule
