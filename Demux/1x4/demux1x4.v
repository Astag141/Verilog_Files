module demux1x4 (input d, input [1:0] sel, output y0, y1, y2, y3);
    wire nsel0, nsel1;
    not (nsel0, sel[0]);
    not (nsel1, sel[1]);
    and (y0, d, nsel1, nsel0);
    and (y1, d, nsel1, sel[0]);
    and (y2, d, sel[1], nsel0);
    and (y3, d, sel[1], sel[0]);
endmodule
