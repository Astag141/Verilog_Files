
module gated_sr_latch (
    input s, r, en, rst,
    output reg q
);
    always @(*) begin
        if (rst)
            q = 0;
        else if (en) begin
            if (s & ~r)
                q = 1;
            else if (~s & r)
                q = 0;
            else if (~s & ~r)
                q = q;
            else
                q = 1'bx;
        end
    end
endmodule

module gated_sr_flip_flop (
    input s, r, clk, rst,
    output q
);
    wire qm;
    gated_sr_latch master (.s(s), .r(r), .en(~clk), .rst(rst), .q(qm));
    gated_sr_latch slave  (.s(qm), .r(~qm), .en(clk), .rst(rst), .q(q));
endmodule
