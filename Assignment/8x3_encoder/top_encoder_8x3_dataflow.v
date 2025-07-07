// top_encoder_8x3_dataflow.v
module top_encoder_8x3_dataflow (
    input  wire [7:0] in,
    output wire [2:0] out
);

    // Connect to DUT
    encoder_8x3_dataflow encoder_inst (
        .in(in),
        .out(out)
    );

endmodule