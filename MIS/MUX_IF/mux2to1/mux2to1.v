module mux2to1 (
  input wire a, b,
  input wire sel,
  output reg y
);
  always @(*) begin
    if (sel == 0)
      y = a;
    else
      y = b;
  end
endmodule
