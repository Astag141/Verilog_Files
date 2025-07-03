module tb_mux2x1;
  reg a, b, sel;
  wire y;

  mux2x1 uut (.a(a), .b(b), .sel(sel), .y(y));

  initial begin
    $display("A B SEL | Y");
    a = 0; b = 0; sel = 0; #10 $display("%b %b  %b  | %b", a, b, sel, y);
    a = 0; b = 1; sel = 0; #10 $display("%b %b  %b  | %b", a, b, sel, y);
    a = 1; b = 0; sel = 1; #10 $display("%b %b  %b  | %b", a, b, sel, y);
    a = 1; b = 1; sel = 1; #10 $display("%b %b  %b  | %b", a, b, sel, y);
  end
endmodule

