module M (input a, b, c, d, input [1:0] sel, output y);
    wire nsel0, nsel1, and1, and2, and3, and4;
    not (nsel0, sel[0]);
    not (nsel1, sel[1]);
    and (and1, a, nsel1, nsel0);
    and (and2, b, nsel1, sel[0]);
    and (and3, c, sel[1], nsel0);
    and (and4, d, sel[1], sel[0]);
    or (y, and1, and2, and3, and4);
endmodule