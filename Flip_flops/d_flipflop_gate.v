module d_flipflop_gate (
    input D, clk,
    output Q, Qbar
);
    wire S, R;

    not (R, D);
    assign S = D;

    sr_flipflop_gate sr1 (.S(S), .R(R), .clk(clk), .Q(Q), .Qbar(Qbar));
endmodule
