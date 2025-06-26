module tb_binary_to_bcd;
  reg [3:0] bin;
  wire [3:0] bcd;

  binary_to_bcd uut (.bin(bin), .bcd(bcd));

  initial begin
    $display("BIN | BCD");
    for (bin = 0; bin < 16; bin = bin + 1) begin
      #5 $display("%b | %b", bin, bcd);
    end
  end
endmodule

