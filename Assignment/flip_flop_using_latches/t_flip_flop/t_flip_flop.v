
module t_latch (
    input t, en, rst,
    output reg q
);
    always @(*) begin
        if (rst)
            q = 0;
        else if (en && t)
            q = ~q;
    end
endmodule

module t_flip_flop (
    input t, clk, rst,
    output q
);
    wire qm;
    t_latch master (.t(t), .en(~clk), .rst(rst), .q(qm));
    t_latch slave  (.t(qm), .en(clk), .rst(rst), .q(q));
endmodule
