module mux16to1 (
  input wire [15:0] in,
  input wire [3:0] sel,
  output reg y
);
  always @(*) begin
    if (sel == 4'b0000)
      y = in[0];
    else if (sel == 4'b0001)
      y = in[1];
    else if (sel == 4'b0010)
      y = in[2];
    else if (sel == 4'b0011)
      y = in[3];
    else if (sel == 4'b0100)
      y = in[4];
    else if (sel == 4'b0101)
      y = in[5];
    else if (sel == 4'b0110)
      y = in[6];
    else if (sel == 4'b0111)
      y = in[7];
    else if (sel == 4'b1000)
      y = in[8];
    else if (sel == 4'b1001)
      y = in[9];
    else if (sel == 4'b1010)
      y = in[10];
    else if (sel == 4'b1011)
      y = in[11];
    else if (sel == 4'b1100)
      y = in[12];
    else if (sel == 4'b1101)
      y = in[13];
    else if (sel == 4'b1110)
      y = in[14];
    else
      y = in[15];
  end
endmodule
