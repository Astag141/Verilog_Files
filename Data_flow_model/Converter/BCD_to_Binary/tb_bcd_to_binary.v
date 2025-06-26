module tb_bcd_to_binary;
  reg [3:0] bcd;
  wire [3:0] bin;

  bcd_to_binary uut (.bcd(bcd), .bin(bin));

  initial begin
    $display("BCD | BIN");
    for (bcd = 0; bcd < 10; bcd = bcd + 1) begin
      #5 $display("%b | %b", bcd, bin);
    end
  end
endmodule

