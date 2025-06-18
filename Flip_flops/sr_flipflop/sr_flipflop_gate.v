module sr_flipflop_gate (
    input S, R, clk,
    output Q, Qbar
);
    wire S_g, R_g, Qa, Qb;

    and(S_g, S, clk);
    and(R_g, R, clk);
    nand(Q, S_g, Qbar);
    nand(Qbar, R_g, Q);
endmodule
