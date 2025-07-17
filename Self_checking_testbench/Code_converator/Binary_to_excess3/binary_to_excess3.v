module binary_to_excess3 (
    input [3:0] binary,
    output [3:0] excess3
);
    assign excess3 = binary + 4'd3;
endmodule