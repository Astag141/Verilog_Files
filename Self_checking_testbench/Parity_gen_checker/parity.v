module parity #(parameter WIDTH=8) (
    input [WIDTH-1:0] data,
    output parity_bit
);
    assign parity_bit = ^data;
endmodule
