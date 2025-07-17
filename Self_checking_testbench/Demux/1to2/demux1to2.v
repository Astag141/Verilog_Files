module demux1to2(
    input in,
    input sel,
    output [1:0] out
);
    assign out[0] = sel ? 1'b0 : in;
    assign out[1] = sel ? in : 1'b0;
endmodule

