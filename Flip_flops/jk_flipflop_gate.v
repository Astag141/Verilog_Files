module jk_flipflop_gate (
    input J, K, clk,
    output Q, Qbar
);
    wire j1, k1;

    nand(j1, J, clk, Qbar);
    nand(k1, K, clk, Q);
    nand(Q, j1, Qbar);
    nand(Qbar, k1, Q);
endmodule
