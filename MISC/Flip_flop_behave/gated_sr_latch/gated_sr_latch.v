module gated_sr_latch(input S, R, En, output reg Q, output Qn);
    assign Qn = ~Q;
    always @ (S or R or En)
        if (En)
            case ({S, R})
                2'b00: Q = Q;
                2'b01: Q = 0;
                2'b10: Q = 1;
                2'b11: Q = 1'bx;
            endcase
endmodule