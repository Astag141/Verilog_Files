module d_latch(input D, En, output reg Q);
    always @ (D or En)
        if (En)
            Q = D;
endmodule