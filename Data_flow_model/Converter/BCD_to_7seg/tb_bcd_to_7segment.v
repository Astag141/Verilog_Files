module tb_bcd_to_7segment;
  reg [3:0] bcd;
  wire [6:0] seg;

  bcd_to_7segment uut (.bcd(bcd), .seg(seg));

  initial begin
    $display("BCD | 7SEG");
    for (bcd = 0; bcd < 10; bcd = bcd + 1) begin
      #5 $display("%b | %b", bcd, seg);
    end
  end
endmodule

