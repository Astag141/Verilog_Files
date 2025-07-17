module bcd_to_binary (
    input [3:0] bcd,
    output [3:0] binary
);
    assign binary = (bcd > 4'd9) ? 4'b0000 : bcd;
endmodule
