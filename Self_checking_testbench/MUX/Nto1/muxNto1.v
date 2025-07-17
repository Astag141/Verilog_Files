module muxNto1 #(
    parameter WIDTH = 4,
    parameter SEL_WIDTH = $clog2(WIDTH)
) (
    input [WIDTH-1:0] data,
    input [SEL_WIDTH-1:0] sel,
    output out
);
    assign out = data[sel];
endmodule
