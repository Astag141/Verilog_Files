module tb_gray_to_binary;
  reg [3:0] gray;
  wire [3:0] bin;

  gray_to_binary uut (.gray(gray), .bin(bin));

  initial begin
    $display("GRAY | BIN");
    for (gray = 0; gray < 16; gray = gray + 1) begin
      #5 $display("%b | %b", gray, bin);
    end
  end
endmodule

