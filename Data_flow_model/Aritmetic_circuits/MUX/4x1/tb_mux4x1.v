module tb_mux4x1;
  reg [3:0] d;
  reg [1:0] sel;
  wire y;

  mux4x1 uut (.d(d), .sel(sel), .y(y));

  initial begin
    $display("D SEL | Y");
    d = 4'b1010;
    sel = 2'b00; #10 $display("%b  %b | %b", d, sel, y);
    sel = 2'b01; #10 $display("%b  %b | %b", d, sel, y);
    sel = 2'b10; #10 $display("%b  %b | %b", d, sel, y);
    sel = 2'b11; #10 $display("%b  %b | %b", d, sel, y);
  end
endmodule

