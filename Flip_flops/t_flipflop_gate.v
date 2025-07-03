module t_flipflop_gate (
    input T, clk,
    output reg Q
);
    initial Q = 0;

    always @(posedge clk) begin
        if (T)
            Q <= ~Q;
        else
            Q <= Q;
    end
endmodule
