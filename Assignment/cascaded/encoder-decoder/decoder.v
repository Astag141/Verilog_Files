module decoder(input [1:0]y, output [3:0]i);

    assign i[0]=~y[1]&~y[0];
    assign i[1]=~y[1]&y[0];
    assign i[2]=y[1]&~y[0];
    assign i[3]=y[1]&y[0];

endmodule
