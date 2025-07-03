module demux1x2(input din, input sel, output [1:0] y);
  assign y[0] = ~sel & din;
  assign y[1] = sel & din;
endmodule

