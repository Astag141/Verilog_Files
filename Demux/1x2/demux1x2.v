module demux1x2 (input d, sel, output y0, y1);
    wire not_sel;
    not (not_sel, sel);
    and (y0, d, not_sel);
    and (y1, d, sel);
endmodule
