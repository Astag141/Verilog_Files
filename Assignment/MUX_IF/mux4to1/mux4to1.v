module mux4to1 (
  input wire [3:0] in,
  input wire [1:0] sel,
  output reg y
);
  always @(*) begin
    if (sel == 2'b00)
      y = in[0];
    else if (sel == 2'b01)
      y = in[1];
    else if (sel == 2'b10)
      y = in[2];
    else
      y = in[3];
  end
endmodule
