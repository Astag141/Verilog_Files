module demux1to8(
    input in,
    input [2:0] sel,
    output [7:0] out
);
    assign out = (in << sel);
endmodule
