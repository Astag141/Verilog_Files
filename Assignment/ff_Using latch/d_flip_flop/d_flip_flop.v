
module d_latch (
    input d, en, rst,
    output reg q
);
    always @(*) begin
        if (rst)
            q = 0;
        else if (en)
            q = d;
    end
endmodule

module d_flip_flop (
    input d, clk, rst,
    output q
);
    wire qm;
    d_latch master (.d(d), .en(~clk), .rst(rst), .q(qm));
    d_latch slave  (.d(qm), .en(clk), .rst(rst), .q(q));
endmodule
