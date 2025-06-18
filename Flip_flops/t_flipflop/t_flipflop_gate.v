module t_flipflop_gate (
    input T, clk,
    output reg Q
);
    always @(posedge clk)
    begin
        if (T)
            Q = ~Q;
        else
            Q = Q;
    end
endmodule
