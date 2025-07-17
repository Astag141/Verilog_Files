module mux2to1(
    input [1:0] data,
    input sel,
    output out
);
    assign out = sel ? data[1] : data[0];
endmodule
