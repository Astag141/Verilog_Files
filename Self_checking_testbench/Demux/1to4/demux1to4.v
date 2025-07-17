module demux1to4(
    input in,
    input [1:0] sel,
    output [3:0] out
);
    assign out = (in << sel);
endmodule
