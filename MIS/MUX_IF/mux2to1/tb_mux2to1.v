module tb_mux2to1;
  reg a, b, sel;
  wire y;

  mux2to1 dut (.a(a), .b(b), .sel(sel), .y(y));

  initial begin
    $display("Time\tsel\ta\tb\ty");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, sel, a, b, y);

    a = 0; b = 1; sel = 0; #10;
    a = 1; b = 0; sel = 1; #10;
    a = 1; b = 1; sel = 0; #10;
    a = 0; b = 0; sel = 1; #10;

    $finish;
  end
endmodule
