module binary_to_bcd(input [3:0] bin, output reg [3:0] bcd);
  always @(*) begin
    if (bin < 10)
      bcd = bin;
    else
      bcd = bin - 10;  // Only for demonstration (range 0–15)
  end
endmodule

