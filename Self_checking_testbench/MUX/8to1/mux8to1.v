module mux8to1(
    input [7:0] data,
    input [2:0] sel,
    output out
);
    assign out = data[sel];
endmodule
