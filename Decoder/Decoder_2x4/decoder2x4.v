module decoder2x4 (input a, b, output d0, d1, d2, d3);
    wire nota, notb;
    not (nota, a);
    not (notb, b);
    and (d0, nota, notb);
    and (d1, nota, b);
    and (d2, a, notb);
    and (d3, a, b);
endmodule
