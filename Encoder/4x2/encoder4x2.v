module encoder4x2 (input [3:0] d, output a, b);
    or (a, d[2], d[3]);
    or (b, d[1], d[3]);
endmodule
