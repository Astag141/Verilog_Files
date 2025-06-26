module tb_mux8x1;
  reg [7:0] d;
  reg [2:0] sel;
  wire y;

  mux8x1 uut (.d(d), .sel(sel), .y(y));

  initial begin
    $display("D SEL | Y");
    d = 8'b10101010;
    for (sel = 0; sel < 8; sel = sel + 1) begin
      #10 $display("%b  %b | %b", d, sel, y);
    end
  end
endmodule

