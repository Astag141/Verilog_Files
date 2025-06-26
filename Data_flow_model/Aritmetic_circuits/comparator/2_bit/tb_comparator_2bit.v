module tb_comparator_2bit;
  reg [1:0] a, b;
  wire a_gt_b, a_eq_b, a_lt_b;

  comparator_2bit uut (.a(a), .b(b), .a_gt_b(a_gt_b), .a_eq_b(a_eq_b), .a_lt_b(a_lt_b));

  initial begin
    $display("A  B  | GT EQ LT");
    for (a = 0; a < 4; a = a + 1) begin
      for (b = 0; b < 4; b = b + 1) begin
        #5 $display("%b %b |  %b  %b  %b", a, b, a_gt_b, a_eq_b, a_lt_b);
      end
    end
  end
endmodule

