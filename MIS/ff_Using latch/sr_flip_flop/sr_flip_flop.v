
module sr_latch (
    input s, r, rst,
    output reg q
);
    always @(*) begin
        if (rst)
            q = 0;
        else if (s & ~r)
            q = 1;
        else if (~s & r)
            q = 0;
        else if (~s & ~r)
            q = q;
        else
            q = 1'bx;
    end
endmodule

module sr_flip_flop (
    input s, r, clk, rst,
    output q
);
    wire qm;
    sr_latch master (.s(s), .r(r), .rst(rst), .q(qm));
    sr_latch slave  (.s(qm), .r(~qm), .rst(rst), .q(q));
endmodule
