module decoder1x2(input a, output [1:0] y);
  assign y[0] = ~a;
  assign y[1] = a;
endmodule

