module t_latch(input T, En, output reg Q);
    always @ (T or En)
        if (En)
            if (T)
                Q = ~Q;
endmodule