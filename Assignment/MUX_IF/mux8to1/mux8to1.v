module mux8to1 (
  input wire [7:0] in,
  input wire [2:0] sel,
  output reg y
);
  always @(*) begin
    if (sel == 3'b000)
      y = in[0];
    else if (sel == 3'b001)
      y = in[1];
    else if (sel == 3'b010)
      y = in[2];
    else if (sel == 3'b011)
      y = in[3];
    else if (sel == 3'b100)
      y = in[4];
    else if (sel == 3'b101)
      y = in[5];
    else if (sel == 3'b110)
      y = in[6];
    else
      y = in[7];
  end
endmodule
