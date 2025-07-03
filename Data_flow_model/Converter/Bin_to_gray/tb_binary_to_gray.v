module tb_binary_to_gray;
  reg [3:0] bin;
  wire [3:0] gray;

  binary_to_gray uut (.bin(bin), .gray(gray));

  initial begin
    $display("BIN  | GRAY");
    for (bin = 0; bin < 16; bin = bin + 1) begin
      #5 $display("%b | %b", bin, gray);
    end
  end
endmodule

