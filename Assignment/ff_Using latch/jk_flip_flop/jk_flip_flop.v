
module jk_latch (
    input j, k, en, rst,
    output reg q
);
    always @(*) begin
        if (rst)
            q = 0;
        else if (en) begin
            case ({j, k})
                2'b00: q = q;
                2'b01: q = 0;
                2'b10: q = 1;
                2'b11: q = ~q;
            endcase
        end
    end
endmodule

module jk_flip_flop (
    input j, k, clk, rst,
    output q
);
    wire qm;
    jk_latch master (.j(j), .k(k), .en(~clk), .rst(rst), .q(qm));
    jk_latch slave  (.j(qm), .k(~qm), .en(clk), .rst(rst), .q(q));
endmodule
