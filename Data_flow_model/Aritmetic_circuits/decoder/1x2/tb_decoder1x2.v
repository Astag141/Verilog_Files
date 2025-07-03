module tb_decoder1x2;
  reg a;
  wire [1:0] y;

  decoder1x2 uut (.a(a), .y(y));

  initial begin
    $display("A | Y1 Y0");
    a = 0; #10 $display("%b | %b  %b", a, y[1], y[0]);
    a = 1; #10 $display("%b | %b  %b", a, y[1], y[0]);
  end
endmodule

