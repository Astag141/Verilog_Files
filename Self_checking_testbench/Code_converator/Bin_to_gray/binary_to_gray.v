module binary_to_gray #(parameter WIDTH=4) (
    input [WIDTH-1:0] binary,
    output [WIDTH-1:0] gray
);
    assign gray = binary ^ (binary >> 1);
endmodule
