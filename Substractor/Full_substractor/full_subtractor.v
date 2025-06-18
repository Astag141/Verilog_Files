module full_subtractor(input a, b, bin, output diff, bout);
    wire d1, b1, b2;
    xor (d1, a, b);
    xor (diff, d1, bin);
    and (b1, ~a, b);
    and (b2, ~d1, bin);
    or (bout, b1, b2);
endmodule
