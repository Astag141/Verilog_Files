module jk_latch(input J, K, En, output reg Q);
    always @ (J or K or En)
        if (En)
            case ({J, K})
                2'b00: Q = Q;
                2'b01: Q = 0;
                2'b10: Q = 1;
                2'b11: Q = ~Q;
            endcase
endmodule