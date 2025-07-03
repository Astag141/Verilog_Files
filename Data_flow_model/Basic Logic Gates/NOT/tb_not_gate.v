module tb_not_gate;
  reg a;
  wire y;

  not_gate uut (.a(a), .y(y));

  initial begin
    $display("A | Y");
    a = 0; #10 $display("%b | %b", a, y);
    a = 1; #10 $display("%b | %b", a, y);
  end
endmodule

