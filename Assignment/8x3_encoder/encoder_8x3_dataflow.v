// encoder_8x3_dataflow.v
module encoder_8x3_dataflow (
    input  wire [7:0] in,
    output wire [2:0] out
);

    // Priority encoder using dataflow modeling
    assign out = (in[7]) ? 3'b111 :
                 (in[6]) ? 3'b110 :
                 (in[5]) ? 3'b101 :
                 (in[4]) ? 3'b100 :
                 (in[3]) ? 3'b011 :
                 (in[2]) ? 3'b010 :
                 (in[1]) ? 3'b001 :
                 (in[0]) ? 3'b000 :
                 3'b000; // default when all inputs are 0

endmodule